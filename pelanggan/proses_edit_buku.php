<?php
  session_start();
  include "../config.php";
  $id_pelanggan = $_SESSION['login_pelanggan'];
  $id_buku = $_GET['id_buku'];
  $judul = $_POST['judul'];
  $sinopsis = $_POST['sinopsis'];
  $jum_hal = $_POST['jum_hal'];

  $line = "UPDATE buku SET ";
  $line .= "judul='" . $judul . "', ";
  $line .= "sinopsis='" . $sinopsis . "', ";
  $line .= "jum_hal=" . $jum_hal . " ";
  $line .= "WHERE id_buku=" . $id_buku;
  $query = mysqli_query($conn, $line);
  if ($query){
    $_SESSION['popupSuccess'] = "Data buku berhasil diubah.";
  }
  else{
    echo "Data gagal diinput";
  }

  // Get data buku
  $line = "SELECT * FROM buku WHERE id_buku=" . $id_buku . " AND id_pelanggan=" . $id_pelanggan;
  $query = mysqli_query($conn, $line);
  if ($query) {
    $buku = mysqli_fetch_array($query);
  }else{
    echo "Gagal get data buku";
  }

  // Update file sampul
  if ($_FILES['file_sampul']['size'] != 0){
    $file_sampul = $id_pelanggan . '_sampul_' . $_FILES["file_sampul"]["name"];
    $target_dir = "uploads/sampul/";
    $target_file = $target_dir . basename($file_sampul);
    $uploadOk = 1;
    $fileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
    // Allow certain file formats
    if( $fileType != "pdf" ) {
        $_SESSION['popupError'] = "Sorry only PDF files are allowed.";
        $uploadOk = 0;
    }
    // Check if file already exists
    if (file_exists($target_file)) {
        $_SESSION['popupError'] = "Sorry, cover file already exists";
        $uploadOk = 0;
    }
    // Check if $uploadOk is set to 0 by an error
    if ($uploadOk == 0) {
      unset($_SESSION['popupSuccess']);
      header('Location: books.php');
      break;
    // if everything is ok, try to upload file
    }else{
      if (move_uploaded_file($_FILES["file_sampul"]["tmp_name"], $target_file)) {
        $line = "UPDATE buku SET file_sampul='" . $file_sampul . "' WHERE id_buku=" . $id_buku;
        $query = mysqli_query($conn, $line);
        unlink('uploads/sampul/'.$buku['file_sampul']);
        if (!$query){
          echo "Data file sampul gagal diupdate";
        }
      }else{
        $_SESSION['popupError'] = "Sorry, there was an error uploading your cover file.";
        unset($_SESSION['popupSuccess']);
        header('Location: books.php');
        break;
      }
    }
  }

  // Update file buku
  if ($_FILES['file_buku']['size'] != 0){
    $file_buku = $id_pelanggan . '_buku_' . $_FILES["file_buku"]["name"];
    $target_dir = "uploads/buku/";
    $target_file = $target_dir . basename($file_buku);
    $uploadOk = 1;
    $fileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
    // Allow certain file formats
    if( $fileType != "pdf" ) {
        $_SESSION['popupError'] = "Sorry only PDF files are allowed.";
        $uploadOk = 0;
    }
    // Check if file already exists
    if (file_exists($target_file)) {
        $_SESSION['popupError'] = "Sorry, book file already exists";
        $uploadOk = 0;
    }
    // Check if $uploadOk is set to 0 by an error
    if ($uploadOk == 0) {
      unset($_SESSION['popupSuccess']);
      header('Location: books.php');
      break;
    // if everything is ok, try to upload file
    }else{
      if (move_uploaded_file($_FILES["file_buku"]["tmp_name"], $target_file)) {
        $line = "UPDATE buku SET file_buku='" . $file_buku . "' WHERE id_buku=" . $id_buku;
        $query = mysqli_query($conn, $line);
        unlink('uploads/buku/'.$buku['file_buku']);
        if (!$query){
          echo "Data file buku gagal diupdate";
        }
      } else {
        $_SESSION['popupError'] = "Sorry, there was an error uploading your file.";
        unset($_SESSION['popupSuccess']);
        header('Location: books.php');
        break;
      }
    }
  }

  header('Location: books.php');
?>
