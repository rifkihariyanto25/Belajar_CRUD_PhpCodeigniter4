<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>

<div class="container">
    <div class="row">
        <div class="col-8">
            <h2>Ubah Data Komik</h2>
            <form action="/komik/update/<?= $komik['id']; ?>" method="post" enctype="multipart/form-data">

                <!-- mengamankan form -->
                <?= csrf_field(); ?>
                <input type="hidden" name="slug" value="<?= $komik['Slug']; ?>" method="post">
                <input type="hidden" name="sampulLama" value="<?= $komik['Sampul']; ?>">
                <!-- Judul -->
                <div class="row mb-3">
                    <label for="judul" class="col-sm-2 col-form-label">Judul</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control <?= ($validation->hasError('judul')) ?
                                                                    'is-invalid' : ''; ?>" id="judul" name="judul" autofocus value="<?= (old('judul')) ?
                                                                                                                                        old('judul') : $komik['Judul'] ?>">
                        <div class="invalid-feedback">
                            <?= $validation->getError('judul'); ?>
                        </div>
                    </div>
                </div>

                <!-- Penulis -->
                <div class="row mb-3">
                    <label for="penulis" class="col-sm-2 col-form-label">Penulis</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control <?= ($validation->hasError('penulis')) ?
                                                                    'is-invalid' : ''; ?>" id="penulis" name="penulis" autofocus value="<?= (old('penulis')) ?
                                                                                                                                            old('penulis') : $komik['Penulis'] ?>">
                        <div class="invalid-feedback">
                            <?= $validation->getError('penulis'); ?>
                        </div>
                    </div>
                </div>

                <!-- Penerbit -->
                <div class="row mb-3">
                    <label for="penerbit" class="col-sm-2 col-form-label">Penerbit</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control <?= ($validation->hasError('penerbit')) ?
                                                                    'is-invalid' : ''; ?>" id="penerbit" name="penerbit" autofocus value="<?= (old('penerbit')) ?
                                                                                                                                                old('penerbit') : $komik['Penerbit'] ?>">
                        <div class="invalid-feedback">
                            <?= $validation->getError('penerbit'); ?>
                        </div>
                    </div>
                </div>


                <!-- Sampul -->
                <div class="row mb-3">
                    <label for="sampul" class="col-sm-2 col-form-label">Sampul</label>
                    <!-- gambar disebelah input muncul -->
                    <div class="col-sm-2">
                        <img src="/img/<?= $komik['Sampul']; ?>" class="img-thumbnail img-preview">
                    </div>

                    <div class="col-sm-10">
                        <div class="custom-file">
                            <input type="file" class="custom-file-input <?= ($validation->hasError('sampul')) ?
                                                                            'is_innvalid' : ''; ?>" id="sampul" name="sampul" onchange="previewImg()">
                            <div class="invalid-feedback">
                                <?= $validation->getError('sampul'); ?>
                            </div>
                            <label class="custom-file-label" for="Sampul"><?= $komik['Sampul']; ?></label>
                        </div>
                    </div>
                </div>

                <button type="submit" class="btn btn-primary">Ubah Data</button>
            </form>

        </div>
    </div>
</div>

<?= $this->endSection(); ?>