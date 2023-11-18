<?php
	defined('BASEPATH') OR exit('No direct script access allowed');
	
	class Dashboard extends CI_Controller {
	
		public function index()
		{
			$this->load->view('partials/head');
			$this->load->view('partials/header');
			$this->load->view('partials/sidebar');
			$this->load->view('admin/dashboard');
			$this->load->view('partials/footer');
		}
	
	}
	
	/* End of file Dashboard.php */
	/* Location: ./application/controllers/Dashboard.php */
?>