INSERT INTO City (CityName) VALUES ('Hyderabad');

INSERT INTO Theatre (TheatreName, CityID, Address)
VALUES ('PVR Nexus Forum', 1, 'Kukatpally');

INSERT INTO Screen (TheatreID, ScreenName)
VALUES (1, 'Screen 1'), (1, 'Screen 2');

INSERT INTO Movie (MovieName, Language, Format, Duration)
VALUES 
('Dasara', 'Telugu', '2D', 150),
('Kisi Ka Bhai Kisi Ki Jaan', 'Hindi', '2D', 145),
('Tu Jhoothi Main Makkaar', 'Hindi', '2D', 140);

INSERT INTO ShowTable (MovieID, ScreenID, ShowDate)
VALUES
(1, 1, '2026-04-25'),
(2, 1, '2026-04-25'),
(3, 2, '2026-04-25');

INSERT INTO ShowTiming (ShowID, ShowTime)
VALUES
(1, '12:15:00'),
(2, '01:00:00'),
(2, '04:10:00'),
(2, '06:20:00'),
(3, '01:15:00');
