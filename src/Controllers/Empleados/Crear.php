<?php

namespace Controllers\Empleados;

use Controllers\PublicController;

class Crear extends PublicController
{
    private $nombre = "";
    private $puesto = "";
    private $salario = "";
    private $activo = false;
    private $errorNombre = "";
    private $errorPuesto = "";
    private $errorSalario = "";
    private $generalError = "";
    private $hasErrors = false;

    public function run(): void
    {
        if ($this->isPostBack()) {
            $this->nombre = $_POST["nombre"] ?? "";
            $this->puesto = $_POST["puesto"] ?? "";
            $this->salario = $_POST["salario"] ?? "";
            $this->activo = isset($_POST["activo"]);

            if (\Utilities\Validators::IsEmpty($this->nombre)) {
                $this->errorNombre = "Nombre es requerido";
                $this->hasErrors = true;
            }
            if (\Utilities\Validators::IsEmpty($this->puesto)) {
                $this->errorPuesto = "Puesto es requerido";
                $this->hasErrors = true;
            }
            if (\Utilities\Validators::IsEmpty($this->salario) || !is_numeric($this->salario) || floatval($this->salario) < 0) {
                $this->errorSalario = "Salario debe ser numérico y positivo";
                $this->hasErrors = true;
            }

            if (!$this->hasErrors) {
                $ok = \Dao\Empleados::addEmpleado(
                    $this->nombre,
                    $this->puesto,
                    floatval($this->salario),
                    $this->activo
                );
                if ($ok) {
                    \Utilities\Site::redirectTo("index.php?page=Empleados_Listar");
                } else {
                    $this->generalError = "No se pudo crear el empleado";
                    $this->hasErrors = true;
                }
            }
        }
        $viewData = get_object_vars($this);
        \Views\Renderer::render("empleados/crear", $viewData);
    }
}

