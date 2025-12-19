<?php

namespace Dao;

class Empleados extends Table
{
    public static function getAll()
    {
        $sqlstr = "SELECT empleado_id, nombre, puesto, salario, activo FROM empleados";
        return self::obtenerRegistros($sqlstr, array());
    }
    public static function addEmpleado($nombre, $puesto, $salario, $activo)
    {
        $sqlins = "INSERT INTO empleados (nombre, puesto, salario, activo)
                   VALUES (:nombre, :puesto, :salario, :activo)";
        return self::executeNonQuery(
            $sqlins,
            array(
                "nombre" => $nombre,
                "puesto" => $puesto,
                "salario" => $salario,
                "activo" => $activo ? 1 : 0
            )
        );
    }
    public static function getCount()
    {
        $sqlstr = "SELECT COUNT(1) AS total FROM empleados";
        $row = self::obtenerUnRegistro($sqlstr, array());
        return intval($row["total"] ?? 0);
    }
    public static function getPage(int $pageNum, int $itemsPerPage)
    {
        $offset = ($pageNum - 1) * $itemsPerPage;
        $sqlstr = "SELECT empleado_id, nombre, puesto, salario, activo FROM empleados LIMIT :limit OFFSET :offset";
        return self::obtenerRegistros($sqlstr, array("limit" => $itemsPerPage, "offset" => $offset));
    }
    public static function getById(int $empleado_id)
    {
        $sqlstr = "SELECT empleado_id, nombre, puesto, salario, activo FROM empleados WHERE empleado_id = :empleado_id";
        return self::obtenerUnRegistro($sqlstr, array("empleado_id" => $empleado_id));
    }
    public static function updateEmpleado($empleado_id, $nombre, $puesto, $salario, $activo)
    {
        $sqlupd = "UPDATE empleados
                   SET nombre = :nombre,
                       puesto = :puesto,
                       salario = :salario,
                       activo = :activo
                   WHERE empleado_id = :empleado_id";
        return self::executeNonQuery(
            $sqlupd,
            array(
                "empleado_id" => $empleado_id,
                "nombre" => $nombre,
                "puesto" => $puesto,
                "salario" => $salario,
                "activo" => $activo ? 1 : 0
            )
        );
    }
}

