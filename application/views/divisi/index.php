<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-body">
                <h6 class="card-subtitle">
                    <a class="btn btn-success" href="<?= site_url('divisi/create') ?>"><i class="fa fa-plus"></i> Add</a>
                </h6>
                <div class="table-responsive m-t-40">
                    <table id="data-table" class="display nowrap table table-hover table-striped table-bordered" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Name</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php 
                                $i = 1;
                                foreach( $divisi as $rows ) :
                            ?>
                            <tr>
                                <td><?= $i++; ?></td>
                                <td><?= $rows->name ?></td>
                                <td>
                                    <a class="btn btn-primary btn-xs" href="<?= site_url('divisi/edit/'.$rows->id) ?>">
                                        <i class="fa fa-pencil"></i> Edit
                                    </a>
                                    <a class="btn btn-danger delete btn-xs" href="javascript:void(0)" data-id="<?= $rows->id ?>">
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
<script>

    $('.delete').click(function(){
        let id = $(this).data('id')

        swal({   
            title: "Are you sure?",   
            text: "Delete this divisi",   
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
                    url: "<?= site_url('divisi/delete'); ?>",
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