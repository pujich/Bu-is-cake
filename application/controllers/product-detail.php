
<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Product-detail extends CI_Controller{

public function __construct() {
    		parent:: __construct();
    		$this->load->Model('modelku');
		}

	public function index(){
		//$data['results'] = $this->Model_futsal->login_user($username,$pass);
        //$this->load->helper(array('form','url'));
        $data = $this->modelku->getDetailBarang($item);
		$this->load->view('Product-detail', array('data' => $data));	
		// if($this->session->userdata('isAdmin')==FALSE)
		// {
		// 	redirect('Home');
		// }else{
		// 	redirect('login');}
	}

	public function addCart($data){
		$data = $this->modelku->insertCart($item);
	}

}
	?>