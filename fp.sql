drop table agents;
Create table agents(
AgentID Number(10)  Not Null PRIMARY KEY,
FName Varchar(20),
Lname Varchar(20),
Region Char(2),
Years Number(10),
Manager Varchar(20)
)
Drop table students;
Create table students(
StudentID Number(10),
FName Varchar(20),
Lname Varchar(20),
Location Varchar(20),
AgentID Number(10),
PRIMARY KEY (StudentID),
Foreign key (AgentID)REFERENCES agents1(AgentID)
);

Drop table games1;
Create table game(
GameID Number(10),
Gname Varchar(20),
Coach Varchar(20),
PRIMARY KEY (GameID),
AgentID Number(10),
StudentID Number(10),
Foreign key (AgentID)REFERENCES agents1(AgentID),
Foreign key (StudentID)REFERENCES student1(StudentID)
);


Drop Table contract1;
Create table contract1(
ContractID Number(10) Not Null Primary Key,
StartDate Date,
EndDate Date,
AgentID Number(10) Not Null references agents1(AgentID),
StudentID Number(10) Not Null references students1(StudentID)
)

drop table consultingfee;
Create table consultingfee(
FeeID Number(10) Not Null Primary Key,
Amount Number(10),
GameID Number(10) Not Null references games(GamesID)
)

INSERT INTO agents (AgentID, FName, LName, Region, Years, Manager) VALUES
(1, 'Jeffry', 'Brown', 'B', '3', 'Ray');
INSERT INTO agents (AgentID, FName, LName, Region, Years, Manager) VALUES
(2, 'Hermik', 'Joy', 'A', 5, 'Bose');
INSERT INTO agents (AgentID, FName, LName, Region, Years, Manager) VALUES
(3, 'Stefen', 'Amell', 'A', 2, 'Lance');
INSERT INTO agents (AgentID, FName, LName, Region, Years, Manager) VALUES
(4, 'Jessy', 'Pinkman', 'C', 1, 'White');
INSERT INTO agents (AgentID, FName, LName, Region, Years, Manager) VALUES
(5, 'Veer', 'Singh', 'B', 4, 'Sharma');
INSERT INTO agents (AgentID, FName, LName, Region, Years, Manager) VALUES
(6, 'Brett', 'Lee', 'C', 7, 'Warne');
INSERT INTO agents (AgentID, FName, LName, Region, Years, Manager) VALUES
(7, 'Smith', 'Wilson', 'A', 1, 'Loy');
INSERT INTO agents (AgentID, FName, LName, Region, Years, Manager) VALUES
(8, 'Ricky', 'Landre', 'C', 1, 'Poulin');
INSERT INTO agents (AgentID, FName, LName, Region, Years, Manager) VALUES
(9, 'Tim', 'Cook', 'C', 3, 'Jobs');
INSERT INTO agents (AgentID, FName, LName, Region, Years, Manager) VALUES
(10, 'Martin', 'King', 'A', 5, 'Caron');

INSERT INTO contract (contractID, StartDate, EndDate, AgentID, StudentID) VALUES
(1, '01-FEB-15', '01-FEB-16', 9, 1);
INSERT INTO contract (contractID, StartDate, EndDate, AgentID, StudentID) VALUES
(2, '01-Jan-15', '01-Jan-16', 2, 8);
INSERT INTO contract (contractID, StartDate, EndDate, AgentID, StudentID) VALUES
(3, '01-Mar-15', '01-Mar-16', 7, 3);
INSERT INTO contract (contractID, StartDate, EndDate, AgentID, StudentID) VALUES
(4, '01-Apr-15', '01-Apr-16', 6, 4);
INSERT INTO contract (contractID, StartDate, EndDate, AgentID, StudentID) VALUES
(5, '01-May-15', '01-May-16', 8, 2);
INSERT INTO contract (contractID, StartDate, EndDate, AgentID, StudentID) VALUES
(6, '01-Jun-15', '01-Jun-16', 5, 6);
INSERT INTO contract (contractID, StartDate, EndDate, AgentID, StudentID) VALUES
(7, '01-Jul-15', '01-Jul-16', 10, 5);
INSERT INTO contract (contractID, StartDate, EndDate, AgentID, StudentID) VALUES
(8, '01-Aug-15', '01-Aug-16', 8, 10);
INSERT INTO contract (contractID, StartDate, EndDate, AgentID, StudentID) VALUES
(9, '01-Sep-15', '01-Sep-16', 1, 7);
INSERT INTO contract (contractID, StartDate, EndDate, AgentID, StudentID) VALUES
(10, '01-Oct-15', '01-Oct-16', 3, 9);

