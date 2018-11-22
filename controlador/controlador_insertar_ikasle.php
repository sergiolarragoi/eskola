<?php

require_once '../modelo/ikasleClass.php';
require_once '../modelo/ikasleModel.php';


$ikasle = new ikasleModel();

$datosEnviados = filter_input(INPUT_GET, 'datosEnviados');

$misdatos = json_decode($datosEnviados);

$nombre = $misdatos->nombre;
$edad = $misdatos->edad;
$curso = $misdatos->curso;

$ikasle->setNombre($nombre);
$ikasle->setEdad($edad);
$ikasle->setCurso($curso);
$ikasle->insertar_ikasle();




