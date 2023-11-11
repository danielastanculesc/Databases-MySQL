create database OrangeHRM; -- creare baza de date OrangeHRM
/*Selectam baza de date pe care o folosim: OrangeHRM */
use OrangeHRM;

/*Creare tabela Employee in baza de date OrangeHRM si declararea tipurilor de date ale fiecarei coloane*/
/*Coloana FirstName de tip VARCHAR de 25 de caractere care trebuie sa fie tot timpul populata*/
/*Coloana LastName de tip VARCHAR de 25 de caractere care trebuie sa fie tot timpul populata*/
/*Coloana DateofBirth de tip date*/
/*Coloana Nationality de tip VARCHAR de 25 de caractere*/
/*Coloana MaritalStatus de tip VARCHAR de 15 de caractere*/
/*Coloana Gender de tip VARCHAR de 6 de caractere*/
create table Employee ( 
FirstName varchar(25) not null,
LastName varchar(25) not null,
DateofBirth date,
Nationality varchar(25),
MaritalStatus varchar(15),
Gender varchar(6)
);

/*Adaugare coloane noi Salary si Email la tabela Employee*/
/*Coloana Salary de tip integer*/
/*Coloana Email de tip VARCHAR de 50 de caractere*/
alter table Employee add column Salary int;
alter table Employee add column Email varchar(50);

/*Arata structura tabelei Employee - desc-describe*/
desc Employee;

/*Stergerea coloanei Email din tabela Employee*/
alter table Employee drop column Email;

/*Creare tabela EmployeeImmigration in baza de date OrangeHRM si declararea tipurilor de date ale fiecarei coloane*/
/*Coloana Passport de tip integer care trebuie sa fie tot timpul populata*/
/*Coloana IssuedDate de tip date care trebuie sa fie tot timpul populata*/
/*Coloana ExpiryDate de tip date care trebuie sa fie tot timpul populata*/
CREATE TABLE EmployeeImmigration (
    Passport INT NOT NULL,
    IssuedDate DATE NOT NULL,
    ExpiryDate DATE NOT NULL
);

/*Arata structura tabelei EmployeeImmigration  - desc-describe */
desc EmployeeImmigration;

/*populare tabela EmployeeImmigration*/
insert into EmployeeImmigration (Passport, IssuedDate, ExpiryDate) 
value ('156478923', '2020-09-09', '2030-09-09'),
('258741369', '2022-01-31', '2032-01-31');

/*afisare tabela Employee*/
select * from EmployeeImmigration;

/**stergere din tabela EmployeeImmigration a datelor care contin numarul de pasaport =258741369 */
delete from EmployeeImmigration where Passport = '258741369';

/*stergere toate datele din EmployeeImmigration*/
truncate EmployeeImmigration;

/*stergere tabela EmployeeImmigration*/
drop table EmployeeImmigration;

/*populare tabela Employee*/
insert into Employee (FirstName, LastName, DateofBirth, Nationality, MaritalStatus, Gender, Salary) 
value ('Popescu', 'Ion', '1989-06-05', 'Romanian', 'Single', 'Male', '2000');
insert into Employee (FirstName, LastName, DateofBirth, Nationality, MaritalStatus, Gender, Salary) 
value ('Popescu', 'Nicolae', '1920-06-05', 'Romanian', 'Single', 'Male', '2000');
insert into Employee (FirstName, LastName, DateofBirth, Nationality, MaritalStatus, Gender, Salary) 
value ('Popescu', 'Ioana', '1921-06-05', 'Romanian', 'Single', 'Female', '2000');


/*afisare tabela Employee*/
select * from Employee;

/*populare tabela Employee*/
insert into Employee (FirstName, LastName, DateofBirth, Nationality, MaritalStatus, Gender, Salary) 
value ('Demian', 'Nicolae', '1966-12-05', 'Romanian', 'Maried', 'Male', '2500'),
('Demian', 'Eugenia', '1970-01-28', 'Romanian', 'Maried', 'Female', '2150'),
('Jurjiu', 'Mihaela', '1981-11-18', 'Romanian', 'Maried', 'Female', '2800'),
('Jurjiu', 'Nicolae', '1975-09-04', 'Romanian', 'Maried', 'Male', '2750'),
('Jurjiu', 'Alexia', '2008-09-18', 'Romanian', 'Single', 'Female', '3500'),
('Blaga', 'Ana', '1956-11-02', 'Romanian', 'Maried', 'Female', '4850'),
('Blaga', 'Aurel', '1950-03-30', 'Romanian', 'Maried', 'Male', '5000'),
('Blaga', 'Lucian', '1982-05-31', 'Romanian', 'Single', 'Male', '3100'),
('Ilie', 'Daniel', '1983-07-20', 'Romanian', 'Maried', 'Female', '3600'),
('Ilie', 'Iuliana', '1980-05-15', 'Romanian', 'Maried', 'Male', '1500'),
('Ilie', 'Beatrice', '2009-01-27', 'Romanian', 'Single', 'Male', '2650');

