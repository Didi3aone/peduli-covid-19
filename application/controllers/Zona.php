<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Zona extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Zona_model'); // di load modelnya
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
        $this->data['zona'] = $this->Zona_model->ambilSemuaData();
        $this->data['breadcrumb'] = "Zona";

        $this->load->view('header', $this->data);
        $this->load->view('zona/index', $this->data);
        $this->load->view('footer');
    }

    public function create()
    {
        $this->data['breadcrumb'] = "Zona";
        $this->data['status']     = $this->db->get('zona_status')->result();

        $this->load->view('header', $this->data);
        $this->load->view('zona/create', $this->data);
        $this->load->view('footer');
    }

    public function edit($id)
    {
        $this->data['breadcrumb'] = "Zona";
        $this->data['status']     = $this->db->get('zona_status')->result();
        $this->data['zona']       = $this->Zona_model->getbyId($id);

        $this->load->view('header', $this->data);
        $this->load->view('zona/edit', $this->data);
        $this->load->view('footer');
    }

    public function store()
    {
        $request = $this->input->post();

        if( $request['zona_status'] == 'Hijau' ) {
            $color = "green";
        } else if( $request['zona_status'] == 'Merah' ) {
            $color = "red";
        } else if($request['zona_status'] == 'Kuning') {
            $color = "yellow";
        }
        
        $request['id']         = strtoupper($this->uuid->v4());
        $request['color']      = $color;
        $request['created_at'] = date('Y-m-d H:i:s');
        $request['updated_at'] = date('Y-m-d H:i:s');
        $request['created_by'] = $this->session->userdata('id');
        $request['updated_by'] = $this->session->userdata('id');

        $insert = $this->Zona_model->insertData($request);

        $this->session->set_flashdata('success','Insert data success');

        redirect('zona');
    }

    public function update()
    {
        $request = $this->input->post();

         if( $request['zona_status'] == 'Hijau' ) {
            $color = "green";
        } else if( $request['zona_status'] == 'Merah' ) {
            $color = "red";
        } else if($request['zona_status'] == 'Kuning') {
            $color = "yellow";
        }
        
        $request['color']      = $color;
        $request['updated_at'] = date('Y-m-d H:i:s');
        $request['updated_by'] = $this->session->userdata('id');

        $insert = $this->Zona_model->updateData($request, ['id' => $request['id']]);

        $this->session->set_flashdata('success','Update data success');

        redirect('zona');
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
            $data = array(
                "id"                    => strtoupper($this->uuid->v4()),
                "address"               => $rowData[0][0],
                "zona_status"           => ucfirst($rowData[0][1]),
                "color"                 => $rowData[0][2],
                "valid_from"            => date('Y-m-d'),
                "valid_to"              => date('Y-m-30'),
                "created_at"            => date('Y-m-d H:i:s'),
                "updated_at"            => date('Y-m-d H:i:s'),
                "created_by"            => $this->session->userdata('id'),
                "updated_by"            => $this->session->userdata('id'),
            );
            $insert = $this->Zona_model->insertData($data);
        }
        
        $this->session->set_flashdata('success','Import data success');
        redirect('zona');
    }
}