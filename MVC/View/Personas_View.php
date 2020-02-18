<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>CRUD - MVC</title>
<!--llama la hoja de estilos-->
<link rel="stylesheet" type="text/css" href="estilos.css">
</head>
<body>
<?php  require("model/paginacion.php");

?>
<Form action="Controler/Personas_Controlador" method="get">

  <table width="50%" border="0" align="center">
    <tr > <!--TR crea las filas en la tabla-->
      <td class="primera_fila">Id</td> <!--TD maneja las columnas de la tabla-->
      <td class="primera_fila">Email</td>
      <td class="primera_fila">Firsname</td>
      <td class="primera_fila">Lastname</td>
      <td class="primera_fila">Institution</td>
      <td class="primera_fila">Department</td>
      <td class="primera_fila">City</td>
      <td class="primera_fila">Country</td>
      <td class="primera_fila">Cargo</td>
      <td class="sin">&nbsp;</td>
      <td class="sin">&nbsp;</td>
      <td class="sin">&nbsp;</td>
      <td class="sin">&nbsp;</td>
      <td class="sin">&nbsp;</td>
      <td class="sin">&nbsp;</td>
      <td class="sin">&nbsp;</td>
      <td class="sin">&nbsp;</td>
      <td class="sin">&nbsp;</td>
    </tr>

		<!-- filas que requiero repetir n veces, conforme el número de registros de la BD-->
   	<?php
    foreach($this->model->get_Usuarios() as $usuario):?>
    <tr>

      <td><?php echo $usuario['Id']?></td>
      <td><?php echo $usuario["email"]?></td>
      <td><?php echo $usuario["firstname"]?></td>
      <td><?php echo $usuario["lastname"]?></td>
      <td><?php echo $usuario["institution"]?></td>
      <td><?php echo $usuario["department"]?></td>
      <td><?php echo $usuario["city"]?></td>
      <td><?php echo $usuario["country"]?></td>
      <td><?php echo $usuario["profile_field_Cargo"]?></td>
      <!--Con el boton borrar,  llamar el archivo Borrar_Registro y le paso el Id a eliminar
      despues de llamar la pagina Borrar_Registro.php, agrego un ? y el nombre del parametro
      ademas de eso no puedo decirle que el ?Id=3, porque siempre me estaría refiriendo al registro 3
      lo que debo hacer es insertar un código PHP, para pasarle ese parametro dinamicamente, es decir el Id
      del objeto que el bucle foreach este evaluando en el momento, del botón que se haya oprimido-->


      <td class='bot'><a  onclick="javascript:return confirm('¿Seguro de eliminar este registro?');"
          href="?c=USUARIOS_PLATAFORMA&a=borrar&Id=<?php echo $usuario["Id"] ?>">
          <input type='button' name='delete' id='delete' value='Borrar'></a>
      </td>
 <!--Con el boton borrar,  llamar el archivo Borrar_Registro y le paso el Id a eliminar
      despues de llamar la pagina Borrar_Registro.php, agrego un ? y el nombre del parametro-->

      <td class='bot'><a  onclick="javascript:return confirm('editar usuario');"
          href="?c=USUARIOS_PLATAFORMA&a=Crud&email=<?php echo $usuario["email"] ?> & firstname=<?php echo $usuario["firstname"]?>
          & lastname=<?php echo $usuario["lastname"]?>& institution=<?php echo $usuario["institution"]?>& department=<?php echo $usuario["department"]?>
          & city=<?php echo $usuario["city"]?>& country=<?php echo $usuario["country"]?>& profile_field_Cargo=<?php echo $usuario["profile_field_Cargo"]?>">
          <input type='button' name='Agrega' id='Agrega' value='Actualizar'></a>
    </tr>  <!-- finaliza la primera fila-->
	  <?php
    endforeach;
    ?>

  <tr>
	<td></td>
      <td><input type='text' name='email' size='10' class='centrado'></td>
      <td><input type='text' name='firstname' size='10' class='centrado'></td>
      <td><input type='text' name='lastname' size='10' class='centrado'></td>
      <td><input type='text' name='institution' size='10' class='centrado'></td>
      <td><input type='text' name='department' size='10' class='centrado'></td>
      <td><input type='text' name='city' size='10' class='centrado'></td>
      <td><input type='text' name='country' size='10' class='centrado'></td>
      <td><input type='text' name='profile_field_Cargo' size='10' class='centrado'></td>
      <!--este bóton insertar es de tipo submit, para que envié la info a la BD-->
      <td class='bot'><a  onclick="javascript:return confirm('usuario agregado');"
          href="?c=USUARIOS_PLATAFORMA&a=Registrar">
          <input type='button' name='Agrega' id='Agrega' value='Agrega'></a>
      </td>
     <?php
//___________________________BLOQUE CODIGO PAGINACION__________________________

  for($i=1; $i<=$total_paginas; $i++){

            echo "<a href='?pagina=" . $i . "'>" . $i . "</a>  ";
      }


//___________________-----FINALIZA BLOQUE PAGINACION_____________________________________
      ?>
  </td></tr>
  </table>
</Form>
<p>&nbsp;</p>
</body>
</html>
