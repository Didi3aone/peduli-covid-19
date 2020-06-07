<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Ketentuan_model extends CI_Model {
    
    public function __construct() {
        parent::__construct();
    }

    public function ambilSemuaData()
    {
        $this->db->select('
            ketentuan.*,
            zona_status.status
        ');
        $this->db->from('ketentuan');
        $this->db->join('zona_status','zona_status.id = ketentuan.zona_status_id');
        $hasil = $this->db->get();
        return $hasil->result();
    }

    public function getbyId($id)
    {
        $this->db->where('id', $id);
        $res = $this->db->get('ketentuan');

        return $res->row();
    }

    public function insertData($data)
    {
        $this->db->insert('ketentuan', $data);
    }

    public function updateData($data, $kondisi)
    {
        $this->db->update('ketentuan', $data, $kondisi);
    }
}