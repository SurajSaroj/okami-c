---------------------------------------- user data -----------------------------------------

Drop table if Exists User_Data;
CREATE TABLE User_Data(
    User_ID     varchar(255)   NOT NULL primary key,
    User_Name    NVARCHAR (50)  NULL,
    Name     NVARCHAR (MAX) NULL,
    User_Image   NVARCHAR (MAX) NULL,
    Gender       NVARCHAR (128) NULL,
    DOB          DATE,
    Country      NVARCHAR (128) NULL,
    About       NVARCHAR (MAX) NULL,
    User_Email   NVARCHAR (MAX) NULL,
    Password     NVARCHAR (128) NULL,
    Flag         NVARCHAR (128) NULL,
    Provider     NVARCHAR (128) NULL,
    Provider_key NVARCHAR (128) NULL, 
);

------------------------------------- post ----------------------------------------------

Drop table if Exists Post_Data;
CREATE TABLE Post_Data(
C_ID     varchar(255)   NOT NULL primary key,
User_ID varchar(255)   NOT NULL,
FOREIGN KEY (User_ID) REFERENCES User_Data(User_ID),
Post_Heading varchar(255),
Post_Content varchar(255),
Post_Date DATE,
Post_Category varchar(255),
Post_Type varchar(255),
Post_Tags varchar(255),
Post_Like_Count  varchar(255),
Post_Comments_Count varchar(255),
Post_Report_Count varchar(255)
);
--------------------------------------------- Post_Likes --------------------------------------------------------------------

Drop table if Exists Post_Likes;
CREATE TABLE Post_Likes(
L_ID     varchar(255)   NOT NULL primary key,
User_ID varchar(255)   NOT NULL,
FOREIGN KEY (User_ID) REFERENCES User_Data(User_ID),

C_ID varchar(255)   NOT NULL,
FOREIGN KEY (C_ID) REFERENCES Post_Data(C_ID),

Like_Flag VARCHAR(10),
Dislike_Flag VARCHAR(10)
);


--------------------------------------------- Post_Comments --------------------------------------------------------------------

Drop table if Exists Post_Comments;
CREATE TABLE Post_Comments(
Comm_ID     varchar(255)   NOT NULL primary key,
User_ID varchar(255)   NOT NULL,
FOREIGN KEY (User_ID) REFERENCES User_Data(User_ID),

C_ID varchar(255)   NOT NULL,
FOREIGN KEY (C_ID) REFERENCES Post_Data(C_ID),
Comm_Date DATE,
Comm_content VARCHAR (MAX)
);


--------------------------------------------- Post_Report --------------------------------------------------------------------

Drop table if Exists Post_Report;
CREATE TABLE Post_Report(
R_ID     varchar(255)   NOT NULL primary key,
User_ID varchar(255)   NOT NULL,
FOREIGN KEY (User_ID) REFERENCES User_Data(User_ID),
C_ID varchar(255)   NOT NULL,
FOREIGN KEY (C_ID) REFERENCES Post_Data(C_ID),

Report_date DATE,
Report_Flag VARCHAR(10)
);


---------------------------------------------- Contact Us -------------------------------------------------

Drop table if Exists Contact_US;
CREATE TABLE Contact_US
(
	Contact_id VARCHAR(255) NOT NULL primary key,
	Contact_Name VARCHAR(255),
	Contact_Email VARCHAR(255),
	Contact_Mob VARCHAR(20),
	Contact_Date DATE,
	Contact_Query VARCHAR(20)
);




