<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <style>
    #ques {
        min-height: 433px;
    }

    .display {
        display: inline;
    }
    </style>
    <link rel="stylesheet" href="about.css">
    <title>Welcome to iCoding Forums</title>
</head>

<body>
    <?php include 'partials/_dbconnect.php';
    
    ?>
    <?php include 'partials/_header.php';?>


    <div class="image-aboutus-banner img-fluid" style="margin-top:0px">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1 class="lg-text">About Us</h1>
                    <p class="image-aboutus-para">iCoding Forum</p>
                </div>
            </div>
        </div>
    </div>
    <div class="aboutus-secktion paddingTB60">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h1 class="strong">Who we are and<br>what we do</h1>
                    <p class="lead">This is the world's leading portal for<br>easy and quick </p>
                </div>
                <div class="col-md-6">
                    <p>We live in a digital world.As a result coding and programing became necessity
                        for many jobs and businesses. Many people start learning coding but they leave due to the facing
                        issues in the program and whom to ask. So to overcome this problem iCoding is here!</p>
                </div>
            </div>
        </div>
    </div>
    <div class="container team-sektion">
        <div class="row display">
            <div class="site-heading text-center">
                <h3>Our Team</h3>
                <!-- <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt <br> ut -->
                <!-- labore et dolore magna aliqua. Ut enim ad minim </p> -->
                <div class="border"></div>
            </div>
        </div>
        <div class="container my-4" id="ques">
            <div class="row my-4">
                <div class="col-md-4 my-2">
                    <div class="card" style="width: 20rem;">
                        <img src="img/img1.jfif" class="card-img-top" alt="..." style="height:500px;">
                        <div class="card-body">
                            <h5 class="card-title">Ravi Kumar Dwivedi</h5>
                            <p class="card-text">
                                Coading is a Future everyone have to learn it.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 my-2">
                    <div class="card" style="width: 20rem;">
                        <div class="card-body">
                            <h5 class="card-title">Sagar Baisoya</h5>
                            <p class="card-text"> Any ony can write code that a computer can understand. Good
                                programmers write code that humans can understand.</p>
                        </div>
                        <img src="img/img2.jfif" class="card-img-top" style="height:500px;" alt="...">
                    </div>
                </div>
                <div class="col-md-4 my-2">
                    <div class="card" style="width: 20rem;">
                        <img src="img/img3.jfif" class="card-img-top" alt="..." style="height:550px;>
                        <div class=" card-body">
                        <h5 class="card-title">Saurabh Kumar</h5>
                        <p class="card-text">
                            Everybody should learn to coding, because it teaches you how to live</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Facebook -->
    <i class="fab fa-facebook-f"></i>

    <!-- Twitter -->
    <i class="fab fa-twitter"></i>

    <!-- Google -->
    <i class="fab fa-google"></i>

    <!-- Instagram -->
    <i class="fab fa-instagram"></i>

    <!-- Linkedin -->
    <i class="fab fa-linkedin-in"></i>

    <!-- Youtube -->
    <i class="fab fa-youtube"></i>

    <!-- Github -->
    <i class="fab fa-github"></i>

    <!-- Whatsapp -->
    <i class="fab fa-whatsapp"></i>
    <?php include 'partials/_footer.php';?>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
        integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous">
    </script>
</body>