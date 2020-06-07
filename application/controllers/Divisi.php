<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Divisi extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Divisi_model'); // di load modelnya
        $this->data = [];
        //cek udah login belum usernya
        if($this->session->userdata('is_login') == false ) {
            redirect('login');
        }

        $this->load->library('Uuid');
    }


    public function index()
    {
        $this->data['divisi'] = $this->Divisi_model->ambilSemuaData();
        $this->data['breadcrumb'] = "Divisi";

        $this->load->view('header', $this->data);
        $this->load->view('divisi/index', $this->data);
        $this->load->view('footer');
    }

    public function create()
    {
        $this->data['breadcrumb'] = "Divisi";

        $this->load->view('header', $this->data);
        $this->load->view('divisi/create', $this->data);
        $this->load->view('footer');
    }

    public function edit($id)
    {
        $this->data['breadcrumb'] = "Divisi";
        $this->data['divisi']     = $this->Divisi_model->getbyId($id);

        $this->load->view('header', $this->data);
        $this->load->view('divisi/edit', $this->data);
        $this->load->view('footer');
    }

    public function store()
    {
        $request = $this->input->post();

        $insert = $this->Divisi_model->insertData($request);

        $this->session->set_flashdata('success','Insert data success');

        redirect('divisi');
    }

    public function update()
    {
        $request = $this->input->post();

        $insert = $this->Divisi_model->updateData($request, ['id' => $request['id']]);

        $this->session->set_flashdata('success','Update data success');

        redirect('divisi');
    }

    public function delete()
    {
        $id = $this->input->post('id');

        $delete = $this->Divisi_model->deleteData($id);

        $this->session->set_flashdata('success','Delete data success');

    }
}