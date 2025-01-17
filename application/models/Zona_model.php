<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Zona_model extends CI_Model {
    
    public function __construct() {
        parent::__construct();
    }

    public function ambilSemuaData()
    {
        $this->db->select('*');
        $this->db->from('zona');
        $hasil = $this->db->get();
        return $hasil->result();
    }

    public function getbyId($id)
    {
        $this->db->where('id', $id);
        $res = $this->db->get('zona');

        return $res->row();
    }

    public function insertData($data)
    {
        $this->db->insert('zona', $data);
    }

    public function updateData($data, $kondisi)
    {
        $this->db->update('zona', $data, $kondisi);
    }
}