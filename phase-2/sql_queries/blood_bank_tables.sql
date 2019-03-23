CREATE TABLE Branch
( 	branch_id VARCHAR(10) NOT NULL, 
	city VARCHAR(20) NOT NULL, 
	address VARCHAR(30), 
	contact_no VARCHAR(10), 
	PRIMARY KEY(branch_id));

CREATE TABLE Blood 
( 	blood_id VARCHAR(10) NOT NULL, 
	blood_type VARCHAR(3) NOT NULL, 
	DOC DATE NOT NULL, 
	DOE DATE ,
	PRIMARY KEY (blood_id));

CREATE TABLE Donor
(	don_id INT NOT NULL, 
	d_date DATE NOT NULL,
	fname VARCHAR(15) NOT NULL,
	lname VARCHAR(15) NOT NULL, 
	gender CHAR NOT NULL,check (gender='F' or gender='M'), 
	DOB DATE,
	address VARCHAR(50),
	contact_no VARCHAR(10), 
	don_blood_id VARCHAR(10), 
	don_branch_id VARCHAR(10), 
	don_event_id VARCHAR(10), 
	PRIMARY KEY (don_id, d_date),
	FOREIGN KEY (don_blood_id) REFERENCES Blood(blood_id) ON DELETE SET DEFAULT ON UPDATE CASCADE,
	FOREIGN KEY(don_branch_id) REFERENCES Branch(branch_id) ON DELETE SET DEFAULT ON UPDATE CASCADE, 
	FOREIGN KEY (don_event_id) REFERENCES Don_Program(event_id) ON DELETE SET DEFAULT ON UPDATE CASCADE);

CREATE TABLE Recipient
(	rec_id INT NOT NULL, 
	r_date DATE NOT NULL, 
	fname VARCHAR(15) NOT NULL, 
	lname VARCHAR(15) NOT NULL, 
	DOB DATE ,
	address VARCHAR(30), 
	contact_no VARCHAR(10),
	amt_paid DECIMAL(4,2) NOT NULL,  
	rec_blood_id VARCHAR(10), 
	rec_branch_id VARCHAR(10), 
	PRIMARY KEY (rec_id, r_date),  
	FOREIGN KEY (rec_blood_id) REFERENCES Blood(blood_id) ON DELETE SET DEFAULT ON UPDATE CASCADE, 
	FOREIGN KEY(rec_branch_id) REFERENCES Branch(branch_id) ON DELETE SET DEFAULT ON UPDATE CASCADE);

CREATE TABLE Don_Program
(	event_id VARCHAR(10) NOT NULL, 
	e_date DATE NOT NULL, 
	venue VARCHAR(30), 
	quantity_of_blood INT, 
	branch_id VARCHAR(10), 
	PRIMARY KEY (event_id), 
	FOREIGN KEY (branch_id) REFERENCES Branch(branch_id) ON DELETE SET DEFAULT ON UPDATE CASCADE);

CREATE TABLE Staff_members
(	mem_id VARCHAR(10) NOT NULL, 
	fname VARCHAR(15) NOT NULL, 
	lname VARCHAR(15) NOT NULL, 
	gender CHAR NOT NULL, check (gender='F' or gender='M'),
	DOB DATE ,
	address VARCHAR(30), 
	contact_no VARCHAR(10), 
	doj DATE, 
	branch_id VARCHAR(10), 
	PRIMARY KEY (mem_id), 
	FOREIGN KEY (branch_id) REFERENCES Branch(branch_id) ON DELETE SET DEFAULT ON UPDATE CASCADE);

CREATE TABLE Provides
(	branch_id VARCHAR(10) NOT NULL, 
	rec_id INT NOT NULL, 
	r_date DATE NOT NULL,
	quantity INT NOT NULL,
	PRIMARY KEY(branch_id, rec_id, r_date),
	FOREIGN KEY (branch_id) REFERENCES Branch(branch_id), 
	FOREIGN KEY (rec_id,r_date) REFERENCES Recipient(rec_id,r_date) ON DELETE SET DEFAULT ON UPDATE CASCADE);

