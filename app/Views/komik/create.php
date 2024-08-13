<?= $this->extend('layout/template'); ?>

<?= $this->section('content') ?>

<div class="container">
    <div class="row">
        <div class="col-8">
            <h2 class="my-3">Form Tambah Data Komik</h2>
            <!-- $validation->listErrors(); -->
            <form action="/komik/save" method="post" enctype="multipart/form-data">
                <?= csrf_field(); ?>
                <div class="form-group row">
                    <label for="judul" class="col-sm-2 col-form-label">Judul</label>
                    <div class="col-sm-10 my-2">
                        <input type="text" class="form-control <?= (session('validation')) ? 'is-invalid' : ''; ?>" name="judul_komik" id="judul" autofocus value="<?= old('judul_komik'); ?>">
                        <?php if (session('validation') && session('validation')->hasError('judul_komik')) : ?>
                            <div class="invalid-feedback">
                                <?= session('validation')->getError('judul_komik'); ?>
                            </div>
                        <?php endif; ?>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="penulis" class="col-sm-2 col-form-label">Penulis</label>
                    <div class="col-sm-10 my-2">
                        <input type="text" class="form-control" name="penulis" id="penulis" value="<?= old('penulis'); ?>">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="penerbit" class="col-sm-2 col-form-label">Penerbit</label>
                    <div class="col-sm-10 my-2">
                        <input type="text" class="form-control" name="penerbit" id="penerbit" value="<?= old('penerbit'); ?>">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="sampul" class="col-sm-2 col-form-label">Sampul</label>
                    <div class="col-sm-2">
                        <img src="/img/arnold.jpg" class="img-tumbnail img-preview" style="width: 100px;">
                    </div>
                    <div class="col-sm-8">
                        <div class="mb-3">
                            <input class="form-control" type="file" id="sampul" name="sampul" onchange="imgPreview()">
                            <!-- <label for="sampul" class="form-label">Pilih gambar</label> -->
                        </div>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-sm-10">
                        <button type="submit" class="btn btn-primary">Simpan Data</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<?= $this->endSection(); ?>