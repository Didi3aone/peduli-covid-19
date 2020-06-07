<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-body">
                <h6 class="card-subtitle">
                    <a class="btn btn-success" href=""><i class="fa fa-plus"></i> Add</a>
                    <a class="btn btn-primary" href="#" data-toggle="modal" data-target=".bs-example-modal-lg"><i class="fa fa-download"></i> Import</a>
                </h6>
                <div class="table-responsive m-t-40">
                    <table id="data-table" class="display nowrap table table-hover table-striped table-bordered" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Zona</th>
                                <th>Status</th>
                                <th>Valid From</th>
                                <th>Valid To</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php 
                                $i = 1;
                                foreach( $zona as $rows ) :
                            ?>
                            <tr>
                                <td><?= $i++; ?></td>
                                <td><?= $rows->address ?></td>
                                <td style="background-color:<?= $rows->color ?>;"></td>
                                <td><?= $rows->valid_from ?></td>
                                <td><?= $rows->valid_to ?></td>
                                <td></td>
                            </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myLargeModalLabel"></h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            </div>
            <form method="post" action="<?= site_url('zona/import') ?>" enctype="multipart/form-data">
                <div class="modal-body">
                    <div class="form-group">
                        <label>File (xlsx)</label>
                        <input type="file" name="file" class="form-control">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger waves-effect text-left" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary waves-effect text-left">Import</button>
                </div>
            </form>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>