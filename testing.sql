-- Insert data into the Student table
INSERT INTO Student (StudentID, StudentName, Email) VALUES
    (1, 'John Doe', 'john@example.com'),
    (2, 'Jane Smith', 'jane@example.com'),
    (3, 'Alice Johnson', 'alice@example.com');

-- Insert data into the Club table
INSERT INTO Club (ClubName, Abbreviation, AGMDate, PresidentId) VALUES
    ('Chess Club', 'CC', '2023-09-01 10:00:00', 1),
    ('Music Club', 'MC', '2023-08-15 15:30:00', 2),
    ('Sports Club', 'SC', '2023-07-20 14:00:00', 3);

-- Insert data into the PresidentOF table
INSERT INTO PresidentOF (Student, Club) VALUES
    (1, 'Chess Club'),
    (2, 'Music Club'),
    (3, 'Sports Club');

-- Insert data into the Activity table
INSERT INTO Activity (AName, Description, Budget) VALUES
    ('Chess Tournament', 'Annual chess tournament', 1000),
    ('Concert', 'Spring music concert', 1500),
    ('Football Match', 'Inter-school football match', 800);

-- Insert data into the Meeting table
INSERT INTO Meeting (StartTime, Duration, MeetingID) VALUES
    ('2023-09-05 14:00:00', '01:30:00', 'Chess Tournament'),
    ('2023-08-20 18:30:00', '02:00:00', 'Concert'),
    ('2023-07-25 15:00:00', '01:15:00', 'Football Match');

-- Insert data into the Competition table
INSERT INTO Competition (EndDate, Prize, CompName) VALUES
    ('2023-09-10', 'Trophy and cash prize', 'Chess Tournament'),
    ('2023-08-25', 'Recording contract', 'Concert'),
    ('2023-08-01', 'Medals', 'Football Match');

-- Insert data into the Contact table
INSERT INTO Contact (StudentID, Email) VALUES
    (1, 'john@example.com'),
    (2, 'jane@example.com'),
    (3, 'alice@example.com');

-- Insert data into the RunBy table
INSERT INTO RunBy (ClubName, AName) VALUES
    ('Chess Club', 'Chess Tournament'),
    ('Music Club', 'Concert'),
    ('Sports Club', 'Football Match');

-- Insert data into the BelongsTo table
INSERT INTO BelongsTo (StudentID, ClubName) VALUES
    (1, 'Chess Club'),
    (2, 'Music Club'),
    (3, 'Sports Club'),
    (1, 'Music Club'),
    (2, 'Sports Club'),
    (3, 'Chess Club');

-- Insert data into the TakesPart table
INSERT INTO TakesPart (StudentID, AName) VALUES
    (1, 'Chess Tournament'),
    (2, 'Concert'),
    (3, 'Football Match'),
    (2, 'Chess Tournament'),
    (3, 'Concert'),
    (1, 'Football Match');

-- Insert data into the WinnerOf table
INSERT INTO WinnerOf (CompName, StudentID) VALUES
    ('Chess Tournament', 1),
    ('Concert', 2),
    ('Football Match', 3);




