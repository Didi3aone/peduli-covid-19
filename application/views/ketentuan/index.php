<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-body">
                <h6 class="card-subtitle">
                    <a class="btn btn-success" href="<?= site_url('ketentuan/create') ?>"><i class="fa fa-plus"></i> Add</a>
                </h6>
                <div class="table-responsive m-t-40">
                    <table id="data-table" class="display nowrap table table-hover table-striped table-bordered" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Suhu</th>
                                <th>Zona</th>
                                <th>Rekomendasi</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php 
                                $i = 1;
                                foreach( $ketentuan as $rows ) :
                            ?>
                            <tr>
                                <td><?= $i++; ?></td>
                                <td><?= $rows->suhu_start." ".$rows->logic." ".$rows->suhu_end ?></td>
                                <td><?= $rows->status ?></td>
                                <td><?= $rows->rekomendasi ?></td>
                                <td>
                                    <a class="btn btn-primary btn-xs" href="<?= site_url('ketentuan/edit/'.$rows->id) ?>">
                                        <i class="fa fa-pencil"></i> Edit
                                    </a>
                                </td>
                            </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>