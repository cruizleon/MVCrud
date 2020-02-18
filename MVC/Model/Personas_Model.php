
<?php
	class Personas_Model{

		private $pdo;
		public $Id;
		private $conexion_db;
		private $usuarios;
		public function __construct(){
			//requiere once impide la carga de un mismo archivo más de una vez. Si incluimos el mismo código más de una vez corremos el riesgo de redeclaraciones de variables, funciones o clases
			require_once("Model/conectar.php");
			$this->conexion_db=conectar::conexion();
			$this->usuarios=array();
		}
		public function get_Usuarios(){
			require ("paginacion.php");
			//establecemos el limite del número de registro a mostrar segun la paginación

		//	$SQL=$this->conexion_db->query("SELECT * FROM DATOS_USUARIOS");

			//EL PARAMETRO LIMIT MANEJA DOS PARAMETROS, CUAL ES EL PRIMER REGISTRO Y CUAL ES EL ULTIMO A MOSTRAR

			$SQL=$this->conexion_db->query("SELECT * FROM USUARIOS_PLATAFORMA LIMIT $empezar_desde, $tamano_paginas");
			while($fila=$SQL->fetch(PDO::FETCH_ASSOC)){
				$this->usuarios[]=$fila;
			}
			return $this->usuarios;
		}

		public function borrar($Id)
		{
			try
			{
				$stm = $this->conexion_db->prepare("DELETE FROM USUARIOS_PLATAFORMA WHERE Id = ?");

				$stm->execute(array($Id));
			} catch (Exception $e)
			{
				die($e->getMessage());
			}
		}

		public function Actualizar($data)
		{
			try
			{
				$SQL = "UPDATE USUARIOS_PLATAFORMA SET email,firstname,lastname,institution,department,city,country,profile_field_Cargo WHERE Id = ?";

				$this->conexion_db->prepare($SQL)
				     ->execute(
					    array(
								$data->email,
								$data->firstname,
								$data->lastname,
								$data->institution,
								$data->department,
								$data->city,
								$data->country,
								$data->profile_field_Cargo
						)
					);
			} catch (Exception $e)
			{
				die($e->getMessage());
			}
		}
		public function Registrar($email,$firstname,$lastname,$institution,$department,$city,$country,$profile_field_Cargo)
		{

			$SQL="INSERT INTO USUARIOS_PLATAFORMA (email,firstname,lastname,institution,department,city,country,profile_field_Cargo)
			        VALUES ('$email','$firstname','$lastname','$institution','$department','$city','$country','$profile_field_Cargo')";

		$this->conexion_db->prepare($SQL)->execute(array(
	                    $email->email,
	                    $firstname->firstname,
	                    $lastname->lastname,
	                    $institution->institution,
											$department->department,
	                    $city->city,
	                    $country->country,
											$profile_field_Cargo->profile_field_Cargo
	                )
				);
		}
	}

?>
