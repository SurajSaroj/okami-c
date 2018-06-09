
--------------------------------- user_Data   image/logo1.png -----------------------------------------------------
INSERT INTO User_Data
 (User_ID, User_Name, Name, User_Image, Gender, DOB, Country,About,User_Email,Password,Flag)
VALUES ('U_1','Kuldeep1428','Kuldeep Kushwaha','image/user/Kuldeep1428','Male','1993-09-13','India','Funny Person','riderkuldeep1428@gmail.com','kuldeep1428','1');

--------------------------------- funny   image/post/Funny/-----------------------------------------------------

INSERT INTO Post_Data
 (C_ID, User_ID,Post_Heading,Post_Content, Post_Date, Post_Tags, Post_Like_Count,
 Post_Comments_Count,Post_Report_Count,Post_Category,Post_Type)
VALUES ('FV_2','U_1','We can all relate to this..','https://img-9gag-fun.9cache.com/photo/aP9X6RK_460sv.mp4','2017-1-2',
'funny,exam',(select count(c.C_ID) from Post_Likes l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Comments l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Report l,Post_Data c where c.C_ID=l.C_ID),'Funny','Video'
);


INSERT INTO Post_Data
 (C_ID, User_ID,Post_Heading,Post_Content, Post_Date, Post_Tags, Post_Like_Count,
 Post_Comments_Count,Post_Report_Count,Post_Category,Post_Type)
VALUES ('FV_3','U_1','Unemployment struck hard','image/post/Funny/FV_3.gif','2017-1-3',
'funny,spiderman',(select count(c.C_ID) from Post_Likes l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Comments l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Report l,Post_Data c where c.C_ID=l.C_ID),'Funny','Gif'
);


INSERT INTO Post_Data
 (C_ID, User_ID,Post_Heading,Post_Content, Post_Date, Post_Tags, Post_Like_Count,
 Post_Comments_Count,Post_Report_Count,Post_Category,Post_Type)
VALUES ('FV_1','U_1','Anyone else likes James as much as I do?','image/post/Funny/FV_1.jpg','2017-1-1',
'funny',(select count(c.C_ID) from Post_Likes l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Comments l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Report l,Post_Data c where c.C_ID=l.C_ID),'Funny','Image'
);


--------------------------------- Animals   image/post/Funny/-----------------------------------------------------

INSERT INTO Post_Data
 (C_ID, User_ID,Post_Heading,Post_Content, Post_Date, Post_Tags, Post_Like_Count,
 Post_Comments_Count,Post_Report_Count,Post_Category,Post_Type)
VALUES ('AV_1','U_1','That scream at the end','https://img-9gag-fun.9cache.com/photo/aEBD57e_460sv.mp4','2017-2-4',
'animal,mask',(select count(c.C_ID) from Post_Likes l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Comments l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Report l,Post_Data c where c.C_ID=l.C_ID),'Animals','Video'
);


INSERT INTO Post_Data
 (C_ID, User_ID,Post_Heading,Post_Content, Post_Date, Post_Tags, Post_Like_Count,
 Post_Comments_Count,Post_Report_Count,Post_Category,Post_Type)
VALUES ('AV_2','U_1','Sand kittens','image/post/Animals/AV_2.gif','2017-2-5',
'animals,cute',(select count(c.C_ID) from Post_Likes l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Comments l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Report l,Post_Data c where c.C_ID=l.C_ID),'Animals','Gif'
);


INSERT INTO Post_Data
 (C_ID, User_ID,Post_Heading,Post_Content, Post_Date, Post_Tags, Post_Like_Count,
 Post_Comments_Count,Post_Report_Count,Post_Category,Post_Type)
VALUES ('AV_3','U_1','No prison can hold me!','image/post/Animals/AV_3.jpg','2017-2-6',
'animal,parrot',(select count(c.C_ID) from Post_Likes l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Comments l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Report l,Post_Data c where c.C_ID=l.C_ID),'Animals','Image'
);

INSERT INTO Post_Data
 (C_ID, User_ID,Post_Heading,Post_Content, Post_Date, Post_Tags, Post_Like_Count,
 Post_Comments_Count,Post_Report_Count,Post_Category,Post_Type)
VALUES ('AV_4','U_1','Cat will aways be a cat...','image/post/Animals/AV_4.jpg','2017-2-16',
'animal,lion','2','45','999','Animals','Image'
);


INSERT INTO Post_Data
 (C_ID, User_ID,Post_Heading,Post_Content, Post_Date, Post_Tags, Post_Like_Count,
 Post_Comments_Count,Post_Report_Count,Post_Category,Post_Type)
