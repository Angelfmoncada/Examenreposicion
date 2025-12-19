DROP TABLE IF EXISTS empleados;
CREATE TABLE empleados (
    empleado_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    puesto VARCHAR(50),
    salario DECIMAL(10,2),
    activo BOOLEAN
);

INSERT INTO empleados (nombre, puesto, salario, activo) VALUES ('Ana Martínez', 'Desarrollador', 2500.00, TRUE);
INSERT INTO empleados (nombre, puesto, salario, activo) VALUES ('Luis Gómez', 'Analista', 2300.00, TRUE);
INSERT INTO empleados (nombre, puesto, salario, activo) VALUES ('María López', 'Recursos Humanos', 2100.00, TRUE);
INSERT INTO empleados (nombre, puesto, salario, activo) VALUES ('Carlos Pérez', 'Soporte', 1800.00, TRUE);
INSERT INTO empleados (nombre, puesto, salario, activo) VALUES ('Sofía Ramírez', 'Contador', 2400.00, TRUE);
INSERT INTO empleados (nombre, puesto, salario, activo) VALUES ('Jorge Castillo', 'Administrador', 2600.00, TRUE);
INSERT INTO empleados (nombre, puesto, salario, activo) VALUES ('Elena Torres', 'Diseñador', 2200.00, TRUE);
INSERT INTO empleados (nombre, puesto, salario, activo) VALUES ('Ricardo Díaz', 'QA', 2000.00, TRUE);
INSERT INTO empleados (nombre, puesto, salario, activo) VALUES ('Paula Herrera', 'Marketing', 2150.00, TRUE);
INSERT INTO empleados (nombre, puesto, salario, activo) VALUES ('Fernando Cruz', 'Ventas', 2050.00, TRUE);
INSERT INTO empleados (nombre, puesto, salario, activo) VALUES ('Gabriela Soto', 'Desarrollador', 2550.00, TRUE);
INSERT INTO empleados (nombre, puesto, salario, activo) VALUES ('Héctor Vargas', 'Analista', 2350.00, TRUE);
INSERT INTO empleados (nombre, puesto, salario, activo) VALUES ('Natalia Reyes', 'Recursos Humanos', 2120.00, TRUE);
INSERT INTO empleados (nombre, puesto, salario, activo) VALUES ('Óscar Navarro', 'Soporte', 1820.00, TRUE);
INSERT INTO empleados (nombre, puesto, salario, activo) VALUES ('Valeria Suárez', 'Contador', 2420.00, TRUE);
INSERT INTO empleados (nombre, puesto, salario, activo) VALUES ('Diego Romero', 'Administrador', 2620.00, TRUE);
INSERT INTO empleados (nombre, puesto, salario, activo) VALUES ('Camila Méndez', 'Diseñador', 2220.00, TRUE);
INSERT INTO empleados (nombre, puesto, salario, activo) VALUES ('Sebastián León', 'QA', 2020.00, TRUE);
INSERT INTO empleados (nombre, puesto, salario, activo) VALUES ('Isabella Rivas', 'Marketing', 2170.00, TRUE);
INSERT INTO empleados (nombre, puesto, salario, activo) VALUES ('Tomás Aguilar', 'Ventas', 2070.00, TRUE);
