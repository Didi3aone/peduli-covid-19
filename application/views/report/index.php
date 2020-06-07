<div class="row">
    <div class="col-lg-12">
        <div class="card card-outline-info">
            <div class="card-header">
                <h4 class="m-b-0 text-white">Reporting</h4>
            </div>
            <div class="card-body">
                <form action="<?= site_url('report/export'); ?>" method="post">
                    <div class="form-body">
                        <hr>
                        <div class="row p-t-20">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label">Start Date</label>
                                    <input type="text" id="mdate1" name="start_date" class="form-control" placeholder="Start">
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label">End Date</label>
                                    <input type="text" id="mdate2" name="end_date" class="form-control" placeholder="End">
                                </div>
                            </div>
                        </div>
                        <div>
                            <button type="submit" class="btn btn-success"><i class="fa fa-file-o"></i>
                                Export to excel
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>