<?php

namespace Dao;

class Empleados extends Table
{
    public static function getAll()
    {
        $sqlstr = "SELECT empleado_id, nombre, puesto, salario, activo FROM empleados";
        return self::obtenerRegistros($sqlstr, array());
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
}

