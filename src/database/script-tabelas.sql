CREATE DATABASE infoari;

USE infoari;

CREATE TABLE albumFav (
	idAlbum INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR (35)
);

CREATE TABLE usuario (
	idUsuario INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50),
	fkAlbum INT,
	foreign key(fkAlbum) references albumFav(idAlbum)
) auto_increment = 1000;

SHOW TABLES;
SELECT * FROM usuario;
SELECT * FROM albumFav;
desc usuario;

INSERT INTO albumFav VALUES (null, 'Yours Truly'),
                            (null, 'My Everything'),
                            (null, 'Dangerous Woman'),
                            (null, 'Sweetener'),
                            (null, 'thank u, next'),
                            (null, 'Positions');
                            
INSERT INTO usuario VALUES 	(null, 'Vitor Macauba', 'vitormacauba2@gmail.com', '12345_', 6);
                            
SELECT albumFav.titulo, COUNT(fkAlbum) AS quantidade FROM usuario JOIN albumFav ON usuario.fkAlbum = albumFav.idAlbum GROUP BY albumFav.titulo;
SELECT COUNT(*) AS 'QTD FAVORITADO' FROM usuario;
SELECT usuario.nome, albumFav.titulo FROM usuario JOIN albumFav ON fkAlbum = idAlbum WHERE idUsuario = 1020;