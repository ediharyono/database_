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
	 * @see https://codeigniter.com/userguide3/general/urls.html
	 */
	public function index()
	{
		$this->load->view('welcome_message');
	}

	public function get_personal_gateway()
	{
		
		$token = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJzdmMtbG9naW4tdWlpIiwic3ViIjoiMDcxMDAyMjM5LTRhNTBlZDdjYjc0MzNmNzIxMDJkYzVmYWVkY2YyYmE4IiwiaWF0IjoxNzA0Njc1MDEwLCJleHAiOjE3MDQ5Nzc0MjB9.gMxS8rqLFNcSxaGYlTa0998a9yiZqvWc-JEK57tnG1A';
		$url = "https://cloud-api.uii.ac.id/v1/personal";
			$x_app = '0f243731-6883-11e8-bf86-005056806fe5'; 
			$x_menu  ='6c4c76b3-43fe-11ea-807f-506b8d2f0e5e';
	
			$ch = curl_init($url);
			curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
			curl_setopt($ch, CURLOPT_HTTPHEADER, array(
			'Content-Type: application/json',
			'Authorization: Bearer ' . $token,
//				'x-app: 0f243731-6883-11e8-bf86-005056806fe5',
//				'x-menu: 6c4c76b3-43fe-11ea-807f-506b8d2f0e5e',	
			));
			
			$result_profil = curl_exec($ch);	
			echo $result_profil;		
			$coba = json_decode($result_profil);
			$data_sync = json_encode($coba->data,true);
			$array = json_decode($data_sync, true);
			curl_close($ch);
	
	//$this->load->library('Uuid');
	$data ='';
	$array = json_decode($data_sync, true);
	
	echo $array;
	foreach($array as $row) //Extract the Array Values by using Foreach Loop
	  {
		$data = array (
			//'sort' => $this->uuid->v4(),
			//'uuid' => $row["uuid"],
			'nama_lengkap' => $row["nama_lengkap"],
			'nik_pegawai' => $row["nik_pegawai"],
			'nik_ktp' => $row["nik_ktp"],
			'progres_kelengkapan_data' => $row["progres_kelengkapan_data"],
			'status_validasi' => $row["status_validasi"],
 
		);
	  
		$insert = $this->sk->replace($data);
		}
	
	}	
////
public function academic_student_search($nim)
	{
		$this->load->model('academic_student_search/academic_student_search_model_datatable','sk');		
		$token = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJzdmMtbG9naW4tdWlpIiwic3ViIjoiMDcxMDAyMjM5LTRhNTBlZDdjYjc0MzNmNzIxMDJkYzVmYWVkY2YyYmE4IiwiaWF0IjoxNzA0Njc1MDEwLCJleHAiOjE3MDQ5Nzc0MjB9.gMxS8rqLFNcSxaGYlTa0998a9yiZqvWc-JEK57tnG1A';
		$url = "https://cloud-api.uii.ac.id/v1/academic/search-student?cari=".$nim;
			$x_app = '0f243731-6883-11e8-bf86-005056806fe5'; 
			$x_menu  ='5e8abd5d-222b-11ea-bb9a-506b8d2f0e5e';
	
			$ch = curl_init($url);
			curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
			curl_setopt($ch, CURLOPT_HTTPHEADER, array(
			'Content-Type: application/json',
			'Authorization: Bearer ' . $token,
 				'x-app: 0f243731-6883-11e8-bf86-005056806fe5',
 				'x-menu: 5e8abd5d-222b-11ea-bb9a-506b8d2f0e5e',	
			));
			
			$result_profil = curl_exec($ch);	
			echo $result_profil;		
			$coba = json_decode($result_profil);
			$data_sync = json_encode($coba->data,true);
			$array = json_decode($data_sync, true);
			curl_close($ch);
	
	//$this->load->library('Uuid');
	$data ='';
	$array = json_decode($data_sync, true);
	
	echo $array;
	foreach($array as $row) //Extract the Array Values by using Foreach Loop
	  {
		$data = array (
			//'sort' => $this->uuid->v4(),
			//'uuid' => $row["uuid"],

			'id_academic_search_student' => $row["nim"],
			'angkatan' => $row["angkatan"],
			'nama_mahasiswa' => $row["nama_mahasiswa"],
			'nim' => $row["nim"],
			'prodi' => $row["prodi"],
			'status' => $row["status"],
 
		);
	  
		$insert = $this->sk->replace($data);
		}
	
	}	
////

////
public function academic_data_master_student($nim)
	{
		$this->load->model('academic_data_master_student/academic_data_master_student_model_datatable','sk');		
		$token = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJzdmMtbG9naW4tdWlpIiwic3ViIjoiMDcxMDAyMjM5LTRhNTBlZDdjYjc0MzNmNzIxMDJkYzVmYWVkY2YyYmE4IiwiaWF0IjoxNzA0Njc1MDEwLCJleHAiOjE3MDQ5Nzc0MjB9.gMxS8rqLFNcSxaGYlTa0998a9yiZqvWc-JEK57tnG1A';
		$url = "https://cloud-api.uii.ac.id/v1/academic/data-master/student?nim=".$nim;
			$x_app = '0f243731-6883-11e8-bf86-005056806fe5'; 
			$x_menu  ='5e8abd5d-222b-11ea-bb9a-506b8d2f0e5e';
	
			$ch = curl_init($url);
			curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
			curl_setopt($ch, CURLOPT_HTTPHEADER, array(
			'Content-Type: application/json',
			'Authorization: Bearer ' . $token,
 				'x-app: 0f243731-6883-11e8-bf86-005056806fe5',
 				'x-menu: 0a04f03f-440b-11ea-807f-506b8d2f0e5e',	
			));
			
			$result_profil = curl_exec($ch);	
			echo $result_profil;		
			$coba = json_decode($result_profil);
			$data_sync = json_encode($coba->data,true);
			$array = json_decode($data_sync, true);
			curl_close($ch);
	
	//$this->load->library('Uuid');
	$data ='';
	$array = json_decode($data_sync, true);
	
	echo $array;
	foreach($array as $row) //Extract the Array Values by using Foreach Loop
	  {
		$data = array (
			//'sort' => $this->uuid->v4(),
			//'uuid' => $row["uuid"],


			'id' => $row["nim"],
			'nama_mahasiswa' => $row["nama_mahasiswa"],
			'nim' => $row["nim"],
			'alamat_asal' => $row["alamat_asal"],
			'alamat_domisili' => $row["alamat_domisili"],
			'sma' => $row["sma"],
			'jurusan_sma' => $row["jurusan_sma"],
			'kabupaten_sma' => $row["kabupaten_sma"],
			'nomor_telepon' => $row["nomor_telepon"],
			'email' => $row["email"],			
		);
	  
		$insert = $this->sk->replace($data);
		}
	
	}
	
	
	////////////////////////////////////////////////////////MYSQL KE FEEDER ///////////////////////////////////////////////////////
public function getdata()
{
	set_time_limit(0);
	$this->load->database();
	$this->db = $this->load->database('uii_gateway', TRUE);
	 
	$manual = array();
	$query = $this->db->get('academic_student_search');
	
	if( $query->num_rows() > 0) 
		{
		$result = $query->result(); //or $query->result_array() to get an array
		foreach( $result as $rows )
		{									
			 
			 $this->academic_data_master_student($rows->nim);
		$manual = array(	 	
					'nim'=>$rows->nim,
				 );

				//echo json_encode($manual,true);
				$data_manual = json_encode($manual,true);
 
			 
			echo $data_manual;


			} 	
		 				
		}	
} 
}
