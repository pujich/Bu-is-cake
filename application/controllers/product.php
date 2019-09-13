<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Product extends CI_Controller {

public function index()
	{		
			$kat= $_POST['kat'];

			$data = $this->modelku->getKueK($kat);
			$this->load->view('product',array('data' => $data));
		}

	}
