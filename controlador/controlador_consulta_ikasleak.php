<?php

require_once '../modelo/ikasleClass.php';
require_once '../modelo/ikasleModel.php';

$cont = new ikasleModel();
$cont->setList();

$datos = $cont->getJSONList();
$ikasleak = json_encode($datos);   //pasamos a formato json, cadena de caracteres
echo $ikasleak;
