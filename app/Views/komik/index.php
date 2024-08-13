<?= $this->extend('layout/template'); ?>

<?= $this->section('content') ?>

<div class="container">
    <div class="row">
        <div class="col">
            <?php if (session()->getFlashdata('pesan')) : ?>
                <div class="alert alert-success" role="alert">
                    <?= session()->getFlashdata('pesan'); ?>
                </div>
            <?php endif; ?>
            <div class="clearfix mb-4">
                <div class="float-start">
                    <h1>Data Komik</h1>
                </div>
                <a href="/komik/create" class="btn btn-success mt-2 float-end">Tambah Data</a>
            </div>
            <table class="table table-striped mb-3">
                <thead>
                    <tr class="table-primary">
                        <th scope="col">#</th>
                        <th scope="col">Sampul</th>
                        <th scope="col">Judul</th>
                        <th scope="col">Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $i = 1; ?>
                    <?php foreach ($komik as $km) :  ?>
                        <tr>
                            <th scope="row"><?= $i++ ?></th>
                            <td><img src="/img/<?= $km['sampul']; ?>" alt="" class="sampul"></td>
                            <td><?= $km['judul_komik']; ?></td>
                            <td><a href="/komik/<?= $km['slug']; ?>" class="btn btn-success">Detail</a></td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>
</div>

<?= $this->endSection(); ?>