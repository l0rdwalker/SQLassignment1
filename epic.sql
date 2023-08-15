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
    Club VARCHAR(50),
    JoinDate DATE NOT NULL,
    FOREIGN KEY (Student) REFERENCES Student(StudentID), 
    FOREIGN KEY (Club) REFERENCES Club(ClubName),
    PRIMARY KEY (Student,Club)
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
    FOREIGN KEY (ClubName) REFERENCES Student(ClubName)
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
    CompID VARCHAR(50) NOT NULL,
    FOREIGN KEY (CompID) REFERENCES Activity(AName),
    PRIMARY KEY (CompID)
);

CREATE TABLE Contact (
    StudentID INTEGER NOT NULL,
    Email VARCHAR(50),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);

DROP TABLE IF EXISTS Contact;
DROP TABLE IF EXISTS Competition;
DROP TABLE IF EXISTS Meeting;
DROP TABLE IF EXISTS Student;
DROP TABLE IF EXISTS Activity;
DROP TABLE IF EXISTS Club;
DROP TABLE IF EXISTS idList;