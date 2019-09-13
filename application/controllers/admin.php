
<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller{

public function __construct() {
    		parent:: __construct();
    		$this->load->Model('modelku');
		}

	public function index(){
		//$data['results'] = $this->Model_futsal->login_user($username,$pass);
        //$this->load->helper(array('form','url'));
        $data = $this->modelku->getAllCart();
		$this->load->view('admin', array('data' => $data));	
		// if($this->session->userdata('isAdmin')==FALSE)
		// {
		// 	redirect('Home');
		// }else{
		// 	redirect('login');}
	}

	public function getPenjualan(){
		$data = $this->modelku->getPen();
		$this->load->view('tables', array('data' => $data));	

	}

	public function lunaskan($id){

		$id_user = $_POST['id_user'];
		$id_kue = $_POST['id_kue'];
		$qty = $_POST['qty'];
		$total = $_POST['total'];

		$data_insert = array('id_userD'=>$id_user, 'id_kueD' => $id_kue, 'qty' => $qty , 'total' =>$total);
       	$this->modelku->insertData($data_insert);

		$this->modelku->lunas($id);
		redirect('admin');	

	}

	function logout(){
		$this->session->sess_destroy();
		redirect('login');
	}

}
	?>