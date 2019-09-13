<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{
		/*$data = $this->db->query('select * from barang');
		foreach ($data->result_array() as $a) {
			echo "Kode barang : " . $a['kode_barang'] . 
			" Nama Barang :  " . $a['nama_barang'] . "<br/>" .
			" Satuan :  " . $a['satuan'] . "<br/>" .
			" Jumlah :  " . $a['jumlah'] . "<br/>" .
			" Harga :  " . $a['harga'] . "<br/>" .
			" Kategori :  " . $a['kategori'] ."<Hr/>";*/

			
			/*foreach ($data as $a) {
			echo "Kode barang : " . $a['kode_barang'] . 
			" Nama Barang :  " . $a['nama_barang'] . "<br/>" .
			" Satuan :  " . $a['satuan'] . "<br/>" .
			" Jumlah :  " . $a['jumlah'] . "<br/>" .
			" Harga :  " . $a['harga'] . "<br/>" .
			" Kategori :  " . $a['kategori'] ."<Hr/>";
			}*/
			$id= $this->session->userdata('id_user');
			$data = $this->modelku->getKueBaru();
			$count = $this->modelku->count($id);
			$this->load->view('home',array('data' => $data, 'count'=>$count));

		}

		function logout(){
		$this->session->sess_destroy();
		redirect('login');
	}

	}

