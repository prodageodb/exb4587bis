DROP TABLE IF EXISTS Audit ;
CREATE TABLE Audit (
	tracking_id INT AUTO_INCREMENT NOT NULL,
	data_id INT NOT NULL,
	field VARCHAR ( 50 ) NOT NULL,
	old_value INT NOT NULL,
	new_value INT NOT NULL,
	modified TIMESTAMP NOT NULL,
	
	PRIMARY KEY (tracking_id)
);

DROP TABLE IF EXISTS Employee ;
CREATE TABLE Employee (  
	id INT AUTO_INCREMENT NOT NULL,  
	person_id INT,
	username VARCHAR (20) NOT NULL,
	hiring_date DATE NOT NULL,
	title ENUM ( 'manager', 'officer' ),
	manager_id INT,
	
	PRIMARY KEY (ID),
	FOREIGN KEY (manager_id) REFERENCES Employee(id)
);

