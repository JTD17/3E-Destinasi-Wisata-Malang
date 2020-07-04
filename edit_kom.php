<?php include('header.php')?>
<?php
include("koneksi.php");

if( !isset($_GET['id_komentar']) ){
    header('Location: data_destinasi.php');
}

$id_komentar = $_GET['id_komentar'];

$sql = "SELECT * FROM komentar WHERE id_komentar=$id_komentar";
$query = mysqli_query($db, $sql);
$data = mysqli_fetch_assoc($query);

if( mysqli_num_rows($query) < 1 ){
    die("data tidak ditemukan...");
}
?>

  
<style>
    .rating {
        float:left;
    }
    
    .rating:not(:checked) > input {
        position:absolute;
        top:-9999px;
        clip:rect(0,0,0,0);
    }
    
    .rating:not(:checked) > label {
        float:right;
        width:1em;
        /* padding:0 .1em; */
        overflow:hidden;
        white-space:nowrap;
        cursor:pointer;
        font-size:300%;
        /* line-height:1.2; */
        color:#ddd;
    }

    .rating:not(:checked) > label:before {
        content: '★ ';
    }

    .rating > input:checked ~ label {
        color: orange;
        
    }

    .rating:not(:checked) > label:hover,
    .rating:not(:checked) > label:hover ~ label {
        color: orange;
        
    }

    .rating > input:checked + label:hover,
    .rating > input:checked + label:hover ~ label,
    .rating > input:checked ~ label:hover,
    .rating > input:checked ~ label:hover ~ label,
    .rating > label:hover ~ input:checked ~ label {
        color: orange;
        
    }

    .rating > label:active {
        position:relative;
        top:2px;
        left:2px;
    }
</style>
      
<section id="main-content">
    <section class="wrapper">
        <div class="tab-pane">
            <div class="row mt">
                <div class="col-lg-12">
                    <div class="form-panel">
                        <div class=" form">
                            <div class="room-box">
                                <h4 style="margin-left: 0px; margin-bottom: 6px;">Edit Komentar</h4>
                                <div id="message"></div>
                                <form class="contact-form php-mail-form" action="action_editkom.php" method="POST">
                                    <div class="form-group">
                                        <div class="rating" style="font-size:60%;">
                                            <?php $rating =  $data['rating'] ?>
                                            <input type="radio" id="star5" name="rating" value="5" <?php echo ($rating == '5')?  " checked= ''":""?> /><label for="star5" title="Meh">5 stars</label>
                                            <input type="radio" id="star4" name="rating" value="4" <?php echo ($rating == '4')?  " checked= ''":""?>/><label for="star4" title="Kinda bad">4 stars</label>
                                            <input type="radio" id="star3" name="rating" value="3" <?php echo ($rating == '3')?  " checked= ''":""?>/><label for="star3" title="Kinda bad">3 stars</label>
                                            <input type="radio" id="star2" name="rating" value="2" <?php echo ($rating == '2')?  " checked= ''":""?>/><label for="star2" title="Sucks big tim">2 stars</label>
                                            <input type="radio" id="star1" name="rating" value="1" <?php echo ($rating == '1')?  " checked= ''":""?>/><label for="star1" title="Sucks big time">1 star</label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <input class=" form-control" id="disabledInput" name="id_komentar" minlength="2" type="text" required value="<?php echo $data['id_komentar'] ?>" /></div>
                                    <div class="form-group">
                                        <input type="email" name="email" class="form-control" id="contact-email"  value="<?php echo $data['email'] ?>" data-rule="email" data-msg="Please enter a valid email">
                                        <div class="validate"></div>
                                    </div>
                                    <div class="form-group">
                                        <textarea class="form-control" name="komentar" id="contact-message" rows="2" data-rule="required" data-msg="komentar"> <?php echo $data['komentar'] ?></textarea>
                                        <div class="validate"></div>
                                    </div>
                                    <div class="form-send">
                                        <button type="submit" name="edit" class="btn btn-large btn-primary">Edit Komentar</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</section>
<?php include('footer.php')?>