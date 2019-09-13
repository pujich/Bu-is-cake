
<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Cart extends CI_Controller{

public function __construct() {
    		parent:: __construct();
    		$this->load->Model('modelku');
		}

	public function index(){
		//$data['results'] = $this->Model_futsal->login_user($username,$pass);
        //$this->load->helper(array('form','url'));
        $id= $this->session->userdata('id_user');
        $data = $this->modelku->getCart($id);
		$this->load->view('cart', array('data' => $data));	
		// if($this->session->userdata('isAdmin')==FALSE)
		// {
		// 	redirect('Home');
		// }else{
		// 	redirect('login');}
	}

	public function addCart($idKue) {
		$id = $this->session->userdata('id_user');

		$data = array('id_kueC'=>$idKue, 'id_userC' => $id);
		$this->modelku->insertCart($data);
		redirect('cart');
	}

	public function updateCart($id) {

		$qty = $_POST['qty'];
		$data = array('qty'=>$qty);
		
		$this->modelku->updateCart($data, $id);
		
		redirect('cart');
	}

}
	?>