INSERT INTO Student (StudentID, StudentName, Email) VALUES
(1, 'John Doe', 'john@example.com'),
(2, 'Jane Smith', 'jane@example.com'),
(3, 'Michael Johnson', 'michael@example.com');

-- Inserting data into the Club table
INSERT INTO Club (ClubName, Abbreviation, AGMDate, President) VALUES
('Chess Club', 'CC', '2023-08-16 14:00:00', 1),
('Photography Club', 'PC', '2023-08-20 15:30:00', 2),
('Dance Club', 'DC', '2023-08-18 13:15:00', 3);

-- Inserting data into the Activity table
INSERT INTO Activity (AName, ClubID, Description, Budget) VALUES
('Chess Tournament', 'CC', 'Annual chess tournament', 500),
('Photo Exhibition', 'PC', 'Showcasing member photos', 300),
('Hip Hop Workshop', 'DC', 'Learn hip hop dance moves', 200);

-- Inserting data into the Meeting table
INSERT INTO Meeting (StartTime, Duration, MeetingID) VALUES
('2023-08-17 16:00:00', '01:30:00', 'Chess Tournament'),
('2023-08-19 18:30:00', '02:00:00', 'Photo Exhibition'),
('2023-08-20 14:00:00', '01:45:00', 'Hip Hop Workshop');

-- Inserting data into the Competition table
INSERT INTO Competition (CompName, EndDate, Prize) VALUES
('Chess Tournament', '2023-08-17 19:00:00', 'Trophy and cash prize'),
('Photo Contest', '2023-08-22 20:00:00', 'Gift cards for winners');

-- Inserting data into the Contact table
INSERT INTO Contact (StudentID, Email) VALUES
(1, 'john@example.com'),
(2, 'jane@example.com'),
(3, 'michael@example.com');

-- Inserting data into the RunBy table
INSERT INTO RunBy (ClubName, AName) VALUES
('Chess Club', 'Chess Tournament'),
('Photography Club', 'Photo Exhibition'),
('Dance Club', 'Hip Hop Workshop');

-- Inserting data into the BelongsTo table
INSERT INTO BelongsTo (StudentID, ClubName, JoinDate) VALUES
(1, 'Chess Club', '2023-01-15'),
(2, 'Photography Club', '2023-02-10'),
(3, 'Dance Club', '2023-03-20');

-- Inserting data into the TakesPart table
INSERT INTO TakesPart (StudentID, AName) VALUES
(1, 'Chess Tournament'),
(2, 'Photo Exhibition'),
(3, 'Hip Hop Workshop');

-- Inserting data into the WinnerOf table
INSERT INTO WinnerOf (CompName, StudentID) VALUES
('Chess Tournament', 1);