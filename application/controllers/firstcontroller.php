<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Firstcontroller extends CI_Controller{

    function __construct(){

        parent::__construct();
        $this->load->helper('mihelper');
        $this->load->helper('form');
        $this->load->model('firstmodel');

    }

    function index(){

        $this->load->library('menu', array('Inicio', 'Contacto','Cursos'));
        $data['mi_menu'] = $this->menu->getMenu();
        $this->load->view('newtest/headers');
        $this->load->view('newtest/firstview', $data);

    }

    function holaperro(){

    }


}
?>