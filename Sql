CREATE DATABASE IF NOT EXISTS lazone;

CREATE TABLE Client
(
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nom VARCHAR(100),
prenom VARCHAR(100),
date_naissance DATE,
tel VARCHAR(255),
telUrgence VARCHAR(255),
);
CREATE TABLE type
(
Id_tupe INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
Type VARCHAR(100),
);

CREATE TABLE equipement
(
Id_equipement INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
Nom VARCHAR(100),
Couleur VARCHAR(100),
Taille VARCHAR(100),
Longueur VARCHAR(100),
CONSTRAINT fk_type_id
FOREIGN KEY (type)
REFERENCES type(id_type),
);

CREATE TABLE Louer
(
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
CONSTRAINT fk_client_id
FOREIGN KEY (client)
REFERENCES Client(id_client),
date_location DATE,
date_retour DATE,
CONSTRAINT fk_equipement_id
FOREIGN KEY (equipement1)
REFERENCES equipement(id_equipement),
CONSTRAINT fk_equipement_id
FOREIGN KEY (equipement2)
REFERENCES equipement(id_equipement),
CONSTRAINT fk_equipement_id
FOREIGN KEY (equipement3)
REFERENCES equipement(id_equipement),
CONSTRAINT fk_equipement_id
FOREIGN KEY (equipement4)
REFERENCES equipement(id_equipement),
CONSTRAINT fk_equipement_id
FOREIGN KEY (equipement5)
REFERENCES equipement(id_equipement),
CONSTRAINT fk_equipement_id
FOREIGN KEY (equipement6)
REFERENCES equipement(id_equipement),
CONSTRAINT fk_equipement_id
FOREIGN KEY (equipement7)
REFERENCES equipement(id_equipement),
CONSTRAINT fk_equipement_id
FOREIGN KEY (equipement8)
REFERENCES equipement(id_equipement),
CONSTRAINT fk_equipement_id
FOREIGN KEY (equipement9)
REFERENCES equipement(id_equipement),
CONSTRAINT fk_equipement_id
FOREIGN KEY (equipement10)
REFERENCES equipement(id_equipement),
CONSTRAINT fk_equipement_id
FOREIGN KEY (equipement11)
REFERENCES equipement(id_equipement),
CONSTRAINT fk_equipement_id
FOREIGN KEY (equipement12)
REFERENCES equipement(id_equipement),
);

CREATE TABLE jouer
(
Id_jeu INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
CONSTRAINT fk_client_id
FOREIGN KEY (client1)
REFERENCES client(id_client),
CONSTRAINT fk_client_id
FOREIGN KEY (client2)
REFERENCES client(id_client),

console VARCHAR(100),
heure_debut DATE,
temp_du_jeu DATE,
date DATE,
);

