<?php // 

require_once("../modelo/ikasleClass.php");
require_once("../modelo/ikasleModel.php");
$cont=new ikasleModel();
/////////////////////CONTINUAR//////////////////
$cont->setList();
$datos=$cont->getJSONList();

$ikasleak= json_encode($datos);
echo $ikasleak;
   



