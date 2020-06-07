<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Report_model extends CI_Model {
    
    public function __construct() {
        parent::__construct();
    }

    public function getReportCheckSuhu($params = [])
    {
        $this->db->select(
            'daily_check_suhu.check_date,
            daily_check_suhu.suhu,
            ketentuan.rekomendasi,
            users.employee_id,
            users.fullname,
            users.divisi,
            users.tempat_tinggal,
            zona.zona_status
            '
        );
        $this->db->from('daily_check_suhu');
        $this->db->join('users','users.id = daily_check_suhu.user_id');
        $this->db->join('ketentuan','ketentuan.id = daily_check_suhu.ketentuan_id');
        $this->db->join('zona','zona.address = users.tempat_tinggal','left');
        $this->db->where('DATE(check_date) >=',date('Y-m-d', strtotime($params['start_date'])));
        $this->db->where('DATE(check_date) <=',date('Y-m-d', strtotime($params['end_date'])));

        $res = $this->db->get();
        return $res->result();
    }
}