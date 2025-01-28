CREATE TABLE země (
    idpivo INT PRIMARY KEY,
    název VARCHAR(45) NOT NULL
);
 
CREATE TABLE město (
    idMěsto INT PRIMARY KEY,
    název VARCHAR(45) NOT NULL,
    země_šířka FLOAT,
    země_délka FLOAT,
    země_idpivo INT,
    FOREIGN KEY (země_idpivo) REFERENCES země(idpivo)
);
 
CREATE TABLE pivovar (
    idpivo INT PRIMARY KEY,
    název VARCHAR(45) NOT NULL,
    Město_idMěsto INT,
    rok_založení VARCHAR(45),
    FOREIGN KEY (Město_idMěsto) REFERENCES město(idMěsto)
);
 
CREATE TABLE pivo (
    idpivo INT PRIMARY KEY,
    název VARCHAR(45) NOT NULL,
    stupně INT,
    pivovar_idpivo INT,
    FOREIGN KEY (pivovar_idpivo) REFERENCES pivovar(idpivo)
);

INSERT INTO země (idpivo, název) VALUES
(1, 'Čína'),
(2, 'USA'),
(3, 'Brazílie'),
(4, 'Nizozemsko'),
(5, 'Irsko'),
(6, 'Dánsko'),
(7, 'Belgie'),
(8, 'Japonsko'),
(9, 'Česko'),
(10, 'Mexiko'),
(11, 'Německo'),
(12, 'Austrálie');

INSERT INTO město (idMěsto, název, země_šířka, země_délka, země_idpivo) VALUES
(1, 'Peking', 39.9042, 116.4074, 1),
(2, 'St. Louis', 38.6270, -90.1994, 2),
(3, 'São Paulo', -23.5505, -46.6333, 3),
(4, 'Amsterdam', 52.3676, 4.9041, 4),
(5, 'Dublin', 53.3498, -6.2603, 5),
(6, 'Kodaň', 55.6761, 12.5683, 6),
(7, 'Leuven', 50.8798, 4.7005, 7),
(8, 'Tokio', 35.6895, 139.6917, 8),
(9, 'Plzeň', 49.7384, 13.3736, 9),
(10, 'Ciudad de México', 19.4326, -99.1332, 10),
(11, 'Brémy', 53.0793, 8.8017, 11),
(12, 'Melbourne', -37.8136, 144.9631, 12);
 
INSERT INTO pivovar (idpivo, název, Město_idMěsto, rok_založení) VALUES
(1, 'China Resources Snow Breweries', 1, '1993'),
(2, 'Anheuser-Busch InBev', 2, '1876'),
(3, 'Anheuser-Busch InBev', 3, '1964'),
(4, 'Heineken N.V.', 4, '1864'),
(5, 'Diageo', 5, '1759'),
(6, 'Carlsberg Group', 6, '1847'),
(7, 'Anheuser-Busch InBev', 7, '1926'),
(8, 'Asahi Breweries', 8, '1987'),
(9, 'Plzeňský Prazdroj', 9, '1842'),
(10, 'Grupo Modelo', 10, '1925'),
(11, 'Beck''s Brewery', 11, '1873'),
(12, 'Carlton & United Breweries', 12, '1888');

INSERT INTO pivo (idpivo, název, stupně, pivovar_idpivo) VALUES
(1, 'Snow', NULL, 1),
(2, 'Budweiser', NULL, 2),
(3, 'Skol', NULL, 3),
(4, 'Heineken', NULL, 4),
(5, 'Guinness', NULL, 5),
(6, 'Carlsberg', NULL, 6),
(7, 'Stella Artois', NULL, 7),
(8, 'Asahi Super Dry', NULL, 8),
(9, 'Pilsner Urquell', NULL, 9),
(10, 'Corona Extra', NULL, 10),
(11, 'Beck''s', NULL, 11),
(12, 'Fosters', NULL, 12);

má místní nabídku