<?php defined('BASEPATH') OR exit('No direct script access allowed');

use chriskacerguis\RestServer\RestController;

class User extends RestController {

    function __construct()
    {
        // Construct the parent class
        parent::__construct();
        $this->load->model('User_model');
        $this->load->library('uuid');
    }

    public function user_all_get()
    {
        $all = $this->User_model->all_data();

        if( empty($all) ) {
            $this->response( [
                'status' => '404',
                'message' => 'Data kosong'
            ], 404 );
        } else {
            $this->response( [
                'status' => '200',
                'data' => $all
            ], 200 );
        }
    }

    public function login_post()
    {
        $username = $this->post('username');
        $password = $this->post('password');

        if( $username == '' || $password == '' ) {
            $this->response( [
                'status' => false,
                'message' => 'Username dan password wajib diisi.'
            ], 500 );
        }

        $check = $this->User_model->login($username, md5($password));
        
        if( empty( $check) ) {
            $this->response( [
                'status'   => '300',
                'message'  => 'Username atau password salah.'
            ], 404 );
        } else {
            $this->response( [
                'status'   => '200',
                'data'     => $check
            ], 200 );
        }
    }   

    public function changePassword_post()
    {
        $employeeId     = $this->post('employeeId');
        $passOld        = $this->post('passwordOld');
        $passNew        = $this->post('passwordNew');
        $passNewConf    = $this->post('passwordNewConf');

        $checkUser = $this->User_model->ambilDataByEmployeeId($employeeId);
        // echo $this->db->last_query();die;
        if( empty($checkUser) ) {
            $this->response( [
                'status'   => '404',
                'message'  => 'User tidak ditemukan'
            ], 404 );
        } else {
            if( md5($passOld) != $checkUser->password ) {
                $this->response( [
                    'status'   => '500',
                    'message'  => 'Password lama yg diinput salah'
                ], 500 );
            } else {
                $updatePass = [
                    'password' => md5($passNew)
                ];

                $this->User_model->updateData($updatePass,['employee_id' => $employeeId]);

                $this->response( [
                    'status'   => '200',
                    'message'  => 'Ganti password sukses'
                ], 200 );
            }
        }
    }

    public function checkSuhu_post()
    {
        $suhu        = $this->post('suhu');
        $zona        = $this->post('zona');
        $employee_id = $this->post('employee_id');
        
        //update hit
        updateHitApiSuhu();

        if( $suhu == '' ) {
            $this->response( [
                'status' => false,
                'message' => 'Silahkan masukan suhu tubuh anda.'
            ], 500 );
        }

        $zonaStatus = 0;
        if( $zona == "Merah" ) {
            $zonaStatus = 2;
        } else if( $zona == 'Hijau' ) {
            $zonaStatus = 1;
        } else if( $zona == 'Kuning' ) {
            $zonaStatus = 3;
        }
        
        $userId = $this->db->get_where('users',['employee_id' => $employee_id])->row();

        $checkSuhuHariIni = $this->db->get_where('daily_check_suhu',['user_id' => $userId->id,'DATE(check_date)' => date('Y-m-d')])->row();
        $dataSuhu = [];

        if( $checkSuhuHariIni ) {
            $this->response( [
                'status' => 300,
                'message' => 'anda sudah lapor suhu hari ini.'
            ], 500 );
        } else {
            if( $suhu >= '38.2' OR $suhu > '38.2') {
                $suhuTinggi = "SELECT 
                                ketentuan.id,
                                ketentuan.rekomendasi,
                                zona_status.status as zona
                            from ketentuan 
                            join zona_status on zona_status.id = ketentuan.zona_status_id
                            where suhu_start >= '38.2' and suhu_start <= $suhu and zona_status_id = $zonaStatus ";
                $dataSuhu = $this->db->query($suhuTinggi)->row();
                $this->db->insert('daily_check_suhu',[
                    'id' => strtoupper($this->uuid->v4()),
                    'suhu' => $suhu,
                    'user_id' => $userId->id,
                    'check_date' => date('Y-m-d H:i:s'),
                    'ketentuan_id' => $dataSuhu->id,
                    'created_at'   => date('Y-m-d H:i:s'),
                    'updated_at'   => date('Y-m-d H:i:s'),
                ]);
            } elseif($suhu < '34' or $suhu <= '34.4') {
                $this->response( [
                    'status'   => '500',
                    'message'  => 'Cek kembali inputan anda'
                ], 500 );
            } else {

                $suhuRendah = "SELECT 
                                    ketentuan.id,
                                    ketentuan.rekomendasi,
                                    zona_status.status as zona
                            from ketentuan 
                            join zona_status on zona_status.id = ketentuan.zona_status_id
                            where $suhu
                            BETWEEN suhu_start  AND suhu_end 
                            and zona_status_id = $zonaStatus";
                $dataSuhu  = $this->db->query($suhuRendah)->row();

                $this->db->insert('daily_check_suhu',[
                    'id' => strtoupper($this->uuid->v4()),
                    'suhu' => $suhu,
                    'user_id' => $userId->id,
                    'check_date' => date('Y-m-d H:i:s'),
                    'ketentuan_id' => $dataSuhu->id,
                    'created_at'   => date('Y-m-d H:i:s'),
                    'updated_at'   => date('Y-m-d H:i:s'),
                ]);
            }
        }


        if( $dataSuhu ) {
            $this->response( [
                'status'   => '200',
                'data'     => $dataSuhu
            ], 200 );
        } else {
            $this->response( [
                'status'   => '500',
                'message'  => 'Cek kembali inputan anda'
            ], 500 );
        }
    }

    public function userForgotPass_post()
    {
        $employeeId     = $this->post('employeeId');
        $passNew        = $this->post('passwordNew');
        $passNewConf    = $this->post('passwordNewConf');

        $checkUser = $this->User_model->ambilDataByEmployeeId($employeeId);
        // echo $this->db->last_query();die;
        if( empty($checkUser) ) {
            $this->response( [
                'status'   => '404',
                'message'  => 'User tidak ditemukan'
            ], 404 );
        } else {
            
            $updatePass = [
                'password' => md5($passNew)
            ];

            $this->User_model->updateData($updatePass,['employee_id' => $employeeId]);

            $this->response( [
                'status'   => '200',
                'message'  => 'Ganti password sukses'
            ], 200 );
            
        }
    }
}