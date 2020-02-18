<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Documento sin título</title>
<link rel="stylesheet" type="text/css" href="estilos.css">
</head>

<body>

<h1>ACTUALIZAR</h1>

<!--Recupero los valores que esta pasando el formulario-->
<?php
require_once("Model/conectar.php");
/*Cuando la página se carga pro primera vez la información se recupera con GET, pero una vez esta
cargada y se pulsa el botón de actualizar, esta información no debe leerse, por que la información
se pasa por post, para evitar que al presionar actualizar los datos se vuelvan a leer lo metemos en un if*/

if(!isset($_POST["bot_actualizar"])){ //si no ha pulsado el boton actualizar, ejecutar instrucciones del if


    //$Id=$_GET["Id"];
    $email=$_GET["email"];
    $firstname=$_GET["firstname"];
    $lastname=$_GET["lastname"];
    $institution=$_GET["institution"];
    $department=$_GET["department"];
    $city=$_GET["city"];
    $country=$_GET["country"];
    $profile_field_Cargo=$_GET["profile_field_Cargo"];

    }else{//en caso que si haya pulsado el botón actualizar
    //El Id no lo muestra pero lo requiero como criterio en la sentencia SQL

    echo "entre al else";
    $Id=$_POST["Id"];
    $email=$_POST["email"];
    $firstname=$_POST["firstname"];
    $lastname=$_POST["lastname"];
    $institution=$_POST["institution"];
    $department=$_POST["department"];
    $city=$_POST["city"];
    $country=$_POST["country"];
    $profile_field_Cargo=$_POST["profile_field_Cargo"];



    //Sentencia SQL usando marcadores
    $SQL="UPDATE USUARIOS_PLATAFORMA SET email=:mail,firstname=:fname,lastname=:lname,institution=:intion,department=:partment,city=:cty,country=:ctry,profile_field_Cargo=:cargo WHERE Id=:miId";
    //Creo la consulta preparada para evitar la inyección SQL
    $resultado=$conexion_db->prepare($SQL);//crea consulta preparada
    //ejecutamos el array, asignando los parametros a cada variable
    $resultado->execute(array(":miId"=>$Id,":mail"=>$email,":fname"=>$firstname,":lname"=>$lastname,":intion"=>$institution,":partmen"=>$department,":cty"=>$city,":cargo"=>$profile_field_Cargo));
    //una vez asignados los valores, para verificar que se han actualizado los valores, regreso al index para confirmar
    header("Location:index.php");
  }
?>
<p>
</p>
<p>&nbsp;</p>
 <!--El action me permite que la información sea enviada a la misma página update con el método post-->
<form name="form1" method="post" action="<?php echo $_SERVER['PHP_SELF'];?>">
  <table width="25%" border="0" align="center">
    <tr>
      <td></td>
      <td><label for="id"></label>
       <!--Este type=hidden, significa que el valor existe, pero el ususario no li puede ver ni lo puede editar-->
      <input type="hidden" name="Id" id="id" value="<?php echo $Id ?>"></td>
    </tr>
    <tr>
      <td>Email</td>
      <td><label for="nom"></label>
      <input type="text" name="email" id="email" value="<?php echo $email ?>"</td>
    </tr>
    <tr>
      <td>firstname</td>
      <td><label for="ape"></label>
      <input type="text" name="firstname" id="firstname" value="<?php echo $firstname ?>"</td>
    </tr>
    <tr>
      <td>Lastname</td>
      <td><label for="dir"></label>
      <input type="text" name="lastname" id="lastname" value="<?php echo $lastname ?>"</td>
    </tr>
    <tr>
      <td>Institution</td>
      <td><label for="dir"></label>
      <input type="text" name="institution" id="institution" value="<?php echo $institution ?>"</td>
    </tr>
    <tr>
      <td>Department</td>
      <td><label for="dir"></label>
      <input type="text" name="department" id="department" value="<?php echo $department ?>"</td>
    </tr>
    <tr>
      <td>City</td>
      <td><label for="dir"></label>
      <input type="text" name="city" id="city" value="<?php echo $city ?>"</td>
    </tr>
    <tr>
      <td>Country</td>
      <td><label for="dir"></label>
      <input type="text" name="country" id="country" value="<?php echo $country ?>"</td>
    </tr>
    <tr>
      <td>Cargo</td>
      <td><label for="dir"></label>
      <input type="text" name="profile_field_Cargo" id="profile_field_Cargo" value="<?php echo $profile_field_Cargo ?>"</td>
    </tr>
    <tr>
       <!--Este botón cuando se pulsa, los datos son enviados a la misma página para actulizar el registro-->
      <td colspan="2"><input type="submit" name="bot_actualizar" id="bot_actualizar" value="Actualizar"></td>
    </tr>
  </table>
</form>
<script>
    $(document).ready(function(){
        $("#frm-alumno").submit(function(){
            return $(this).validate();
        });
    })
</script>
<p>&nbsp;</p>
</body>
</html>
