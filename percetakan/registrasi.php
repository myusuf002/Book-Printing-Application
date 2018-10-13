<!DOCTYPE html>
<html lang="en">

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Chiko Books - Percetakan</title>
    <?php include "../cdn.php"; ?>

    <link href="../assets/img/logo.png" rel="shortcut icon">
    <link href="../assets/css/primary.css" rel="stylesheet">
    <link href="../assets/css/index.css" rel="stylesheet">
    <link href="../assets/css/footer.css" rel="stylesheet">
    <link href="assets/css/login.css" rel="stylesheet">
  </head>

  <body id="page-top">

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="../index.php">
          <img class="img-fluid" src="../assets/img/logo.png" width=40px alt="">
          &nbsp;Chiko Books
        </a>
      </div>
    </nav>

     <!-- Portfolio Grid -->
    <section id="portfolio">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading text-uppercase">Sign Up!</h2>
          </div>
        </div>
      </div>
      <!-- Registrasi -->
      <form action="#" class="col-12 text-center">
        <div class="form-group">
          <input type="text" class="btn text-uppercase js-scroll-trigger" id="nama" placeholder="Nama">
        </div>
        <div class="form-group">
          <input type="email" class="btn text-uppercase js-scroll-trigger" id="email" placeholder="Email">
        </div>
        <div class="form-group">
          <input type="password" class="btn text-uppercase js-scroll-trigger" id="pwd" placeholder="Password">
        </div>
        <div class="form-group">
          <input type="text" class="btn text-uppercase js-scroll-trigger" id="noHP" placeholder="Nomor HP">
        </div>
        <div class="form-group">
          <input type="text" class="btn text-uppercase js-scroll-trigger" id="alamat" placeholder="Alamat">
        </div>
        <div class="form-group">
          <input type="text" class="btn text-uppercase js-scroll-trigger" id="kota" placeholder="Kota">
        </div>
        <div class="form-group">
          <input type="text" class="btn text-uppercase js-scroll-trigger" id="provinsi" placeholder="Provinsi">
        </div>
        <div class="form-group">
          <input type="text" class="btn text-uppercase js-scroll-trigger" id="kodepos" placeholder="Kode Pos">
        </div>
        <!-- Tombol Registrasi -->
        <button type="submit" class="btn btn-pelanggan text-uppercase js-scroll-trigger">&nbsp;Sign Up&nbsp;</button>
        <!-- Link untuk yang belum memiliki akun -->
        <p>
          <br>
          Already have an account?
          <a href="login.php" class="">Sign In</a>
        </p>
      </form>
    </section>

    <?php include "../footer.php"; ?>

    <!-- Pemanggilan Javascript  -->
    <script src="../assets/js/navbar.js"></script>

  </body>
</html>
