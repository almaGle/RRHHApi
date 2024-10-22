CREATE DATABASE IF NOT EXISTS rrhh;


use rrhh;
create table empleado(
	IDEmpleado int primary key not null,
    Nombres varchar(50) not null,
    Apellidos varchar(50) not null, 
    Telefono varchar(20) not null,
    Email varchar(80) not null, 
    Direccion text not null
);
alter table empleado modify IDEmpleado int auto_increment;
insert into empleado( Nombres, Apellidos, Telefono, Email, Direccion)
values( 'Osvaldo', 'Domínguez Moreno', '4426517505', 'dominguezmorenoosvaldo@gmail.com', 'Privada cerro de Mintehé 102-25');

insert into empleado(Nombres, Apellidos, Telefono, Email, Direccion)
values('Alma Citlalli', 'González Escamilla', '771 242 0367', 'almag@gmail.com', 'Privada cerro de Mintehé 102-25');

INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Eduardo', 'Hernández García', '551 897 2245', 'eduardohg@gmail.com', 'Calle del Rosal 56');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Fernanda', 'López Sánchez', '449 761 3322', 'fernandas@gmail.com', 'Avenida de la Luz 23');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Santiago', 'Martínez Hernández', '722 118 4433', 'santiagomh@gmail.com', 'Calle del Parque 11');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Valeria', 'Rodríguez Díaz', '33 2501 3344', 'valeriarod@gmail.com', 'Avenida del Bosque 7');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Diego', 'Pérez López', '33 8901 5566', 'diegopl@gmail.com', 'Calle del Sol 89');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('María', 'García Rodríguez', '722 557 6677', 'mariagr@gmail.com', 'Avenida del Lago 5');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Carlos', 'González Pérez', '449 991 7788', 'carlosgp@gmail.com', 'Calle del Bosque 30');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Ana', 'Hernández Pérez', '33 6789 8899', 'anahp@gmail.com', 'Avenida del Parque 13');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Juan', 'López Rodríguez', '33 2345 1122', 'juanlr@gmail.com', 'Calle de la Luna 9');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Alejandra', 'Martínez García', '722 567 2233', 'alejandramg@gmail.com', 'Avenida del Sol 45');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Pedro', 'González Sánchez', '771 234 3344', 'pedrogs@gmail.com', 'Calle de la Estrella 34');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Mariana', 'Sánchez Martínez', '771 908 4455', 'marianasm@gmail.com', 'Avenida del Río 67');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Javier', 'García López', '449 112 5566', 'javiergl@gmail.com', 'Calle del Lago 12');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Gabriela', 'Pérez Martínez', '33 6678 6677', 'gabrielapm@gmail.com', 'Avenida del Pino 8');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('José', 'López González', '722 345 7788', 'joselg@gmail.com', 'Calle del Roble 23');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Sofía', 'Hernández Rodríguez', '722 234 8899', 'sofiahr@gmail.com', 'Avenida del Laurel 1');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Ricardo', 'Martínez Pérez', '449 909 1122', 'ricardomp@gmail.com', 'Calle del Abedul 5');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Isabela', 'González Sánchez', '33 5678 2233', 'isabelags@gmail.com', 'Avenida del Ciprés 4');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Andrés', 'López García', '771 234 3344', 'andreslg@gmail.com', 'Calle de la Palmera 45');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Valentina', 'Sánchez Martínez', '33 3456 4455', 'valentinas@gmail.com', 'Avenida del Girasol 2');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Emilio', 'García López', '449 998 5566', 'emiliogl@gmail.com', 'Calle del Jazmín 33');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Ximena', 'Pérez González', '771 667 6677', 'ximenapg@gmail.com', 'Avenida del Clavel 8');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Héctor', 'López Pérez', '771 223 7788', 'hectorlp@gmail.com', 'Calle del Tulipán 12');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Renata', 'Hernández Martínez', '449 444 8899', 'renatahm@gmail.com', 'Avenida del Crisantemo 45');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Raul', 'González Sánchez', '33 5678 1122', 'raulgs@gmail.com', 'Calle del Narciso 3');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Aitana', 'Martínez García', '722 567 2233', 'aitanamg@gmail.com', 'Avenida del Lirio 6');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Armando', 'López González', '722 111 3344', 'armandolg@gmail.com', 'Calle de la Orquídea 7');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Catalina', 'Sánchez Pérez', '449 345 4455', 'catalinasp@gmail.com', 'Avenida del Clavel 9');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Raúl', 'García Sánchez', '771 987 5566', 'raulgarcias@gmail.com', 'Calle del Girasol 20');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Luz', 'Pérez Martínez', '33 1234 6677', 'luzpm@gmail.com', 'Avenida del Girasol 8');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Miguel', 'López García', '449 667 7788', 'miguellg@gmail.com', 'Calle del Clavel 5');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Lucía', 'González Hernández', '771 234 8899', 'luciagh@gmail.com', 'Avenida del Crisantemo 9');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Jorge', 'Martínez López', '33 4445 1122', 'jorgeml@gmail.com', 'Calle del Lirio 3');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Elena', 'Hernández Sánchez', '449 667 2233', 'elenahs@gmail.com', 'Avenida del Tulipán 2');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Sebastián', 'García Pérez', '722 333 3344', 'sebastiangp@gmail.com', 'Calle del Crisantemo 11');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Valeria', 'López Martínez', '722 678 4455', 'valerialm@gmail.com', 'Avenida del Jazmín 13');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Diego', 'Sánchez González', '33 3456 5566', 'diegosg@gmail.com', 'Calle del Crisantemo 19');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Jimena', 'Pérez López', '449 778 6677', 'jimenapl@gmail.com', 'Avenida del Lirio 7');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Roberto', 'González Martínez', '771 333 7788', 'robertogm@gmail.com', 'Calle del Jazmín 18');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Camila', 'Martínez García', '33 5678 8899', 'camilamg@gmail.com', 'Avenida del Clavel 29');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Martín', 'López Sánchez', '771 444 1122', 'martinls@gmail.com', 'Calle del Tulipán 5');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Isabella', 'García Hernández', '33 9090 2233', 'isabellagh@gmail.com', 'Avenida del Girasol 7');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Cristian', 'Hernández Pérez', '722 678 3344', 'cristianhp@gmail.com', 'Calle del Jazmín 23');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Abril', 'Pérez Sánchez', '722 222 4455', 'abrilps@gmail.com', 'Avenida del Crisantemo 45');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Daniel', 'González López', '449 111 5566', 'danielgl@gmail.com', 'Calle del Lirio 15');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Regina', 'López Martínez', '33 9900 6677', 'reginalm@gmail.com', 'Avenida del Tulipán 5');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Felipe', 'Sánchez González', '771 678 7788', 'felipesg@gmail.com', 'Calle del Jazmín 8');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Ximena', 'García Pérez', '33 3344 8899', 'ximenagp@gmail.com', 'Avenida del Clavel 3');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Emiliano', 'Martínez López', '722 556 1122', 'emilianoml@gmail.com', 'Calle del Crisantemo 13');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Amanda', 'Hernández Sánchez', '722 222 2233', 'amandahs@gmail.com', 'Avenida del Lirio 2');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Gerardo', 'López García', '449 667 3344', 'gerardolg@gmail.com', 'Calle del Jazmín 7');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Natalia', 'González Hernández', '771 334 4455', 'nataliagh@gmail.com', 'Avenida del Crisantemo 29');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Iker', 'Pérez Martínez', '33 4567 5566', 'ikerp@gmail.com', 'Calle del Lirio 11');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Ana Sofía', 'Martínez García', '449 999 6677', 'anasofiamg@gmail.com', 'Avenida del Tulipán 8');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Alan', 'López Sánchez', '771 333 7788', 'alanls@gmail.com', 'Calle del Jazmín 7');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Alicia', 'García Pérez', '771 888 8899', 'aliciagp@gmail.com', 'Avenida del Clavel 6');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Josué', 'Hernández González', '33 2345 1122', 'josuehg@gmail.com', 'Calle del Crisantemo 20');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Jazmín', 'Pérez López', '449 987 2233', 'jazminpl@gmail.com', 'Avenida del Lirio 1');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Juan Pablo', 'González Martínez', '771 566 3344', 'juanpgm@gmail.com', 'Calle del Jazmín 5');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Renata', 'López Sánchez', '33 1212 4455', 'renatals@gmail.com', 'Avenida del Crisantemo 11');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Mariano', 'Sánchez García', '722 222 5566', 'marianosg@gmail.com', 'Calle del Lirio 4');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Valentina', 'Hernández Pérez', '771 454 6677', 'valentinahp@gmail.com', 'Avenida del Tulipán 3');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Simón', 'García González', '33 2345 7788', 'simongg@gmail.com', 'Calle del Jazmín 3');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Constanza', 'Pérez Martínez', '449 999 8899', 'constanzapm@gmail.com', 'Avenida del Clavel 2');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Gael', 'López Hernández', '771 333 1122', 'gaellh@gmail.com', 'Calle del Crisantemo 10');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Sara', 'González Sánchez', '33 5556 2233', 'sarags@gmail.com', 'Avenida del Lirio 9');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Eduardo', 'Martínez García', '722 555 3344', 'eduardomg@gmail.com', 'Calle del Jazmín 8');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Liliana', 'López Pérez', '33 3334 4455', 'lilianalp@gmail.com', 'Avenida del Crisantemo 17');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Adrián', 'Sánchez González', '449 989 5566', 'adriansg@gmail.com', 'Calle del Lirio 6');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Carolina', 'García López', '771 444 6677', 'carolinagl@gmail.com', 'Avenida del Tulipán 12');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Martina', 'Pérez Martínez', '771 555 7788', 'martinapm@gmail.com', 'Calle del Jazmín 15');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Joaquín', 'López Sánchez', '33 4567 8899', 'joaquinls@gmail.com', 'Avenida del Clavel 16');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Ana Paula', 'Hernández García', '771 888 1122', 'anapaulahg@gmail.com', 'Calle del Crisantemo 2');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Iván', 'González Sánchez', '33 2223 2233', 'ivangs@gmail.com', 'Avenida del Lirio 21');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Frida', 'Martínez López', '722 445 3344', 'fridaml@gmail.com', 'Calle del Jazmín 17');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Leonardo', 'López Pérez', '33 2345 4455', 'leonardolp@gmail.com', 'Avenida del Crisantemo 6');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Ariana', 'Sánchez González', '449 567 5566', 'arianasg@gmail.com', 'Calle del Lirio 23');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Matías', 'García Martínez', '771 444 6677', 'matiasgm@gmail.com', 'Avenida del Tulipán 17');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Paulina', 'Pérez López', '33 5556 7788', 'paulinapl@gmail.com', 'Calle del Jazmín 19');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Óscar', 'López Sánchez', '449 111 8899', 'oscarrls@gmail.com', 'Avenida del Clavel 15');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Camilo', 'Hernández García', '771 333 1122', 'camilogh@gmail.com', 'Calle del Crisantemo 22');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Daniela', 'González Sánchez', '33 4445 2233', 'danielags@gmail.com', 'Avenida del Lirio 26');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Esteban', 'Martínez López', '722 778 3344', 'estebanml@gmail.com', 'Calle del Jazmín 28');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Aurora', 'López Pérez', '33 2345 4455', 'auroralp@gmail.com', 'Avenida del Crisantemo 31');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Sergio', 'Sánchez González', '449 778 5566', 'sergiosg@gmail.com', 'Calle del Lirio 25');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Victoria', 'García Martínez', '771 555 6677', 'victoriagm@gmail.com', 'Avenida del Tulipán 19');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Andrea', 'Pérez López', '33 1112 7788', 'andreapl@gmail.com', 'Calle del Jazmín 11');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Ángel', 'López Sánchez', '449 444 8899', 'angells@gmail.com', 'Avenida del Clavel 20');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Amanda', 'Hernández García', '771 222 1122', 'amandahg@gmail.com', 'Calle del Crisantemo 18');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Salvador', 'González Sánchez', '33 2223 2233', 'salvadorgs@gmail.com', 'Avenida del Lirio 22');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Fátima', 'Martínez López', '722 445 3344', 'fatimal@gmail.com', 'Calle del Jazmín 27');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('David', 'López Pérez', '33 3344 4455', 'davidlp@gmail.com', 'Avenida del Crisantemo 32');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Marisol', 'Sánchez González', '449 567 5566', 'marisolsg@gmail.com', 'Calle del Lirio 24');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Gustavo', 'García Martínez', '771 444 6677', 'gustavogm@gmail.com', 'Avenida del Tulipán 23');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Daniela', 'Pérez López', '33 5567 7788', 'danielapl@gmail.com', 'Calle del Jazmín 29');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Saúl', 'López Sánchez', '449 778 8899', 'saulls@gmail.com', 'Avenida del Clavel 28');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Danna', 'Hernández García', '771 555 1122', 'dannahg@gmail.com', 'Calle del Crisantemo 25');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Diego', 'González Sánchez', '33 1112 2233', 'diegogs@gmail.com', 'Avenida del Lirio 29');
INSERT INTO empleado(Nombres, Apellidos, Telefono, Email, Direccion) VALUES('Luciana', 'Martínez López', '722 888 3344', 'lucianaml@gmail.com', 'Calle del Jazmín 30');
