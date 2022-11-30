DROP TABLE IF EXISTS equipe;

CREATE TABLE `equipe` (
  `id` int AUTO_INCREMENT PRIMARY KEY,
  `nom_equipe` varchar(50) NOT NULL,
  `ville` varchar(20) NOT NULL,
  `nom_stade` varchar(20) NOT NULL
);

INSERT INTO `equipe` (`nom_equipe`, `ville`, `nom_stade`) VALUES
('Manchester United', 'Manchester', 'Old Trafford'),
('Manchester City', 'Manchester', 'Etihad Stadium'),
('Arsenal', 'Londres', 'Emirates Stadium'),
('Liverpool', 'Liverpool', 'Anfield'),
('Tottenham', 'Londres', 'Hotspur stadium');
