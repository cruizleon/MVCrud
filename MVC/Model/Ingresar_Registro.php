<?php
class Ingresar_Registro{
  public static function ingresar(){

    try{

      require_once("conectar.php");

      $Id=$_GET["Id"];
      $nom=$_GET["nom"];
      $apell=$_GET["apell"];
      $dir=$_GET["dir"];

      $conexion_db=new PDO('mysql:host=localhost; dbname=pruebas', 'root','');
      $conexion_db->query("INSERT INTO DATOSUSUARIOS (Id, Nombre, Apellido, Direccion) VALUES ('Id', 'nom', 'apell', 'dir')");
      //redirijo al Index para que no se quede en una página en blanco
      header("Location:index.php");
      //header("Location:index.php");
  }
}

?>
