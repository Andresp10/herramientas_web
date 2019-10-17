<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class UsuariosController extends CI_Controller{

    function __construct(){

        parent::__construct();
        $this->load->helper('mihelper');
        $this->load->helper(array('form', 'url'));
        $this->load->model('usuariosModel');
        $this->load->model('file');


    }
    function index(){
        $this->load->view('newtest/headers');
        $data['url'] = $this->uri->segment(3);

        if (!$data['url']){

            $data['usuarios'] = $this->usuariosModel->getUsuarios();

        }else{

            $data['usuarios'] = $this->usuariosModel->buscarUsuario($data['url']);
        }

        $this->load->view('usuarios/viewUsuarios', $data);
    }
    function newusuario(){

        $this->load->view('newtest/headers');
        $this->load->view('usuarios/insertUsuario');
    }
    function recibirdatos(){

        //J201808200001

        $nombreArchivo = $_FILES['userfile']['name'];
        $contenido = file($_FILES['userfile']['tmp_name']); // retorna el contenido del archivo en un array
        $num_caracteres = strpos($_FILES['userfile']['name'], ".");
        $tamanio = $_FILES['userfile']['size']; // retorna el tamaño del archivo en bytes

		if ($_FILES['userfile']['type'] == "text/plain" && $tamanio > 0){

			//substr($nombreArchivo, 1, 8) --> substr(valor, inicio, longitud a partir del inicio)
			if (substr($nombreArchivo, 0, 1) === "J" & substr($nombreArchivo, 1, 8) == date('Ymd') & substr($nombreArchivo, 9, 4) != "0000"){

				$response = $this->file->UploadImage('./public/img/', 'txt');
				//$response['full_path'] -->  ["full_path"]=> string(56) "C:/xampp/htdocs/codeIgniter/public/img/J201808200001.txt"
				if($response == true){

					$data = array(

						'NickName' => $this->input->post('NickName'),
						'Telefono' => $this->input->post('Telefono'),
						'Genero' => $this->input->post('Genero'),
						'Archivo' => $_FILES['userfile']['name']

					);
					$this->usuariosModel->registrarUsuario($data);
					$this->index();

				}else{
					echo "Error al cargar el archivo en el servidor -->  " . $response;
				}
			}else{
				echo "El formato del archivo no es valido";
			}
		}
    }

    function recibirArchivo(){

        $nombreArchivo = $_FILES['userfile']['name'];
        $contenido = file($_FILES['userfile']['tmp_name']); // retorna el contenido del archivo en un array
        $num_caracteres = strpos($_FILES['userfile']['name'], ".");
        $tamanio = $_FILES['userfile']['size']; // retorna el tamaño del archivo en bytes

        $nombre = explode(".",$nombreArchivo); // se hace un split al nombre y se le quita la extencion

		if ($_FILES['userfile']['type'] == "text/plain" && $tamanio > 0) {

			if (substr($contenido[0], 0, 13) == $nombre[0]) {

				echo "El archiivo esta OK";

				$response = $this->file->UploadImage('./public/img/', 'txt');
				//$response['full_path'] -->  ["full_path"]=> string(56) "C:/xampp/htdocs/codeIgniter/public/img/J201808200001.txt"
				if ($response == true) {

					unset($contenido[0]);
					foreach ($contenido as $linea) {

						$items = explode(",", $linea);
						$data = array(
							'NickName' => $items[0],
							'Telefono' => $items[1],
							'Genero' => $items[2],
							'Estado' => rtrim($items[3]),
							'Archivo' => $nombreArchivo
						);
						$this->usuariosModel->registrarUsuario($data);
					}
					$this->index();
				} else {
					echo "Error al cargar el archivo en el servidor -->  " . $response;
				}
			} else {
				echo "Error, el nombre del archivo no coincide con la fila de control";
			}
		}
    }
}
?>
