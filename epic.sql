CREATE TABLE Student (
  StudentID INTEGER NOT NULL,
  StudentName VARCHAR(20) NOT NULL,
  Email VARCHAR(50),
  PRIMARY KEY (StudentID)
);

CREATE TABLE Meeting (
    StartTime DATETIME NOT NULL,
    Duration int not NULL
);/*Maybe change Duration to EndTime?s*/

CREATE TABLE Competition (
    EndDate DATETIME NOT NULL,
    Prize VARCHAR(250)
);


CREATE TABLE Club (
    ClubName VARCHAR(20),
    Abbreviation VARCHAR(5),
    AGMdate DATETIME,
    PRIMARY KEY (ClubName)
);

CREATE TABLE Ac1vity (
    AName VARCHAR(15),
    Descrip1on VARCHAR(250),
    Budget INTEGER,
    PRIMARY KEY (AName)
);
