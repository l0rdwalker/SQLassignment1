
-- DX.12 tp DX.10 (Alter as needed for the specifc tests, need only small changes)
/*
INSERT INTO Student (StudentID, StudentName, Email) VALUES
(1, 'John Doe', 'john@example.com'),
(2, 'Jane Smith', 'jane@example.com'),
(3, 'Michael Johnson', 'michael@example.com');

INSERT INTO Club (ClubName, Abbreviation, AGMDate, President) VALUES
('Chess Club', 'CC', '2023-08-16 14:00:00', 1),
('Photography Club', 'PC', '2023-08-20 15:30:00', 2),
('Dance Club', 'DC', '2023-08-18 13:15:00', 3);

INSERT INTO Activity (AName, ClubID, Description, Budget) VALUES
('Chess Tournament', 'Photography Club', 'Annual chess tournament', 500),
('Chess Tournament 2', 'Photography Club', 'Annual chess tournament', 500);
*/


--DX.1
/*
INSERT INTO Student (StudentID, StudentName, Email) VALUES
    (1, 'John Doe', 'john@example.com'),
    (2, 'Jane Smith', 'jane@example.com'),
    (3, 'Alice Johnson', 'alice@example.com');

-- Insert data into Club table
INSERT INTO Club (ClubName, Abbreviation, AGMDate) VALUES
    ('Chess Club', 'CC', '2023-08-16'),
    ('Drama Club', 'DC', '2023-08-17'),
    ('Photography Club', 'PC', '2023-08-18');

INSERT INTO BelongsTo (StudentID, ClubName, JoinDate)
VALUES
    (1, 'Drama Club', '2023-01-15'),
    (1, 'Chess Club', '2023-02-20');
*/

--DX.2
/*
INSERT INTO Student (StudentID, StudentName, Email) VALUES
    (1, 'John Doe', 'john@example.com'),
    (2, 'Jane Smith', 'jane@example.com'),
    (3, 'Alice Johnson', 'alice@example.com');

-- Insert data into Club table
INSERT INTO Club (ClubName, Abbreviation, AGMDate) VALUES
    ('Chess Club', 'CC', '2023-08-16'),
    ('Drama Club', 'DC', '2023-08-17'),
    ('Photography Club', 'PC', '2023-08-18');

INSERT INTO BelongsTo (StudentID, ClubName, JoinDate)
VALUES
    (3, 'Chess Club', '2023-01-15'),
    (1, 'Chess Club', '2023-02-20');
*/

--DX.3
/*
INSERT INTO Student (StudentID, StudentName, Email) VALUES
    (1, 'John Doe', 'john@example.com'),
    (2, 'Jane Smith', 'jane@example.com'),
    (3, 'Alice Johnson', 'alice@example.com');

-- Insert data into Club table
INSERT INTO Club (ClubName, Abbreviation, AGMDate) VALUES
    ('Chess Club', 'CC', '2023-08-16'),
    ('Drama Club', 'DC', '2023-08-17'),
    ('Photography Club', 'PC', '2023-08-18');

INSERT INTO BelongsTo (StudentID, ClubName, JoinDate)
VALUES
    (3, 'Chess Club', '2023-01-15'),
    (1, 'Chess Club', '2023-02-20');
*/

--DX.5
/*
INSERT INTO Student (StudentID, StudentName, Email) VALUES
    (1, 'John Doe', 'john@example.com'),
    (2, 'Jane Smith', 'jane@example.com'),
    (3, 'Alice Johnson', 'alice@example.com');

-- Insert data into Club table
INSERT INTO Club (ClubName, Abbreviation, AGMDate, President) VALUES
    ('Chess Club', 'CC', '2023-08-16',1),
    ('Drama Club', 'DC', '2023-08-17',2);

INSERT INTO BelongsTo (StudentID, ClubName, JoinDate)
VALUES
    (3, 'Chess Club', '2023-01-15'),
    (3, 'Chess Club', '2023-02-20');
*/

-- DX.7
/*
INSERT INTO Student (StudentID, StudentName, Email) VALUES
    (55, 'William', 'john@example.com'),
    (52, 'Billy', 'jhn@example.com');

-- Insert data into the Club table
INSERT INTO Club (ClubName, Abbreviation, AGMDate, President) VALUES
    ('GAMERclub', 'gc', '2023-09-01 10:00:00',55),
    ('antiGAMERclub', 'aGc', '2023-09-01 10:00:00',55);
*/

/* DX.8
INSERT INTO Activity (AName, Description, Budget) VALUES
    ('gamer event', 'we play games', 1000);

-- Insert data into the Meeting table
INSERT INTO Meeting (StartTime, Duration, MeetingID) VALUES
    ('2023-09-05 14:00:00', '01:30:00', 'gamer event');

-- Insert data into the Competition table
INSERT INTO Competition (EndDate, Prize, CompName) VALUES
    ('2023-09-10', 'Trophy and cash prize', 'gamer event');
    */


-- Insert data into Student table
INSERT INTO Student (StudentID, StudentName, Email) VALUES
    (1, 'Alice', 'alice@example.com'),
    (2, 'Bob', 'bob@example.com'),
    (3, 'Carol', 'carol@example.com');

-- Insert data into Club table
INSERT INTO Club (ClubName, Abbreviation, AGMDate, President) VALUES
    ('Chess Club', 'CC', '2023-09-01 10:00:00', 1),
    ('Music Club', 'MC', '2023-09-02 14:00:00', 2),
    ('Debate Club', 'DC', '2023-09-03 16:00:00', 3);

-- Insert data into Activity table
INSERT INTO Activity (AName, ClubID, Description, Budget) VALUES
    ('Chess Tournament', 'Chess Club', 'Annual chess competition', 1000);

-- Insert data into Meeting table
INSERT INTO Meeting (StartTime, Duration, MeetingID) VALUES
    ('2023-08-17 18:00:00', '01:30:00', 'Chess Tournament');

-- Insert data into Competition table
INSERT INTO Competition (EndDate, Prize, CompName) VALUES
    ('2023-10-01 23:59:59', 'Grand Prize', 'Chess Tournament');

-- Insert data into Contact table
INSERT INTO Contact (StudentID, Email) VALUES
    (1, 'alice@example.com'),
    (2, 'bob@example.com'),
    (3, 'carol@example.com');

-- Insert data into RunBy table
INSERT INTO RunBy (ClubName, AName) VALUES
    ('Chess Club', 'Chess Tournament'),
    ('Music Club', 'Music Concert'),
    ('Debate Club', 'Debate Competition');

-- Insert data into BelongsTo table
INSERT INTO BelongsTo (StudentID, ClubName, JoinDate) VALUES
    (1, 'Chess Club', '2023-01-01'),
    (2, 'Music Club', '2023-02-15'),
    (3, 'Debate Club', '2023-03-20');

-- Insert data into TakesPart table
INSERT INTO TakesPart (StudentID, AName) VALUES
    (1, 'Chess Tournament'),
    (2, 'Music Concert'),
    (3, 'Debate Competition');

-- Insert data into WinnerOf table
INSERT INTO WinnerOf (CompName, StudentID) VALUES
    ('Chess Tournament', 1);