INSERT INTO game (GameID, GName, Coach, AgentID, StudentID) VALUES
(1, 'Football', 'Mourhino', 9, 1);
INSERT INTO game (GameID, GName, Coach, AgentID, StudentID) VALUES
(2, 'Basketball', 'James', 7, 3);
INSERT INTO game (GameID, GName, Coach, AgentID, StudentID) VALUES
(3, 'Cricket', 'Kristian', 5, 6);
INSERT INTO game (GameID, GName, Coach, AgentID, StudentID) VALUES
(4, 'Volleyball', 'Peter', 3, 8);
INSERT INTO game (GameID, GName, Coach, AgentID, StudentID) VALUES
(5, 'Football', 'Yuan', 1, 10);
INSERT INTO game (GameID, GName, Coach, AgentID, StudentID) VALUES
(6, 'Football', 'Billy', 2, 5);
INSERT INTO game (GameID, GName, Coach, AgentID, StudentID) VALUES
(7, 'Basketball', 'Singh', 4, 2);
INSERT INTO game (GameID, GName, Coach, AgentID, StudentID) VALUES
(8, 'Football', 'Robin', 6, 4);
INSERT INTO game (GameID, GName, Coach, AgentID, StudentID) VALUES
(9, 'Volleyball', 'Joy', 8, 7);
INSERT INTO game (GameID, GName, Coach, AgentID, StudentID) VALUES
(10, 'Cricket', 'Tendulkar', 10, 9);

INSERT INTO student (StudentsID, Fname, LName, Location, AgentID) VALUES
(1, 'Jets', 'Luthra', 'Chicago', 9);
INSERT INTO student (StudentsID, Fname, LName, Location, AgentID) VALUES
(2, 'Chintan', 'Shah', 'Dallas', 2);
INSERT INTO student (StudentsID, Fname, LName, Location, AgentID) VALUES
(3, 'Rahul', 'Bhoi', 'Ohio', 6);
INSERT INTO student (StudentsID, Fname, LName, Location, AgentID) VALUES
(4, 'Gopal', 'Singh', 'Springfield', 1);
INSERT INTO student (StudentsID, Fname, LName, Location, AgentID) VALUES
(5, 'Akshay', 'Minz', 'Suburb', 8);
INSERT INTO student (StudentsID, Fname, LName, Location, AgentID) VALUES
(6, 'Aqib', 'Alam', 'Russia', 10);
INSERT INTO student (StudentsID, Fname, LName, Location, AgentID) VALUES
(7, 'Mayank ', 'Gupta', 'Italy', 7);
INSERT INTO student (StudentsID, Fname, LName, Location, AgentID) VALUES
(8, 'Aviral', 'Lee', 'HongKong', 5);
INSERT INTO student (StudentsID, Fname, LName, Location, AgentID) VALUES
(9, 'Sumeet', 'Chawla', 'Denver', 4);
INSERT INTO student (StudentsID, Fname, LName, Location, AgentID) VALUES
(10, 'Shubham', 'Sindhwani', 'Detroit', 3);

INSERT INTO consultingfee (FeeID, Amount, GameID) VALUES
(1, 2500, 1);
INSERT INTO consultingfee (FeeID, Amount, GameID) VALUES
(2, 1300, 2);
INSERT INTO consultingfee (FeeID, Amount, GameID) VALUES
(3, 1100, 3);
INSERT INTO consultingfee (FeeID, Amount, GameID) VALUES
(4, 600, 4);
INSERT INTO consultingfee (FeeID, Amount, GameID) VALUES
(5, 2200, 5);
INSERT INTO consultingfee (FeeID, Amount, GameID) VALUES
(6, 1000, 6);
INSERT INTO consultingfee (FeeID, Amount, GameID) VALUES
(7, 750, 7);
INSERT INTO consultingfee (FeeID, Amount, GameID) VALUES
(8, 500, 8);
INSERT INTO consultingfee (FeeID, Amount, GameID) VALUES
(9, 1800, 9);
INSERT INTO consultingfee (FeeID, Amount, GameID) VALUES
(10, 3000, 10);

select Region from agents1
union
select location from students1;

select Region from agents1
union all
select location from students1;

Select LName from agents1
Intersect
Select LName from students1;

SELECT GameID
FROM consultingfee
WHERE ROWNUM <= 2;

Select Sum(Amount) From consultingfee
WHERE EXISTS
(Select * From games1
Where Coach = 'Yuan');

select DATEDIFF('startDate','endDate') as datediff from contract;

select agentID,count(agentID) as "no_of_students_consulting"
from student
group  by agentID
having count(agentid)>2;

select agentid,sum(amount)
from consultingfee
group by agentid;

select agentid as "ID" ,concat(fname,lname) as "agent",region
from agents
where MANAGER = 'Bose';



PIVOT (SUM(years)

FOR (region) IN

('A' AS "region A",'B' AS "region B",'C' as "region C"))

ORDER BY agentID;

