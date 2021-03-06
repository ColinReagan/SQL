use streamers;

CREATE TABLE Streamers (
Streamer_ID INT PRIMARY KEY	UNIQUE AUTO_INCREMENT,
First_Name VARCHAR(50),
Last_Name VARCHAR(50),
Online_Alias VARCHAR(50),
Business_Email VARCHAR(50),
Country VARCHAR(50),
Year_Started INT,
Platform_ID INT(1) 
);

CREATE TABLE Statistics (
Statistics_ID INT PRIMARY KEY UNIQUE AUTO_INCREMENT,
Streamer_ID INT,
Avg_Viewers INT(6),
Total_Subscribers INT(6),
Avg_Monthly_Subscribers INT(6),
Hours_Streamed INT(6),
Hours_Watched INT(10),
Platform_ID INT
);

CREATE TABLE Income (
Income_ID INT PRIMARY KEY UNIQUE AUTO_INCREMENT,
Streamer_ID INT,
Weekly_Income INT(6),
Monthly_Income INT(7),
Yearly_Income INT(8),
Ad_Revenue INT(5),
Subscriber_Revenue INT(7),
Platform_ID INT
);

CREATE TABLE Contracts (
Contract_ID INT PRIMARY KEY UNIQUE AUTO_INCREMENT,
Streamer_ID INT,
Start_Date DATE,
End_Date DATE,
Contract_Amount INT(8),
Platform_ID INT
);

CREATE TABLE Platforms (
Platform_ID INT PRIMARY KEY UNIQUE AUTO_INCREMENT,
Platform_Name VARCHAR(50)
);

ALTER TABLE streamers
ADD FOREIGN KEY (Platform_ID) REFERENCES platforms(Platform_ID);

ALTER TABLE statistics
ADD FOREIGN KEY (Streamer_ID) REFERENCES streamers(Streamer_ID);

ALTER TABLE statistics
ADD FOREIGN KEY (Platform_ID) REFERENCES streamers(Platform_ID);

ALTER TABLE income
ADD FOREIGN KEY (Streamer_ID) REFERENCES streamers(Streamer_ID);

ALTER TABLE income
ADD FOREIGN KEY (Platform_ID) REFERENCES streamers(Platform_ID);

ALTER TABLE contracts
ADD FOREIGN KEY (Streamer_ID) REFERENCES streamers(Streamer_ID);

ALTER TABLE contracts
ADD FOREIGN KEY (Platform_ID) REFERENCES streamers(Platform_ID);

INSERT INTO platforms (Platform_Name)
VALUES ('Twitch');
INSERT INTO platforms (Platform_Name)
VALUES ('Youtube');
INSERT INTO platforms (Platform_Name)
VALUES ('Facebook');

