<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Divisi_model extends CI_Model {
    
    public function __construct() {
        parent::__construct();
    }

    public function ambilSemuaData()
    {
        $this->db->select('*');
        $this->db->from('divisi');
        $hasil = $this->db->get();
        return $hasil->result();
    }

    public function getbyId($id)
    {
        $this->db->where('id', $id);
        $res = $this->db->get('divisi');

        return $res->row();
    }

    public function insertData($data)
    {
        $this->db->insert('divisi', $data);
    }

    public function updateData($data, $kondisi)
    {
        $this->db->update('divisi', $data, $kondisi);
    }

    public function deleteData($id)
    {
        $this->db->where('id',$id);
        $this->db->delete('divisi');
    }
}