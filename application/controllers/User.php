<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('User_model'); // di load modelnya
        $this->data = [];
        //cek udah login belum usernya
        if($this->session->userdata('is_login') == false ) {
            redirect('login');
        }

        $this->load->library('Excel');
        $this->load->library('Uuid');
    }


    public function index()
    {

        $this->data['user'] = $this->User_model->ambilSemuaData();
        $this->data['breadcrumb'] = "User";

        $this->load->view('header', $this->data);
        $this->load->view('user/index', $this->data);
        $this->load->view('footer');
    }

    public function create()
    {

        $this->data['breadcrumb'] = "User";
        $this->data['divisi']     = $this->db->get('divisi')->result();
        $this->data['zona']       = $this->db->get('zona')->result();
        $this->data['role']       = $this->db->get('role')->result();
        $this->load->view('header', $this->data);
        $this->load->view('user/create', $this->data);
        $this->load->view('footer');
    }

    public function show($id)
    {
        $this->data['user'] = $this->User_model->ambilDataById($id);
        $this->load->view('header');
        $this->load->view('user/show', $this->data);
        $this->load->view('footer');
    }

    public function edit($id)
    {
        $this->data['user'] = $this->User_model->ambilDataById($id);
        $this->data['divisi']     = $this->db->get('divisi')->result();
        $this->data['zona']       = $this->db->get('zona')->result();
        $this->data['role']       = $this->db->get('role')->result();

        $this->load->view('header');
        $this->load->view('user/edit', $this->data);
        $this->load->view('footer');
    }

    public function store()
    {
        $request = $this->input->post();
        $request['id']         = strtoupper($this->uuid->v4());
        $request['password']   = md5('1234');
        $request['created_at'] = date('Y-m-d H:i:s');
        $request['updated_at'] = date('Y-m-d H:i:s');

        $insert = $this->User_model->insertData($request);
        $this->session->set_flashdata('success','Insert data success');

        redirect('user');
    }

    public function update()
    {
        $request = $this->input->post();
        $request['updated_at'] = date('Y-m-d H:i:s');
        $update  = $this->User_model->updateData($request,['id' => $request['id']]);

        $this->session->set_flashdata('success','Update data success');

        redirect('user');
    }

    public function delete()
    {
        $id = $this->input->post('id');

        $delete = $this->User_model->deleteData($id);

        $this->session->set_flashdata('success','Delete data success');

    }

    public function import()
    {
        $fileName = $_FILES['file']['name'];
        
        $config['upload_path'] = './assets/uploads/excel/'; //path upload
        $config['file_name'] = $fileName;  // nama file
        $config['allowed_types'] = 'xls|xlsx|csv'; //tipe file yang diperbolehkan
        $config['max_size'] = 10000; // maksimal sizze
 
        $this->load->library('upload'); //meload librari upload
        $this->upload->initialize($config);
          
        if(! $this->upload->do_upload('file') ){
            echo $this->upload->display_errors();exit();
        }
        
        $fileName = str_replace(' ', '_', $fileName);
        $inputFileName = 'assets/uploads/excel/'.$fileName;
        try {
            $inputFileType = PHPExcel_IOFactory::identify($inputFileName);
            $objReader = PHPExcel_IOFactory::createReader($inputFileType);
            $objPHPExcel = $objReader->load($inputFileName);
        } catch(Exception $e) {
            die('Error loading file "'.pathinfo($inputFileName,PATHINFO_BASENAME).'": '.$e->getMessage());
        }

        $sheet = $objPHPExcel->getSheet(0);
        $highestRow = $sheet->getHighestRow();
        $highestColumn = $sheet->getHighestColumn();

        for ($row = 2; $row <= $highestRow; $row++){                  //  Read a row of data into an array                 
            $rowData = $sheet->rangeToArray('A' . $row . ':' . $highestColumn . $row,
                                            NULL,
                                            TRUE,
                                            FALSE);      
            $username = strtolower($rowData[0][1]); 
            $data = array(
                "id"                    => strtoupper($this->uuid->v4()),
                "employee_id"           => $rowData[0][0],
                "fullname"              => $rowData[0][1],
                "username"              => str_replace(' ','_',$username),
                "password"              => md5('1234'),
                "divisi"                => $rowData[0][2] ? $rowData[0][2] : "",
                "tempat_tinggal"        => $rowData[0][3] ? $rowData[0][3] : "",
                "transportasi_normal"   => $rowData[0][4] ? $rowData[0][4] : "",
                "transportasi_wfh"      => $rowData[0][5] ? $rowData[0][5] : "",
                "role_id"               => '069729EB-7070-4AA5-BFB4-461CAA322D0C',
                "created_at"            => date('Y-m-d H:i:s'),
                "updated_at"            => date('Y-m-d H:i:s'),
            );

            $insert = $this->User_model->insertData($data);
                    
        }
        
        $this->session->set_flashdata('success','Import data success');
        redirect('user');
    }
}
    