CREATE TABLE Staff
(
  Staff_ID INT NOT NULL,
  Full_name VARCHAR(50) NOT NULL,
  Age INT NOT NULL,
  Gender VARCHAR(50) NOT NULL,
  Adress VARCHAR(50) NOT NULL,
  Telephone INT NOT NULL,
  Passport_data INT NOT NULL,
  ID_position INT NOT NULL,
  PRIMARY KEY (Staff_ID, Full_name),
  UNIQUE (Adress),
  UNIQUE (Telephone),
  UNIQUE (Passport_data),
  UNIQUE (ID_position)
);

CREATE TABLE Position
(
  Attribute INT NOT NULL,
  ID_Position INT NOT NULL,
  Name_Position INT NOT NULL,
  Salary INT NOT NULL,
  Duties INT NOT NULL,
  Demands INT NOT NULL,
  PRIMARY KEY (ID_Position),
  UNIQUE (Name_Position)
);

CREATE TABLE Types_of_components
(
  ID_Types_of_Components INT NOT NULL,
  Name_Types_of_Components VARCHAR(50) NOT NULL,
  Description VARCHAR(50) NOT NULL,
  PRIMARY KEY (ID_Types_of_Components),
  UNIQUE (Name_Types_of_Components)
);

CREATE TABLE Components
(
  Company_Produced VARCHAR(50) NOT NULL,
  ID_Components INT NOT NULL,
  Country_Produced VARCHAR(50) NOT NULL,
  Described VARCHAR(50) NOT NULL,
  Specificatrion VARCHAR(50) NOT NULL,
  Warranty_Period INT NOT NULL,
  Data_of_Issue INT NOT NULL,
  Price INT NOT NULL,
  PRIMARY KEY (ID_Components)
);

CREATE TABLE Customers
(
  Adress VARCHAR(50) NOT NULL,
  ID_Customers INT NOT NULL,
  Telephone INT NOT NULL,
  Full_name VARCHAR(50) NOT NULL,
  PRIMARY KEY (ID_Customers, Full_name),
  UNIQUE (Adress),
  UNIQUE (Telephone)
);

CREATE TABLE Services
(
  Description VARCHAR(50) NOT NULL,
  ID_Services INT NOT NULL,
  Price INT NOT NULL,
  Name VARCHAR(50) NOT NULL,
  PRIMARY KEY (ID_Services),
  UNIQUE (Name)
);

CREATE TABLE Orders
(
  Order_Data INT NOT NULL,
  Due_Data INT NOT NULL,
  Share__of_Prepayment INT NOT NULL,
  Payment_mark INT NOT NULL,
  Execution_mark INT NOT NULL,
  Total_Cost INT NOT NULL,
  General_Warrantty_Period INT NOT NULL,
  Share_of_Prepayment INT NOT NULL
);