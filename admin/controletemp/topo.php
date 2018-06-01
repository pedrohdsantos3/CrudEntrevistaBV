<?php
session_start();
date_default_timezone_set('America/Sao_Paulo');
include("../configs/header.class.php");
$redir = new Redirect();

require_once("Template/template/view/Template.php");     
use template\view\Template;

include("classes/controlauser.class.php");

$cont = new Template("html/template.html");
$cont->addFile("HEADER", "html/header.html");
$cont->addFile("MENULEFT", "html/menuleft.html");
$cont->addFILE("MENURIGHT", "html/menuright.html");
$cont->addFile("FOOTER", "html/footer.html");

include("../configs/controlamenu.php");

$info_usu = $controle->retNivelUsuario($usuario);
$in = $info_usu->fetch(PDO::FETCH_ASSOC);
$cont->NOME_USU = utf8_encode($in["usu_nome"]);
$cont->NIVEL_USU = utf8_encode($in["nivel_nome"]);


?>
