<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller{

public function __construct() {
    		parent:: __construct();
    		$this->load->Model('modelku');
		}

	public function index(){
 
		$this->load->view('login');	
	}

	public function aksi_login(){
		$user_login=array(
			'username'=>$this->input->post('username'),
			'password'=>$this->input->post('password')
 		);
		
		$data=$this->modelku->login_user($user_login['username'],$user_login['password']);

		if($data){
	    	$this->session->set_userdata('id_user',$data['id_user']);
        	$this->session->set_userdata('nama_user',$data['nama_user']);
        	$this->session->set_userdata('username',$data['username']);
        	$this->session->set_userdata('isAdmin',$data['isAdmin']);
	    	//redirect('home');
	    	if ($this->session->userdata('isAdmin')==TRUE) { // Halaman Admin
				redirect('admin');
			}
			else if ($this->session->userdata('isAdmin')==FALSE) { // Halaman User
				redirect('welcome');
			}
	    	//$this->load->view('Home');
        }	else{
                	$message = "Username / Password salah";
					echo "<script type='text/javascript'>alert('$message');window.location.href='".base_url('Login')."';</script>";
	  		//$this->load->view('Home');
		}
	}


	
	
}
	?>