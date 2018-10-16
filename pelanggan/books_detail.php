<!-- The Modal -->
<div class="modal fade" id="modal-detail<?php echo $buku['id_buku']; ?>">
  <div class="modal-dialog modal-md">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Book's Details</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
        <div class="row">

          <div class="col-12 font-weight-bold">Judul</div>
          <div class="col-12"><?php echo $buku['judul']; ?></div>

          <div class="col-12 font-weight-bold">Sinopsis</div>
          <div class="col-12"><?php echo $buku['sinopsis']; ?></div>

          <div class="col-12 font-weight-bold">Jumlah Halaman</div>
          <div class="col-12"><?php echo $buku['jum_hal']; ?></div>

          <div class="col-12 font-weight-bold">File Sampul</div>
          <div class="col-12">
            <a href="uploads/sampul/<?php echo $buku['file_sampul']; ?>">
              <?php echo $buku['file_sampul']; ?>
            </a>
          </div>

          <div class="col-12 font-weight-bold">File Isi Buku</div>
          <div class="col-12">
            <a href="uploads/buku/<?php echo $buku['file_buku']; ?>">
              <?php echo $buku['file_buku']; ?>
            </a>
          </div>

          <div class="col-12 font-weight-bold">Status Percetakan</div>
          <div class="col-12">-</div>

          <div class="col-12 font-weight-bold">Status Pembayaran</div>
          <div class="col-12">-</div>

        </div>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer"></div>

    </div>
  </div>
</div>
