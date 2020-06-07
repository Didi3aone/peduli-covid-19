<div class="row">
    <div class="col-lg-12">
        <div class="card card-outline-info">
            <div class="card-header">
                <h4 class="m-b-0 text-white">Create Ketentuan</h4>
            </div>
            <div class="card-body">
                <form action="<?= site_url('ketentuan/store'); ?>" method="post">
                    <div class="form-body">
                        <hr>
                        <div class="row p-t-20">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label class="control-label">Suhu</label>
                                    <input type="text" id="suhu_start" name="suhu_start" class="form-control" placeholder="Suhu">
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label class="control-label">Logic</label>
                                    <select name="logic" class="form-control" id="logic">
                                        <option>Select</option>
                                        <option value="-">-</option>
                                        <option value=">">></option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-12" style="display:none;" id="end">
                                <div class="form-group">
                                    <label class="control-label">Suhu</label>
                                    <input type="text" id="suhu_end" name="suhu_end" class="form-control" placeholder="Suhu">
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label class="control-label">Zona</label>
                                    <select name="zona_status_id" class="form-control" id="zona_status_id">
                                        <option>Select</option>
                                        <?php foreach($zona as $row): ?>
                                        <option value="<?= $row->id ?>"><?= $row->status ?></option>
                                        <?php endforeach; ?>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label class="control-label">Rekomendasi</label>
                                    <input type="text" id="rekomendasi" name="rekomendasi" class="form-control" placeholder="Rekomendasi">
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
<script>
    $("#logic").change(function() {
        let id = $(this).val();

        if( id == '-' ) {
            $("#end").show();
        } else {
            $("#end").hide();
        }
    })
</script>