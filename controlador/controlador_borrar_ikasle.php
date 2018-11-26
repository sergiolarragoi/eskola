<?php

require_once '../modelo/ikasleClass.php';
require_once '../modelo/ikasleModel.php';

$cont = new ikasleModel();

$idBorrar = json_decode($_POST['enviarDato']);
$Id = $idBorrar->Id;

$cont->setId($id);
$cont->borrar_ikasle();

