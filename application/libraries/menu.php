<?php

class menu{

    private $arreglo_menu;

    public function __construct($array){

        $this->arreglo_menu = $array;

    }

    public function getMenu(){
        $menu = "<nav><ul>";

        foreach ($this->arreglo_menu as $item){

            $menu .= "<li>.$item.</li>";


        }

        $menu .= "</ul></nav>";

        return $menu;
    }

}
?>