VALUES ('AV_5','U_1','When you lie on your resume but get the job anyway.
','image/post/Animals/AV_5.jpg','2017-2-17',
'animal,dog,lie','10','13','42','Animals','Image'
);




INSERT INTO Post_Data
 (C_ID, User_ID,Post_Heading,Post_Content, Post_Date, Post_Tags, Post_Like_Count,
 Post_Comments_Count,Post_Report_Count,Post_Category,Post_Type)
VALUES ('AV_6','U_1','Legends say that Momma is still looking for it',
'image/post/Animals/AV_6.jpg','2017-2-18',
'animal,bear','10','13','42','Animals','Image'
);

--------------------------------- School   image/post/School/-----------------------------------------------------

INSERT INTO Post_Data
 (C_ID, User_ID,Post_Heading,Post_Content, Post_Date, Post_Tags, Post_Like_Count,
 Post_Comments_Count,Post_Report_Count,Post_Category,Post_Type)
VALUES ('SV_1','U_1','True','https://img-9gag-fun.9cache.com/photo/a882KoQ_460sv.mp4','2017-3-7',
'school,education',(select count(c.C_ID) from Post_Likes l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Comments l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Report l,Post_Data c where c.C_ID=l.C_ID),'School','Video'
);


INSERT INTO Post_Data
 (C_ID, User_ID,Post_Heading,Post_Content, Post_Date, Post_Tags, Post_Like_Count,
 Post_Comments_Count,Post_Report_Count,Post_Category,Post_Type)
VALUES ('SV_2','U_1','When I start to read the exam','image/post/School/SV_2.gif','2017-3-8',
'school,cute',(select count(c.C_ID) from Post_Likes l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Comments l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Report l,Post_Data c where c.C_ID=l.C_ID),'School','Gif'
);


INSERT INTO Post_Data
 (C_ID, User_ID,Post_Heading,Post_Content, Post_Date, Post_Tags, Post_Like_Count,
 Post_Comments_Count,Post_Report_Count,Post_Category,Post_Type)
VALUES ('SV_3','U_1','Just had my exams, and this happend','image/post/School/SV_3.jpg','2017-3-9',
'school,anime',(select count(c.C_ID) from Post_Likes l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Comments l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Report l,Post_Data c where c.C_ID=l.C_ID),'School','Image'
);



--------------------------------- Sports   image/post/Sports/-----------------------------------------------------

INSERT INTO Post_Data
 (C_ID, User_ID,Post_Heading,Post_Content, Post_Date, Post_Tags, Post_Like_Count,
 Post_Comments_Count,Post_Report_Count,Post_Category,Post_Type)
VALUES ('SpV_1','U_1','Wait for it!','https://img-9gag-fun.9cache.com/photo/aDzVNEx_460sv.mp4','2017-4-10',
'sports,tennis',(select count(c.C_ID) from Post_Likes l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Comments l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Report l,Post_Data c where c.C_ID=l.C_ID),'Sports','Video'
);


INSERT INTO Post_Data
 (C_ID, User_ID,Post_Heading,Post_Content, Post_Date, Post_Tags, Post_Like_Count,
 Post_Comments_Count,Post_Report_Count,Post_Category,Post_Type)
VALUES ('SpV_2','U_1','Golfing with the boys','image/post/Sports/SpV_2.gif','2017-4-11',
'sports,golf',(select count(c.C_ID) from Post_Likes l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Comments l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Report l,Post_Data c where c.C_ID=l.C_ID),'Sports','Gif'
);


INSERT INTO Post_Data
 (C_ID, User_ID,Post_Heading,Post_Content, Post_Date, Post_Tags, Post_Like_Count,
 Post_Comments_Count,Post_Report_Count,Post_Category,Post_Type)
VALUES ('SpV_3','U_1','Dorsa Derakhshani, Iranian chess player who was expelled from national team because of not wearing hijab, has officially joined the American national chess team','image/post/Sports/SpV_3.jpg','2017-4-12',
'sports,chess',(select count(c.C_ID) from Post_Likes l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Comments l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Report l,Post_Data c where c.C_ID=l.C_ID),'Sports','Image'
);


--------------------------------- Food   image/post/Food/-----------------------------------------------------

INSERT INTO Post_Data
 (C_ID, User_ID,Post_Heading,Post_Content, Post_Date, Post_Tags, Post_Like_Count,
 Post_Comments_Count,Post_Report_Count,Post_Category,Post_Type)
