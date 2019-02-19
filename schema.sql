-- To use mysql: mysql -u root -p (no password when asked)
-- To run a .sql file to create database, tables, seed data do : mysql -u root -p < schema.sql
DROP DATABASE IF EXISTS NeighborhoodsData;

CREATE DATABASE NeighborhoodsData;

USE NeighborhoodsData;


CREATE TABLE neighborhoods (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  zip INT NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE homes (
  id INT NOT NULL AUTO_INCREMENT,
  neighborhood_id INT NOT NULL,
  geo_address TEXT NOT NULL,
  price FLOAT NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE reviews (
  id INT NOT NULL AUTO_INCREMENT,
  neighborhood_id INT NOT NULL,
  user VARCHAR(255) NOT NULL,
  review TEXT NOT NULL,
  likes_count INT NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE feature_stats (
  id INT NOT NULL AUTO_INCREMENT,
  neighborhood_id INT NOT NULL,
  question_id INT NOT NULL,
  yes_count INT NOT NULL,
  no_count INT NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE feature_questions (
  id INT NOT NULL AUTO_INCREMENT,
  descript VARCHAR(255) NOT NULL,
  question TEXT NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO neighborhoods (name, zip) VALUES ("rc's neighborhood", 94618);
INSERT INTO neighborhoods (name, zip) VALUES ("matt's neighborhood", 94702);
INSERT INTO neighborhoods (name, zip) VALUES ("sang's neighborhood", 94710);
INSERT INTO neighborhoods (name, zip) VALUES ("aimen's neighborhood", 94707);



INSERT INTO feature_stats (neighborhood_id , question_id , yes_count , no_count) VALUES (1, 1, 9, 1);
INSERT INTO feature_stats (neighborhood_id , question_id , yes_count , no_count) VALUES (1, 2, 8, 2);
INSERT INTO feature_stats (neighborhood_id , question_id , yes_count , no_count) VALUES (1, 3, 7, 5);
INSERT INTO feature_stats (neighborhood_id , question_id , yes_count , no_count) VALUES (1, 4, 6, 1);
INSERT INTO feature_stats (neighborhood_id , question_id , yes_count , no_count) VALUES (2, 5, 5, 1);
INSERT INTO feature_stats (neighborhood_id , question_id , yes_count , no_count) VALUES (2, 6, 4, 2);
INSERT INTO feature_stats (neighborhood_id , question_id , yes_count , no_count) VALUES (2, 7, 3, 9);
INSERT INTO feature_stats (neighborhood_id , question_id , yes_count , no_count) VALUES (2, 8, 2, 8);
INSERT INTO feature_stats (neighborhood_id , question_id , yes_count , no_count) VALUES (3, 9, 5, 4);
INSERT INTO feature_stats (neighborhood_id , question_id , yes_count , no_count) VALUES (3, 10, 12, 12);
INSERT INTO feature_stats (neighborhood_id , question_id , yes_count , no_count) VALUES (3, 11, 15, 3);
INSERT INTO feature_stats (neighborhood_id , question_id , yes_count , no_count) VALUES (3, 12, 5, 6);
INSERT INTO feature_stats (neighborhood_id , question_id , yes_count , no_count) VALUES (4, 13, 2, 2);
INSERT INTO feature_stats (neighborhood_id , question_id , yes_count , no_count) VALUES (4, 14, 1, 9);
INSERT INTO feature_stats (neighborhood_id , question_id , yes_count , no_count) VALUES (4, 15, 8, 17);
INSERT INTO feature_stats (neighborhood_id , question_id , yes_count , no_count) VALUES (4, 16, 10, 4);


INSERT INTO feature_questions (descript, question) VALUES ("There are sidewalks", "Does your neighborhood have sidewalks?");
INSERT INTO feature_questions (descript, question) VALUES ("It's walkable to restaurants", "Can you walk to restaurants in your neighborhood?");
INSERT INTO feature_questions (descript, question) VALUES ("It's dog friendly", "Do you often see people walking dogs in your neighborhood?");
INSERT INTO feature_questions (descript, question) VALUES ("It's walkable to grocery stores", "Can you walk to grocery stores in your neighborhood?");
INSERT INTO feature_questions (descript, question) VALUES ("Streets are well-lit", "Are sidewalks well-lit with street lights?");
INSERT INTO feature_questions (descript, question) VALUES ("People would walk alone at night", "Would you go for walks alone after dark in your neighborhood?");
INSERT INTO feature_questions (descript, question) VALUES ("There's holiday spirit", "Do you decorate your home for any holidays?");
INSERT INTO feature_questions (descript, question) VALUES ("They plan to stay for at least 5 years", "Do you plan to live in your neighborhood for 5 years or more?");
INSERT INTO feature_questions (descript, question) VALUES ("Neighbors are friendly", "Do you know any of your neighbors on a first-name basis?");
INSERT INTO feature_questions (descript, question) VALUES ("Yards are well-kept", "Do you take care of your front yard?");
INSERT INTO feature_questions (descript, question) VALUES ("Parking is easy", "Can you find parking easily in the evening and on weekends?");
INSERT INTO feature_questions (descript, question) VALUES ("Kids play outside", "Do you regularly see kids playing outside?");
INSERT INTO feature_questions (descript, question) VALUES ("It's quiet", "Can you regularly hear street noise inside your home?");
INSERT INTO feature_questions (descript, question) VALUES ("There's wildlife", "Have you seen any wild animals in your neighborhood?");
INSERT INTO feature_questions (descript, question) VALUES ("There are community events", "Have you attended a community event in your neighborhood, like a block party or BBQ?");
INSERT INTO feature_questions (descript, question) VALUES ("Car is needed", "Do you feel the need to own a car to get around?");



INSERT INTO reviews (neighborhood_id, user, review, likes_count) VALUES (1, "chiniga", "Nam ex sonet periculis. Gloriatur voluptaria ea eum, at eos impedit perpetua dignissim. Duo id esse disputationi, movet volutpat vix ne. Ea veniam accusam pri. Id est ancillae expetenda consectetuer, duo ancillae atomorum posidonium te.", 2);
INSERT INTO reviews (neighborhood_id, user, review, likes_count) VALUES (1, "meak", "Cum inimicus assueverit ei. Mea ne putant aperiri facilis, ei his probo aliquam reformidans. Ad audiam aliquid antiopam ius, ne qui meis latine alterum, ad clita qualisque mel. Harum nonumes pericula mel ei, vim inani molestie te. Eu dicta affert tempor qui. Nullam quidam appellantur te sed, populo periculis scripserit qui ex, putant aliquam forensibus sea te. Fabulas debitis intellegam ex qui, cum eu assum dissentias.", 4);
INSERT INTO reviews (neighborhood_id, user, review, likes_count) VALUES (1, "jones", "Id utroque debitis ullamcorper ius, eum ad libris tacimates consectetuer, dolore causae ne est. Mel an denique gloriatur, efficiendi assueverit quo an. Vide delicata has ne, ut legere epicuri pro. Dicant causae definitiones has cu, an est dolore labitur dissentiunt, ne mei volumus fastidii. Usu at commune mediocrem constituto. Vel no corpora scaevola expetendis.", 3);
INSERT INTO reviews (neighborhood_id, user, review, likes_count) VALUES (1, "ricardo", "An equidem laboramus signiferumque est, vel et prima oporteat explicari, ex utamur periculis voluptatum qui. Assum efficiantur sed no, qui eu habeo dignissim reprimique. Ut per nostrud vituperata, mel no odio invenire. Ex brute quidam aliquid his, natum necessitatibus concludaturque ea usu. Erat vivendo quaerendum in sed, unum percipit quaestio et sea. Ea eos iriure voluptatibus, qui in veniam libris utamur.", 1);
INSERT INTO reviews (neighborhood_id, user, review, likes_count) VALUES (2, "mithantalo", "Nam ex sonet periculis. Gloriatur voluptaria ea eum, at eos impedit perpetua dignissim. Duo id esse disputationi, movet volutpat vix ne. Ea veniam accusam pri. Id est ancillae expetenda consectetuer, duo ancillae atomorum posidonium te.", 0);
INSERT INTO reviews (neighborhood_id, user, review, likes_count) VALUES (2, "cranadana", "Cum inimicus assueverit ei. Mea ne putant aperiri facilis, ei his probo aliquam reformidans. Ad audiam aliquid antiopam ius, ne qui meis latine alterum, ad clita qualisque mel. Harum nonumes pericula mel ei, vim inani molestie te. Eu dicta affert tempor qui. Nullam quidam appellantur te sed, populo periculis scripserit qui ex, putant aliquam forensibus sea te. Fabulas debitis intellegam ex qui, cum eu assum dissentias.", 0);
INSERT INTO reviews (neighborhood_id, user, review, likes_count) VALUES (2, "jorlando", "Id utroque debitis ullamcorper ius, eum ad libris tacimates consectetuer, dolore causae ne est. Mel an denique gloriatur, efficiendi assueverit quo an. Vide delicata has ne, ut legere epicuri pro. Dicant causae definitiones has cu, an est dolore labitur dissentiunt, ne mei volumus fastidii. Usu at commune mediocrem constituto. Vel no corpora scaevola expetendis.", 5);
INSERT INTO reviews (neighborhood_id, user, review, likes_count) VALUES (2, "earinfection", "An equidem laboramus signiferumque est, vel et prima oporteat explicari, ex utamur periculis voluptatum qui. Assum efficiantur sed no, qui eu habeo dignissim reprimique. Ut per nostrud vituperata, mel no odio invenire. Ex brute quidam aliquid his, natum necessitatibus concludaturque ea usu. Erat vivendo quaerendum in sed, unum percipit quaestio et sea. Ea eos iriure voluptatibus, qui in veniam libris utamur.", 3);
INSERT INTO reviews (neighborhood_id, user, review, likes_count) VALUES (3, "snoot", "Nam ex sonet periculis. Gloriatur voluptaria ea eum, at eos impedit perpetua dignissim. Duo id esse disputationi, movet volutpat vix ne. Ea veniam accusam pri. Id est ancillae expetenda consectetuer, duo ancillae atomorum posidonium te.", 7);
INSERT INTO reviews (neighborhood_id, user, review, likes_count) VALUES (3, "miegalias", "Cum inimicus assueverit ei. Mea ne putant aperiri facilis, ei his probo aliquam reformidans. Ad audiam aliquid antiopam ius, ne qui meis latine alterum, ad clita qualisque mel. Harum nonumes pericula mel ei, vim inani molestie te. Eu dicta affert tempor qui. Nullam quidam appellantur te sed, populo periculis scripserit qui ex, putant aliquam forensibus sea te. Fabulas debitis intellegam ex qui, cum eu assum dissentias.", 6);
INSERT INTO reviews (neighborhood_id, user, review, likes_count) VALUES (3, "ramanan", "Id utroque debitis ullamcorper ius, eum ad libris tacimates consectetuer, dolore causae ne est. Mel an denique gloriatur, efficiendi assueverit quo an. Vide delicata has ne, ut legere epicuri pro. Dicant causae definitiones has cu, an est dolore labitur dissentiunt, ne mei volumus fastidii. Usu at commune mediocrem constituto. Vel no corpora scaevola expetendis.", 2);
INSERT INTO reviews (neighborhood_id, user, review, likes_count) VALUES (3, "shewstopo", "An equidem laboramus signiferumque est, vel et prima oporteat explicari, ex utamur periculis voluptatum qui. Assum efficiantur sed no, qui eu habeo dignissim reprimique. Ut per nostrud vituperata, mel no odio invenire. Ex brute quidam aliquid his, natum necessitatibus concludaturque ea usu. Erat vivendo quaerendum in sed, unum percipit quaestio et sea. Ea eos iriure voluptatibus, qui in veniam libris utamur.", 2);
INSERT INTO reviews (neighborhood_id, user, review, likes_count) VALUES (4, "snickers", "Nam ex sonet periculis. Gloriatur voluptaria ea eum, at eos impedit perpetua dignissim. Duo id esse disputationi, movet volutpat vix ne. Ea veniam accusam pri. Id est ancillae expetenda consectetuer, duo ancillae atomorum posidonium te.", 0);
INSERT INTO reviews (neighborhood_id, user, review, likes_count) VALUES (4, "donanaldtrump", "An equidem laboramus signiferumque est, vel et prima oporteat explicari, ex utamur periculis voluptatum qui. Assum efficiantur sed no, qui eu habeo dignissim reprimique. Ut per nostrud vituperata, mel no odio invenire. Ex brute quidam aliquid his, natum necessitatibus concludaturque ea usu. Erat vivendo quaerendum in sed, unum percipit quaestio et sea. Ea eos iriure voluptatibus, qui in veniam libris utamur.", 1);
INSERT INTO reviews (neighborhood_id, user, review, likes_count) VALUES (4, "flimflam", "Id utroque debitis ullamcorper ius, eum ad libris tacimates consectetuer, dolore causae ne est. Mel an denique gloriatur, efficiendi assueverit quo an. Vide delicata has ne, ut legere epicuri pro. Dicant causae definitiones has cu, an est dolore labitur dissentiunt, ne mei volumus fastidii. Usu at commune mediocrem constituto. Vel no corpora scaevola expetendis.", 9);
INSERT INTO reviews (neighborhood_id, user, review, likes_count) VALUES (4, "chinesesss", "Quo id nulla rationibus, at sea appetere salutandi, magna nominavi has no. No sonet dolore imperdiet eam. Vide voluptatum et duo. Ne mel dicant placerat apeirian, antiopam posidonium sed at. Ut mel tollit accumsan expetendis.", 1);









INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (1, "6364	MYSTIC ST OAKLAND 94618", 250000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (1, "6033	CHABOLYN TER OAKLAND 94618", 250000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (1, "6031	CHABOLYN TER OAKLAND 94618", 250000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (1, "6300	CLAREMONT AVE OAKLAND 94618", 250000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (1, "6368	MYSTIC ST OAKLAND 94618", 250000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (1, "6451	MYSTIC ST OAKLAND 94618", 475000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (1, "6400	MYSTIC ST OAKLAND 94618", 475000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (1, "6406	MYSTIC ST OAKLAND 94618", 475000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (1, "6414	MYSTIC ST OAKLAND 94618", 475000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (1, "6414	BENVENUE AVE OAKLAND 94618", 475000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (1, "6422	MYSTIC ST OAKLAND 94618", 850000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (1, "6455	MYSTIC ST OAKLAND 94618", 850000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (1, "6424	MYSTIC ST OAKLAND 94618", 850000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (1, "6420	BENVENUE AVE	COM	OAKLAND 94618", 850000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (1, "6450	MYSTIC ST OAKLAND 94618", 850000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (1, "6456	MYSTIC ST OAKLAND 94618", 850000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (1, "6460	MYSTIC ST OAKLAND 94618", 1200000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (1, "6001	CHABOLYN TER OAKLAND 94618", 1200000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (1, "6004	CHABOLYN TER OAKLAND 94618", 1200000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (1, "6030	CHABOLYN TER OAKLAND 94618", 1200000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (1, "6016	CHABOLYN TER OAKLAND 94618", 1200000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (1, "6012	CHABOLYN TER OAKLAND 94618", 5000000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (1, "6039	CHABOLYN TER OAKLAND 94618", 5000000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (1, "6432	BENVENUE AVE OAKLAND 94618", 5000000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (1, "2	ROSLYN CT OAKLAND 94618", 5000000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (2, "1214	ASHBY AVE	BERKELEY	94702", 250000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (2, "1401	ACTON CRES	BERKELEY	94702", 250000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (2, "2315	EDWARDS ST	BERKELEY	94702", 250000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (2, "1328	ADA ST	BERKELEY	94702", 250000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (2, "1309	HOPKINS ST	BERKELEY	94702", 250000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (2, "1207	FRANCISCO ST	BERKELEY	94702", 475000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (2, "1232	DELAWARE ST	BERKELEY	94702", 475000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (2, "1434	BERKELEY WAY	BERKELEY	94702", 475000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (2, "1336	BERKELEY WAY	BERKELEY	94702", 475000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (2, "1209	DELAWARE ST	BERKELEY	94702", 475000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (2, "2326	BROWNING ST	BERKELEY	94702", 475000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (2, "2220	SACRAMENTO ST	BERKELEY	94702", 475000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (2, "1211	DELAWARE ST	BERKELEY	94702", 475000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (2, "1300	ADDISON ST	BERKELEY	94702", 475000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (2, "2220	SACRAMENTO ST	BERKELEY	94702", 475000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (2, "1127	HEARST AVE	BERKELEY	94702", 475000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (2, "1642	CURTIS ST	BERKELEY	94702", 850000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (2, "1447	KAINS AVE	BERKELEY	94702", 850000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (2, "1171	VIRGINIA ST	BERKELEY	94702", 850000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (2, "1817	CURTIS ST	BERKELEY	94702", 850000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (2, "1644	CORNELL AVE	BERKELEY	94702", 850000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (2, "1605	STANNAGE AVE	BERKELEY	94702", 5000000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (2, "1644	SAN PABLO AVE	BERKELEY	94702", 5000000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (2, "1113	HEARST AVE	BERKELEY	94702", 1200000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (2, "2220	SACRAMENTO ST	BERKELEY	94702", 1200000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (3, "1012 GRAYSON ST BERKELEY 94710", 250000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (3, "1012 GRAYSON ST BERKELEY 94710", 250000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (3, "1813 NINTH ST BERKELEY 94710", 250000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (3, "928 CARLETON ST BERKELEY 94710", 250000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (3, "933 ADDISON ST BERKELEY 94710", 250000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (3, "2228 SIXTH ST BERKELEY 94710", 475000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (3, "1020 JONES ST BERKELEY 94710", 475000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (3, "1711 NINTH ST BERKELEY 94710", 475000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (3, "2330 TENTH ST BERKELEY 94710", 475000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (3, "1320 NINTH ST BERKELEY 94710", 475000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (3, "1231 FOURTH ST BERKELEY 94710", 850000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (3, "800 DELAWARE ST BERKELEY 94710", 850000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (3, "2120 SIXTH ST BERKELEY 94710", 850000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (3, "2430 FIFTH ST BERKELEY 94710", 850000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (3, "2430 TENTH ST BERKELEY 94710", 850000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (3, "1629 EIGHTH ST BERKELEY 94710", 1200000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (3, "930 CARLETON ST BERKELEY 94710", 1200000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (3, "2418 FIFTH ST BERKELEY 94710", 1200000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (3, "1812 SIXTH ST BERKELEY 94710", 1200000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (3, "2512 NINTH ST BERKELEY 94710", 1200000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (3, "2415 FIFTH ST BERKELEY 94710", 5000000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (3, "1012 GRAYSON ST BERKELEY 94710", 5000000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (3, "1729 SIXTH ST BERKELEY 94710", 5000000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (3, "1336 SEVENTH ST BERKELEY 94710", 5000000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (3, "933 ADDISON ST BERKELEY	94710", 5000000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (4, "2216	LOS ANGELES AVE	BERKELEY	94707", 250000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (4, "1578	HOPKINS ST	BERKELEY	94707", 250000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (4, "1124	OXFORD ST	BERKELEY	94707", 250000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (4, "910	COLUSA AVE	BERKELEY	94707", 250000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (4, "1515	HOPKINS ST	BERKELEY	94707", 250000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (4, "1294	MONTEREY AVE	BERKELEY	94707", 475000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (4, "2218	LOS ANGELES AVE	BERKELEY	94707", 475000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (4, "1582	HOPKINS ST	BERKELEY	94707", 475000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (4, "1515	HOPKINS ST	BERKELEY	94707", 475000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (4, "1310	MONTEREY AVE	BERKELEY	94707", 475000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (4, "1590	HOPKINS ST	BERKELEY	94707", 850000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (4, "865	COLUSA AVE	BERKELEY	94707", 850000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (4, "1628	HOPKINS ST	BERKELEY	94707", 850000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (4, "1515	HOPKINS ST	BERKELEY	94707", 850000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (4, "1515	HOPKINS ST	BERKELEY	94707", 850000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (4, "910	COLUSA AVE	BERKELEY	94707", 1200000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (4, "1584	HOPKINS ST	BERKELEY	94707", 1200000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (4, "910	COLUSA AVE	BERKELEY	94707", 1200000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (4, "910	ENSENADA AVE	BERKELEY	94707", 1200000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (4, "895	COLUSA AVE	BERKELEY	94707", 1200000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (4, "1314	MONTEREY AVE	BERKELEY	94707", 5000000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (4, "1122	OXFORD ST	BERKELEY	94707", 5000000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (4, "910	COLUSA AVE	BERKELEY	94707", 5000000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (4, "1308	MONTEREY AVE	BERKELEY	94707", 5000000);
INSERT INTO homes (neighborhood_id, geo_address, price) VALUES (4, "1312	MONTEREY AVE	BERKELEY	94707", 5000000);

