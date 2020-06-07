<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('User_model'); // di load modelnya
    }
    
    // ini buat nampilin view login
	public function index()
	{
		$this->load->view('login_view');
    }
    
    //ini proses login 
    public function proses_login()
    {
        //check postingan user
        $username = $this->input->post('username');
        $password = $this->input->post('password');

        //lalu cek di database usernya ada ngga ya 
        // karena pakai md5 kita encrypt ke md5 passwordnya
        $cek   = $this->User_model->login($username, md5($password));
        //cek lagi 
        if( $cek ) {
            //ini jika ada usernya 
            // masukin data2 user untuk di buat session login
            $dataSession = [
                'is_login' => true,//kasih nilai true krena dia bner2 login,
                'username' => $cek->username,
                'divisi'   => $cek->divisi,
                'id'        => $cek->id,
                'tempat_tinggal' => $cek->tempat_tinggal 
            ];

            $this->session->set_userdata($dataSession);

            //arahkan ke dashboard 
            redirect('dashboard');
        } else {
            //ini jika salah 
            //kmgkinan 
            $this->session->set_flashdata('error','Username atau password tidak cocok');
            redirect('login');
        }
    }

    public function logout()
    {
        $this->session->sess_destroy();

        redirect('login');
    }
}
