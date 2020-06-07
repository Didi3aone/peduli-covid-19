<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        //cek udah login belum usernya
        if($this->session->userdata('is_login') == false ) {
            redirect('login');
        }
    }

    public function index()
    {

        $this->data['total_user'] = count($this->db->get('users')->result());
        $this->data['total_suhu'] = count($this->db->get('daily_check_suhu')->result());
        $this->load->view('header');
        $this->load->view('dashboard', $this->data);
        $this->load->view('footer');
    }
}