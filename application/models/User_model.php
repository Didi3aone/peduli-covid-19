<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User_model extends CI_Model {
    
    public function __construct() {
        parent::__construct();
    }

    public function login( $username, $password )
    {
        $this->db->select(
            '
            users.id,
            users.employee_id,
            users.username,
            users.fullname,
            users.password,
            users.divisi,
            users.tempat_tinggal,
            users.transportasi_normal,
            users.transportasi_wfh,
            users.role_id,
            role.role_name as level,
            zona.address as zona,
            zona.zona_status'
        );
        $this->db->from('users');
        $this->db->join('zona','zona.address = users.tempat_tinggal','left');
        $this->db->join('role','role.id = users.role_id');
        $this->db->where("(users.username = '$username' OR users.employee_id = '$username')");
        $this->db->where('password', $password);
        $this->db->where('is_active', 1);

        $hasil = $this->db->get()->row();
        return $hasil;
    }

    public function ambilSemuaData()
    {
        $this->db->select('
            users.id as user_id,
            zona.color,
            users.fullname,
            users.employee_id,
            users.divisi,
            users.tempat_tinggal,
            users.transportasi_normal,
            users.transportasi_wfh
        ');
        $this->db->from('users');
        $this->db->join('zona','zona.address = users.tempat_tinggal','left');
        $this->db->where('zona.valid_to >= ', date('Y-m-d'));
        $hasil = $this->db->get();
        return $hasil->result();
    }

    public function all_data()
    {
        $this->db->select(
            '
            users.id,
            users.employee_id,
            users.username,
            users.fullname,
            users.password,
            users.divisi,
            users.tempat_tinggal,
            users.transportasi_normal,
            users.transportasi_wfh,
            users.role_id,
            role.role_name as level,
            zona.address as zona,
            zona.zona_status'
        );
        $this->db->from('users');
        $this->db->join('zona','zona.address = users.tempat_tinggal','left');
        $this->db->join('role','role.id = users.role_id');
        $this->db->where('is_active', 1);

        $hasil = $this->db->get()->result();
        return $hasil;
    }

    public function ambilDataById($id)
    {
        $this->db->select('*');
        $this->db->from('users');
        $this->db->where('id', $id);
        $hasil = $this->db->get();
        return $hasil->row();
    }

    public function insertData($data)
    {
        $this->db->insert('users', $data);
    }

    public function updateData($data, $kondisi)
    {
        return $this->db->update('users',$data, $kondisi);
    }

    public function deleteData($id)
    {
        $this->db->where('id',$id);
        $this->db->delete('users');
    }
}
?>