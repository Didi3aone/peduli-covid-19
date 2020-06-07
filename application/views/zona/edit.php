<div class="row">
    <div class="col-lg-12">
        <div class="card card-outline-info">
            <div class="card-header">
                <h4 class="m-b-0 text-white">Edit Zona</h4>
            </div>
            <div class="card-body">
                <form action="<?= site_url('zona/update'); ?>" method="post">
                    <div class="form-body">
                        <hr>
                        <div class="row p-t-20">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label class="control-label">Zona (daerah) </label>
                                    <input type="text" id="address" name="address" class="form-control" value="<?= $zona->address ?>">
                                    <input type="hidden" id="id" name="id" class="form-control" value="<?= $zona->id ?>">
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label class="control-label">Status</label>
                                    <select name="zona_status" class="form-control" id="logic">
                                        <option>Select</option>
                                        <?php foreach($status as $row): ?>
                                        <option value="<?= $row->status ?>" <?php if($zona->zona_status == $row->status): ?> selected <?php endif; ?>><?= $row->status ?></option>
                                        <?php endforeach; ?>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label class="control-label">Valid From </label>
                                    <input type="text" id="mdate1" name="valid_from" class="form-control" value="<?= $zona->valid_from ?>">
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label class="control-label">Valid To </label>
                                    <input type="text" id="mdate2" name="valid_to" class="form-control" value="<?= $zona->valid_to ?>">
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