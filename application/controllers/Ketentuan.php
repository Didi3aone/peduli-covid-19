<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Ketentuan extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        //cek udah login belum usernya
        if($this->session->userdata('is_login') == false ) {
            redirect('login');
        }

        $this->load->model('Ketentuan_model');
        $this->load->library('uuid');
        $this->data = [];
    }

    public function index()
    {
        $this->data['ketentuan'] = $this->Ketentuan_model->ambilSemuaData();
        $this->load->view('header');
        $this->load->view('ketentuan/index', $this->data);
        $this->load->view('footer');
    }

    public function create()
    {
        $this->data['zona'] = $this->db->get('zona_status')->result();
        $this->load->view('header');
        $this->load->view('ketentuan/create',$this->data);
        $this->load->view('footer');
    }

    public function store()
    {
        $request = $this->input->post();
        $request['id']         = strtoupper($this->uuid->v4());
        $request['created_at'] = date('Y-m-d H:i:s');
        $request['updated_at'] = date('Y-m-d H:i:s');
        $request['created_by'] = $this->session->userdata('id');
        $request['updated_by'] = $this->session->userdata('id');

        $insert = $this->Ketentuan_model->insertdata($request);

        $this->session->set_flashdata('success','Insert data success');

        redirect('ketentuan');
    }
}