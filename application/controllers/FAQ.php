
<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class FAQ extends CI_Controller{

// public function __construct() {
//     		parent:: __construct();
//     		$this->load->Model('modelku');
// 		}

	public function index(){
		
		$this->load->view('FAQ');	
	
	}

}
	?>