INSERT INTO streamers (First_Name, Last_Name, Online_Alias, Business_Email, Country, Year_Started, Platform_ID)
VALUES ('Felix', 'Lengyel', 'xQcOW', 'xqc@evolved.gg', 'Canada', 2016, 1);
INSERT INTO streamers (First_Name, Last_Name, Online_Alias, Business_Email, Country, Year_Started, Platform_ID)
VALUES ('Jaryd', 'Lazar', 'Summit1G', 'sum1business@gmail.com', 'United States', 2013, 1);
INSERT INTO streamers (First_Name, Last_Name, Online_Alias, Business_Email, Country, Year_Started, Platform_ID)
VALUES ('Chance', 'Morris', 'Sodapoppin', 'sodapoppinbiz@gmail.com', 'United States', 2012, 1);
INSERT INTO streamers (First_Name, Last_Name, Online_Alias, Business_Email, Country, Year_Started, Platform_ID)
VALUES ('Zack', 'N/A', 'Asmongold', 'partners@otknetwork.com', 'United States', 2014, 1);
INSERT INTO streamers (First_Name, Last_Name, Online_Alias, Business_Email, Country, Year_Started, Platform_ID)
VALUES ('Tyler', 'Steinkamp', 'loltyler1', 'tyler1business@gmail.com', 'United States', 2013, 1);
INSERT INTO streamers (First_Name, Last_Name, Online_Alias, Business_Email, Country, Year_Started, Platform_ID)
VALUES ('Imane', 'Anys', 'Pokimane', 'teampoki@unitedtalent.com', 'United States', 2013, 1);
INSERT INTO streamers (First_Name, Last_Name, Online_Alias, Business_Email, Country, Year_Started, Platform_ID)
VALUES ('Rachell', 'Hofstetter', 'Valkyrae', 'hana.tija@unitedtalent.com', 'United States', 2015, 2);
INSERT INTO streamers (First_Name, Last_Name, Online_Alias, Business_Email, Country, Year_Started, Platform_ID)
VALUES ('Timothy', 'Betar', 'TimTheTatman', 'timthetatman@wmeagency.com', 'United States', 2012, 2);
INSERT INTO streamers (First_Name, Last_Name, Online_Alias, Business_Email, Country, Year_Started, Platform_ID)
VALUES ('Herschel', 'Breahm', 'Dr. Disrespect', 'docbiz@boom.tv', 'United States', 2010, 2);
INSERT INTO streamers (First_Name, Last_Name, Online_Alias, Business_Email, Country, Year_Started, Platform_ID)
VALUES ('Anders', 'Ahgren', 'Ludwig', 'mrandersla@gmail.com', 'United States', 2018, 2);
INSERT INTO streamers (First_Name, Last_Name, Online_Alias, Business_Email, Country, Year_Started, Platform_ID)
VALUES ('Jack', 'Dunlop', 'CourageJD', 'CouRageJD@loaded.gg', 'United States', 2018, 2);
INSERT INTO streamers (First_Name, Last_Name, Online_Alias, Business_Email, Country, Year_Started, Platform_ID)
VALUES ('Benjamin', 'Lupo', 'Dr. Lupo', 'drlupoontwitch@gmail.com', 'United States', 2015, 2);
INSERT INTO streamers (First_Name, Last_Name, Online_Alias, Business_Email, Country, Year_Started, Platform_ID)
VALUES ('Corinna', 'Kopf', 'Corinna Kopf', 'corinna@28thave.com', 'United States', 2015, 3);
INSERT INTO streamers (First_Name, Last_Name, Online_Alias, Business_Email, Country, Year_Started, Platform_ID)
VALUES ('Randy', 'Bullet', 'RatedEpicz', 'ratedbusiness@outlook.com', 'United States', 2018, 3);
INSERT INTO streamers (First_Name, Last_Name, Online_Alias, Business_Email, Country, Year_Started, Platform_ID)
VALUES ('Douglas', 'Veney', 'GoodGameBro', 'doug@goodgamebro.com', 'United States', 2018, 3);