VALUES ('FoV_1','U_1','Cant. Stop. Watching.','https://img-9gag-fun.9cache.com/photo/a05162B_460sv.mp4','2017-5-13',
'food,ice-cream',(select count(c.C_ID) from Post_Likes l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Comments l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Report l,Post_Data c where c.C_ID=l.C_ID),'Food','Video'
);


INSERT INTO Post_Data
 (C_ID, User_ID,Post_Heading,Post_Content, Post_Date, Post_Tags, Post_Like_Count,
 Post_Comments_Count,Post_Report_Count,Post_Category,Post_Type)
VALUES ('FoV_2','U_1','How to turn a $1 burger into a $3 for 30c','image/post/Food/FV_2.gif','2017-5-14',
'food,money',(select count(c.C_ID) from Post_Likes l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Comments l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Report l,Post_Data c where c.C_ID=l.C_ID),'Food','Gif'
);


INSERT INTO Post_Data
 (C_ID, User_ID,Post_Heading,Post_Content, Post_Date, Post_Tags, Post_Like_Count,
 Post_Comments_Count,Post_Report_Count,Post_Category,Post_Type)
VALUES ('FoV_3','U_1','What! someone stole my sewing kit and put cookies instead in the box','image/post/Food/FV_3.jpg','2017-5-15',
'food,stole',(select count(c.C_ID) from Post_Likes l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Comments l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Report l,Post_Data c where c.C_ID=l.C_ID),'Food','Image'
);



--------------------------------- Relationship   image/post/Relationship/-----------------------------------------------------

INSERT INTO Post_Data
 (C_ID, User_ID,Post_Heading,Post_Content, Post_Date, Post_Tags, Post_Like_Count,
 Post_Comments_Count,Post_Report_Count,Post_Category,Post_Type)
VALUES ('RV_1','U_1','Thats how best friends work','https://img-9gag-fun.9cache.com/photo/ajNZ4n8_460sv.mp4','2017-6-16',
'relationship,friend',(select count(c.C_ID) from Post_Likes l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Comments l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Report l,Post_Data c where c.C_ID=l.C_ID),'Relationship','Video'
);


INSERT INTO Post_Data
 (C_ID, User_ID,Post_Heading,Post_Content, Post_Date, Post_Tags, Post_Like_Count,
 Post_Comments_Count,Post_Report_Count,Post_Category,Post_Type)
VALUES ('RV_2','U_1','When you ask your GF if she wants any fries and she says "No, I need to watch my figure"','image/post/Relationship/RV_2.gif','2017-6-17',
'relationship,girl-friend',(select count(c.C_ID) from Post_Likes l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Comments l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Report l,Post_Data c where c.C_ID=l.C_ID),'Relationship','Gif'
);

INSERT INTO Post_Data
 (C_ID, User_ID,Post_Heading,Post_Content, Post_Date, Post_Tags, Post_Like_Count,
 Post_Comments_Count,Post_Report_Count,Post_Category,Post_Type)
VALUES ('RV_3','U_1','Kyuuuut','image/post/Relationship/RV_3.gif','2017-6-18',
'relationship,kiss,cute',(select count(c.C_ID) from Post_Likes l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Comments l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Report l,Post_Data c where c.C_ID=l.C_ID),'Relationship','Gif'
);


INSERT INTO Post_Data
 (C_ID, User_ID,Post_Heading,Post_Content, Post_Date, Post_Tags, Post_Like_Count,
 Post_Comments_Count,Post_Report_Count,Post_Category,Post_Type)
VALUES ('RV_4','U_1','sad emoji','image/post/Relationship/RV_4.jpg','2017-6-19',
'relationship,sad,emoji',(select count(c.C_ID) from Post_Likes l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Comments l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Report l,Post_Data c where c.C_ID=l.C_ID),'Relationship','Image'
);

INSERT INTO Post_Data
 (C_ID, User_ID,Post_Heading,Post_Content, Post_Date, Post_Tags, Post_Like_Count,
 Post_Comments_Count,Post_Report_Count,Post_Category,Post_Type)
VALUES ('RV_5','U_1','Wonderful quote','image/post/Relationship/RV_5.jpg','2017-6-20',
'relationship,quote',(select count(c.C_ID) from Post_Likes l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Comments l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Report l,Post_Data c where c.C_ID=l.C_ID),'Relationship','Image'
);

INSERT INTO Post_Data
 (C_ID, User_ID,Post_Heading,Post_Content, Post_Date, Post_Tags, Post_Like_Count,
 Post_Comments_Count,Post_Report_Count,Post_Category,Post_Type)
