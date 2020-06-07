<?php defined('BASEPATH') OR exit('No direct script access allowed');

use chriskacerguis\RestServer\RestController;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\IOFactory;
use PhpOffice\PhpSpreadsheet\Helper\Sample;

class Report extends RestController {

    function __construct()
    {
        // Construct the parent class
        parent::__construct();
        $this->load->model('Report_model');
    }

    public function export_post()
    {
        $params = [];
        $params['start_date'] = $this->post('start_date');
        $params['end_date']   = $this->post('end_date');

        $report = $this->Report_model->getReportCheckSuhu($params);

        $spreadsheet = new Spreadsheet();

        $spreadsheet->getProperties()->setCreator('Didi triawan')
                    ->setLastModifiedBy('Didi triawan - Inaftech.com')
                    ->setTitle('Office 2007 XLSX Test Document')
                    ->setSubject('Office 2007 XLSX Test Document')
                    ->setDescription('Test document for Office 2007 XLSX, generated using PHP classes.')
                    ->setKeywords('office 2007 openxml php')
                    ->setCategory('Daily check suhu');

        $spreadsheet->setActiveSheetIndex(0)
                    ->setCellValue('A1', 'Nama')
                    ->setCellValue('B1', 'Divisi')
                    ->setCellValue('C1', 'Tempat Tinggal')
                    ->setCellValue('D1', 'Tanggal input')
                    ->setCellValue('E1', 'Zona')
                    ->setCellValue('F1', 'Suhu')
                    ->setCellValue('G1', 'Rekomendasi');

        $i = 2;
        foreach($report as $reports) {
            $spreadsheet->setActiveSheetIndex(0)
                        ->setCellValue('A' . $i, $reports->fullname)
                        ->setCellValue('B' . $i, $reports->divisi)
                        ->setCellValue('C' . $i, $reports->tempat_tinggal)
                        ->setCellValue('D' . $i, date('Y-m-d', strtotime($reports->check_date)))
                        ->setCellValue('E' . $i, $reports->zona_status)
                        ->setCellValue('F' . $i, $reports->suhu)
                        ->setCellValue('G' . $i, $reports->rekomendasi);
            $i++;
        }

        $spreadsheet->getActiveSheet()->setTitle('Report Excel '.date('d-m-Y H'));
        $spreadsheet->setActiveSheetIndex(0);

        $fileName = date('Y-m-d')."_".time();
        // Redirect output to a client’s web browser (Xlsx)
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment;filename="'.$fileName.'.xlsx"');
        header('Cache-Control: max-age=0');
        // If you're serving to IE 9, then the following may be needed
        header('Cache-Control: max-age=1');

        // If you're serving to IE over SSL, then the following may be needed
        header('Expires: Mon, 26 Jul 1997 05:00:00 GMT'); // Date in the past
        header('Last-Modified: ' . gmdate('D, d M Y H:i:s') . ' GMT'); // always modified
        header('Cache-Control: cache, must-revalidate'); // HTTP/1.1
        header('Pragma: public'); // HTTP/1.0

        $writer = IOFactory::createWriter($spreadsheet, 'Xlsx');
        $writer->save('assets/generate-file/excel/'.$fileName.".xlsx");

        $this->response( [
            'status'  => '200',
            'data'    => [
                'fileName' => $fileName.".xlsx",
                'linkPath' => base_url()."assets/generate-file/excel/".$fileName.".xlsx"
            ]  
        ], 200 );
     }
}