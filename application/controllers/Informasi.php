<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Informasi extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Informasi_model'); // di load modelnya
        $this->data = [];
        //cek udah login belum usernya
        if($this->session->userdata('is_login') == false ) {
            redirect('login');
        }

        $this->load->library('Uuid');
    }


    public function index()
    {
        $this->data['informasi'] = $this->Informasi_model->ambilSemuaData();
        $this->data['breadcrumb'] = "informasi";

        $this->load->view('header', $this->data);
        $this->load->view('informasi/index', $this->data);
        $this->load->view('footer');
    }

    public function create()
    {
        $this->data['breadcrumb'] = "informasi";
        $this->data['category']   = $this->db->get('covid_informasi_category')->result();
        $this->load->view('header', $this->data);
        $this->load->view('informasi/create', $this->data);
        $this->load->view('footer');
    }

    public function edit($id)
    {
        $this->data['breadcrumb'] = "informasi";
        $this->data['informasi']     = $this->Informasi_model->getbyId($id);

        $this->load->view('header', $this->data);
        $this->load->view('informasi/edit', $this->data);
        $this->load->view('footer');
    }

    public function store()
    {
        $request = $this->input->post();

        if($_FILES['file']['name']!="") {
            //load library
            $this->load->library('upload');
            
            //Set the config
            $config['upload_path'] = 'assets/uploads/informasi/'; //Use relative or absolute path
            $config['allowed_types'] = '*'; 
            $config['max_size'] = '*';
            $config['max_width'] = '*';
            $config['max_height'] = '*';
            $config['overwrite'] = FALSE; //If the file exists it will be saved with a progressive number appended
           
            // print_r($config);die;
            //Initialize
            $this->upload->initialize($config);
            
            //Upload file
            if( ! $this->upload->do_upload("file")){
                //echo the errors
                echo $this->upload->display_errors();
            }
            //If the upload success
            $file_name = $this->upload->file_name;
            $request['filename'] = $file_name;
            $request['path_storage']    = '/uploads/informasi/'.$file_name;
            $request['id']              = strtoupper($this->uuid->v4());
            $request['created_at']      = date('Y-m-d H:i:s');
            $request['updated_at']      = date('Y-m-d H:i:s');
            $request['created_by']      = $this->session->userdata('id');
            $request['updated_by']      = $this->session->userdata('id');

            $insert = $this->Informasi_model->insertData($request);

        }
        $this->session->set_flashdata('success','Insert data success');

        redirect('informasi');
    }

    public function update()
    {
        $request = $this->input->post();

        $insert = $this->Informasi_model->updateData($request, ['id' => $request['id']]);

        $this->session->set_flashdata('success','Update data success');

        redirect('informasi');
    }

    public function delete()
    {
        $id = $this->input->post('id');

        $delete = $this->Informasi_model->deleteData($id);

        $this->session->set_flashdata('success','Delete data success');

    }
}