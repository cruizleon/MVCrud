<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>CRUD</title>
<!--llama la hoja de estilos-->
<link rel="stylesheet" type="text/css" href="estilos.css">
</head>
<body>
<h1>MODELO VISTA CONTROLADOR - CRUD<span class="subtitulo">Create Read Update Delete</span></h1>
<br>
<?php
    /*require_once("controler/Personas_Controlador.php");
		$controller = new Controller();
		$controller->Index();*/
		require_once 'Model/conectar.php';

		$controller = 'USUARIOS_PLATAFORMA';

		// Todo esta lógica hara el papel de un FrontController
		if(!isset($_REQUEST['c']))
		{
		    require_once "controler/Personas_Controlador.php";
		    $controller = ucwords($controller) . 'Controller';
		    $controller = new Controller();
		    $controller->Index();
		}
		else
		{
		    // Obtenemos el controlador que queremos cargar
		    $controller = strtolower($_REQUEST['c']);
		    $accion = isset($_REQUEST['a']) ? $_REQUEST['a'] : 'Index';

		    // Instanciamos el controlador
		    require_once "controler/Personas_Controlador.php";
		    $controller = ucwords($controller) . 'Controller';
		     $controller = new Controller();

		    // Llama la accion
		    call_user_func( array( $controller, $accion ) );
		}
?>
</body>
</html>
