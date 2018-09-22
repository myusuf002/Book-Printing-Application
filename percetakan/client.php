<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="chiko" content="">

    <title>Chiko Books - Percetakan</title>
		<link href="../img/logo.png" rel="shortcut icon">
    
    <!-- Pemanggilan jQuery -->
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <!-- Pemanggilan Javascript Bootstrap -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  
    <!-- pemanggilan bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <!-- pemanggilan datatables -->
    <script src="//cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>

    <!-- Custom fonts -->
    <link href="../vendor/fontawesome-free/css/all.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

    <!-- Custom styles -->
    <link href="../css/primary.css" rel="stylesheet">
    <link href="css/index.css" rel="stylesheet">
    <link href="css/service.css" rel="stylesheet">

  </head>

  <body id="page-top">
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav"></nav>
    
    <!-- Portfolio Grid -->
    <section id="portfolio">
      <div class="container">
        <div class="row" style="color:white">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading text-uppercase">Clients</h2>
          </div>
        </div>
        <div class="row">   
          <!-- Mengatur responsive tabel -->
          <div style="color:white; width:100%;" class="table-responsive-sm">
            <!-- Tabel semua data buku -->
            <table id="tabelpercetakan" class="table table-sm table-striped">
              <!-- Header dari tabel -->
              <thead>
                <tr>
                  <th>Pelanggan</th>
                  <th>Judul Buku</th>
                  <th>Jumlah Halaman</th>
                  <th>Jenis Kertas</th>
                  <th>File Buku</th>
                  <th>File Sampul</th>
                  <th>Qty</th>
                  <th>Status</th>
                  <th>Aksi</th>
                </tr>
              </thead>

              <!-- Isi dari tabel -->
              <tbody></tbody>
            </table>
          </div>
        </div>
      </div>
      <br><br><br><br><br>
    </section>
    
    <!-- Footer -->
    <footer id="nav-footer"></footer>

    <!-- Pemanggilan Javascript  -->
    <script src="../js/primary.js"></script>
    <script src="js/percetakan.js"></script>
  </body>
</html>
