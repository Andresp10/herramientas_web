<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class UsuariosModel extends CI_Model {

    public function __construct(){

        parent::__construct();
        $this->load->database();

    }
    function registrarUsuario($data){

        $this->db->insert('usuarios', $data);

    }
    function getUsuarios(){
        $query = $this->db->get('usuarios');
        if($query->num_rows() > 0){
            return $query;
        }else{
            return false;
        }
    }
    function buscarUsuario($url){

        $this->db->where('idUsuarios', $url);
        $query = $this->db->get('usuarios');

        if($query->num_rows() > 0){

            return $query;
        }else{

            return false;
        }

    }
}
?>