/*modificare date in coloana Gender din tabela Employee pentru diferite valori ale coloanei LastName*/
update Employee set Gender= 'Female' where LastName = 'Beatrice';
update Employee set Gender= 'Male' where LastName = 'Daniel';
update Employee set Gender= 'Female' where LastName = 'Iuliana';

/*Adaugare unei coloanenoi City la tabela Employee, avandtditul de date varchar de 25 de caractere*/
alter table Employee add column City varchar(25);

/*modificare date in tabela Employee*/
/*Se adauga orasul Timisoara tuturor randurilor din tabela*/
update Employee set City = 'Timisoara';

/*stergerea coloanei City din tabela Employee*/
alter table Employee drop column City;

/*stergere date din tabela dupa o anumita valoare a coloanei FirstName */
delete from Employee where FirstName = 'Popescu';

/*populare tabela Employee*/
insert into Employee (FirstName, LastName, DateofBirth, Nationality, MaritalStatus, Gender, Salary) 
value ('Popescu', 'Ion', '1989-06-05', 'Romanian', 'Single', 'Male', '2000');
insert into Employee (FirstName, LastName, DateofBirth, Nationality, MaritalStatus, Gender, Salary) 
value ('Popescu', 'Nicolae', '1920-06-05', 'Romanian', 'Single', 'Male', '2000');
insert into Employee (FirstName, LastName, DateofBirth, Nationality, MaritalStatus, Gender, Salary) 
value ('Popescu', 'Ioana', '1921-06-05', 'Romanian', 'Single', 'Female', '2000');


/*afisarea datelor din tabela Employee*/
select * from Employee;

/*afisarea tuturor coloanelor din tabela Employee*/
select FirstName, LastName, DateofBirth, Nationality, MaritalStatus, Gender from Employee;

/*afisarea anumitor coloane din tabela Employee*/
select FirstName, LastName from Employee;

/*afiseaza toate datele din tabela Employee unde FirstName = Demian */
select * from Employee where FirstName = 'Demian';

/*afiseaza toate datele din tabela Employee unde LastName incepe cu litera A */
select * from Employee where LastName like 'a%'; 

/*afiseaza toate datele din tabela Employee unde grupul de cuvinte "ia" se ragaseste in campul LastName*/
select * from Employee where LastName like '%ia%';

/*afiseaza toate datele din tabela Employee data nasterii este mai mare decat 1990 */
select * from Employee where dateofbirth > '1990%';

/*afiseaza toate datele din tabela Employee data nasterii este mai mare decat 1950 si LastName = Nicolae*/
select * from Employee where DateofBirth > '1950%' and LastName = 'Nicolae';
select * from Employee where Year(DateofBirth) > '1950' and LastName = 'Nicolae';

/*afiseaza toate datele din tabela Employee data nasterii este mai mare decat 1970 sau LastName = Nicolae*/
select * from Employee where DateofBirth > '1970%' or LastName = 'Nicolae';
select * from Employee where Year(DateofBirth) > '1970' or LastName = 'Nicolae';

/*afiseaza toate datele din tabela Employee unde FirstName nu este Demian*/
select * from Employee where not FirstName = 'Demian';

/*afiseaza toate datele din tabela Employee unde LastName nu este Nicolae*/
select * from Employee where  LastName != 'Nicolae';

/*afiseaza suma salariilor din tabela Employee*/
select sum(Salary)from Employee;

/*afiseaza media salariilor din tabela Employee*/
select avg(Salary)from Employee;

/*afiseaza salariul minim din tabela Employee*/
select min(Salary)from Employee;

/*afiseaza salariul maxim din tabela Employee*/
select max(Salary)from Employee;


/*adaugare coloana noua EmployeeId in tabela Employee si setarea acesteia ca si primary key de tip integer care se 
populeaza automat si i se aloca prima coloana din tabela */
alter table Employee add column EmployeeId int primary key auto_increment first;

/*arata structura tabelei Employee - desc-describe*/
desc Employee;

/*afisarea datelor din tabela Employee*/
select * from Employee;

/*creare tabela Dependent in baza de date OrangeHRM si declararea tipurilor de date ale fiecarei coloane*/
/*Coloana DependentId de tip integer care trebuie sa fie tot timpul populata, o vom seta ca si cheie primara a tabelei Dependents */
/*Coloana NameDependent de tip varchar de 60 caractere care trebuie sa fie tot timpul populata */
/*Coloana Relationship de tip varchar de 45 caractere care trebuie sa fie tot timpul populata */
/*Coloana DateofBirth de tip date*/
/*Coloana EmployeeId de tip integer care trebuie sa fie tot timpul populata, este o cheie secundara care 
face legatura cu tabela Employee*/
create table Dependent (
DependentId int not null,
NameDependent varchar(60) not null,
Relationship varchar(45) not null,
DateofBirth date,
EmployeeId int not null,
primary key (DependentId),
constraint fk_Dependent_Employee foreign key (EmployeeId) references Employee(EmployeeId)
);


