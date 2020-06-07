<div class="row">
    <div class="col-lg-12">
        <div class="card card-outline-info">
            <div class="card-header">
                <h4 class="m-b-0 text-white">Edit User</h4>
            </div>
            <div class="card-body">
                <form action="<?= site_url('user/update'); ?>" method="post">
                    <div class="form-body">
                        <hr>
                        <div class="row p-t-20">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label class="control-label">Employee ID</label>
                                    <input type="text" id="employee_id" name="employee_id" class="form-control" value="<?= $user->employee_id ?>">
                                    <input type="hidden" id="id" name="id" class="form-control" value="<?= $user->id ?>">
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label class="control-label">Fullname</label>
                                    <input type="text" id="fullname" name="fullname" class="form-control" value="<?= $user->fullname ?>">
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label class="control-label">Divisi</label>
                                    <select name="divisi" class="form-control" id="logic">
                                        <option>Select</option>
                                        <?php foreach($divisi as $row): ?>
                                        <option value="<?= $row->name ?>" <?php if($user->divisi == $row->name): ?> selected <?php endif ?>><?= $row->name ?></option>
                                        <?php endforeach; ?>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-12" style="display:none;" id="end">
                                <div class="form-group">
                                    <label class="control-label">Tempat Tinggal</label>
                                    <select name="tempat_tinggal" class="form-control" id="logic">
                                        <option>Select</option>
                                        <?php foreach($zona as $row): ?>
                                        <option value="<?= $row->address ?>" <?php if($user->tempat_tinggal == $row->address): ?> selected <?php endif ?>><?= $row->address ?></option>
                                        <?php endforeach; ?>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label class="control-label">Transportasi normal</label>
                                    <input type="text" id="transportasi_normal" name="transportasi_normal" class="form-control" value="<?= $user->transportasi_normal ?>">
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label class="control-label">Transportasi wfh</label>
                                    <input type="text" id="transportasi_wfh" name="transportasi_wfh" class="form-control" value="<?= $user->transportasi_wfh ?>">
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label class="control-label">Role</label>
                                    <select name="role_id" class="form-control" id="logic">
                                        <option>Select</option>
                                        <?php foreach($role as $row): ?>
                                        <option value="<?= $row->id ?>" <?php if($user->role_id == $row->id): ?> selected <?php endif ?>><?= $row->role_name ?></option>
                                        <?php endforeach; ?>
                                    </select>
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