INSERT INTO statistics (Streamer_ID, Avg_Viewers, Total_Subscribers, Avg_Monthly_Subscribers, Hours_Streamed, Hours_Watched, Platform_ID)
VALUES (1, '72223', '80905', '86004', '16960', '570162783', 1);
INSERT INTO statistics (Streamer_ID, Avg_Viewers, Total_Subscribers, Avg_Monthly_Subscribers, Hours_Streamed, Hours_Watched, Platform_ID)
VALUES (2, '15034', '26309', '30513', '17549', '404117273', 1);
INSERT INTO statistics (Streamer_ID, Avg_Viewers, Total_Subscribers, Avg_Monthly_Subscribers, Hours_Streamed, Hours_Watched, Platform_ID)
VALUES (3, '17707', '7651', '9896', '11330', '244104847', 1);
INSERT INTO statistics (Streamer_ID, Avg_Viewers, Total_Subscribers, Avg_Monthly_Subscribers, Hours_Streamed, Hours_Watched, Platform_ID)
VALUES (4, '94153', '30205', '20919', '7202', '211086960', 1);
INSERT INTO statistics (Streamer_ID, Avg_Viewers, Total_Subscribers, Avg_Monthly_Subscribers, Hours_Streamed, Hours_Watched, Platform_ID)
VALUES (5, '26581', '14413', '15851', '10218', '251267828', 1);
INSERT INTO statistics (Streamer_ID, Avg_Viewers, Total_Subscribers, Avg_Monthly_Subscribers, Hours_Streamed, Hours_Watched, Platform_ID)
VALUES (6, '18845', '7996', '8116', '5216', '73101696', 1);
INSERT INTO statistics (Streamer_ID, Avg_Viewers, Total_Subscribers, Avg_Monthly_Subscribers, Hours_Streamed, Hours_Watched, Platform_ID)
VALUES (7, '12842', '16794', '13290', '3452', '23099308', 2);
INSERT INTO statistics (Streamer_ID, Avg_Viewers, Total_Subscribers, Avg_Monthly_Subscribers, Hours_Streamed, Hours_Watched, Platform_ID)
VALUES (8, '25573', '32470', '35893', '14515', '218478332', 2);
INSERT INTO statistics (Streamer_ID, Avg_Viewers, Total_Subscribers, Avg_Monthly_Subscribers, Hours_Streamed, Hours_Watched, Platform_ID)
VALUES (9, '31849', '25762', '22938', '13430', '342384876', 2);
INSERT INTO statistics (Streamer_ID, Avg_Viewers, Total_Subscribers, Avg_Monthly_Subscribers, Hours_Streamed, Hours_Watched, Platform_ID)
VALUES (10, '19627', '13890', '15736', '9240', '143290174', 2);
INSERT INTO statistics (Streamer_ID, Avg_Viewers, Total_Subscribers, Avg_Monthly_Subscribers, Hours_Streamed, Hours_Watched, Platform_ID)
VALUES (11, '18763', '15240', '14872', '10752', '248372918', 2);
INSERT INTO statistics (Streamer_ID, Avg_Viewers, Total_Subscribers, Avg_Monthly_Subscribers, Hours_Streamed, Hours_Watched, Platform_ID)
VALUES (12, '22372', '17428', '18892', '11582', '278290198', 2);
INSERT INTO statistics (Streamer_ID, Avg_Viewers, Total_Subscribers, Avg_Monthly_Subscribers, Hours_Streamed, Hours_Watched, Platform_ID)
VALUES (13, '6248', '3827', '2543', '2699', '75281362', 3);
INSERT INTO statistics (Streamer_ID, Avg_Viewers, Total_Subscribers, Avg_Monthly_Subscribers, Hours_Streamed, Hours_Watched, Platform_ID)
VALUES (14, '10840', '5928', '4916', '9351', '150230756', 3);
INSERT INTO statistics (Streamer_ID, Avg_Viewers, Total_Subscribers, Avg_Monthly_Subscribers, Hours_Streamed, Hours_Watched, Platform_ID)
VALUES (15, '11508', '6782', '4653', '8372', '132481479', 3);

INSERT INTO income (Streamer_ID, Weekly_Income, Monthly_Income, Yearly_Income, Ad_Revenue, Subscriber_Revenue, Platform_ID)
VALUES (1, '76804', '384018', '4608216', '5824', '202262', 1);
INSERT INTO income (Streamer_ID, Weekly_Income, Monthly_Income, Yearly_Income, Ad_Revenue, Subscriber_Revenue, Platform_ID)
VALUES (2, '30195', '150973', '1811676', '2840', '65773', 1);
INSERT INTO income (Streamer_ID, Weekly_Income, Monthly_Income, Yearly_Income, Ad_Revenue, Subscriber_Revenue, Platform_ID)
VALUES (3, '23175', '115877', '1390524', '3225', '19127', 1);
INSERT INTO income (Streamer_ID, Weekly_Income, Monthly_Income, Yearly_Income, Ad_Revenue, Subscriber_Revenue, Platform_ID)
VALUES (4, '60961', '304803', '3657636', '7643', '75513', 1);
INSERT INTO income (Streamer_ID, Weekly_Income, Monthly_Income, Yearly_Income, Ad_Revenue, Subscriber_Revenue, Platform_ID)
VALUES (5, '30745', '153722', '1844670', '3923', '36033', 1);
INSERT INTO income (Streamer_ID, Weekly_Income, Monthly_Income, Yearly_Income, Ad_Revenue, Subscriber_Revenue, Platform_ID)
VALUES (6, '23528', '117640', '1411680', '3245', '20290', 1);
INSERT INTO income (Streamer_ID, Weekly_Income, Monthly_Income, Yearly_Income, Ad_Revenue, Subscriber_Revenue, Platform_ID)
VALUES (7, '20349', '101745', '1220940', '2284', '33225', 2);
INSERT INTO income (Streamer_ID, Weekly_Income, Monthly_Income, Yearly_Income, Ad_Revenue, Subscriber_Revenue, Platform_ID)
VALUES (8, '38987', '194935', '2339220', '3792', '81175', 2);
INSERT INTO income (Streamer_ID, Weekly_Income, Monthly_Income, Yearly_Income, Ad_Revenue, Subscriber_Revenue, Platform_ID)
VALUES (9, '39407', '197035', '2364420', '4421', '64405', 2);
INSERT INTO income (Streamer_ID, Weekly_Income, Monthly_Income, Yearly_Income, Ad_Revenue, Subscriber_Revenue, Platform_ID)
VALUES (10, '27849', '139245', '1670940', '3484', '34725', 2);
INSERT INTO income (Streamer_ID, Weekly_Income, Monthly_Income, Yearly_Income, Ad_Revenue, Subscriber_Revenue, Platform_ID)
VALUES (11, '26907', '134535', '1614420', '3327', '38100', 2);
INSERT INTO income (Streamer_ID, Weekly_Income, Monthly_Income, Yearly_Income, Ad_Revenue, Subscriber_Revenue, Platform_ID)
VALUES (12, '31604', '158020', '1896240', '3815', '43570', 2);
INSERT INTO income (Streamer_ID, Weekly_Income, Monthly_Income, Yearly_Income, Ad_Revenue, Subscriber_Revenue, Platform_ID)
VALUES (13, '7286', '36428', '437136', '895', '9578', 3);
INSERT INTO income (Streamer_ID, Weekly_Income, Monthly_Income, Yearly_Income, Ad_Revenue, Subscriber_Revenue, Platform_ID)
VALUES (14, '13404', '67020', '804240', '1740', '14820', 3);
INSERT INTO income (Streamer_ID, Weekly_Income, Monthly_Income, Yearly_Income, Ad_Revenue, Subscriber_Revenue, Platform_ID)
VALUES (15, '14389', '71945', '863340', '1833', '16955', 3);

