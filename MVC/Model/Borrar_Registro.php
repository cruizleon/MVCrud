<?php
class Borrar_registro{
  public static function borrar(){

    try{

      require_once 'conectar.php';

      $Id=$_GET["Id"];
      //construyo la sentencia SQL, para borrar el argumento que recibo por la URL desde el formulario
      $conexion_db=new PDO('mysql:host=localhost; dbname=pruebas', 'root','');
      $conexion_db->query("DELETE FROM datos_usuarios WHERE ID='$Id'");
      //redirijo al Index para que no se quede en una página en blanco
      header("Location:/MVC/index.php");
  }
}

?>
