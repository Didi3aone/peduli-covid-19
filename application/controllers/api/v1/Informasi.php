<?php defined('BASEPATH') OR exit('No direct script access allowed');

use chriskacerguis\RestServer\RestController;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\IOFactory;
use PhpOffice\PhpSpreadsheet\Helper\Sample;

class Informasi extends RestController {

    function __construct()
    {
        // Construct the parent class
        parent::__construct();
        $this->load->model('Informasi_model');
    }

    public function index_get()
    {
        $informasi = $this->Informasi_model->ambilSemuaData();

        if( empty($informasi) ) {
            $this->response( [
                'status' => '404',
                'message' => 'Data kosong'
            ], 404 );
        } else {
            $info = [];
            foreach( $informasi as $row ) {
                $info[] = [
                    'link' => base_url()."assets/uploads/informasi/".$row->filename,
                    'category' => $row->category,
                    'category_id' => $row->category_id,
                    'title'       => $row->title
                ];
            }
            $this->response( [
                'status' => '200',
                'data' => $info
            ], 200 );
        }
    }
}