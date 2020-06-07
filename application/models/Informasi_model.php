<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Informasi_model extends CI_Model {
    
    public function __construct() {
        parent::__construct();
    }

    public function ambilSemuaData()
    {
        $this->db->select('
            covid_informasi.*,
            covid_informasi_category.category
        ');
        $this->db->from('covid_informasi');
        $this->db->join('covid_informasi_category','covid_informasi_category.id = covid_informasi.category_id');
        $hasil = $this->db->get();
        return $hasil->result();
    }

    public function getbyId($id)
    {
        $this->db->where('id', $id);
        $res = $this->db->get('covid_informasi');

        return $res->row();
    }

    public function insertData($data)
    {
        $this->db->insert('covid_informasi', $data);
    }

    public function updateData($data, $kondisi)
    {
        $this->db->update('covid_informasi', $data, $kondisi);
    }

    public function deleteData($id)
    {
        $this->db->where('id',$id);
        $this->db->delete('covid_informasi');
    }
}