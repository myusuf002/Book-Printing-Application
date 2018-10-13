<?php
  session_start();
  if (empty($_SESSION['login_pelanggan'])){
    header('Location: login.php');
  }
  include "../config.php";
  $_SESSION['page'] = 'printings';
?>
<!DOCTYPE html>
<html lang="en">

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Chiko Books - Pelanggan</title>
    <?php include "../cdn.php"; ?>

    <link href="<?php echo path("/assets/img/logo.png"); ?>" rel="shortcut icon">
    <link href="<?php echo path("/assets/css/primary.css"); ?>" rel="stylesheet">
    <link href="<?php echo path("/assets/css/footer.css"); ?>" rel="stylesheet">
    <link href="assets/css/navbar.css" rel="stylesheet">
    <link href="assets/css/index.css" rel="stylesheet">
  </head>

  <body>

    <?php include "navbar.php"; ?>

    <?php include "../footer.php"; ?>

    <!-- Pemanggilan Javascript  -->
    <script src=""></script>
  </body>
</html>
