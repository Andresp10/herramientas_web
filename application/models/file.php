<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class File extends CI_Model {

    public function UploadImage($path = '', $type = '')
    {
        $config['upload_path'] = $path;
        $config['allowed_types'] = $type;

        $this->load->library('upload', $config);

        if ( ! $this->upload->do_upload()){
            $error = $this->upload->display_errors();
            return $error;
        }
        else{
            $file_data = $this->upload->data();
            return $file_data['file_name'];
        }
    }
}
?>