VALUES ('RV_6','U_1','Hold up','image/post/Relationship/RV_6.jpg','2017-6-21',
'relationship,prank',(select count(c.C_ID) from Post_Likes l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Comments l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Report l,Post_Data c where c.C_ID=l.C_ID),'Relationship','Image'
);



--------------------------------- Gaming   image/post/Gaming/-----------------------------------------------------

INSERT INTO Post_Data
 (C_ID, User_ID,Post_Heading,Post_Content, Post_Date, Post_Tags, Post_Like_Count,
 Post_Comments_Count,Post_Report_Count,Post_Category,Post_Type)
VALUES ('GV_1','U_1','What we''re waiting for.','https://img-9gag-fun.9cache.com/photo/aGeAQqZ_460sv.mp4','2017-7-22',
'gaming,pokemon',(select count(c.C_ID) from Post_Likes l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Comments l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Report l,Post_Data c where c.C_ID=l.C_ID),'Gaming','Video'
);


INSERT INTO Post_Data
 (C_ID, User_ID,Post_Heading,Post_Content, Post_Date, Post_Tags, Post_Like_Count,
 Post_Comments_Count,Post_Report_Count,Post_Category,Post_Type)
VALUES ('GV_2','U_1','Turn that frown upside down!','image/post/Gaming/GV_2.gif','2017-7-23',
'gaming,animated',(select count(c.C_ID) from Post_Likes l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Comments l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Report l,Post_Data c where c.C_ID=l.C_ID),'Gaming','Gif'
);


INSERT INTO Post_Data
 (C_ID, User_ID,Post_Heading,Post_Content, Post_Date, Post_Tags, Post_Like_Count,
 Post_Comments_Count,Post_Report_Count,Post_Category,Post_Type)
VALUES ('GV_3','U_1','Just purchased AC black flag from steam','image/post/Gaming/GV_3.jpg','2017-7-24',
'gaming,steam',(select count(c.C_ID) from Post_Likes l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Comments l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Report l,Post_Data c where c.C_ID=l.C_ID),'Gaming','Image'
);


--------------------------------- Programmers   image/post/Prog/-----------------------------------------------------

INSERT INTO Post_Data
 (C_ID, User_ID,Post_Heading,Post_Content, Post_Date, Post_Tags, Post_Like_Count,
 Post_Comments_Count,Post_Report_Count,Post_Category,Post_Type)
VALUES ('PV_1','U_1','Java programmers can relate','https://img-9gag-fun.9cache.com/photo/apQrvwM_460sv.mp4','2017-8-25',
'programming,java',(select count(c.C_ID) from Post_Likes l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Comments l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Report l,Post_Data c where c.C_ID=l.C_ID),'Programmers','Video'
);


INSERT INTO Post_Data
 (C_ID, User_ID,Post_Heading,Post_Content, Post_Date, Post_Tags, Post_Like_Count,
 Post_Comments_Count,Post_Report_Count,Post_Category,Post_Type)
VALUES ('PV_2','U_1','My programming skills in a nutshell','image/post/Programmers/PV_2.gif','2017-8-26',
'programming,animated',(select count(c.C_ID) from Post_Likes l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Comments l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Report l,Post_Data c where c.C_ID=l.C_ID),'Programmers','Gif'
);


INSERT INTO Post_Data
 (C_ID, User_ID,Post_Heading,Post_Content, Post_Date, Post_Tags, Post_Like_Count,
 Post_Comments_Count,Post_Report_Count,Post_Category,Post_Type)
VALUES ('PV_3','U_1','Puts "How many programmers does it take to change a light bulb? None – It’s a hardware problem"','image/post/Programmers/PV_3.jpg','2017-8-27',
'programming,programmers,computers',(select count(c.C_ID) from Post_Likes l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Comments l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Report l,Post_Data c where c.C_ID=l.C_ID),'Programmers','Image'
);


INSERT INTO Post_Data
 (C_ID, User_ID,Post_Heading,Post_Content, Post_Date, Post_Tags, Post_Like_Count,
 Post_Comments_Count,Post_Report_Count,Post_Category,Post_Type)
VALUES ('PV_4','U_1','Letting you decide which is best for long term','image/post/Programmers/PV_4.jpg','2017-8-28',
'programming,steam',(select count(c.C_ID) from Post_Likes l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Comments l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Report l,Post_Data c where c.C_ID=l.C_ID),'Programmers','Image'
);



--------------------------------- Science   image/post/Science/-----------------------------------------------------

INSERT INTO Post_Data
 (C_ID, User_ID,Post_Heading,Post_Content, Post_Date, Post_Tags, Post_Like_Count,
 Post_Comments_Count,Post_Report_Count,Post_Category,Post_Type)