/*modifica coloana DependentId  din tabela Dependent si si adaugarea proprietatii de auto_increment care se 
populeaza automat */
alter table Dependent modify DependentId int not null auto_increment;

/*arata structura tabelei Dependent - desc-describe*/
desc Dependent;

/*populare tabela Dependent*/
insert into Dependent (NameDependent, Relationship, DateofBirth, EmployeeId) 
value ('Demian Ioan', 'Child', '1989-06-03', '1'), ('Jurj Maria', 'Mother', '1944-03-01', '1');

/*afisarea tuturor datelor din tabela Employee*/
select * from Employee;

/*populare tabela Dependent*/

insert into Dependent (NameDependent, Relationship, DateofBirth, EmployeeId) 
value ('Demian Anca', 'Child', '1991-06-30', '2'),
('Bildea Ana', 'Mother', '1950-01-01', '2'),
('Jurjiu Daria', 'Child', '2000-09-08', '3'),
('Jurjiu Maria', 'Child', '2002-07-07', '3'),
('Jurjiu Marius', 'Child', '2004-12-07', '3'),
('Blaga Iulian', 'Child', '1970-06-25', '6'), 
('Blaga Ovidiu', 'Child', '1975-05-01', '6'),
('Blaga Radu', 'Child', '1980-01-07', '7'),
('Blaga Mihai', 'Father', '1985-07-11', '7'), 
('Blaga Vasile', 'Child', '1987-03-21', '7'),
('Ilie Matei', 'Child', '2005-02-21', '9'),
('Ilie Andrei', 'Child', '2007-08-28', '9'), 
('Ilie Tudor', 'Child', '2010-09-21', '9'),
('Ilie Alexandra', 'Child', '2015-07-23', '9'), 
('Ilie Roxana', 'Child', '2011-12-11', '10'),
('Popescu Ovidiu', 'Child', '1950-11-01', '12'),
('Popescu Laurentiu', 'Child', '1955-10-11', '13');

/*afisarea tuturor datelor din tabela Dependent*/
select * from Dependent;

/*Selecteaza toate datele din tabela Employee si pentru fiecare rand din tabela Employee 
le combina cu toate datele din tabela Dependent */
select * from Employee cross join Dependent;

/*afiseaza totate datele comune din Tabela Employee si Dependent*/
select * from Employee inner join Dependent on Employee.EmployeeId = Dependent.EmployeeId;


/*afiseaza toate datele din tabela Employee si din tabela Dependent aduce doar datele comune*/
select * from Employee left join Dependent on Employee.EmployeeId = Dependent.EmployeeId;

/*afiseaza toate datele din tabela Dependent si din tabela Employee aduce doar datele comune*/
select * from Employee right join Dependent on Employee.EmployeeId = Dependent.EmployeeId;

/*afiseaza toate datele din tabela Employee sortate in ordine crescatoare dupa coloana DateofBirth*/
select * from Employee order by DateofBirth;

/*afiseaza toate datele din tabela Dependent sortate in ordine crescatoare dupa coloana DateofBirth avand o limita de 3, adica 
imi afiseaza primele 3 persoanele care au cea mai mare varsta */
select * from Dependent order by DateofBirth asc limit 3;


/*afiseaza toate datele din tabela Dependent sortate in ordine descrescatoare dupa coloana DateofBirth*/
select * from Dependent order by DateofBirth desc;


/*Vreau sa vad cati dependenti are fiecare angajat*/
/*Afiseaza toate datele comune dintre tabelele Employee si Dependent si numarul de dependenti
si sunt grupate dupa EmployeeId(Tabela Employee, trebuie specificata deoarece mai avem o coloana cu acelasi
nume si in tabele Dependents) FirstName si LastName */
select e.EmployeeId, FirstName, LastName, count(DependentId)
from Employee e inner join Dependent d on e.EmployeeId = d.EmployeeId
group by e.EmployeeId, FirstName, LastName;


/*vreau sa vad doar Angajatii care au mai multi de 2 dependenti*/
/*Afiseaza toate datele comune dintre tabelele Employee si Dependent care au numarul de dependenti >2
si sunt grupate dupa EmployeeId(Tabela Employee, trebuie specificata deoarece mai avem o coloana cu acelasi
nume si in tabele Dependents) FirstName si LastName */
select e.EmployeeId, FirstName, LastName, count(DependentId)
from Employee e inner join Dependent d on e.EmployeeId = d.EmployeeId
group by e.EmployeeId, FirstName, LastName
having count(DependentId)>2;




