CREATE TABLE Activity (
    AName VARCHAR(50) NOT NULL,
    Description VARCHAR(1000),
    Budget INTEGER,
    PRIMARY KEY (AName)
);

CREATE TABLE Student (
  StudentID INTEGER NOT NULL,
  StudentName VARCHAR(50) NOT NULL,
  Email VARCHAR(50),
  PRIMARY KEY (StudentID)
);

CREATE TABLE Meeting (
    StartTime TIMESTAMP NOT NULL,
    Duration TIME NOT NULL,
    MeetingID VARCHAR(50) NOT NULL,
    FOREIGN KEY (MeetingID) REFERENCES Activity(AName),
    PRIMARY KEY (MeetingID)
);

CREATE TABLE Competition (
    EndDate TIMESTAMP NOT NULL,
    Prize VARCHAR(250),
    CompID VARCHAR(50) NOT NULL,
    FOREIGN KEY (CompID) REFERENCES Activity(AName),
    PRIMARY KEY (CompID)
);

CREATE TABLE idList(
    idofIDList
    StudentID INTEGER NOT NULL,
    ClubID VARCHAR(50),

    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (ClubID) REFERENCES Club(ClubName)
);

CREATE TABLE Club (
    ClubName VARCHAR(50) NOT NULL,
    Abbreviation VARCHAR(10),
    AGMDate TIMESTAMP,
    PRIMARY KEY (ClubName)'
    '
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