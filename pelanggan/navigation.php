<!DOCTYPE html>
<html>
<head>
  <title></title>
    <!-- Custom fonts -->
    <link href="vendor/fontawesome-free/css/all.css" rel="stylesheet" type="text/css">
    <link href="../vendor/fontawesome-free/css/all.css" rel="stylesheet" type="text/css">
    <!-- Custom styles -->

</head>

<body>
    <div class="container">
      <span style="font-size:30px;cursor:pointer; color:white" onclick="openNav()">&#9776; menu</span>
      <span>
        <a class="navbar-brand js-scroll-trigger" style="color: white" href="../index.php">
        <img class="img-fluid" src="../img/logo.png" width=40px alt="">
        &nbsp;Chiko Books 
        </a>
      </span>
      <div id="mySidenav" class="sidenav">
        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
        <a href="index.php">Home</a>
        <a href="book.php">Books</a>
        <a href="payment.php">Payments</a>
        <a href="printing.php">Printings</a>
        <a href="setting.php">Settings</a>
        <a href="login.php">Sign Out</a>
      </div>
    </div>

    <script>
        function openNav() {
            document.getElementById("mySidenav").style.width = "250px";
        }
        function closeNav() {
            document.getElementById("mySidenav").style.width = "0";
        }
    </script>
</body>
</html>
