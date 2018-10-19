<?php
  session_start();
  if (empty($_SESSION['login_admin'])){
    header('Location: login.php');
  }
  include "../config.php";
  // $_SESSION['page'] = 'home';
?>
<!DOCTYPE html>
<html lang="en">

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Chiko Books - Admin</title>
    <?php include "../cdn.php"; ?>

    <link href="../assets/img/logo.png" rel="shortcut icon">
    <link href="../assets/css/primary.css" rel="stylesheet">
    <link href="assets/css/navbar.css" rel="stylesheet">
  </head>

  <body>

    <div class="row">

      <?php
        include "navbar.php";
        include "../popup.php";
      ?>

      <div class="col-10">
        <br>
        <div class="container">
          <h3>Home Page</h3>
          <hr>


        </div>
      </div>

    </div>

    <!-- Pemanggilan Javascript  -->
    <script src=""></script>
  </body>
</html>
