<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-body">
                <h6 class="card-subtitle">
                    <a class="btn btn-success" href="<?= site_url('user/create'); ?>"><i class="fa fa-plus"></i> Add</a>
                    <a class="btn btn-primary" href="#" data-toggle="modal" data-target=".bs-example-modal-lg"><i class="fa fa-download"></i> Import</a>
                </h6>
                <div class="table-responsive m-t-40">
                    <table id="data-table" class="display nowrap table table-hover table-striped table-bordered" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Employee ID</th>
                                <th>Name</th>
                                <th>Divisi</th>
                                <th>Tempat Tinggal</th>
                                <th>Zona</th>
                                <th>Transportasi Normal</th>
                                <th>Transportasi WFH</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php 
                                $i = 1;
                                foreach( $user as $rows ) :
                            ?>
                            <tr>
                                <td><?= $i++; ?></td>
                                <td><?= $rows->employee_id ?></td>
                                <td><?= $rows->fullname ?></td>
                                <td><?= $rows->divisi ?></td>
                                <td><?= $rows->tempat_tinggal ?></td>
                                <td style="background-color:<?= $rows->color ?>; color:white;"></td>
                                <td><?= $rows->transportasi_normal ?></td>
                                <td><?= $rows->transportasi_wfh ?></td>
                                <td>
                                    <a class="btn btn-primary btn-xs" href="<?= site_url('user/edit/'.$rows->user_id) ?>">
                                        <i class="fa fa-pencil"></i> Edit
                                    </a>
                                    <a class="btn btn-warning btn-xs" href="<?= site_url('user/show/'.$rows->user_id) ?>">
                                        <i class="fa fa-eye"></i> Show
                                    </a>
                                    <a class="btn btn-danger delete btn-xs" href="javascript:void(0)" data-id="<?= $rows->user_id ?>">
                                        <i class="fa fa-trash"></i> Delete
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
<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myLargeModalLabel"></h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            </div>
            <form method="post" action="<?= site_url('user/import') ?>" enctype="multipart/form-data">
                <div class="modal-body">
                    <div class="form-group">
                        <label>File (xlsx)</label>
                        <input type="file" name="file" class="form-control">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger waves-effect text-left" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary waves-effect text-left">Import</button>
                    <a href="<?= base_url('assets/template/user_template.xlsx') ?>" class="btn btn-success waves-effect text-left">Download template Import</a>
                </div>
            </form>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<script>

    $('.delete').click(function(){
        let id = $(this).data('id')

        swal({   
            title: "Are you sure?",   
            text: "Delete this user",   
            type: "warning",   
            showCancelButton: true,   
            confirmButtonColor: "#DD6B55",   
            confirmButtonText: "Yes, delete it!",   
            cancelButtonText: "No, cancel plx!",   
            closeOnConfirm: false,   
            closeOnCancel: true 
        }, function(isConfirm){   
            if (isConfirm) {   
                $.ajax({
                    url: "<?= site_url('user/delete'); ?>",
                    type:'post',
                    data: {
                        id : id
                    },
                    success: function(res) {
                        location.reload();
                    }
                })  
            } else {     

            } 
        });
    });
</script>