<?php
	//llama al modelo
	require_once("Model/Personas_Model.php");
	/*$usuario=new Personas_Model();
	$matrizUsuarios=$usuario->get_Usuarios();


	require_once("model/Personas_Model.php");
	$usuario=new Personas_Model();
	$matrizUsuarios=$usuario->borrar();
	//realiza llamado a la vista
	require_once("View/Personas_View.php");*/
	class Controller{
		public $email,$firstname,$lastname,$institution,$department,$city,$country,$profile_field_Cargo;
    private $model;
		public $delete;
		public $condicion;
    public function __CONSTRUCT(){
        $this->model = new Personas_Model();
    }

    public function Index(){
        require_once("View/Personas_View.php");


    }

		public function Crud(){
		$usaurio = new Personas_Model();

		if(isset($_REQUEST['Id'])){
				$usuario = $this->model->Obtener($_REQUEST['Id']);
		}


		require_once("View/Update_Registro.php");

}

    public function Actualizar(){
			$usuario = new Personas_Model();

			if(isset($_REQUEST['id'])){
					$usuario = $this->model->Obtener($_REQUEST['id']);
			}

			require_once("View/Personas_View.php");
			//require_once 'view/cliente/cliente-editar.php';

    }

    public function Registrar(){
				$usuario = new Personas_Model();

        $email=($_POST['email']);
				$firstname=($_POST['firstname']);
				$lastname=($_POST['lastname']);
				$institution=($_POST['institution']);
				$department=($_POST['department']);
				$city=($_POST['city']);
				$country=($_POST['country']);
				$profile_field_Cargo=($_POST['profile_field_Cargo']);

				$this->model->Registrar($email,$firstname,$lastname,$institution,$department,$city,$country,$profile_field_Cargo);
        header('Location: index.php');
    }

    public function borrar(){
        $this->model->borrar($_REQUEST["Id"]);
        header('Location: index.php');
    }
}


?>
