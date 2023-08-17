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
  Email VARCHAR(50) UNIQUE,
  PRIMARY KEY (StudentID)
);


CREATE TABLE Club (
    ClubName VARCHAR(50) NOT NULL,
    Abbreviation VARCHAR(10) UNIQUE,
    AGMDate TIMESTAMP,
    President INTEGER,
    FOREIGN KEY (President) REFERENCES Student(StudentID),
    PRIMARY KEY (ClubName)
);


CREATE TABLE Activity (
    AName VARCHAR(50) NOT NULL,
    ClubID VARCHAR(50) NOT NULL,
    Description VARCHAR(1000),
    Budget INTEGER,
    PRIMARY KEY (AName),
    FOREIGN KEY (ClubID) REFERENCES Club(ClubName)
);


CREATE TABLE Meeting (
    StartTime TIMESTAMP NOT NULL,
    Duration TIME NOT NULL,
    MeetingID VARCHAR(50) NOT NULL,
    FOREIGN KEY (MeetingID) REFERENCES Activity(AName),
    PRIMARY KEY(MeetingID)
);


CREATE TABLE Competition (
    EndDate TIMESTAMP NOT NULL,
    Prize VARCHAR(250),
    CompName VARCHAR(50) NOT NULL,
    FOREIGN KEY (CompName) REFERENCES Activity(AName),
    PRIMARY KEY (CompName)
);


CREATE TABLE Contact (
    StudentID INTEGER NOT NULL,
    Email VARCHAR(50),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    PRIMARY KEY (StudentID,Email)
);

-- relationships --
CREATE TABLE RunBy (
    ClubName VARCHAR(50) NOT NULL,
    AName VARCHAR(50) NOT NULL,
    FOREIGN KEY (ClubName) REFERENCES Club(ClubName),
    FOREIGN KEY (AName) REFERENCES Activity(AName)
);


CREATE TABLE BelongsTo (
    StudentID INTEGER NOT NULL,
    ClubName VARCHAR(50) NOT NULL,
    JoinDate TIMESTAMP NOT NULL,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (ClubName) REFERENCES Club(ClubName),
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
    PRIMARY KEY (CompName)
);

CREATE OR REPLACE FUNCTION check_meeting_duplicate_meetingid()
RETURNS TRIGGER AS $$
BEGIN
    IF EXISTS (
        SELECT 1
        FROM Meeting
        WHERE MeetingID = NEW.CompName
    ) THEN
        RAISE EXCEPTION 'MeetingID already exists';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER check_meeting_duplicate_meetingid
BEFORE INSERT ON Competition
FOR EACH ROW
EXECUTE FUNCTION check_duplicate_meetingid();

CREATE OR REPLACE FUNCTION check_comp_duplicate_meetingid()
RETURNS TRIGGER AS $$
BEGIN
    IF EXISTS (
        SELECT 1
        FROM Competition
        WHERE CompName = NEW.MeetingID
    ) THEN
        RAISE EXCEPTION 'CompID already exists';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER before_insert_check_duplicate
BEFORE INSERT ON Meeting
FOR EACH ROW
EXECUTE FUNCTION check_comp_duplicate_meetingid();

SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'public' -- You might need to adjust the schema name if it's different
AND table_type = 'BASE TABLE';