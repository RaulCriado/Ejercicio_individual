DROP DATABASE IF EXISTS catan;
CREATE DATABASE catan;

USE catan;

CREATE TABLE Jugador (
    id INT NOT NULL,
    nombre VARCHAR(20) NOT NULL,
    pass VARCHAR(20),
    PRIMARY KEY (id)
)ENGINE=InnoDB;

CREATE TABLE Partida (
    id INT NOT NULL,
    fecha VARCHAR(16),
    duracion INT,
    ganador INT,
    PRIMARY KEY (id),
    FOREIGN KEY (ganador) REFERENCES Jugador(id)
)ENGINE=InnoDB;

CREATE TABLE Participacion (
    idJ INT NOT NULL,
    idP INT NOT NULL,
    puntos INT,
    PRIMARY KEY (idJ,idP),
    FOREIGN KEY (idJ) REFERENCES Jugador(id),
    FOREIGN KEY (idP) REFERENCES Partida(id)
)ENGINE=InnoDB;

INSERT INTO Jugador VALUES (0, 'Jonathan', 'jonathan123');
INSERT INTO Jugador VALUES (1, 'Alba', '00albieta');
INSERT INTO Jugador VALUES (2, 'Raul', '123456');
INSERT INTO Jugador VALUES (3, 'Manuel', 'manu56');
INSERT INTO Jugador VALUES (4, 'Fernando', 'muchasrisas');

INSERT INTO Partida VALUES (0, '09/07/2019 13:30', 75, 2);
INSERT INTO Partida VALUES (1, '09/07/2019 22:00', 62, 1);
INSERT INTO Partida VALUES (2, '10/08/2020 11:15', 80, 0);

INSERT INTO Participacion VALUES (2, 0, 7);
INSERT INTO Participacion VALUES (1, 0, 6);
INSERT INTO Participacion VALUES (3, 0, 3);
INSERT INTO Participacion VALUES (4, 0, 4);

INSERT INTO Participacion VALUES (2, 1, 4);
INSERT INTO Participacion VALUES (1, 1, 7);
INSERT INTO Participacion VALUES (3, 1, 6);
INSERT INTO Participacion VALUES (0, 2, 7);
INSERT INTO Participacion VALUES (1, 2, 5);
INSERT INTO Participacion VALUES (4, 2, 4);
INSERT INTO Participacion VALUES (2, 1, 1);
INSERT INTO Participacion VALUES (3, 1, 2);
