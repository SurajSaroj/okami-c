
CREATE TRIGGER [dbo].[Create_Table]
       ON [dbo].[Animals_Image]
AFTER INSERT,UPDATE,DELETE
AS
BEGIN
       SET NOCOUNT ON;

	 Drop table if Exists Fresh_table;
	CREATE TABLE Fresh_table(
	C_ID     varchar(255)   NOT NULL primary key,
	User_ID varchar(255)   NOT NULL,
	FOREIGN KEY (User_ID) REFERENCES User_Data(User_ID),
	Post_Heading varchar(255),
	Post_Content varchar(255),
	Post_Date DATE,
	Post_Tags varchar(255),
	Post_Like_Count  varchar(255),
	Post_Comments_Count varchar(255),
	Post_Report_Count varchar(255)
	);
	INSERT INTO fresh_table
   SELECT * FROM Funny_Image 
   UNION ALL
   SELECT * FROM Animals_Image; 

END


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


create view View_Fresh as
select u.C_ID,u.User_ID,u.Post_Heading,u.Post_Content,u.Post_Date,u.Post_Category,u.Post_Type,
u.Post_Tags,u.Post_Like_Count,u.Post_Comments_Count,u.Post_Report_Count
from Post_Data u;

create view View_Trending as
select u.C_ID,u.User_ID,u.Post_Heading,u.Post_Content,u.Post_Date,u.Post_Category,u.Post_Type,
u.Post_Tags,u.Post_Like_Count,u.Post_Comments_Count,u.Post_Report_Count
from Post_Data u;

create view View_Gif as
select u.C_ID,u.User_ID,u.Post_Heading,u.Post_Content,u.Post_Date,u.Post_Category,u.Post_Type,
u.Post_Tags,u.Post_Like_Count,u.Post_Comments_Count,u.Post_Report_Count
from Post_Data u
where u.Post_Type='Gif';

create view View_Video as
select u.C_ID,u.User_ID,u.Post_Heading,u.Post_Content,u.Post_Date,u.Post_Category,u.Post_Type,
u.Post_Tags,u.Post_Like_Count,u.Post_Comments_Count,u.Post_Report_Count
from Post_Data u
where u.Post_Type='Video';

create view View_Funny as
select u.C_ID,u.User_ID,u.Post_Heading,u.Post_Content,u.Post_Date,u.Post_Category,u.Post_Type,
u.Post_Tags,u.Post_Like_Count,u.Post_Comments_Count,u.Post_Report_Count
from Post_Data u
where u.Post_Category='Funny';

create view View_Animals as
select u.C_ID,u.User_ID,u.Post_Heading,u.Post_Content,u.Post_Date,u.Post_Category,u.Post_Type,
u.Post_Tags,u.Post_Like_Count,u.Post_Comments_Count,u.Post_Report_Count
from Post_Data u
where u.Post_Category='Animals';


create view View_Sports as
select u.C_ID,u.User_ID,u.Post_Heading,u.Post_Content,u.Post_Date,u.Post_Category,u.Post_Type,
u.Post_Tags,u.Post_Like_Count,u.Post_Comments_Count,u.Post_Report_Count
from Post_Data u
where u.Post_Category='Sports';

create view View_Food as
select u.C_ID,u.User_ID,u.Post_Heading,u.Post_Content,u.Post_Date,u.Post_Category,u.Post_Type,
u.Post_Tags,u.Post_Like_Count,u.Post_Comments_Count,u.Post_Report_Count
from Post_Data u
where u.Post_Category='Food';


--------------------------------------------------------------------------------------------------------------

create view View_Relationship as
select u.C_ID,u.User_ID,u.Post_Heading,u.Post_Content,u.Post_Date,u.Post_Category,u.Post_Type,
u.Post_Tags,u.Post_Like_Count,u.Post_Comments_Count,u.Post_Report_Count
from Post_Data u
where u.Post_Category='Relationship';

create view View_Gaming as
select u.C_ID,u.User_ID,u.Post_Heading,u.Post_Content,u.Post_Date,u.Post_Category,u.Post_Type,
u.Post_Tags,u.Post_Like_Count,u.Post_Comments_Count,u.Post_Report_Count
from Post_Data u
where u.Post_Category='Gaming';


create view View_Programmers as
select u.C_ID,u.User_ID,u.Post_Heading,u.Post_Content,u.Post_Date,u.Post_Category,u.Post_Type,
u.Post_Tags,u.Post_Like_Count,u.Post_Comments_Count,u.Post_Report_Count
from Post_Data u
where u.Post_Category='Programmers';

create view View_Science as
select u.C_ID,u.User_ID,u.Post_Heading,u.Post_Content,u.Post_Date,u.Post_Category,u.Post_Type,
u.Post_Tags,u.Post_Like_Count,u.Post_Comments_Count,u.Post_Report_Count
from Post_Data u
where u.Post_Category='Science';


create view View_Comic as
select u.C_ID,u.User_ID,u.Post_Heading,u.Post_Content,u.Post_Date,u.Post_Category,u.Post_Type,
u.Post_Tags,u.Post_Like_Count,u.Post_Comments_Count,u.Post_Report_Count
from Post_Data u
where u.Post_Category='Comic';



create view View_School as
select u.C_ID,u.User_ID,u.Post_Heading,u.Post_Content,u.Post_Date,u.Post_Category,u.Post_Type,
u.Post_Tags,u.Post_Like_Count,u.Post_Comments_Count,u.Post_Report_Count
from Post_Data u
where u.Post_Category='School';



