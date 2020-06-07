<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Ketentuan_model extends CI_Model {
    
    public function __construct() {
        parent::__construct();
    }

    public function ambilSemuaData()
    {
        $this->db->select('*');
        $this->db->from('ketentuan');
        $this->db->join('zona_status','zona_status.id = ketentuan.zona_status_id');
        $hasil = $this->db->get();
        return $hasil->result();
    }

    public function insertData($data)
    {
        $this->db->insert('ketentuan', $data);
    }
}