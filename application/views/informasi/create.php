<div class="row">
    <div class="col-lg-12">
        <div class="card card-outline-info">
            <div class="card-header">
                <h4 class="m-b-0 text-white">Create Informasi</h4>
            </div>
            <div class="card-body">
                <form action="<?= site_url('informasi/store'); ?>" method="post" enctype="multipart/form-data">
                    <div class="form-body">
                        <hr>
                        <div class="row p-t-20">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label class="control-label">Judul </label>
                                    <input type="text" id="title" name="title" class="form-control" placeholder="Judul">
                                </div>
                            </div>
                        </div>
                        <div class="row p-t-20">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label class="control-label">Kategori </label>
                                    <select name="category_id" class="form-control">
                                        <option>Select</option>
                                        <?php foreach($category as $row) : ?>
                                            <option value="<?= $row->id ?>"><?= $row->category ?></option>
                                        <?php endforeach; ?>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="row p-t-20">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label class="control-label">File </label>
                                    <input type="file" id="file" name="file" class="form-control" placeholder="File">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-actions">
                        <button type="submit" class="btn btn-success"> <i class="fa fa-check"></i> Save</button>
                        <button type="button" class="btn btn-inverse">Cancel</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>