VALUES ('SciV_1','U_1','Reversibility of fluid motion in glycerin','https://img-9gag-fun.9cache.com/photo/a9A29pZ_460sv.mp4','2017-9-29',
'science,glycerin',(select count(c.C_ID) from Post_Likes l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Comments l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Report l,Post_Data c where c.C_ID=l.C_ID),'Science','Video'
);


INSERT INTO Post_Data
 (C_ID, User_ID,Post_Heading,Post_Content, Post_Date, Post_Tags, Post_Like_Count,
 Post_Comments_Count,Post_Report_Count,Post_Category,Post_Type)
VALUES ('SciV_2','U_1','Inertia.','image/post/Science/SciV_2.gif','2017-9-30',
'science,inertia',(select count(c.C_ID) from Post_Likes l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Comments l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Report l,Post_Data c where c.C_ID=l.C_ID),'Science','Gif'
);


INSERT INTO Post_Data
 (C_ID, User_ID,Post_Heading,Post_Content, Post_Date, Post_Tags, Post_Like_Count,
 Post_Comments_Count,Post_Report_Count,Post_Category,Post_Type)
VALUES ('SciV_3','U_1','Cassini''s last image after falling into Saturn for it''s last mission. Isn''t it beautiful?.','image/post/Science/SciV_3.jpg','2017-7-24',
'science,saturn,cassini',(select count(c.C_ID) from Post_Likes l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Comments l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Report l,Post_Data c where c.C_ID=l.C_ID),'Science','Image'
);


INSERT INTO Post_Data
 (C_ID, User_ID,Post_Heading,Post_Content, Post_Date, Post_Tags, Post_Like_Count,
 Post_Comments_Count,Post_Report_Count,Post_Category,Post_Type)
VALUES ('SciV_4','U_1','When u wanna be an artist but u mom wants u to be an electrical engineer','image/post/Science/SciV_4.jpg','2017-7-25',
'science,engineer,artist',(select count(c.C_ID) from Post_Likes l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Comments l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Report l,Post_Data c where c.C_ID=l.C_ID),'Science','Image'
);


--------------------------------- Comic   image/post/Comic/-----------------------------------------------------

INSERT INTO Post_Data
 (C_ID, User_ID,Post_Heading,Post_Content, Post_Date, Post_Tags, Post_Like_Count,
 Post_Comments_Count,Post_Report_Count,Post_Category,Post_Type)
VALUES ('C_1','U_1','Me walking down the street while listening to music','https://img-9gag-fun.9cache.com/photo/aRjoNLM_460sv.mp4','2017-10-29',
'comic,spider-man,music',(select count(c.C_ID) from Post_Likes l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Comments l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Report l,Post_Data c where c.C_ID=l.C_ID),'Comic','Video'
);


INSERT INTO Post_Data
 (C_ID, User_ID,Post_Heading,Post_Content, Post_Date, Post_Tags, Post_Like_Count,
 Post_Comments_Count,Post_Report_Count,Post_Category,Post_Type)
VALUES ('CV_2','U_1','I like wall','image/post/Comic/CV_2.gif','2017-10-30',
'comic,wall',(select count(c.C_ID) from Post_Likes l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Comments l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Report l,Post_Data c where c.C_ID=l.C_ID),'Comic','Gif'
);


INSERT INTO Post_Data
 (C_ID, User_ID,Post_Heading,Post_Content, Post_Date, Post_Tags, Post_Like_Count,
 Post_Comments_Count,Post_Report_Count,Post_Category,Post_Type)
VALUES ('CV_3','U_1','There''s a fly in my soup!!!!!','image/post/Comic/CV_3.jpg','2017-7-24',
'comic,fly,soup',(select count(c.C_ID) from Post_Likes l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Comments l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Report l,Post_Data c where c.C_ID=l.C_ID),'Comic','Image'
);


INSERT INTO Post_Data
 (C_ID, User_ID,Post_Heading,Post_Content, Post_Date, Post_Tags, Post_Like_Count,
 Post_Comments_Count,Post_Report_Count,Post_Category,Post_Type)
VALUES ('CV_4','U_1','Life is a game','image/post/Comic/CV_4.jpg','2017-11-1',
'comic,super mario,nintendo',(select count(c.C_ID) from Post_Likes l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Comments l,Post_Data c where c.C_ID=l.C_ID),
(select count(c.C_ID) from Post_Report l,Post_Data c where c.C_ID=l.C_ID),'Comic','Image'
);

