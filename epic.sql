DO $$ 
DECLARE 
    tableName text;
BEGIN
    FOR tableName IN (SELECT table_name FROM information_schema.tables WHERE table_schema = 'public' AND table_type = 'BASE TABLE') 
    LOOP
        EXECUTE 'DROP TABLE IF EXISTS ' || tableName || ' CASCADE;';
    END LOOP;
END $$;


CREATE TABLE Student (
  StudentID INTEGER NOT NULL,
  StudentName VARCHAR(50) NOT NULL,
  Email VARCHAR(50),
  PRIMARY KEY (StudentID)
);
CREATE TABLE Club (
    ClubName VARCHAR(50) NOT NULL,
    Abbreviation VARCHAR(10),
    AGMDate TIMESTAMP,
    PRIMARY KEY (ClubName)
);

CREATE TABLE PresidentOF (
    Student INTEGER,
    Club VARCHAR(50),
    FOREIGN KEY (Student) REFERENCES Student(StudentID), 
    PRIMARY KEY (Club)
);

CREATE TABLE BelongsTo (
    Student INTEGER,
    ClubName VARCHAR(50),
    JoinDate DATE NOT NULL,
    FOREIGN KEY (Student) REFERENCES Student(StudentID), 
    FOREIGN KEY (ClubName) REFERENCES Club(ClubName),
    PRIMARY KEY (Student,ClubName)
);

CREATE TABLE Activity (
    AName VARCHAR(50) NOT NULL,
    Description VARCHAR(1000),
    Budget INTEGER,
    PRIMARY KEY (AName)
);

CREATE TABLE WinnerOf (
    CompID VARCHAR(50),
    StudentID INTEGER NOT NULL,
    PRIMARY KEY (CompID),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);

CREATE TABLE RunBy(
    ClubID VARCHAR(50),
    ActivityID VARCHAR(50),
    PRIMARY KEY (ActivityID),
    FOREIGN KEY (ClubID) REFERENCES Club(ClubName), 
    FOREIGN KEY (ActivityID) REFERENCES Activity(AName)
);

CREATE TABLE TakesPart (
    StudentID INTEGER,
    ClubName VARCHAR(50),
    PRIMARY KEY (StudentID,ClubName),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID), 
    FOREIGN KEY (ClubName) REFERENCES Club(ClubName)
);

CREATE TABLE Meeting (
    StartTime TIMESTAMP NOT NULL,
    Duration TIME NOT NULL,
    MeetingID VARCHAR(50) NOT NULL,
    FOREIGN KEY (MeetingID) REFERENCES Activity(AName)
);

CREATE TABLE Competition (
    EndDate TIMESTAMP NOT NULL,
    Prize VARCHAR(250),
    CompName VARCHAR(50) NOT NULL,
    FOREIGN KEY (CompName) REFERENCES Activity(AName),
    PRIMARY KEY (CompName)
);

CREATE TABLE Club (
    ClubName VARCHAR(50) NOT NULL,
    Abbreviation VARCHAR(10),
    AGMDate TIMESTAMP,
    PresidentId INTEGER NOT NULL,
    FOREIGN KEY (PresidentId) REFERENCES Student(StudentID),
    PRIMARY KEY (ClubName)
);

CREATE TABLE Contact (
    StudentID INTEGER NOT NULL,
    Email VARCHAR(50),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);

-- relationships --

CREATE TABLE RunBy (
    ClubName VARCHAR(50) NOT NULL,
    AName VARCHAR(50) NOT NULL,
    FOREIGN KEY (ClubName) REFERENCES Club(ClubName),
    FOREIGN KEY (AName) REFERENCES Activity(AName),
    PRIMARY KEY (AName)
);

CREATE TABLE BelongsTo (
    StudentID INTEGER NOT NULL,
    ClubName VARCHAR(50) NOT NULL,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (ClubName) REFERENCES Activity(ClubName),
    PRIMARY KEY (StudentID, ClubName)
);

CREATE TABLE TakesPart(
    StudentID INTEGER NOT NULL,
    AName VARCHAR(50) NOT NULL,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (AName) REFERENCES Activity(AName),
    PRIMARY KEY (StudentID, AName)
);

CREATE TABLE WinnerOf(
    CompName VARCHAR(50) NOT NULL,
    StudentID INTEGER NOT NULL,     -- null or not null? cuz there could be 0 winner
    FOREIGN KEY (CompName) REFERENCES Competition(CompName),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    PRIMARY KEY (Competition)
);

-- CREATE TABLE idList(
--     idofIDList
--     StudentID INTEGER NOT NULL,
--     ClubID VARCHAR(50),

--     FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
--     FOREIGN KEY (ClubID) REFERENCES Club(ClubName)
-- );

DROP TABLE IF EXISTS Contact;
DROP TABLE IF EXISTS Competition;
DROP TABLE IF EXISTS Meeting;
DROP TABLE IF EXISTS Student;
DROP TABLE IF EXISTS Activity;
DROP TABLE IF EXISTS Club;
DROP TABLE IF EXISTS idList;

SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'public' -- You might need to adjust the schema name if it's different
AND table_type = 'BASE TABLE';