INSERT INTO contracts (Streamer_ID, Start_Date, End_Date, Contract_Amount, Platform_ID)
VALUES (1, '2020-09-01', '2023-03-01', '1650000', 1);
INSERT INTO contracts (Streamer_ID, Start_Date, End_Date, Contract_Amount, Platform_ID)
VALUES (2, '2020-05-01', '2023-08-01', '800000', 1);
INSERT INTO contracts (Streamer_ID, Start_Date, End_Date, Contract_Amount, Platform_ID)
VALUES (3, '2020-05-01', '2024-04-01', '675000', 1);
INSERT INTO contracts (Streamer_ID, Start_Date, End_Date, Contract_Amount, Platform_ID)
VALUES (4, '2021-08-01', '2023-06-01', '1370000', 1);
INSERT INTO contracts (Streamer_ID, Start_Date, End_Date, Contract_Amount, Platform_ID)
VALUES (5, '2019-09-01', '2022-06-01', '957200', 1);
INSERT INTO contracts (Streamer_ID, Start_Date, End_Date, Contract_Amount, Platform_ID)
VALUES (6, '2022-02-01', '2024-04-01', '1045000', 1);
INSERT INTO contracts (Streamer_ID, Start_Date, End_Date, Contract_Amount, Platform_ID)
VALUES (7, '2022-02-01', '2024-08-01', '2300000', 2);
INSERT INTO contracts (Streamer_ID, Start_Date, End_Date, Contract_Amount, Platform_ID)
VALUES (8, '2021-11-01', '2024-06-01', '1320000', 2);
INSERT INTO contracts (Streamer_ID, Start_Date, End_Date, Contract_Amount, Platform_ID)
VALUES (9, '2020-04-01', '2023-10-01', '1154000', 2);
INSERT INTO contracts (Streamer_ID, Start_Date, End_Date, Contract_Amount, Platform_ID)
VALUES (10, '2022-01-01', '2024-10-01', '1250000', 2);
INSERT INTO contracts (Streamer_ID, Start_Date, End_Date, Contract_Amount, Platform_ID)
VALUES (11, '2021-12-01', '2023-10-01', '848000', 2);
INSERT INTO contracts (Streamer_ID, Start_Date, End_Date, Contract_Amount, Platform_ID)
VALUES (12, '2021-08-01', '2024-05-01', '1230000', 2);
INSERT INTO contracts (Streamer_ID, Start_Date, End_Date, Contract_Amount, Platform_ID)
VALUES (13, '2019-03-01', '2023-05-01', '320000', 3);
INSERT INTO contracts (Streamer_ID, Start_Date, End_Date, Contract_Amount, Platform_ID)
VALUES (14, '2021-07-01', '2024-08-01', '540000', 3);
INSERT INTO contracts (Streamer_ID, Start_Date, End_Date, Contract_Amount, Platform_ID)
VALUES (15, '2021-08-01', '2024-04-01', '630000', 3);