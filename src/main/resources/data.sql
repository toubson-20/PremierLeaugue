DROP TABLE IF EXISTS equipe;

CREATE TABLE equipe (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nom_equipe VARCHAR(250) NOT NULL,
  ville VARCHAR(250) NOT NULL,
  nom_stade VARCHAR(250) NOT NULL
);

INSERT INTO equipe (nom_equipe, ville, nom_stade) VALUES
('Manchester United', 'Manchester', 'Old Trafford'),
('Manchester City', 'Manchester', 'Etihad Stadium'),
('Arsenal', 'Londres', 'Emirates Stadium'),
('Liverpool', 'Liverpool', 'Anfield'),
('Tottenham', 'Londres', 'Hotspur stadium');

DROP TABLE IF EXISTS joueurs;

CREATE TABLE joueurs (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nom_joueur varchar(250) NOT NULL,
  num_maillot int NOT NULL,
  poste varchar(250) NOT NULL,
  id_equipe INT
);


INSERT INTO joueurs (nom_joueur, num_maillot, poste, id_equipe) VALUES
('Shaw', 23, 'defenseur', 1),
('Varane', 19, 'defenseur', 1),
('Martinez', 6, 'defenseur', 1),
('Casemiro', 18, 'milieu', 1),
('Eriksen', 14, 'milieu', 1),
('Fernandes', 8, 'milieu', 1),
('Rashford', 10, 'attaquant', 1),
('Martial', 9, 'attaquant', 1),
('Antony', 21, 'attaquant', 1),
('De Gea', 1, 'gardien', 1),
('Ederson', 31, 'gardien', 2),
('Cancelo', 7, 'defenseur', 2),
('Dias', 3, 'defenseur', 2),
('Akanji', 25, 'defenseur', 2),
('Walker', 2, 'defenseur', 2),
('Rodri', 16, 'milieu', 2),
('Silva', 20, 'milieu', 2),
('De Bruyne', 17, 'milieu', 2),
('Grealish', 10, 'attaquant', 2),
('Mahrez', 26, 'attaquant', 2),
('Haaland', 9, 'attaquant', 2),
('Ramsdale', 1, 'gardien', 3),
('Tierney', 3, 'defenseur', 3),
('Saliba', 12, 'defenseur', 3),
('White', 4, 'defenseur', 3),
('Zinchenko', 35, 'defenseur', 3),
('Partey', 5, 'milieu', 3),
('Xhaka', 34, 'milieu', 3),
('Odegaard', 8, 'milieu', 3),
('Martinelli', 11, 'attaquant', 3),
('Jesus', 9, 'attaquant', 3),
('Nelson', 24, 'attaquant', 3),
('Alisson', 1, 'gardien', 4),
('Alexander-Arnold', 66, 'defenseur', 4),
('Matip', 32, 'defenseur', 4),
('Konate', 5, 'defenseur', 4),
('Robertson', 26, 'defenseur', 4),
('Fabinho', 3, 'milieu', 4),
('Thiago', 6, 'milieu', 4),
('Elliott', 19, 'milieu', 4),
('Salah', 11, 'attaquant', 4),
('Diaz', 23, 'attaquant', 4),
('Nunez', 27, 'attaquant', 4),
('Lloris', 1, 'gardien', 5),
('Sanchez', 6, 'defenseur', 5),
('Royal', 12, 'defenseur', 5),
('Lenglet', 34, 'defenseur', 5),
('Romero', 17, 'defenseur', 5),
('Bentacur', 30, 'milieu', 5),
('Perisic', 14, 'milieu', 5),
('Bissouma', 38, 'milieu', 5),
('Kane', 10, 'attaquant', 5),
('Son', 7, 'attaquant', 5),
('Kulusevki', 21, 'attaquant', 5);