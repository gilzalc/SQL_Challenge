-----------------------------------
-- Script to build the "Arena" database of a gaming company
-----------------------------------

-- Drop the database if it exists and create a new one
DROP DATABASE IF EXISTS arena;
CREATE DATABASE arena;

-- Create tables
CREATE TABLE game_sessions
(
    session_id         INT         NOT NULL PRIMARY KEY,
    session_begin_date TIMESTAMPTZ NULL,
    session_end_date   TIMESTAMPTZ NULL,
    player_id          INT         NULL,
    game_id            INT         NULL
);

CREATE TABLE games
(
    id        INT         NOT NULL PRIMARY KEY,
    game_name VARCHAR(50) NULL
);

CREATE TABLE paying_method
(
    player_id          INT         NOT NULL,
    credit_card_type   VARCHAR(25) NOT NULL,
    credit_card_number VARCHAR(25) NOT NULL,
    PRIMARY KEY (player_id, credit_card_type, credit_card_number)
);

CREATE TABLE players
(
    player_id      INT  NOT NULL PRIMARY KEY,
    first_name     TEXT NULL,
    last_name      TEXT NULL,
    email_address  TEXT NULL,
    gender         TEXT NULL,
    age_group      TEXT NULL,
    country        TEXT NULL,
    city           TEXT NULL,
    street_address TEXT NULL
);

CREATE TABLE session_details
(
    session_id  INT           NOT NULL,
    action_id   INT           NOT NULL,
    action_type VARCHAR(4)    NOT NULL,
    amount      NUMERIC(8, 2) NULL,
    PRIMARY KEY (session_id, action_id)
);

INSERT INTO players
VALUES (1, N'Eddie', N'Shakshaft', N'eshakshaft0@gnu.org', N'Male', N'51-60', N'China', N'Zhanghekou',
        N'13 Transport Street');

INSERT INTO players
VALUES (2, N'Doralia', N'Thirlwell', N'dthirlwell1@chicatribune.com', N'Female', N'21-30', N'Russia', N'Lesnoy',
        N'5211 Maryland Junction');

INSERT INTO players
VALUES (3, N'Patrizius', N'Castelin', N'pcastelin2@hugedomains.com', N'Male', N'31-40', N'France', N'Sophia Antipolis',
        N'763 Welch Center');

INSERT INTO players
VALUES (4, N'Anselma', N'Vernalls', N'avernalls3@over-blog.com', N'Female', N'31-40', N'China', N'Jingyu',
        N'3886 Monica Center');

INSERT INTO players
VALUES (5, N'Arabelle', N'Starie', N'astarie4@unicef.org', N'Male', N'10-21', N'Indonesia', N'Sibreh',
        N'1398 Anthes Place');

INSERT INTO players
VALUES (6, N'Abbie', N'Strathdee', N'astrathdee5@unicef.org', N'Female', N'41-50', N'Dominican Republic',
        N'Villa Francisca', N'114 Sachs Point');

INSERT INTO players
VALUES (7, N'Jayme', N'Kapelhoff', N'jkapelhoff6@state.tx.us', N'Female', N'21-30', N'Philippines', N'Carmen',
        N'32469 David Way');

INSERT INTO players
VALUES (8, N'Joachim', N'Froome', N'jfroome7@bbb.org', N'Female', N'10-21', N'Indonesia', N'Nginokrajan',
        N'5 Gulseth Place');

INSERT INTO players
VALUES (9, N'Robinia', N'Helleckas', N'rhelleckas8@odnoklassniki.ru', N'Female', N'21-30', N'Indonesia',
        N'Teluksantong', N'10371 Sauthoff Street');

INSERT INTO players
VALUES (10, N'Efren', N'Heasley', N'eheasley9@prnewswire.com', N'Male', N'51-60', N'Mauritius', N'odlands',
        N'45 Delladonna Plaza');

INSERT INTO players
VALUES (11, N'Theodor', N'Buttfield', N'tbuttfielda@blogger.com', N'Female', N'10-21', N'Israel', N'Rumat Heib',
        N'1473 Mendota Street');

INSERT INTO players
VALUES (12, N'Hilliary', N'Lombard', N'hlombardb@freewebs.com', N'Female', N'31-40', N'Trinidad and Toba',
        N'Petit Valley', N'6915 Hoepker Point');

INSERT INTO players
VALUES (13, N'Vernon', N'Pritchard', N'vpritchardc@sourceforge.net', N'Male', N'41-50', N'China', N'Changtan',
        N'730 Artisan Park');

INSERT INTO players
VALUES (14, N'Elijah', N'Chattell', N'echattelld@slate.com', N'Female', N'51-60', N'Philippines', N'Corcuera',
        N'0223 Chinook Terrace');

INSERT INTO players
VALUES (15, N'Thorndike', N'Manicomb', N'tmanicombe@sciencedaily.com', N'Male', N'10-21', N'Brazil', N'Santo André',
        N'522 Comanche Circle');

INSERT INTO players
VALUES (16, N'Tamqrah', N'Inn', N'tinnf@ask.com', N'Female', N'41-50', N'Ivory Coast', N'Vavoua',
        N'8423 Jackson Circle');

INSERT INTO players
VALUES (17, N'Kynthia', N'Gambie', N'kgambieg@usa.v', N'Female', N'10-21', N'Philippines', N'Bagahanlad',
        N'6812 Waxwing Road');

INSERT INTO players
VALUES (18, N'Robena', N'Barense', N'rbarenseh@xing.com', N'Male', N'10-21', N'Philippines', N'Kapatagan',
        N'2333 Sutteridge Alley');

INSERT INTO players
VALUES (19, N'Jesse', N'Binch', N'jbinchi@ucla.edu', N'Female', N'10-21', N'United States', N'Springfield',
        N'48302 Truax Terrace');

INSERT INTO players
VALUES (20, N'Charmian', N'Dudill', N'cdudillj@hatena.ne.jp', N'Female', N'21-30', N'Russia', N'Shumikhinskiy',
        N'495 Cascade Road');

INSERT INTO players
VALUES (21, N'Lea', N'Worthing', N'lworthingk@csmonitor.com', N'Female', N'10-21', N'Japan', N'Takarazuka',
        N'57 Blue Bill Park Crossing');

INSERT INTO players
VALUES (22, N'Roman', N'Alastair', N'ralastairl@myspace.com', N'Female', N'41-50', N'Jordan', N'Zarqa',
        N'8 Bunker Hill Pass');

INSERT INTO players
VALUES (23, N'Antons', N'Willimont', N'awillimontm@devhub.com', N'Female', N'21-30', N'China', N'Shuiyang',
        N'4372 Dunning Street');

INSERT INTO players
VALUES (24, N'Devon', N'Danihelka', N'ddanihelkan@uiuc.edu', N'Female', N'10-21', N'Ecuador', N'Ventanas',
        N'0 Warrior Junction');

INSERT INTO players
VALUES (25, N'Glori', N'De Bernardis', N'gdebernardiso@yelp.com', N'Male', N'21-30', N'Philippines', N'Makilala',
        N'4674 Parkside Plaza');

INSERT INTO players
VALUES (26, N'Wanids', N'Jory', N'wjoryp@technorati.com', N'Male', N'31-40', N'Portugal', N'Rio Covo',
        N'7649 Elka Crossing');

INSERT INTO players
VALUES (27, N'Aloysia', N'Rickersy', N'arickersyq@jiathis.com', N'Male', N'10-21', N'Afghanistan', N'Dehi',
        N'8 Cordelia Alley');

INSERT INTO players
VALUES (28, N'Lindon', N'Batch', N'lbatchr@nih.v', N'Female', N'51-60', N'Thailand', N'Ubonratana', N'25 Huxley Point');

INSERT INTO players
VALUES (29, N'Averyl', N'Buckell', N'abuckells@ogle.co.jp', N'Male', N'21-30', N'Sweden', N'Huddinge',
        N'5 Meadow Ridge Plaza');

INSERT INTO players
VALUES (30, N'Virgie', N'Tidman', N'vtidmant@taobao.com', N'Male', N'41-50', N'China', N'Jinchang',
        N'78 Lotheville Court');

INSERT INTO players
VALUES (31, N'Veda', N'Hickisson', N'vhickissonu@alibaba.com', N'Male', N'10-21', N'Indonesia', N'Parung',
        N'13 Ronald Regan Road');

INSERT INTO players
VALUES (32, N'Alberto', N'Cremen', N'acremenv@nih.v', N'Female', N'10-21', N'Russia', N'Lyuban’',
        N'66644 Chive Street');

INSERT INTO players
VALUES (33, N'Oneida', N'Kinnerley', N'okinnerleyw@wikia.com', N'Male', N'10-21', N'Mexico', N'Emiliano Zapata',
        N'5735 Dakota Hill');

INSERT INTO players
VALUES (34, N'Cherish', N'Ginman', N'cginmanx@shop-pro.jp', N'Male', N'51-60', N'Palestinian Territory', N'Nuba',
        N'17130 Vahlen Center');

INSERT INTO players
VALUES (35, N'Graham', N'Aprahamian', N'gaprahamiany@npr.org', N'Female', N'21-30', N'Indonesia', N'Tegalgede',
        N'593 Monterey Avenue');

INSERT INTO players
VALUES (36, N'Becky', N'Silverson', N'bsilversonz@bing.com', N'Male', N'41-50', N'China', N'Andongwei',
        N'487 Harper Parkway');

INSERT INTO players
VALUES (37, N'Rubin', N'Coulthard', N'rcoulthard10@domainmarket.com', N'Female', N'41-50', N'China', N'Daqiao',
        N'20890 Hovde Crossing');

INSERT INTO players
VALUES (38, N'Alisun', N'Seyers', N'aseyers11@naver.com', N'Female', N'21-30', N'Ukraine', N'Molodizhne',
        N'62 Nancy Way');

INSERT INTO players
VALUES (39, N'Rab', N'Espinoy', N'respinoy12@odreads.com', N'Female', N'41-50', N'Tunisia', N'Qal‘at al Andalus',
        N'383 Helena Circle');

INSERT INTO players
VALUES (40, N'Tiphany', N'Geri', N'tgeri13@ogle.fr', N'Male', N'31-40', N'Vietnam', N'Th? Tr?n Sìn H?',
        N'30 Kropf Place');

INSERT INTO players
VALUES (41, N'Kathe', N'Gladwin', N'kgladwin14@umich.edu', N'Male', N'41-50', N'Indonesia', N'Penebel',
        N'838 South Pass');

INSERT INTO players
VALUES (42, N'Verina', N'Darrington', N'vdarrington15@shinystat.com', N'Female', N'21-30', N'Indonesia', N'Mendenrejo',
        N'052 Pierstorff Trail');

INSERT INTO players
VALUES (43, N'Cathrin', N'Capps', N'ccapps16@bloglovin.com', N'Female', N'10-21', N'Thailand', N'Lom Sak',
        N'3 Oxford Plaza');

INSERT INTO players
VALUES (44, N'Elspeth', N'Akker', N'eakker17@walmart.com', N'Female', N'41-50', N'Syria', N'Al Qadmus',
        N'854 Carey Place');

INSERT INTO players
VALUES (45, N'Yanaton', N'Grimbaldeston', N'ygrimbaldeston18@redcross.org', N'Female', N'51-60', N'Indonesia',
        N'Nangabere', N'49002 Farwell Alley');

INSERT INTO players
VALUES (46, N'Robbi', N'Auden', N'rauden19@istockphoto.com', N'Male', N'31-40', N'Indonesia', N'Kangin',
        N'0 Lillian Lane');

INSERT INTO players
VALUES (47, N'Giavani', N'Lammers', N'glammers1a@flickr.com', N'Male', N'51-60', N'Mexico', N'Las Palmas',
        N'6 Clyde Gallagher Park');

INSERT INTO players
VALUES (48, N'Lilian', N'Botwood', N'lbotwood1b@skyrock.com', N'Female', N'41-50', N'Argentina', N'Chepes',
        N'1520 Green Street');

INSERT INTO players
VALUES (49, N'Linc', N'Ledwidge', N'lledwidge1c@pinterest.com', N'Male', N'10-21', N'Poland', N'Krzemienica',
        N'34 Barby Trail');

INSERT INTO players
VALUES (50, N'Alli', N'Basini-Gazzi', N'abasinigazzi1d@blogspot.com', N'Female', N'41-50', N'Russia', N'Severomorsk',
        N'827 Judy Plaza');

INSERT INTO players
VALUES (51, N'Pavlov', N'Bourtoumieux', N'pbourtoumieux1e@springer.com', N'Male', N'31-40', N'Saint Kitts and Nevis',
        N'Basseterre', N'4 7th Lane');

INSERT INTO players
VALUES (52, N'Catina', N'Pavyer', N'cpavyer1f@desdev.cn', N'Female', N'10-21', N'Ukraine', N'Bilozerka',
        N'2 Homewood Road');

INSERT INTO players
VALUES (53, N'Morley', N'McElmurray', N'mmcelmurray1g@webmd.com', N'Male', N'41-50', N'Japan', N'Urayasu',
        N'7 Brickson Park Street');

INSERT INTO players
VALUES (54, N'Reinold', N'Almack', N'ralmack1h@umn.edu', N'Female', N'10-21', N'Russia', N'Shelopugino',
        N'0 Veith Pass');

INSERT INTO players
VALUES (55, N'Patsy', N'Sutherby', N'psutherby1i@wp.com', N'Female', N'41-50', N'Philippines', N'Binulasan',
        N'29 Rusk Place');

INSERT INTO players
VALUES (56, N'David', N'McPhilip', N'dmcphilip1j@soup.io', N'Male', N'21-30', N'Russia', N'Brodokalmak',
        N'96 Garrison Trail');

INSERT INTO players
VALUES (57, N'Robyn', N'Horribine', N'rhorribine1k@about.com', N'Male', N'21-30', N'Czech Republic', N'Zdice',
        N'814 Little Fleur Road');

INSERT INTO players
VALUES (58, N'Elonore', N'Profit', N'eprofit1l@miitbeian.v.cn', N'Female', N'51-60', N'South Korea', N'Songgang-dong',
        N'7 David Street');

INSERT INTO players
VALUES (59, N'Townie', N'McMychem', N'tmcmychem1m@tripod.com', N'Female', N'51-60', N'Indonesia', N'Sekampung',
        N'76 Hagan Center');

INSERT INTO players
VALUES (60, N'Tilda', N'MacCaughen', N'tmaccaughen1n@zdnet.com', N'Female', N'51-60', N'China', N'Dayin',
        N'366 Pawling Court');

INSERT INTO players
VALUES (61, N'Ive', N'Banbrigge', N'ibanbrigge1o@bloglovin.com', N'Male', N'51-60', N'Russia', N'Saransk',
        N'521 Debra Road');

INSERT INTO players
VALUES (62, N'Claretta', N'Emmott', N'cemmott1p@booking.com', N'Female', N'21-30', N'Peru', N'Paucarbamba',
        N'61 Lunder Junction');

INSERT INTO players
VALUES (63, N'Eduino', N'Telega', N'etelega1q@usda.v', N'Male', N'31-40', N'Afghanistan', N'Khayr Ko?',
        N'8932 Sachs Way');

INSERT INTO players
VALUES (64, N'Alyosha', N'Langcastle', N'alangcastle1r@lulu.com', N'Female', N'41-50', N'Sweden', N'Bromölla',
        N'7 Everett Court');

INSERT INTO players
VALUES (65, N'Nari', N'Bloxholm', N'nbloxholm1s@auda.org.au', N'Male', N'21-30', N'Philippines', N'Catungawan Sur',
        N'04718 Eastlawn Circle');

INSERT INTO players
VALUES (66, N'Kellia', N'Altofts', N'kaltofts1t@samsung.com', N'Male', N'41-50', N'China', N'Jieheshi',
        N'6700 Shoshone Hill');

INSERT INTO players
VALUES (67, N'Yard', N'Connechie', N'yconnechie1u@hp.com', N'Female', N'51-60', N'Ukraine', N'Kostopil’',
        N'77510 Donald Drive');

INSERT INTO players
VALUES (68, N'Brittney', N'Arthurs', N'barthurs1v@over-blog.com', N'Male', N'41-50', N'Indonesia', N'Tanjungagung',
        N'743 Riverside Plaza');

INSERT INTO players
VALUES (69, N'Carri', N'Tilbury', N'ctilbury1w@ebay.co.uk', N'Male', N'51-60', N'Brazil', N'Itupiranga',
        N'9632 Starling Circle');

INSERT INTO players
VALUES (70, N'Ganny', N'Parsonson', N'gparsonson1x@nature.com', N'Male', N'21-30', N'Indonesia', N'Lengkongbarang',
        N'30444 Summerview Circle');

INSERT INTO players
VALUES (71, N'Nikolai', N'Shorten', N'nshorten1y@accuweather.com', N'Female', N'21-30', N'Greece', N'Mílos',
        N'470 Oriole Center');

INSERT INTO players
VALUES (72, N'Kayle', N'Ewells', N'kewells1z@netscape.com', N'Female', N'31-40', N'Cuba', N'Bartolomé Masó',
        N'551 Fair Oaks Alley');

INSERT INTO players
VALUES (73, N'Evaleen', N'Rabidge', N'erabidge20@cbslocal.com', N'Male', N'10-21', N'France', N'Vichy',
        N'72 Gale Junction');

INSERT INTO players
VALUES (74, N'Van', N'Raddan', N'vraddan21@nps.v', N'Male', N'51-60', N'Philippines', N'Tigaon', N'2 Loftsrdon Center');

INSERT INTO players
VALUES (75, N'Wakefield', N'Darlow', N'wdarlow22@deviantart.com', N'Female', N'41-50', N'Sweden', N'Järfälla',
        N'74 Swallow Street');

INSERT INTO players
VALUES (76, N'Baxter', N'Males', N'bmales23@soup.io', N'Male', N'10-21', N'Brazil', N'Pirapora do Bom Jesus',
        N'944 Linden Court');

INSERT INTO players
VALUES (77, N'Margaux', N'Praundlin', N'mpraundlin24@taobao.com', N'Male', N'21-30', N'Poland', N'Steszew',
        N'449 Brentwood Crossing');

INSERT INTO players
VALUES (78, N'Marika', N'Tuckwell', N'mtuckwell25@mozilla.org', N'Female', N'21-30', N'Canada', N'Iqaluit',
        N'210 Sunnyside Point');

INSERT INTO players
VALUES (79, N'Bernie', N'Trood', N'btrood26@shareasale.com', N'Male', N'21-30', N'Pakistan', N'Keti Bandar',
        N'9 Loeprich Way');

INSERT INTO players
VALUES (80, N'Kalinda', N'Riep', N'kriep27@usgs.v', N'Female', N'41-50', N'Japan', N'Osaka-shi', N'0 Cottonwood Drive');

INSERT INTO players
VALUES (81, N'Angelo', N'MacWhirter', N'amacwhirter28@ucla.edu', N'Male', N'31-40', N'Portugal', N'Couto',
        N'2 Scott Plaza');

INSERT INTO players
VALUES (82, N'Charo', N'Titchard', N'ctitchard29@ifeng.com', N'Female', N'41-50', N'China', N'Wulin',
        N'9105 Dottie Circle');

INSERT INTO players
VALUES (83, N'Florie', N'nzalvo', N'fnzalvo2a@csmonitor.com', N'Male', N'51-60', N'France', N'Saint-Priest-en-Jarez',
        N'745 Michigan Hill');

INSERT INTO players
VALUES (84, N'Falito', N'Canti', N'fcanti2b@wikispaces.com', N'Male', N'51-60', N'Russia', N'Svobody', N'4 Haas Place');

INSERT INTO players
VALUES (85, N'Jillane', N'Pourvoieur', N'jpourvoieur2c@jiathis.com', N'Male', N'51-60', N'China', N'Sanzhang',
        N'7 Eastwood Street');

INSERT INTO players
VALUES (86, N'Andres', N'Norsworthy', N'anorsworthy2d@imgur.com', N'Female', N'51-60', N'Peru', N'Cayna',
        N'45 Surrey Lane');

INSERT INTO players
VALUES (87, N'Christian', N'Harry', N'charry2e@hp.com', N'Female', N'31-40', N'South Korea', N'Daegu',
        N'3 Browning Parkway');

INSERT INTO players
VALUES (88, N'Claybourne', N'Tomasoni', N'ctomasoni2f@omniture.com', N'Female', N'10-21', N'Greece', N'Deskáti',
        N'84299 Miller Parkway');

INSERT INTO players
VALUES (89, N'Iain', N'Janata', N'ijanata2g@vkontakte.ru', N'Female', N'51-60', N'Philippines', N'San Nicolas',
        N'12 Blue Bill Park Crossing');

INSERT INTO players
VALUES (90, N'Elyse', N'Rollinshaw', N'erollinshaw2h@blogger.com', N'Female', N'51-60', N'Indonesia', N'Feuknoni',
        N'7 Arkansas Lane');

INSERT INTO players
VALUES (91, N'Retha', N'Satch', N'rsatch2i@marketwatch.com', N'Female', N'31-40', N'Malaysia', N'Kota Kinabalu',
        N'41064 Rieder Alley');

INSERT INTO players
VALUES (92, N'Lloyd', N'Mapam', N'lmapam2j@studiopress.com', N'Female', N'51-60', N'Indonesia', N'Pasanggrahan',
        N'79342 Bashford Hill');

INSERT INTO players
VALUES (93, N'Barbey', N'Copner', N'bcopner2k@ibm.com', N'Female', N'51-60', N'Malaysia', N'Kuala Lumpur',
        N'364 Westport Crossing');

INSERT INTO players
VALUES (94, N'Pincas', N'Wixey', N'pwixey2l@desdev.cn', N'Male', N'51-60', N'Russia', N'Vistino',
        N'67305 Rowland Trail');

INSERT INTO players
VALUES (95, N'Drake', N'Swalough', N'dswalough2m@senate.v', N'Male', N'10-21', N'Sweden', N'Bromma',
        N'28453 Jenifer Way');

INSERT INTO players
VALUES (96, N'Rosamund', N'Culbard', N'rculbard2n@technorati.com', N'Female', N'10-21', N'China', N'Qümong',
        N'3105 Crowley Trail');

INSERT INTO players
VALUES (97, N'Nedda', N'Pattenden', N'npattenden2o@ow.ly', N'Female', N'10-21', N'Belarus', N'Pinsk',
        N'8 lden Leaf Hill');

INSERT INTO players
VALUES (98, N'Gennie', N'Hail', N'ghail2p@hp.com', N'Female', N'10-21', N'Pakistan', N'Chak Two Hundred Forty-Nine TDA',
        N'500 Blaine Crossing');

INSERT INTO players
VALUES (99, N'Wilek', N'MacPhail', N'wmacphail2q@ycombinator.com', N'Male', N'51-60', N'Czech Republic', N'Újezd',
        N'2 Lyons Parkway');

INSERT INTO players
VALUES (100, N'Sheryl', N'Mithan', N'smithan2r@indie.com', N'Female', N'31-40', N'China', N'Gaocun',
        N'0040 Darwin Place');

INSERT INTO players
VALUES (101, N'Mordecai', N'Fairfoul', N'mfairfoul2s@npr.org', N'Female', N'10-21', N'Russia', N'Noginsk',
        N'6 Texas Street');

INSERT INTO players
VALUES (102, N'Barrett', N'Raggles', N'braggles2t@lulu.com', N'Male', N'31-40', N'Iran', N'Bandar-e Torkaman',
        N'20 Thompson Crossing');

INSERT INTO players
VALUES (103, N'Veronica', N'Cheal', N'vcheal2u@github.com', N'Female', N'10-21', N'Japan', N'Gifu-shi',
        N'68529 Riverside Junction');

INSERT INTO players
VALUES (104, N'Bea', N'Juarez', N'bjuarez2v@hexun.com', N'Male', N'31-40', N'China', N'Mingshui',
        N'719 Northwestern Circle');

INSERT INTO players
VALUES (105, N'Langston', N'Strood', N'lstrood2w@comcast.net', N'Female', N'31-40', N'Indonesia', N'Randegan',
        N'4620 Gerald Junction');

INSERT INTO players
VALUES (106, N'Ertha', N'Withur', N'ewithur2x@amazon.co.uk', N'Male', N'31-40', N'Russia', N'Proletarsk',
        N'2 Lawn Junction');

INSERT INTO players
VALUES (107, N'Hettie', N'Gernier', N'hgernier2y@timesonline.co.uk', N'Male', N'31-40', N'Russia', N'Garbolovo',
        N'058 Vahlen Road');

INSERT INTO players
VALUES (108, N'Coraline', N'Stride', N'cstride2z@illinois.edu', N'Male', N'51-60', N'Palestinian Territory',
        N'‘Ayn al Bay?a', N'84 Carey Avenue');

INSERT INTO players
VALUES (109, N'Cedric', N'Berfoot', N'cberfoot30@patch.com', N'Female', N'10-21', N'Portugal', N'Seara',
        N'1 Evergreen Point');

INSERT INTO players
VALUES (110, N'Steffie', N'Inchbald', N'sinchbald31@oakley.com', N'Male', N'10-21', N'China', N'Chiguang',
        N'148 Moulton Circle');

INSERT INTO players
VALUES (111, N'Latisha', N'Savine', N'lsavine32@ehow.com', N'Female', N'41-50', N'China', N'Mozhong',
        N'06092 Schurz Hill');

INSERT INTO players
VALUES (112, N'Elfreda', N'Barsam', N'ebarsam33@4shared.com', N'Male', N'21-30', N'Russia', N'Bessonovka',
        N'445 Hallows Terrace');

INSERT INTO players
VALUES (113, N'Ainslie', N'Marchello', N'amarchello34@aboutads.info', N'Male', N'31-40', N'Netherlands',
        N'''s-Hertogenbosch', N'2289 Buena Vista Center');

INSERT INTO players
VALUES (114, N'Nester', N'Jobbings', N'njobbings35@wiley.com', N'Female', N'41-50', N'Mayotte', N'Mamoudzou',
        N'1 Vernon Court');

INSERT INTO players
VALUES (115, N'Tani', N'Renfree', N'trenfree36@wired.com', N'Female', N'31-40', N'South Africa', N'Randfontein',
        N'12543 Artisan Park');

INSERT INTO players
VALUES (116, N'Britt', N'Vigurs', N'bvigurs37@bravesites.com', N'Male', N'10-21', N'China', N'Hecheng',
        N'62606 Carey Plaza');

INSERT INTO players
VALUES (117, N'Idalia', N'Small', N'ismall38@t.co', N'Female', N'41-50', N'Tanzania', N'Mugumu',
        N'305 Swallow Crossing');

INSERT INTO players
VALUES (118, N'Trenton', N'Granger', N'tgranger39@uol.com.br', N'Male', N'41-50', N'Indonesia', N'Riangblolong',
        N'211 Maywood Hill');

INSERT INTO players
VALUES (119, N'Silas', N'Pepys', N'spepys3a@i2i.jp', N'Male', N'31-40', N'China', N'Duqiong', N'0 Del Mar Road');

INSERT INTO players
VALUES (120, N'Drona', N'odlet', N'dodlet3b@blinklist.com', N'Male', N'10-21', N'China', N'Baisha',
        N'91959 Green Place');

INSERT INTO players
VALUES (121, N'Dotty', N'Falloon', N'dfalloon3c@statcounter.com', N'Female', N'51-60', N'Palestinian Territory',
        N'Artas', N'29 Crest Line Point');

INSERT INTO players
VALUES (122, N'Elysia', N'Benezet', N'ebenezet3d@earthlink.net', N'Female', N'21-30', N'China', N'Xieji',
        N'71628 Fulton Drive');

INSERT INTO players
VALUES (123, N'Kimble', N'Spire', N'kspire3e@artisteer.com', N'Female', N'41-50', N'Indonesia', N'Mekarjaya Satu',
        N'1 Everett Parkway');

INSERT INTO players
VALUES (124, N'Franny', N'Arthurs', N'farthurs3f@un.org', N'Female', N'51-60', N'Portugal', N'Castainço',
        N'443 Scoville Circle');

INSERT INTO players
VALUES (125, N'Zarla', N'Stanners', N'zstanners3g@nhs.uk', N'Male', N'41-50', N'China', N'Dongshandi',
        N'76023 Kim Lane');

INSERT INTO players
VALUES (126, N'Asto', N'Gibbons', N'agibbons3h@discovery.com', N'Male', N'51-60', N'China', N'Xinyuan',
        N'73 Darwin Court');

INSERT INTO players
VALUES (127, N'Blakelee', N'Ternault', N'bternault3i@jiathis.com', N'Female', N'31-40', N'Indonesia', N'Pasatan',
        N'01794 Warner Way');

INSERT INTO players
VALUES (128, N'Guglielmo', N'Gendrich', N'ggendrich3j@springer.com', N'Female', N'41-50', N'United States', N'Austin',
        N'7824 Raven Junction');

INSERT INTO players
VALUES (129, N'Norman', N'Scad', N'nscad3k@toplist.cz', N'Female', N'41-50', N'China', N'Baisha', N'7 Shoshone Pass');

INSERT INTO players
VALUES (130, N'Caterina', N'Izkovici', N'cizkovici3l@ibm.com', N'Male', N'41-50', N'Chile', N'San Clemente',
        N'7 Monica Park');

INSERT INTO players
VALUES (131, N'Norine', N'Stanlack', N'nstanlack3m@unblog.fr', N'Male', N'31-40', N'Egypt', N'Al Qanayat',
        N'54612 Fremont Street');

INSERT INTO players
VALUES (132, N'Giselle', N'Sire', N'gsire3n@tumblr.com', N'Male', N'21-30', N'Zimbabwe', N'Marondera',
        N'451 Randy Road');

INSERT INTO players
VALUES (133, N'Gloria', N'nnard', N'gnnard3o@unesco.org', N'Female', N'21-30', N'Mexico', N'Petrolera',
        N'67 Monica Trail');

INSERT INTO players
VALUES (134, N'Axel', N'Gerrard', N'agerrard3p@europa.eu', N'Female', N'51-60', N'China', N'Beima',
        N'0933 Shopko Hill');

INSERT INTO players
VALUES (135, N'Ilse', N'Kleanthous', N'ikleanthous3q@ogle.nl', N'Male', N'31-40', N'China', N'Zhonghe',
        N'7 Eagle Crest Alley');

INSERT INTO players
VALUES (136, N'Tully', N'Woodruff', N'twoodruff3r@drupal.org', N'Female', N'21-30', N'Ecuador',
        N'Wilfrido Loor Moreira', N'28 Farragut Park');

INSERT INTO players
VALUES (137, N'Glad', N'Wilman', N'gwilman3s@dell.com', N'Male', N'51-60', N'Indonesia', N'Waiwejak',
        N'228 Hanover Point');

INSERT INTO players
VALUES (138, N'Geraldine', N'Guy', N'gguy3t@indiatimes.com', N'Male', N'31-40', N'China', N'Longxi',
        N'97517 Glacier Hill Court');

INSERT INTO players
VALUES (139, N'Jillene', N'Holliar', N'jholliar3u@hatena.ne.jp', N'Male', N'10-21', N'Indonesia', N'Sebasang',
        N'34 5th Avenue');

INSERT INTO players
VALUES (140, N'Lydia', N'Rodenburg', N'lrodenburg3v@patch.com', N'Male', N'31-40', N'China', N'Xinxi',
        N'211 Eagle Crest Crossing');

INSERT INTO players
VALUES (141, N'Clerissa', N'Freiburger', N'cfreiburger3w@hc360.com', N'Female', N'10-21', N'Poland', N'zdnica',
        N'50646 Superior Avenue');

INSERT INTO players
VALUES (142, N'Claretta', N'Saldler', N'csaldler3x@seattletimes.com', N'Male', N'51-60', N'Poland', N'Prochowice',
        N'17560 Glendale Trail');

INSERT INTO players
VALUES (143, N'Dale', N'Mayhead', N'dmayhead3y@ustream.tv', N'Female', N'41-50', N'United Arab Emirates',
        N'Ras al-Khaimah', N'2124 Nobel Crossing');

INSERT INTO players
VALUES (144, N'Reena', N'Salmon', N'rsalmon3z@dedecms.com', N'Female', N'21-30', N'Indonesia', N'Ubud',
        N'15 Mosinee Way');

INSERT INTO players
VALUES (145, N'Agnola', N'Hallmark', N'ahallmark40@yahoo.co.jp', N'Male', N'10-21', N'Indonesia', N'Kolirerek',
        N'370 Vidon Park');

INSERT INTO players
VALUES (146, N'Thaddeus', N'Costerd', N'tcosterd41@cmu.edu', N'Male', N'41-50', N'Philippines', N'Buenavista',
        N'72407 Nancy Road');

INSERT INTO players
VALUES (147, N'Forester', N'Whaymand', N'fwhaymand42@bravesites.com', N'Male', N'10-21', N'Indonesia', N'Noebesa',
        N'11145 Dakota Point');

INSERT INTO players
VALUES (148, N'Nicola', N'Harris', N'nharris43@altervista.org', N'Female', N'41-50', N'Poland', N'Lipinki Luzyckie',
        N'6344 Parkside Lane');

INSERT INTO players
VALUES (149, N'Sherye', N'Shortell', N'sshortell44@ox.ac.uk', N'Female', N'21-30', N'Russia', N'Ostrov',
        N'747 Haas Drive');

INSERT INTO players
VALUES (150, N'Rhody', N'O''Gleasane', N'rogleasane45@webs.com', N'Male', N'31-40', N'Greece', N'Yimnón',
        N'84 Maryland Junction');

INSERT INTO players
VALUES (151, N'Jany', N'Rainey', N'jrainey46@scientificamerican.com', N'Male', N'10-21', N'Ivory Coast', N'Dabou',
        N'1 Namekan Circle');

INSERT INTO players
VALUES (152, N'Myrle', N'Henmarsh', N'mhenmarsh47@eventbrite.com', N'Female', N'21-30', N'Indonesia', N'Poja',
        N'0 Beilfuss Trail');

INSERT INTO players
VALUES (153, N'Raquel', N'Kinnerley', N'rkinnerley48@businessweek.com', N'Male', N'21-30', N'China', N'Mizi',
        N'7 1st Point');

INSERT INTO players
VALUES (154, N'Willie', N'Larratt', N'wlarratt49@rakuten.co.jp', N'Male', N'41-50', N'Philippines', N'Talisayan',
        N'74 Westridge Circle');

INSERT INTO players
VALUES (155, N'Natty', N'Youles', N'nyoules4a@apache.org', N'Female', N'41-50', N'Sweden', N'Kristinehamn',
        N'02082 Columbus Street');

INSERT INTO players
VALUES (156, N'Kathie', N'Macek', N'kmacek4b@gravatar.com', N'Male', N'21-30', N'Norway', N'Tromsø',
        N'3462 Superior Parkway');

INSERT INTO players
VALUES (157, N'Consuelo', N'Mompesson', N'cmompesson4c@ebay.co.uk', N'Female', N'51-60', N'Cuba', N'Bayamo',
        N'643 Summit Pass');

INSERT INTO players
VALUES (158, N'Artair', N'Mayoral', N'amayoral4d@plala.or.jp', N'Female', N'51-60', N'China', N'Maikun',
        N'9 Forest Point');

INSERT INTO players
VALUES (159, N'Bob', N'Erangy', N'berangy4e@ucoz.com', N'Male', N'31-40', N'Colombia', N'El Espino',
        N'3 Northridge Lane');

INSERT INTO players
VALUES (160, N'Clerissa', N'Shoebridge', N'cshoebridge4f@statcounter.com', N'Female', N'31-40', N'Serbia', N'Klek',
        N'518 Cordelia Lane');

INSERT INTO players
VALUES (161, N'Hastings', N'Braisher', N'hbraisher4g@posterous.com', N'Male', N'21-30', N'Portugal',
        N'Cabanas de Viriato', N'29046 5th Drive');

INSERT INTO players
VALUES (162, N'Celine', N'Anfrey', N'canfrey4h@archive.org', N'Male', N'31-40', N'Indonesia', N'Karafao',
        N'55785 Eggendart Alley');

INSERT INTO players
VALUES (163, N'Sharona', N'Stokes', N'sstokes4i@pcworld.com', N'Male', N'51-60', N'Philippines', N'Dapawan',
        N'04 Mitchell Lane');

INSERT INTO players
VALUES (164, N'Tera', N'Brassington', N'tbrassington4j@twitpic.com', N'Female', N'21-30', N'Portugal',
        N'Briteiros Santa Leocádia', N'7 3rd Center');

INSERT INTO players
VALUES (165, N'Pennie', N'Rossbrooke', N'prossbrooke4k@tuttocitta.it', N'Female', N'41-50', N'China', N'Juren',
        N'82 Comanche Way');

INSERT INTO players
VALUES (166, N'Anabella', N'Seathwright', N'aseathwright4l@blogspot.com', N'Male', N'51-60', N'United States',
        N'Van Nuys', N'6894 Gale Road');

INSERT INTO players
VALUES (167, N'Kitti', N'Pamplin', N'kpamplin4m@1688.com', N'Male', N'51-60', N'Mexico', N'San Isidro',
        N'065 Raven Parkway');

INSERT INTO players
VALUES (168, N'Inge', N'Sabben', N'isabben4n@booking.com', N'Male', N'51-60', N'Monlia', N'Bayanbaraat',
        N'662 Oakridge Drive');

INSERT INTO players
VALUES (169, N'Coretta', N'Le Grove', N'clegrove4o@rediff.com', N'Male', N'41-50', N'China', N'Luotang',
        N'53705 Burning Wood Crossing');

INSERT INTO players
VALUES (170, N'Kessia', N'Richly', N'krichly4p@sourceforge.net', N'Female', N'31-40', N'Tanzania', N'Kondoa',
        N'8770 Eastwood Parkway');

INSERT INTO players
VALUES (171, N'dart', N'Kellington', N'gkellington4q@amazonaws.com', N'Female', N'51-60', N'Syria', N'Jubb Ramlah',
        N'17089 Sheridan Parkway');

INSERT INTO players
VALUES (172, N'Lloyd', N'Wyd', N'lwyd4r@shop-pro.jp', N'Female', N'21-30', N'China', N'Shimen', N'55 Kinsman Circle');

INSERT INTO players
VALUES (173, N'Elmira', N'Deverall', N'edeverall4s@mail.ru', N'Male', N'31-40', N'China', N'Wolongquan',
        N'80862 Westerfield Street');

INSERT INTO players
VALUES (174, N'Dominick', N'Partkya', N'dpartkya4t@samsung.com', N'Female', N'51-60', N'Sweden', N'Nyköping',
        N'444 Dixon Hill');

INSERT INTO players
VALUES (175, N'Angelico', N'Harback', N'aharback4u@github.io', N'Male', N'31-40', N'China', N'Wujing',
        N'8277 Carioca Point');

INSERT INTO players
VALUES (176, N'Ellyn', N'Bladge', N'ebladge4v@wordpress.com', N'Male', N'31-40', N'Czech Republic', N'Starý Bohumín',
        N'72482 Lillian Drive');

INSERT INTO players
VALUES (177, N'Lizette', N'Oddie', N'loddie4w@acquirethisname.com', N'Male', N'41-50', N'Nicaragua',
        N'San José de los Remates', N'80916 Butternut Avenue');

INSERT INTO players
VALUES (178, N'Terri-jo', N'Tappor', N'ttappor4x@1und1.de', N'Female', N'31-40', N'Bulgaria', N'Bov',
        N'1 Autumn Leaf Pass');

INSERT INTO players
VALUES (179, N'Alix', N'Lutwyche', N'alutwyche4y@zdnet.com', N'Male', N'31-40', N'Philippines', N'Polo',
        N'37 Erie Park');

INSERT INTO players
VALUES (180, N'Ellissa', N'tmann', N'etmann4z@pcworld.com', N'Male', N'51-60', N'Dominica', N'Pointe Michel',
        N'0 Center Pass');

INSERT INTO players
VALUES (181, N'Keenan', N'Casillis', N'kcasillis50@fc2.com', N'Male', N'41-50', N'Brazil', N'Coronel Vivida',
        N'6 Lien Junction');

INSERT INTO players
VALUES (182, N'Connie', N'Sidebotham', N'csidebotham51@irs.v', N'Female', N'31-40', N'Poland', N'Skawica',
        N'946 Arkansas Place');

INSERT INTO players
VALUES (183, N'Kalvin', N'Cristofor', N'kcristofor52@trellian.com', N'Female', N'51-60', N'China', N'Huatanshan',
        N'0 Carberry Street');

INSERT INTO players
VALUES (184, N'Sari', N'Enri', N'senri53@alibaba.com', N'Male', N'31-40', N'Zambia', N'Kawambwa', N'53 1st Circle');

INSERT INTO players
VALUES (185, N'Bill', N'Piet', N'bpiet54@sciencedirect.com', N'Male', N'31-40', N'Azerbaijan', N'Lankaran',
        N'88 Fuller Trail');

INSERT INTO players
VALUES (186, N'Jae', N'Norvill', N'jnorvill55@noaa.v', N'Female', N'10-21', N'Greece', N'Maúla', N'4496 Sunfield Pass');

INSERT INTO players
VALUES (187, N'Herta', N'Bellini', N'hbellini56@blogtalkradio.com', N'Male', N'10-21', N'Ecuador', N'Baláo',
        N'6 Susan Parkway');

INSERT INTO players
VALUES (188, N'Rory', N'Luesley', N'rluesley57@ogle.co.jp', N'Female', N'41-50', N'Japan', N'Yawata',
        N'1804 Schmedeman Road');

INSERT INTO players
VALUES (189, N'Fey', N'Di Claudio', N'fdiclaudio58@soundcloud.com', N'Male', N'41-50', N'Sweden', N'Trelleborg',
        N'92 Messerschmidt Circle');

INSERT INTO players
VALUES (190, N'Vanya', N'Gebhardt', N'vgebhardt59@odnoklassniki.ru', N'Male', N'10-21', N'China', N'Xukou',
        N'4850 Paget Drive');

INSERT INTO players
VALUES (191, N'Bent', N'Stebbings', N'bstebbings5a@archive.org', N'Male', N'41-50', N'Argentina', N'Cipolletti',
        N'7774 Mariners Cove Plaza');

INSERT INTO players
VALUES (192, N'Lowrance', N'Wooland', N'lwooland5b@mtv.com', N'Male', N'21-30', N'Croatia', N'Ivanec',
        N'9430 Arapahoe Street');

INSERT INTO players
VALUES (193, N'Traver', N'Ricketts', N'tricketts5c@nsw.v.au', N'Male', N'51-60', N'Nicaragua', N'Juigalpa',
        N'10481 Vernon Junction');

INSERT INTO players
VALUES (194, N'Jasen', N'Tunny', N'jtunny5d@v.uk', N'Male', N'21-30', N'Norfolk Island', N'Kingston',
        N'75 Garrison Crossing');

INSERT INTO players
VALUES (195, N'Corabella', N'Tapton', N'ctapton5e@vkontakte.ru', N'Female', N'21-30', N'Ukraine', N'Nyzhni Sirohozy',
        N'202 Dexter Plaza');

INSERT INTO players
VALUES (196, N'Carmela', N'Kellock', N'ckellock5f@bigcartel.com', N'Female', N'21-30', N'China', N'Shatian',
        N'39 Shelley Plaza');

INSERT INTO players
VALUES (197, N'Noell', N'Rainsbury', N'nrainsbury5g@woothemes.com', N'Female', N'10-21', N'Zimbabwe', N'Kwekwe',
        N'02 Veith Street');

INSERT INTO players
VALUES (198, N'Hadrian', N'Kohen', N'hkohen5h@wsj.com', N'Male', N'10-21', N'China', N'Anhua Daying', N'7 Atwood Pass');

INSERT INTO players
VALUES (199, N'Lou', N'O''Kennavain', N'lokennavain5i@networksolutions.com', N'Female', N'10-21', N'Russia', N'Tyumen',
        N'02751 Moose Road');

INSERT INTO players
VALUES (200, N'Aline', N'Carous', N'acarous5j@mit.edu', N'Male', N'21-30', N'Indonesia', N'Sumberbening',
        N'26 Merchant Circle');

INSERT INTO players
VALUES (201, N'Gilli', N'Scorton', N'gscorton5k@china.com.cn', N'Male', N'10-21', N'China', N'A’yi Take',
        N'6214 Fuller Junction');

INSERT INTO players
VALUES (202, N'Staford', N'Woolatt', N'swoolatt5l@exblog.jp', N'Female', N'51-60', N'China', N'Wangmeng',
        N'3783 Fisk Point');

INSERT INTO players
VALUES (203, N'Dona', N'Hauxwell', N'dhauxwell5m@odnoklassniki.ru', N'Male', N'51-60', N'Mali', N'Bla',
        N'0 Twin Pines Avenue');

INSERT INTO players
VALUES (204, N'Malchy', N'Imison', N'mimison5n@newyorker.com', N'Male', N'31-40', N'Argentina', N'Ingenio La Esperanza',
        N'0 Elgar Trail');

INSERT INTO players
VALUES (205, N'Noell', N'Truitt', N'ntruitt5o@stumbleupon.com', N'Male', N'51-60', N'Cyprus', N'Mosfilotí',
        N'162 Oak Trail');

INSERT INTO players
VALUES (206, N'Adrianne', N'Alvis', N'aalvis5p@sitemeter.com', N'Female', N'51-60', N'United States', N'Columbus',
        N'9 International Point');

INSERT INTO players
VALUES (207, N'Rolf', N'Kerman', N'rkerman5q@dmoz.org', N'Male', N'21-30', N'Greece', N'Morfovoúni',
        N'18423 Ridgeview Junction');

INSERT INTO players
VALUES (208, N'Berti', N'Baird', N'bbaird5r@sphinn.com', N'Male', N'21-30', N'Malaysia', N'Shah Alam',
        N'0647 Twin Pines Plaza');

INSERT INTO players
VALUES (209, N'Natalina', N'Kullmann', N'nkullmann5s@zdnet.com', N'Female', N'31-40', N'Indonesia', N'Bengga',
        N'3457 Rieder Court');

INSERT INTO players
VALUES (210, N'Isaac', N'Chatres', N'ichatres5t@indiatimes.com', N'Male', N'31-40', N'Russia', N'Belyy rodok',
        N'469 Forest Run Pass');

INSERT INTO players
VALUES (211, N'Izaak', N'Garnham', N'igarnham5u@i2i.jp', N'Male', N'41-50', N'Philippines', N'Polomolok',
        N'36 Saint Paul Avenue');

INSERT INTO players
VALUES (212, N'Portia', N'Perigeaux', N'pperigeaux5v@ogle.es', N'Male', N'51-60', N'Armenia', N'Archis',
        N'64072 Moose Road');

INSERT INTO players
VALUES (213, N'Hestia', N'Danilovitch', N'hdanilovitch5w@dmoz.org', N'Female', N'51-60', N'China', N'Jiangkouxu',
        N'7071 Kedzie Point');

INSERT INTO players
VALUES (214, N'Ettie', N'Coaker', N'ecoaker5x@desdev.cn', N'Male', N'21-30', N'Portugal', N'Calçada',
        N'03835 Ramsey Trail');

INSERT INTO players
VALUES (215, N'Haskel', N'Schirok', N'hschirok5y@hatena.ne.jp', N'Female', N'31-40', N'Russia', N'Sofrino',
        N'2 lf Course Park');

INSERT INTO players
VALUES (216, N'Eugen', N'Irving', N'eirving5z@exblog.jp', N'Female', N'51-60', N'France', N'La Courneuve',
        N'8 Mandrake Plaza');

INSERT INTO players
VALUES (217, N'Larina', N'Dellit', N'ldellit60@apache.org', N'Female', N'41-50', N'Portugal', N'Erada',
        N'8 Lyons Terrace');

INSERT INTO players
VALUES (218, N'Toby', N'Sigart', N'tsigart61@time.com', N'Female', N'41-50', N'Greece', N'Aigínio',
        N'27304 Sheridan Way');

INSERT INTO players
VALUES (219, N'Clea', N'Ganforth', N'cganforth62@wsj.com', N'Male', N'31-40', N'Moldova', N'Bilicenii Vechi',
        N'992 Almo Terrace');

INSERT INTO players
VALUES (220, N'Kermie', N'Seeman', N'kseeman63@webmd.com', N'Male', N'41-50', N'Vietnam', N'Gi?ng Ri?ng',
        N'451 Hansons Lane');

INSERT INTO players
VALUES (221, N'Galvin', N'Rexworthy', N'grexworthy64@livejournal.com', N'Male', N'41-50', N'Sweden', N'Örnsköldsvik',
        N'8 6th Park');

INSERT INTO players
VALUES (222, N'Vin', N'Bedo', N'vbedo65@cbsnews.com', N'Male', N'21-30', N'Poland', N'Powidz',
        N'47057 Graedel Junction');

INSERT INTO players
VALUES (223, N'Kingsley', N'McSperron', N'kmcsperron66@illinois.edu', N'Female', N'41-50', N'Albania', N'Aranitas',
        N'4684 Forster Hill');

INSERT INTO players
VALUES (224, N'Christy', N'Duiged', N'cduiged67@prlog.org', N'Female', N'31-40', N'Greece', N'Zográfos',
        N'83936 David Terrace');

INSERT INTO players
VALUES (225, N'Anitra', N'Hailston', N'ahailston68@webmd.com', N'Female', N'41-50', N'Guatemala', N'Santia Atitlán',
        N'58 Cody Crossing');

INSERT INTO players
VALUES (226, N'Boony', N'Gerardin', N'bgerardin69@gmpg.org', N'Female', N'51-60', N'France', N'Le Mans',
        N'39000 Cottonwood Court');

INSERT INTO players
VALUES (227, N'Noll', N'Buckenham', N'nbuckenham6a@constantcontact.com', N'Male', N'31-40', N'Canada',
        N'Saint-Bruno-de-Montarville', N'91 John Wall Plaza');

INSERT INTO players
VALUES (228, N'Adria', N'Roubeix', N'aroubeix6b@engadget.com', N'Female', N'51-60', N'China', N'Guankou',
        N'38173 Rowland Parkway');

INSERT INTO players
VALUES (229, N'Lilah', N'Stempe', N'lstempe6c@nsw.v.au', N'Female', N'31-40', N'Croatia', N'Ljupina',
        N'86651 Gerald Park');

INSERT INTO players
VALUES (230, N'Orelle', N'Clappison', N'oclappison6d@rambler.ru', N'Male', N'51-60', N'Brazil', N'Oriximiná',
        N'9 Ludington Place');

INSERT INTO players
VALUES (231, N'Sherry', N'Biddwell', N'sbiddwell6e@slideshare.net', N'Female', N'41-50', N'Ireland', N'Cabinteely',
        N'24167 Becker Hill');

INSERT INTO players
VALUES (232, N'Yvon', N'Byard', N'ybyard6f@amazon.com', N'Female', N'41-50', N'Canada', N'Timmins',
        N'92 Rowland Crossing');

INSERT INTO players
VALUES (233, N'Mitch', N'Kynge', N'mkynge6g@state.v', N'Female', N'41-50', N'Brazil', N'Formosa do Rio Preto',
        N'55 Bayside Avenue');

INSERT INTO players
VALUES (234, N'Hamel', N'Blain', N'hblain6h@independent.co.uk', N'Female', N'41-50', N'Malaysia', N'Kangar',
        N'2408 Pawling Hill');

INSERT INTO players
VALUES (235, N'Abelard', N'Roscrigg', N'aroscrigg6i@nasa.v', N'Female', N'10-21', N'Albania', N'Ersekë',
        N'9796 East Pass');

INSERT INTO players
VALUES (236, N'Nikolas', N'Dutson', N'ndutson6j@geocities.com', N'Female', N'10-21', N'Cambodia', N'Kampong Cham',
        N'4030 Schiller Place');

INSERT INTO players
VALUES (237, N'Trista', N'Boyington', N'tboyington6k@foxnews.com', N'Female', N'10-21', N'Indonesia', N'Cikaras',
        N'033 Ronald Regan Drive');

INSERT INTO players
VALUES (238, N'Janaya', N'Sigward', N'jsigward6l@tinypic.com', N'Female', N'21-30', N'Latvia', N'Vecumnieki',
        N'75 Homewood Way');

INSERT INTO players
VALUES (239, N'Carce', N'Matusevich', N'cmatusevich6m@ogle.cn', N'Male', N'10-21', N'Canada', N'Penhold',
        N'871 Nelson Point');

INSERT INTO players
VALUES (240, N'Perry', N'Limerick', N'plimerick6n@mysql.com', N'Male', N'51-60', N'Portugal', N'Cortezia',
        N'80 Meadow Vale Hill');

INSERT INTO players
VALUES (241, N'Vita', N'Suddell', N'vsuddell6o@1688.com', N'Female', N'21-30', N'China', N'Huangzhuang',
        N'17890 Sage Center');

INSERT INTO players
VALUES (242, N'Carlyn', N'Iorillo', N'ciorillo6p@storify.com', N'Female', N'41-50', N'Morocco', N'Adassil',
        N'35654 7th Point');

INSERT INTO players
VALUES (243, N'Adler', N'Odney', N'aodney6q@hatena.ne.jp', N'Female', N'41-50', N'Portugal', N'Novais',
        N'0 Cascade Lane');

INSERT INTO players
VALUES (244, N'Shaine', N'Finlayson', N'sfinlayson6r@webmd.com', N'Male', N'21-30', N'Brazil', N'Elias Fausto',
        N'3 Parkside Hill');

INSERT INTO players
VALUES (245, N'Anabal', N'Wornham', N'awornham6s@businessinsider.com', N'Male', N'51-60', N'Brazil', N'Bebedouro',
        N'009 Rusk Pass');

INSERT INTO players
VALUES (246, N'Maire', N'Barthod', N'mbarthod6t@icq.com', N'Female', N'10-21', N'Finland', N'Tampere',
        N'161 Waxwing Avenue');

INSERT INTO players
VALUES (247, N'Elle', N'Lammenga', N'elammenga6u@amazonaws.com', N'Female', N'10-21', N'Indonesia', N'Karangasem',
        N'8 Ramsey Plaza');

INSERT INTO players
VALUES (248, N'Francene', N'Hellyer', N'fhellyer6v@furl.net', N'Female', N'10-21', N'Vietnam', N'Thanh Chuong',
        N'85665 Menomonie Road');

INSERT INTO players
VALUES (249, N'Kahlil', N'Driver', N'kdriver6w@miitbeian.v.cn', N'Male', N'21-30', N'Philippines', N'Lalig',
        N'75 Logan Terrace');

INSERT INTO players
VALUES (250, N'Dill', N'Claige', N'dclaige6x@ogle.com.hk', N'Female', N'31-40', N'Poland', N'Sosno',
        N'134 Ruskin Crossing');

INSERT INTO players
VALUES (251, N'Mayne', N'Ganforthe', N'mganforthe6y@cnn.com', N'Female', N'10-21', N'China', N'Ma’ao',
        N'4923 Oak Center');

INSERT INTO players
VALUES (252, N'Dena', N'Kilmurray', N'dkilmurray6z@bloglovin.com', N'Male', N'10-21', N'Poland', N'Siewierz',
        N'434 Pleasure Circle');

INSERT INTO players
VALUES (253, N'Justen', N'Loncaster', N'jloncaster70@hugedomains.com', N'Female', N'31-40', N'Malaysia', N'Melaka',
        N'6 Ronald Regan Drive');

INSERT INTO players
VALUES (254, N'Fran', N'Scrowton', N'fscrowton71@miitbeian.v.cn', N'Male', N'51-60', N'Russia', N'Rodniki',
        N'7263 Burrows Street');

INSERT INTO players
VALUES (255, N'Marji', N'Musselwhite', N'mmusselwhite72@springer.com', N'Female', N'10-21', N'China', N'Qiaotou',
        N'830 lf Course Terrace');

INSERT INTO players
VALUES (256, N'Fowler', N'Queripel', N'fqueripel73@liveinternet.ru', N'Male', N'51-60', N'Brazil', N'Sananduva',
        N'8 Jana Point');

INSERT INTO players
VALUES (257, N'Annabella', N'Samber', N'asamber74@hatena.ne.jp', N'Female', N'10-21', N'Russia', N'Yakutsk',
        N'6402 Sachtjen Terrace');

INSERT INTO players
VALUES (258, N'Daria', N'Hamilton', N'dhamilton75@issuu.com', N'Female', N'21-30', N'Brazil', N'Louveira',
        N'15077 Vera Hill');

INSERT INTO players
VALUES (259, N'Amil', N'Butland', N'abutland76@hugedomains.com', N'Female', N'41-50', N'Bosnia and Herzevina',
        N'Obudovac', N'7412 Corry Street');

INSERT INTO players
VALUES (260, N'Pattie', N'Seavers', N'pseavers77@dion.ne.jp', N'Male', N'21-30', N'Venezuela', N'Tucupita',
        N'8 Clemons Parkway');

INSERT INTO players
VALUES (261, N'Jessey', N'Staniland', N'jstaniland78@nbcnews.com', N'Male', N'51-60', N'Indonesia', N'Pajaten',
        N'324 Canary Drive');

INSERT INTO players
VALUES (262, N'Garth', N'Mountstephen', N'gmountstephen79@comsenz.com', N'Male', N'31-40', N'Russia', N'El’brus',
        N'3675 Washington Plaza');

INSERT INTO players
VALUES (263, N'Kaylee', N'Bolduc', N'kbolduc7a@trellian.com', N'Female', N'21-30', N'Indonesia', N'Tubuhue',
        N'5 Raven Junction');

INSERT INTO players
VALUES (264, N'Starr', N'Mabbot', N'smabbot7b@slashdot.org', N'Male', N'41-50', N'Bosnia and Herzevina', N'Podhum',
        N'031 Ohio Trail');

INSERT INTO players
VALUES (265, N'Chico', N'Mandell', N'cmandell7c@yahoo.co.jp', N'Male', N'31-40', N'China', N'Zaozhuang',
        N'47324 lf Course Trail');

INSERT INTO players
VALUES (266, N'Willard', N'Olech', N'wolech7d@upenn.edu', N'Female', N'21-30', N'France', N'Valenciennes',
        N'77881 Pierstorff Way');

INSERT INTO players
VALUES (267, N'Henrieta', N'Poynter', N'hpoynter7e@newyorker.com', N'Male', N'31-40', N'Indonesia', N'Karangpari',
        N'98 Magdeline Lane');

INSERT INTO players
VALUES (268, N'Anders', N'Lattimore', N'alattimore7f@shutterfly.com', N'Female', N'51-60', N'Brazil',
        N'Santana do Paraíso', N'78473 Onsgard Way');

INSERT INTO players
VALUES (269, N'Renell', N'Screech', N'rscreech7g@techcrunch.com', N'Female', N'10-21', N'China', N'Tangtu',
        N'9694 Ohio Center');

INSERT INTO players
VALUES (270, N'Irma', N'McCarlie', N'imccarlie7h@is.gd', N'Female', N'21-30', N'Philippines', N'Patnonn',
        N'555 Cambridge Point');

INSERT INTO players
VALUES (271, N'Nahum', N'Tenwick', N'ntenwick7i@parallels.com', N'Male', N'21-30', N'Peru', N'Llusco',
        N'849 lden Leaf Circle');

INSERT INTO players
VALUES (272, N'Xever', N'Glendenning', N'xglendenning7j@pbs.org', N'Female', N'31-40', N'Latvia', N'Smiltene',
        N'14 Pleasure Hill');

INSERT INTO players
VALUES (273, N'Mahmoud', N'Clandillon', N'mclandillon7k@biglobe.ne.jp', N'Male', N'21-30', N'France', N'Bordeaux',
        N'3 Doe Crossing Trail');

INSERT INTO players
VALUES (274, N'Lennie', N'McPhillips', N'lmcphillips7l@facebook.com', N'Male', N'51-60', N'China', N'Longhua',
        N'666 Sunbrook Alley');

INSERT INTO players
VALUES (275, N'Tallie', N'Silveston', N'tsilveston7m@state.v', N'Female', N'31-40', N'Reunion', N'Saint-Paul',
        N'319 Bayside Lane');

INSERT INTO players
VALUES (276, N'Mil', N'Sofe', N'msofe7n@foxnews.com', N'Male', N'51-60', N'Nigeria', N'Gumel', N'76469 Farragut Pass');

INSERT INTO players
VALUES (277, N'Hugues', N'Minors', N'hminors7o@yahoo.co.jp', N'Male', N'31-40', N'Argentina', N'Villa Bustos',
        N'113 Meadow Ridge Trail');

INSERT INTO players
VALUES (278, N'Veradis', N'Mcugan', N'vmcugan7p@delicious.com', N'Female', N'51-60', N'Croatia', N'Klana',
        N'6589 Springs Parkway');

INSERT INTO players
VALUES (279, N'Tilda', N'Di Franceschi', N'tdifranceschi7q@tiny.cc', N'Male', N'21-30', N'Indonesia', N'Tambakmerak',
        N'0910 Fairview Trail');

INSERT INTO players
VALUES (280, N'Casar', N'Tosney', N'ctosney7r@weebly.com', N'Female', N'10-21', N'China', N'Gaofeng',
        N'96835 Sachtjen Pass');

INSERT INTO players
VALUES (281, N'Chip', N'Warboys', N'cwarboys7s@soup.io', N'Male', N'10-21', N'China', N'Bajing', N'81 Tony Court');

INSERT INTO players
VALUES (282, N'Oneida', N'Tanswell', N'otanswell7t@uol.com.br', N'Female', N'51-60', N'Indonesia', N'Mojorejo',
        N'25591 Carey Circle');

INSERT INTO players
VALUES (283, N'Rickert', N'Brunton', N'rbrunton7u@unicef.org', N'Female', N'31-40', N'Ukraine', N'Kosmach',
        N'29383 Kingsford Court');

INSERT INTO players
VALUES (284, N'Dina', N'Holleran', N'dholleran7v@domainmarket.com', N'Male', N'10-21', N'Canada', N'Gibbons',
        N'37 Commercial Trail');

INSERT INTO players
VALUES (285, N'Claudio', N'Braycotton', N'cbraycotton7w@blogs.com', N'Male', N'41-50', N'China', N'Dayuan',
        N'1210 Stoughton Court');

INSERT INTO players
VALUES (286, N'Dominick', N'Batter', N'dbatter7x@biglobe.ne.jp', N'Female', N'51-60', N'Bulgaria', N'rna Oryakhovitsa',
        N'8137 Clemons Way');

INSERT INTO players
VALUES (287, N'Constantina', N'Stacey', N'cstacey7y@netvibes.com', N'Female', N'41-50', N'Russia', N'Leninskoye',
        N'80 Beilfuss Terrace');

INSERT INTO players
VALUES (288, N'Marild', N'Jaffrey', N'mjaffrey7z@jugem.jp', N'Male', N'21-30', N'Russia', N'Glafirovka',
        N'0 Lukken Junction');

INSERT INTO players
VALUES (289, N'Bogart', N'Smitherman', N'bsmitherman80@sou.com', N'Male', N'21-30', N'Cameroon', N'Douala',
        N'4 Clemons Way');

INSERT INTO players
VALUES (290, N'Ruby', N'Vanetti', N'rvanetti81@apache.org', N'Male', N'51-60', N'Indonesia', N'Muting',
        N'16688 Burning Wood Trail');

INSERT INTO players
VALUES (291, N'Morse', N'Hasted', N'mhasted82@ed.v', N'Female', N'31-40', N'Czech Republic', N'Velká Bíteš',
        N'634 Spaight Avenue');

INSERT INTO players
VALUES (292, N'Dexter', N'Lefeaver', N'dlefeaver83@eventbrite.com', N'Female', N'21-30', N'South Africa', N'Springbok',
        N'02738 Fisk Road');

INSERT INTO players
VALUES (293, N'Ivory', N'Easman', N'ieasman84@cbslocal.com', N'Female', N'51-60', N'Indonesia', N'Neglasari',
        N'9867 Mayer Street');

INSERT INTO players
VALUES (294, N'Walden', N'Candlin', N'wcandlin85@sohu.com', N'Male', N'21-30', N'Indonesia', N'Tajan',
        N'958 Beilfuss Way');

INSERT INTO players
VALUES (295, N'Jacquie', N'Francey', N'jfrancey86@4shared.com', N'Male', N'10-21', N'China', N'Chongqing',
        N'11 Cambridge Avenue');

INSERT INTO players
VALUES (296, N'Lyndell', N'Gumme', N'lgumme87@princeton.edu', N'Female', N'31-40', N'Thailand', N'Chok Chai',
        N'6823 Lerdahl Place');

INSERT INTO players
VALUES (297, N'Keelia', N'Ambrozewicz', N'kambrozewicz88@usa.v', N'Male', N'41-50', N'Indonesia', N'Gesikan',
        N'99 Everett Center');

INSERT INTO players
VALUES (298, N'Jephthah', N'Speares', N'jspeares89@icio.us', N'Male', N'41-50', N'Russia', N'Leninorsk',
        N'1 Carey Hill');

INSERT INTO players
VALUES (299, N'Edwina', N'Lacheze', N'elacheze8a@ox.ac.uk', N'Female', N'51-60', N'Portugal', N'Barreiras',
        N'12 Memorial Point');

INSERT INTO players
VALUES (300, N'Letta', N'Comettoi', N'lcomettoi8b@mediafire.com', N'Male', N'10-21', N'Sweden', N'Bromma',
        N'9377 Kedzie Circle');

INSERT INTO players
VALUES (301, N'Celeste', N'Rudman', N'crudman8c@taobao.com', N'Female', N'10-21', N'Armenia', N'Lukashin',
        N'57 Hanson Point');

INSERT INTO players
VALUES (302, N'Guntar', N'Stolberg', N'gstolberg8d@freewebs.com', N'Male', N'21-30', N'Russia', N'Shalazhi',
        N'125 Kenwood Way');

INSERT INTO players
VALUES (303, N'Meagan', N'MacCulloch', N'mmacculloch8e@wix.com', N'Female', N'21-30', N'Libya', N'At Taj',
        N'14121 Graceland Circle');

INSERT INTO players
VALUES (304, N'Melamie', N'Pashan', N'mpashan8f@comcast.net', N'Female', N'10-21', N'United States', N'Boise',
        N'9 Crescent Oaks Center');

INSERT INTO players
VALUES (305, N'Bernadene', N'O''Breen', N'bobreen8g@prnewswire.com', N'Female', N'41-50', N'China', N'Daliuhang',
        N'36 Vernon Way');

INSERT INTO players
VALUES (306, N'Lynelle', N'Giacovetti', N'lgiacovetti8h@chronoengine.com', N'Female', N'21-30', N'South Korea',
        N'Icheon-si', N'108 Heath Pass');

INSERT INTO players
VALUES (307, N'Nanette', N'Dysart', N'ndysart8i@ameblo.jp', N'Female', N'41-50', N'Poland', N'Gryfino',
        N'46995 Colorado Point');

INSERT INTO players
VALUES (308, N'Alvera', N'Cuningham', N'acuningham8j@marketwatch.com', N'Female', N'41-50', N'China', N'Piancheng',
        N'904 Summit Court');

INSERT INTO players
VALUES (309, N'Susana', N'Cockcroft', N'scockcroft8k@mashable.com', N'Female', N'41-50', N'Russia', N'Kalashnikovo',
        N'5 Division Alley');

INSERT INTO players
VALUES (310, N'Jenny', N'Furlonge', N'jfurlonge8l@miitbeian.v.cn', N'Male', N'51-60', N'Russia', N'Edissiya',
        N'08 Mandrake Parkway');

INSERT INTO players
VALUES (311, N'Olympe', N'Cresser', N'ocresser8m@samsung.com', N'Female', N'21-30', N'Argentina',
        N'San José de Feliciano', N'637 Commercial Alley');

INSERT INTO players
VALUES (312, N'Lona', N'Braithwaite', N'lbraithwaite8n@hostgator.com', N'Female', N'31-40', N'China', N'Linghu',
        N'7 Dawn Street');

INSERT INTO players
VALUES (313, N'Allix', N'McCorrie', N'amccorrie8o@amazon.de', N'Male', N'10-21', N'Japan', N'Kitsuki',
        N'26 Melvin Place');

INSERT INTO players
VALUES (314, N'Pearle', N'Feedham', N'pfeedham8p@photobucket.com', N'Male', N'21-30', N'Nicaragua',
        N'Valle San Francisco', N'0 Leroy Avenue');

INSERT INTO players
VALUES (315, N'Rochester', N'Durden', N'rdurden8q@miibeian.v.cn', N'Male', N'10-21', N'Malaysia', N'Kota Kinabalu',
        N'9195 Sommers Street');

INSERT INTO players
VALUES (316, N'Cleo', N'McKeighan', N'cmckeighan8r@archive.org', N'Male', N'31-40', N'Canada', N'Martensville',
        N'75 Kennedy Street');

INSERT INTO players
VALUES (317, N'Etty', N'Gurg', N'egurg8s@nifty.com', N'Male', N'10-21', N'Brazil', N'São José dos Pinhais',
        N'8966 Arkansas Junction');

INSERT INTO players
VALUES (318, N'Darryl', N'Jirsa', N'djirsa8t@sakura.ne.jp', N'Female', N'10-21', N'Philippines', N'Talakag',
        N'7208 Homewood Parkway');

INSERT INTO players
VALUES (319, N'Bradley', N'Troy', N'btroy8u@example.com', N'Female', N'21-30', N'Portugal', N'Arcos',
        N'326 Vahlen Road');

INSERT INTO players
VALUES (320, N'Davon', N'Durie', N'ddurie8v@photobucket.com', N'Male', N'51-60', N'Indonesia', N'Kaduseeng',
        N'0 Nelson Road');

INSERT INTO players
VALUES (321, N'Janeta', N'Hollibone', N'jhollibone8w@mac.com', N'Female', N'51-60', N'Czech Republic', N'Bochov',
        N'89150 Commercial Plaza');

INSERT INTO players
VALUES (322, N'Jaquenetta', N'Lelievre', N'jlelievre8x@mtv.com', N'Male', N'21-30', N'Azerbaijan', N'Biny Selo',
        N'8 Mockingbird Parkway');

INSERT INTO players
VALUES (323, N'Devi', N'Baskeyfield', N'dbaskeyfield8y@vk.com', N'Male', N'41-50', N'Portugal', N'Beja',
        N'532 Bluejay Terrace');

INSERT INTO players
VALUES (324, N'Darn', N'Kytley', N'dkytley8z@mapy.cz', N'Female', N'21-30', N'Russia', N'Ozerki', N'205 Bay Court');

INSERT INTO players
VALUES (325, N'Aubrie', N'Veevers', N'aveevers90@photobucket.com', N'Female', N'51-60', N'China', N'Yangcun',
        N'12 Pierstorff Alley');

INSERT INTO players
VALUES (326, N'Herb', N'Cheale', N'hcheale91@stanford.edu', N'Male', N'41-50', N'China', N'Jiandou',
        N'78674 Continental Street');

INSERT INTO players
VALUES (327, N'Myron', N'Schult', N'mschult92@discuz.net', N'Male', N'51-60', N'Syria', N'Al ?ajar al Aswad',
        N'59 Dunning Court');

INSERT INTO players
VALUES (328, N'Claudina', N'Grigg', N'cgrigg93@imgur.com', N'Male', N'10-21', N'Russia', N'Kingisepp',
        N'5 Mifflin Avenue');

INSERT INTO players
VALUES (329, N'Peadar', N'Rosier', N'prosier94@instagram.com', N'Male', N'21-30', N'Russia', N'Usman’',
        N'129 Graedel Plaza');

INSERT INTO players
VALUES (330, N'Jasper', N'Pyzer', N'jpyzer95@ucsd.edu', N'Female', N'21-30', N'Finland', N'Ylöjärvi',
        N'6 Luster Street');

INSERT INTO players
VALUES (331, N'Bambi', N'Schwanden', N'bschwanden96@mlb.com', N'Male', N'31-40', N'Greece', N'Argithéa',
        N'32836 Northview Junction');

INSERT INTO players
VALUES (332, N'Benita', N'Cooney', N'bcooney97@freewebs.com', N'Female', N'21-30', N'Peru', N'Cabanilla',
        N'02733 Hoffman Terrace');

INSERT INTO players
VALUES (333, N'Adolpho', N'Laurencot', N'alaurencot98@is.gd', N'Female', N'51-60', N'Vanuatu', N'Lakatoro',
        N'5 Kinsman Parkway');

INSERT INTO players
VALUES (334, N'Ruthi', N'Morcomb', N'rmorcomb99@istockphoto.com', N'Female', N'51-60', N'China', N'Jiulong',
        N'2 Meadow Vale Junction');

INSERT INTO players
VALUES (335, N'Raine', N'Timny', N'rtimny9a@upenn.edu', N'Female', N'21-30', N'Cameroon', N'Garoua Boulaï',
        N'6 Duke Street');

INSERT INTO players
VALUES (336, N'Melita', N'McGerr', N'mmcgerr9b@theatlantic.com', N'Female', N'31-40', N'Brazil', N'Pompéia',
        N'91337 Basil Parkway');

INSERT INTO players
VALUES (337, N'Brendis', N'Merioth', N'bmerioth9c@washingtonpost.com', N'Male', N'21-30', N'Russia', N'Zheleznorsk',
        N'28956 Haas Park');

INSERT INTO players
VALUES (338, N'Skelly', N'Poundford', N'spoundford9d@wikimedia.org', N'Female', N'31-40', N'Sweden', N'Sundsvall',
        N'0 Utah Alley');

INSERT INTO players
VALUES (339, N'Moyna', N'Kassidy', N'mkassidy9e@msu.edu', N'Female', N'51-60', N'Japan', N'Tatebayashi',
        N'16796 Hoffman Circle');

INSERT INTO players
VALUES (340, N'Joby', N'Fahy', N'jfahy9f@pcworld.com', N'Male', N'41-50', N'China', N'Mengzhai',
        N'68820 Oxford Center');

INSERT INTO players
VALUES (341, N'Augusta', N'Starton', N'astarton9g@macromedia.com', N'Male', N'21-30', N'Poland', N'Zalewo',
        N'32150 Southridge Center');

INSERT INTO players
VALUES (342, N'Siffre', N'Vitler', N'svitler9h@behance.net', N'Female', N'10-21', N'Slovenia', N'Lucija',
        N'042 Sutteridge Center');

INSERT INTO players
VALUES (343, N'Conchita', N'Hamsher', N'chamsher9i@slideshare.net', N'Male', N'21-30', N'Comoros', N'Pajé',
        N'2 Loeprich Terrace');

INSERT INTO players
VALUES (344, N'Taryn', N'Betteridge', N'tbetteridge9j@tiny.cc', N'Male', N'21-30', N'Philippines', N'La Trinidad',
        N'483 5th Terrace');

INSERT INTO players
VALUES (345, N'Alecia', N'Plaskitt', N'aplaskitt9k@domainmarket.com', N'Female', N'10-21', N'Egypt', N'Idfu',
        N'8 Artisan Way');

INSERT INTO players
VALUES (346, N'Julienne', N'Marrion', N'jmarrion9l@ycombinator.com', N'Male', N'10-21', N'Bosnia and Herzevina',
        N'Živinice', N'2 Scott Circle');

INSERT INTO players
VALUES (347, N'Fulvia', N'Heimes', N'fheimes9m@exblog.jp', N'Female', N'41-50', N'Vietnam', N'Ð?i Ngô',
        N'34 Swallow Plaza');

INSERT INTO players
VALUES (348, N'Lottie', N'London', N'llondon9n@angelfire.com', N'Male', N'31-40', N'Czech Republic',
        N'Velké Svatonovice', N'43588 Blue Bill Park Way');

INSERT INTO players
VALUES (349, N'Constantin', N'Maliffe', N'cmaliffe9o@cornell.edu', N'Male', N'51-60', N'Russia', N'Kiyevskoye',
        N'570 Hooker Way');

INSERT INTO players
VALUES (350, N'Vevay', N'McFie', N'vmcfie9p@ucla.edu', N'Female', N'51-60', N'Colombia', N'Albania',
        N'449 Roxbury Plaza');

INSERT INTO players
VALUES (351, N'Madelene', N'Elmhurst', N'melmhurst9q@nsw.v.au', N'Female', N'41-50', N'Spain', N'Alicante/Alacant',
        N'1003 Alma Point');

INSERT INTO players
VALUES (352, N'Charmian', N'Floweth', N'cfloweth9r@privacy.v.au', N'Female', N'51-60', N'Poland', N'Debowiec',
        N'037 Buell Avenue');

INSERT INTO players
VALUES (353, N'Betty', N'Hammelberg', N'bhammelberg9s@nba.com', N'Male', N'21-30', N'Philippines', N'Gamay',
        N'4932 Pawling Center');

INSERT INTO players
VALUES (354, N'Humfried', N'Blazewicz', N'hblazewicz9t@bandcamp.com', N'Male', N'10-21', N'China', N'Xekar',
        N'3100 1st Lane');

INSERT INTO players
VALUES (355, N'Sonnie', N'Joberne', N'sjoberne9u@sohu.com', N'Female', N'10-21', N'Indonesia', N'mbong',
        N'6 Lindbergh Street');

INSERT INTO players
VALUES (356, N'Jocelyn', N'McKean', N'jmckean9v@bluehost.com', N'Female', N'41-50', N'China', N'Jindong',
        N'39 Declaration Street');

INSERT INTO players
VALUES (357, N'Verene', N'Eilert', N'veilert9w@washingtonpost.com', N'Male', N'51-60', N'Honduras', N'Támara',
        N'53235 Bultman Avenue');

INSERT INTO players
VALUES (358, N'Vasili', N'Grimestone', N'vgrimestone9x@nps.v', N'Male', N'31-40', N'Indonesia', N'Kemil',
        N'808 Northland Point');

INSERT INTO players
VALUES (359, N'Saree', N'Fry', N'sfry9y@youku.com', N'Female', N'10-21', N'Nicaragua', N'El Realejo',
        N'11057 Hoffman Court');

INSERT INTO players
VALUES (360, N'Merry', N'Mortimer', N'mmortimer9z@shareasale.com', N'Male', N'51-60', N'Portugal', N'Pedra Furada',
        N'01483 Springview Trail');

INSERT INTO players
VALUES (361, N'Hanny', N'Bow', N'hbowa0@deliciousdays.com', N'Male', N'31-40', N'Indonesia', N'Kotingnatagete',
        N'872 Continental Lane');

INSERT INTO players
VALUES (362, N'Eleonore', N'Stidever', N'estidevera1@tamu.edu', N'Male', N'31-40', N'China', N'Jiyizhuang',
        N'5 Kinsman Court');

INSERT INTO players
VALUES (363, N'Leland', N'Osborne', N'losbornea2@reverbnation.com', N'Female', N'21-30', N'Philippines', N'Madalum',
        N'463 Fieldstone Court');

INSERT INTO players
VALUES (364, N'Bendicty', N'Rehn', N'brehna3@gizmodo.com', N'Male', N'31-40', N'China', N'Hongtang',
        N'8720 Lawn Alley');

INSERT INTO players
VALUES (365, N'Sherwin', N'Tucker', N'stuckera4@java.com', N'Male', N'41-50', N'Bangladesh', N'Comilla',
        N'21857 Maple Crossing');

INSERT INTO players
VALUES (366, N'Devora', N'Pinwill', N'dpinwilla5@answers.com', N'Male', N'41-50', N'Indonesia', N'Tarikolot',
        N'49290 Bowman Place');

INSERT INTO players
VALUES (367, N'Muhammad', N'Bennallck', N'mbennallcka6@usatoday.com', N'Male', N'41-50', N'China', N'Ezhou',
        N'526 Melody Plaza');

INSERT INTO players
VALUES (368, N'Sharla', N'Trammel', N'strammela7@omniture.com', N'Male', N'10-21', N'Azerbaijan', N'Bilajari',
        N'4784 Helena Point');

INSERT INTO players
VALUES (369, N'Saw', N'Steinham', N'ssteinhama8@npr.org', N'Female', N'31-40', N'China', N'Guanghai',
        N'258 Huxley Point');

INSERT INTO players
VALUES (370, N'Phaidra', N'Pallatina', N'ppallatinaa9@unblog.fr', N'Male', N'10-21', N'China', N'Dezhou',
        N'497 Twin Pines Junction');

INSERT INTO players
VALUES (371, N'Maia', N'Rabidge', N'mrabidgeaa@businesswire.com', N'Female', N'41-50', N'Russia', N'Pyshchug',
        N'1 Lukken Junction');

INSERT INTO players
VALUES (372, N'Henriette', N'Mylchreest', N'hmylchreestab@rakuten.co.jp', N'Male', N'41-50', N'China', N'Yanghe',
        N'510 Pierstorff Drive');

INSERT INTO players
VALUES (373, N'Chrystal', N'Di Nisco', N'cdiniscoac@examiner.com', N'Male', N'21-30', N'Philippines', N'San Fabian',
        N'13 Fuller Trail');

INSERT INTO players
VALUES (374, N'Sonnie', N'Gandy', N'sgandyad@bigcartel.com', N'Male', N'21-30', N'Thailand', N'Mueang Phuket',
        N'6620 Grayhawk Junction');

INSERT INTO players
VALUES (375, N'Neda', N'Hamsson', N'nhamssonae@ted.com', N'Male', N'31-40', N'China', N'Xiangqiao',
        N'187 Hauk Junction');

INSERT INTO players
VALUES (376, N'Pet', N'Marmon', N'pmarmonaf@yandex.ru', N'Female', N'51-60', N'Indonesia', N'Banyuurip',
        N'8838 Express Center');

INSERT INTO players
VALUES (377, N'Ginevra', N'Klees', N'gkleesag@so-net.ne.jp', N'Female', N'51-60', N'United States', N'Conroe',
        N'64 Kenwood Plaza');

INSERT INTO players
VALUES (378, N'Idaline', N'Tomeo', N'itomeoah@shop-pro.jp', N'Male', N'41-50', N'Norway', N'Grimstad',
        N'1707 Sugar Point');

INSERT INTO players
VALUES (379, N'Honey', N'Whitlock', N'hwhitlockai@hostgator.com', N'Male', N'41-50', N'Russia', N'Rodniki',
        N'30368 odland Center');

INSERT INTO players
VALUES (380, N'Rosie', N'Millom', N'rmillomaj@purevolume.com', N'Male', N'21-30', N'Honduras', N'Minas de Oro',
        N'34 lf View Court');

INSERT INTO players
VALUES (381, N'Parnell', N'Poulglais', N'ppoulglaisak@histats.com', N'Female', N'51-60', N'South Africa', N'Lephalale',
        N'436 Old Shore Lane');

INSERT INTO players
VALUES (382, N'Tammie', N'Extill', N'textillal@shinystat.com', N'Male', N'51-60', N'Tunisia', N'Ben Arous',
        N'638 Mosinee Lane');

INSERT INTO players
VALUES (383, N'Maybelle', N'Dorcey', N'mdorceyam@o.ne.jp', N'Female', N'10-21', N'Peru', N'Pomabamba',
        N'6597 Forest Dale Point');

INSERT INTO players
VALUES (384, N'Regen', N'Lofting', N'rloftingan@prweb.com', N'Male', N'10-21', N'Japan', N'Ikata-cho',
        N'3 Dixon Terrace');

INSERT INTO players
VALUES (385, N'Emerson', N'Symondson', N'esymondsonao@topsy.com', N'Male', N'31-40', N'China', N'Wang’er',
        N'39 Redwing Trail');

INSERT INTO players
VALUES (386, N'Dukie', N'Barthrop', N'dbarthropap@springer.com', N'Female', N'31-40', N'Russia', N'Bol’shoye Skuratovo',
        N'3479 Crest Line Trail');

INSERT INTO players
VALUES (387, N'Evaleen', N'Twigley', N'etwigleyaq@v.uk', N'Male', N'51-60', N'China', N'Fanrong',
        N'29802 Arrowood Circle');

INSERT INTO players
VALUES (388, N'Kaspar', N'Cable', N'kcablear@wikimedia.org', N'Female', N'31-40', N'China', N'Wangzuo',
        N'7362 Mcguire Lane');

INSERT INTO players
VALUES (389, N'Gayle', N'Cutmore', N'gcutmoreas@alexa.com', N'Male', N'41-50', N'Philippines', N'Dumingag',
        N'967 Anthes Place');

INSERT INTO players
VALUES (390, N'Talbert', N'Norwood', N'tnorwoodat@gravatar.com', N'Male', N'10-21', N'Portugal', N'Vide',
        N'55913 Dawn Plaza');

INSERT INTO players
VALUES (391, N'Arabele', N'Dobrowolny', N'adobrowolnyau@ask.com', N'Male', N'10-21', N'China', N'Dahuangwei',
        N'3366 Gale Avenue');

INSERT INTO players
VALUES (392, N'Ursulina', N'Swyer', N'uswyerav@irs.v', N'Female', N'10-21', N'Philippines', N'Mabuhay',
        N'9826 Oak Alley');

INSERT INTO players
VALUES (393, N'Gallard', N'Cartner', N'gcartneraw@who.int', N'Female', N'51-60', N'Indonesia', N'Sindanghayu',
        N'3 Mccormick Alley');

INSERT INTO players
VALUES (394, N'Mellie', N'Macci', N'mmacciax@addthis.com', N'Male', N'31-40', N'Poland', N'Stepnica',
        N'9905 Sycamore Avenue');

INSERT INTO players
VALUES (395, N'Valma', N'Molloy', N'vmolloyay@digg.com', N'Female', N'31-40', N'Brazil', N'Telêmaco Borba',
        N'54242 Bobwhite Parkway');

INSERT INTO players
VALUES (396, N'Chan', N'Custard', N'ccustardaz@linkedin.com', N'Male', N'31-40', N'Peru', N'Aquia',
        N'89380 Sullivan Court');

INSERT INTO players
VALUES (397, N'Onfroi', N'Trubshaw', N'otrubshawb0@blinklist.com', N'Female', N'31-40', N'Japan',
        N'Yatsuomachi-higashikumisaka', N'37 Spohn Place');

INSERT INTO players
VALUES (398, N'James', N'Terrell', N'jterrellb1@g.co', N'Female', N'31-40', N'Guatemala', N'Comitancillo',
        N'297 Duke Drive');

INSERT INTO players
VALUES (399, N'Ivor', N'Poznanski', N'ipoznanskib2@microsoft.com', N'Male', N'41-50', N'Cuba', N'Alamar',
        N'6145 Summerview Place');

INSERT INTO players
VALUES (400, N'Kimberlyn', N'Crang', N'kcrangb3@unblog.fr', N'Female', N'31-40', N'China', N'Shiyang',
        N'771 Novick Circle');

INSERT INTO players
VALUES (401, N'Jordan', N'Gwin', N'jgwinb4@loc.v', N'Female', N'10-21', N'Portugal', N'Biscoitos',
        N'06413 Mcguire Road');

INSERT INTO players
VALUES (402, N'Ring', N'Paggitt', N'rpaggittb5@surveymonkey.com', N'Male', N'21-30', N'Indonesia', N'Panoongan',
        N'9924 Lien Way');

INSERT INTO players
VALUES (403, N'Errick', N'Geertje', N'egeertjeb6@harvard.edu', N'Female', N'51-60', N'Uzbekistan', N'Dashtobod',
        N'5 Sauthoff Court');

INSERT INTO players
VALUES (404, N'Chiquita', N'Mughal', N'cmughalb7@biglobe.ne.jp', N'Female', N'10-21', N'Indonesia', N'Pergan',
        N'9 Cordelia Plaza');

INSERT INTO players
VALUES (405, N'Rebeka', N'Lutz', N'rlutzb8@yahoo.co.jp', N'Female', N'21-30', N'China', N'Haizhouwobao',
        N'69013 Calypso Lane');

INSERT INTO players
VALUES (406, N'Andreana', N'McGeorge', N'amcgeorgeb9@cmu.edu', N'Female', N'41-50', N'France', N'Perpignan',
        N'12385 Harbort Alley');

INSERT INTO players
VALUES (407, N'Ursola', N'Nelius', N'uneliusba@i2i.jp', N'Male', N'41-50', N'Indonesia', N'Pinrang',
        N'21 American Lane');

INSERT INTO players
VALUES (408, N'Gaultiero', N'Jansa', N'gjansabb@ogle.com.br', N'Male', N'51-60', N'China', N'Chengxiang',
        N'3 David Parkway');

INSERT INTO players
VALUES (409, N'Pincus', N'Fuke', N'pfukebc@china.com.cn', N'Male', N'51-60', N'Cuba', N'Los Palacios',
        N'6 Homewood Circle');

INSERT INTO players
VALUES (410, N'Henrie', N'Shallow', N'hshallowbd@unicef.org', N'Male', N'41-50', N'Czech Republic', N'Raškovice',
        N'69 Kensington Terrace');

INSERT INTO players
VALUES (411, N'Bibbie', N'Shilladay', N'bshilladaybe@intel.com', N'Male', N'10-21', N'Micronesia', N'Polowat',
        N'4 Eagle Crest Way');

INSERT INTO players
VALUES (412, N'Shepherd', N'Abbado', N'sabbadobf@quantcast.com', N'Male', N'31-40', N'China', N'Nanjie',
        N'1 Farmco Hill');

INSERT INTO players
VALUES (413, N'Carolina', N'Brister', N'cbristerbg@1688.com', N'Female', N'31-40', N'Japan', N'Yao', N'6 Moose Circle');

INSERT INTO players
VALUES (414, N'Karlene', N'Glason', N'kglasonbh@amazonaws.com', N'Male', N'31-40', N'Portugal', N'Vale',
        N'32 Clyde Gallagher Park');

INSERT INTO players
VALUES (415, N'Lorene', N'Weld', N'lweldbi@mapquest.com', N'Male', N'21-30', N'Colombia', N'Campo de la Cruz',
        N'94248 lf Course Court');

INSERT INTO players
VALUES (416, N'Graeme', N'Corthes', N'gcorthesbj@earthlink.net', N'Male', N'10-21', N'Poland', N'Sieroszewice',
        N'4735 Rockefeller Avenue');

INSERT INTO players
VALUES (417, N'Tabbitha', N'Prescott', N'tprescottbk@squidoo.com', N'Male', N'21-30', N'Russia', N'Lyublino',
        N'8108 Lindbergh Street');

INSERT INTO players
VALUES (418, N'Benson', N'Latus', N'blatusbl@nba.com', N'Female', N'31-40', N'Indonesia', N'Turirejo',
        N'38143 Oak Circle');

INSERT INTO players
VALUES (419, N'Wilmar', N'Copperwaite', N'wcopperwaitebm@washingtonpost.com', N'Female', N'51-60', N'Portugal',
        N'Baleal', N'33 Mariners Cove Street');

INSERT INTO players
VALUES (420, N'Marius', N'Biaggetti', N'mbiaggettibn@fotki.com', N'Female', N'51-60', N'Finland', N'Sammatti',
        N'9050 Bunker Hill Street');

INSERT INTO players
VALUES (421, N'Ernestus', N'Petruska', N'epetruskabo@answers.com', N'Male', N'21-30', N'Peru', N'Sacanche',
        N'1 South Center');

INSERT INTO players
VALUES (422, N'Monika', N'McGhee', N'mmcgheebp@economist.com', N'Female', N'41-50', N'Argentina', N'Valcheta',
        N'2 Forest Dale Trail');

INSERT INTO players
VALUES (423, N'Millard', N'Aitchison', N'maitchisonbq@ebay.com', N'Female', N'21-30', N'South Africa',
        N'Bronkhorstspruit', N'2 Bashford Park');

INSERT INTO players
VALUES (424, N'Jeth', N'Crathorne', N'jcrathornebr@imageshack.us', N'Male', N'21-30', N'Indonesia', N'Bijaepasu',
        N'053 8th Parkway');

INSERT INTO players
VALUES (425, N'Ramon', N'Challener', N'rchallenerbs@jigsy.com', N'Male', N'51-60', N'Colombia', N'Curumaní',
        N'430 Lerdahl Hill');

INSERT INTO players
VALUES (426, N'Cindra', N'Card', N'ccardbt@zdnet.com', N'Female', N'41-50', N'Netherlands', N'Delft',
        N'18867 Judy Point');

INSERT INTO players
VALUES (427, N'Nestor', N'Ughetti', N'nughettibu@seattletimes.com', N'Female', N'10-21', N'Ireland', N'Swords',
        N'78735 Acker Circle');

INSERT INTO players
VALUES (428, N'Fidelio', N'Meritt', N'fmerittbv@salon.com', N'Female', N'41-50', N'Spain', N'Pontevedra',
        N'9885 Northfield Park');

INSERT INTO players
VALUES (429, N'Lodovico', N'Oliver-Paull', N'loliverpaullbw@deviantart.com', N'Female', N'41-50', N'France', N'Mende',
        N'35878 La Follette Lane');

INSERT INTO players
VALUES (430, N'Marianna', N'Liggins', N'mligginsbx@shutterfly.com', N'Female', N'10-21', N'Venezuela',
        N'San Fernando Apure', N'3 Meadow Ridge Drive');

INSERT INTO players
VALUES (431, N'Elinor', N'Semmens', N'esemmensby@tamu.edu', N'Female', N'51-60', N'Ireland', N'Manorhamilton',
        N'878 Londonderry Street');

INSERT INTO players
VALUES (432, N'Kettie', N'Adolfsen', N'kadolfsenbz@smh.com.au', N'Female', N'10-21', N'Czech Republic', N'Bzenec',
        N'81 Iowa Parkway');

INSERT INTO players
VALUES (433, N'Leila', N'Nan Carrow', N'lnancarrowc0@de.vu', N'Female', N'21-30', N'Russia', N'Bladatnoye',
        N'7 Sundown Hill');

INSERT INTO players
VALUES (434, N'Lindsay', N'Stefanovic', N'lstefanovicc1@imgur.com', N'Female', N'10-21', N'Bulgaria', N'Sofia',
        N'825 Rieder Hill');

INSERT INTO players
VALUES (435, N'Lew', N'Ferencowicz', N'lferencowiczc2@ted.com', N'Male', N'10-21', N'South Africa', N'Caledon',
        N'18 Green Ridge Court');

INSERT INTO players
VALUES (436, N'Die', N'Pendrigh', N'dpendrighc3@g.co', N'Female', N'51-60', N'France', N'Rouen',
        N'75 Gulseth Junction');

INSERT INTO players
VALUES (437, N'Deedee', N'Priddey', N'dpriddeyc4@va.v', N'Female', N'51-60', N'Brazil', N'Frutal',
        N'36537 Dakota Pass');

INSERT INTO players
VALUES (438, N'Althea', N'Mossman', N'amossmanc5@apple.com', N'Female', N'10-21', N'China', N'Jinhua',
        N'3 Northfield Circle');

INSERT INTO players
VALUES (439, N'Marinna', N'Killock', N'mkillockc6@washingtonpost.com', N'Male', N'51-60', N'Afghanistan', N'Ghormach',
        N'456 Stang Parkway');

INSERT INTO players
VALUES (440, N'Cathi', N'Barge', N'cbargec7@answers.com', N'Male', N'21-30', N'Vietnam', N'Thành Ph? Nam Ð?nh',
        N'2 Park Meadow Terrace');

INSERT INTO players
VALUES (441, N'Trixi', N'Peplow', N'tpeplowc8@wordpress.com', N'Male', N'10-21', N'Philippines', N'Luksuhin',
        N'89280 Rigney Court');

INSERT INTO players
VALUES (442, N'Maegan', N'Sommersett', N'msommersettc9@ogle.cn', N'Male', N'31-40', N'Colombia', N'Pácora',
        N'3986 Jenifer Circle');

INSERT INTO players
VALUES (443, N'Marietta', N'Becerro', N'mbecerroca@gmpg.org', N'Female', N'51-60', N'Russia', N'Urshel’skiy',
        N'833 Lindbergh Parkway');

INSERT INTO players
VALUES (444, N'Juan', N'Guidini', N'jguidinicb@ucoz.ru', N'Female', N'10-21', N'Indonesia', N'Kertasari',
        N'3538 Anthes Place');

INSERT INTO players
VALUES (445, N'Kerby', N'Matterson', N'kmattersoncc@princeton.edu', N'Female', N'31-40', N'United States',
        N'Sacramento', N'3 Magdeline Point');

INSERT INTO players
VALUES (446, N'Drew', N'Anve', N'danvecd@ycombinator.com', N'Male', N'51-60', N'China', N'Huochezhan',
        N'034 Sloan Plaza');

INSERT INTO players
VALUES (447, N'Brook', N'Ramey', N'brameyce@ogle.nl', N'Male', N'51-60', N'Pakistan', N'Warburton', N'0 Darwin Alley');

INSERT INTO players
VALUES (448, N'Ancell', N'Benedyktowicz', N'abenedyktowiczcf@blog.com', N'Female', N'31-40', N'Poland', N'Czestochowa',
        N'3 Sunnyside Way');

INSERT INTO players
VALUES (449, N'Tobye', N'Ferneley', N'tferneleycg@is.gd', N'Female', N'21-30', N'Mauritius', N'Port Louis',
        N'41 Johnson Crossing');

INSERT INTO players
VALUES (450, N'Joey', N'Swinnerton', N'jswinnertonch@tripadvisor.com', N'Male', N'10-21', N'Mexico', N'Emiliano Zapata',
        N'89153 Sunbrook Road');

INSERT INTO players
VALUES (451, N'Sena', N'Gerish', N'sgerishci@vkontakte.ru', N'Female', N'21-30', N'Philippines', N'Mat-i',
        N'57720 Crescent Oaks Crossing');

INSERT INTO players
VALUES (452, N'Oriana', N'Egglestone', N'oegglestonecj@independent.co.uk', N'Female', N'21-30', N'United States',
        N'West Palm Beach', N'2 Sherman Terrace');

INSERT INTO players
VALUES (453, N'Emmet', N'Zumbusch', N'ezumbuschck@blogger.com', N'Female', N'51-60', N'Poland', N'Nowy Sacz',
        N'32 Dayton Terrace');

INSERT INTO players
VALUES (454, N'Audry', N'Fortun', N'afortuncl@squidoo.com', N'Female', N'10-21', N'Russia', N'Ryazanskiy',
        N'73354 Sachs Pass');

INSERT INTO players
VALUES (455, N'Milly', N'Niaves', N'mniavescm@myspace.com', N'Male', N'21-30', N'Russia', N'Spasskoye',
        N'77040 Paget Point');

INSERT INTO players
VALUES (456, N'Nana', N'MacTrustey', N'nmactrusteycn@miibeian.v.cn', N'Male', N'21-30', N'Albania', N'Armen',
        N'22 Hovde Point');

INSERT INTO players
VALUES (457, N'Ilyse', N'Murthwaite', N'imurthwaiteco@nature.com', N'Male', N'31-40', N'Nigeria', N'Bokkos',
        N'19 Nancy Street');

INSERT INTO players
VALUES (458, N'Corinne', N'Whisby', N'cwhisbycp@jimdo.com', N'Male', N'21-30', N'Peru', N'Chumpi',
        N'6493 Westridge Center');

INSERT INTO players
VALUES (459, N'Eolande', N'Sleath', N'esleathcq@merriam-webster.com', N'Male', N'51-60', N'Portugal', N'Eirado',
        N'08 Leroy Circle');

INSERT INTO players
VALUES (460, N'Saraann', N'Eyden', N'seydencr@dmoz.org', N'Female', N'10-21', N'United States', N'Alexandria',
        N'32546 Bluejay Crossing');

INSERT INTO players
VALUES (461, N'Bucky', N'Gercken', N'bgerckencs@amazon.co.jp', N'Female', N'31-40', N'Argentina', N'General Pico',
        N'520 Ohio Point');

INSERT INTO players
VALUES (462, N'Serge', N'McCromley', N'smccromleyct@infoseek.co.jp', N'Male', N'31-40', N'China', N'Chengqu',
        N'4279 Beilfuss Drive');

INSERT INTO players
VALUES (463, N'Colleen', N'Newband', N'cnewbandcu@yandex.ru', N'Male', N'10-21', N'Russia', N'Sokol’skoye',
        N'3 Northridge Trail');

INSERT INTO players
VALUES (464, N'Abigale', N'Auger', N'aaugercv@house.v', N'Female', N'21-30', N'Indonesia', N'Sembung',
        N'94413 Walton Pass');

INSERT INTO players
VALUES (465, N'Aurlie', N'Tant', N'atantcw@samsung.com', N'Female', N'31-40', N'China', N'Chaoshui', N'8 lf Avenue');

INSERT INTO players
VALUES (466, N'Rudolph', N'Orvis', N'rorviscx@ogle.ru', N'Male', N'41-50', N'Pitcairn', N'Adamstown',
        N'207 West Parkway');

INSERT INTO players
VALUES (467, N'Shanta', N'Stanaway', N'sstanawaycy@techcrunch.com', N'Female', N'41-50', N'Uzbekistan', N'Koson',
        N'48119 Tony Park');

INSERT INTO players
VALUES (468, N'Roderick', N'Skoate', N'rskoatecz@gravatar.com', N'Male', N'10-21', N'China', N'Zhongzhai',
        N'91873 Waywood Court');

INSERT INTO players
VALUES (469, N'Kimberli', N'Bulward', N'kbulwardd0@arizona.edu', N'Female', N'10-21', N'Madagascar', N'Ambanja',
        N'76931 Loomis Road');

INSERT INTO players
VALUES (470, N'Micaela', N'Sweatland', N'msweatlandd1@sitemeter.com', N'Female', N'21-30', N'Indonesia', N'Kedungwungu',
        N'0 Hoard Parkway');

INSERT INTO players
VALUES (471, N'Sim', N'Steiner', N'ssteinerd2@com.com', N'Female', N'10-21', N'China', N'Zaoshi',
        N'45758 Vahlen Center');

INSERT INTO players
VALUES (472, N'Maren', N'Pleavin', N'mpleavind3@g.co', N'Male', N'21-30', N'Saudi Arabia', N'Al Mutayrifi',
        N'38750 Merchant Pass');

INSERT INTO players
VALUES (473, N'Shanon', N'Hatter', N'shatterd4@cornell.edu', N'Male', N'51-60', N'France', N'Pau',
        N'34 Lotheville Place');

INSERT INTO players
VALUES (474, N'Lettie', N'McGairl', N'lmcgairld5@yellowbook.com', N'Male', N'51-60', N'Brazil', N'Guaranésia',
        N'3 Debra Court');

INSERT INTO players
VALUES (475, N'Johnna', N'Softley', N'jsoftleyd6@hc360.com', N'Female', N'31-40', N'Philippines', N'Kayapa',
        N'73841 Namekan Court');

INSERT INTO players
VALUES (476, N'Charlean', N'Heaslip', N'cheaslipd7@dailymotion.com', N'Female', N'10-21', N'Portugal', N'Rana',
        N'699 Village Court');

INSERT INTO players
VALUES (477, N'Bunni', N'Gent', N'bgentd8@cyberchimps.com', N'Male', N'10-21', N'Indonesia', N'Pasirpanjang',
        N'9108 Sage Center');

INSERT INTO players
VALUES (478, N'Bartram', N'Vedyashkin', N'bvedyashkind9@house.v', N'Male', N'31-40', N'Indonesia', N'Cibunar',
        N'3 Jana Lane');

INSERT INTO players
VALUES (479, N'Faustine', N'Pinkney', N'fpinkneyda@bloglines.com', N'Male', N'41-50', N'Indonesia', N'Pasirlimus',
        N'3 Eastwood Way');

INSERT INTO players
VALUES (480, N'Stirling', N'Pittendreigh', N'spittendreighdb@nbcnews.com', N'Male', N'31-40', N'China', N'Dongguan',
        N'850 Fuller Terrace');

INSERT INTO players
VALUES (481, N'Prentiss', N'Trenna', N'ptrennadc@bbb.org', N'Female', N'21-30', N'Dominican Republic', N'Punta Cana',
        N'33533 Stephen Crossing');

INSERT INTO players
VALUES (482, N'Boris', N'Tomasi', N'btomasidd@thetimes.co.uk', N'Female', N'41-50', N'Russia', N'Kuzovatovo',
        N'49519 Center Pass');

INSERT INTO players
VALUES (483, N'Rube', N'Ismay', N'rismayde@ibm.com', N'Male', N'51-60', N'Denmark', N'København', N'5657 Hayes Drive');

INSERT INTO players
VALUES (484, N'Wilfred', N'Purselow', N'wpurselowdf@epa.v', N'Female', N'21-30', N'Gabon', N'Port-Gentil',
        N'4 Dixon Hill');

INSERT INTO players
VALUES (485, N'Jakob', N'Cowterd', N'jcowterddg@hao123.com', N'Male', N'51-60', N'Albania', N'Poroçan',
        N'3 Hazelcrest Circle');

INSERT INTO players
VALUES (486, N'Emelita', N'Todarini', N'etodarinidh@blogs.com', N'Male', N'10-21', N'Honduras', N'Camasca',
        N'8 Oneill Avenue');

INSERT INTO players
VALUES (487, N'Olivette', N'Ebi', N'oebidi@microsoft.com', N'Female', N'10-21', N'Norway', N'Oslo',
        N'5018 Blackbird Park');

INSERT INTO players
VALUES (488, N'Bard', N'Farquharson', N'bfarquharsondj@intel.com', N'Female', N'10-21', N'Belgium', N'Péruwelz',
        N'45 Upham Point');

INSERT INTO players
VALUES (489, N'Megan', N'Rosengren', N'mrosengrendk@moonfruit.com', N'Male', N'21-30', N'Philippines', N'Lemery',
        N'1 Nobel Circle');

INSERT INTO players
VALUES (490, N'Loren', N'Grere', N'lgreredl@skype.com', N'Male', N'41-50', N'Greece', N'Vlycháda',
        N'18 Annamark Street');

INSERT INTO players
VALUES (491, N'Mar', N'Nannoni', N'mnannonidm@latimes.com', N'Male', N'51-60', N'Japan', N'Ayabe', N'990 Elmside Road');

INSERT INTO players
VALUES (492, N'Gretchen', N'Scorthorne', N'gscorthornedn@slate.com', N'Male', N'10-21', N'Poland', N'Rokietnica',
        N'48 Lunder Street');

INSERT INTO players
VALUES (493, N'Annabella', N'Duffrie', N'aduffriedo@friendfeed.com', N'Female', N'41-50', N'Slovenia', N'rnji Grad',
        N'951 Mesta Center');

INSERT INTO players
VALUES (494, N'Nonah', N'Vasilenko', N'nvasilenkodp@ogle.com.br', N'Male', N'41-50', N'Japan', N'Abashiri',
        N'66167 Warbler Junction');

INSERT INTO players
VALUES (495, N'Gray', N'De La Hay', N'gdelahaydq@ucsd.edu', N'Female', N'31-40', N'China', N'Yongjiang',
        N'4831 Milwaukee Circle');

INSERT INTO players
VALUES (496, N'Ranee', N'Dalinder', N'rdalinderdr@reddit.com', N'Female', N'10-21', N'Vietnam', N'Ð?ng Ða',
        N'34008 Lillian Plaza');

INSERT INTO players
VALUES (497, N'Sumner', N'Holby', N'sholbyds@51.la', N'Male', N'31-40', N'Bolivia', N'Mojocoya',
        N'2974 Sunfield Center');

INSERT INTO players
VALUES (498, N'Elbertina', N'Twinbrow', N'etwinbrowdt@pbs.org', N'Male', N'21-30', N'Philippines', N'Mondran',
        N'70 Hayes Hill');

INSERT INTO players
VALUES (499, N'Orv', N'Forsdike', N'oforsdikedu@illinois.edu', N'Male', N'41-50', N'Indonesia', N'Glugur Krajan',
        N'0 Armistice Parkway');

INSERT INTO players
VALUES (500, N'Keri', N'Di Claudio', N'kdiclaudiodv@plala.or.jp', N'Male', N'41-50', N'Russia', N'Ust’-Ulagan',
        N'4928 Autumn Leaf Hill');

INSERT INTO players
VALUES (501, N'Iris', N'Brenard', N'ibrenarddw@hud.v', N'Female', N'21-30', N'China', N'Luoyang', N'15 Stang Circle');

INSERT INTO players
VALUES (502, N'Freeman', N'Mordan', N'fmordandx@cnn.com', N'Male', N'31-40', N'Poland', N'Karsin',
        N'86881 Mayer Circle');

INSERT INTO players
VALUES (503, N'Othella', N'Lambdean', N'olambdeandy@usda.v', N'Female', N'51-60', N'Burkina Faso', N'Garan',
        N'2 Dakota Park');

INSERT INTO players
VALUES (504, N'Gael', N'Strettle', N'gstrettledz@github.com', N'Female', N'31-40', N'Brazil', N'Almirante Tamandaré',
        N'9 Tony Court');

INSERT INTO players
VALUES (505, N'Cherianne', N'Recher', N'crechere0@unicef.org', N'Female', N'10-21', N'Nigeria', N'Sauri',
        N'10564 West Court');

INSERT INTO players
VALUES (506, N'Lizabeth', N'Kleanthous', N'lkleanthouse1@blogs.com', N'Female', N'41-50', N'Russia', N'Tayginka',
        N'5604 Nelson Park');

INSERT INTO players
VALUES (507, N'Jaimie', N'Penney', N'jpenneye2@ucla.edu', N'Male', N'21-30', N'Madagascar', N'Ambatolaona',
        N'29 Killdeer Street');

INSERT INTO players
VALUES (508, N'Ilaire', N'wthorpe', N'iwthorpee3@intel.com', N'Male', N'10-21', N'Brazil', N'Itapagé',
        N'3 Pleasure Place');

INSERT INTO players
VALUES (509, N'Gayla', N'Whapple', N'gwhapplee4@usatoday.com', N'Female', N'10-21', N'Denmark', N'København',
        N'3 Bultman Crossing');

INSERT INTO players
VALUES (510, N'Morgan', N'McDonough', N'mmcdonoughe5@typepad.com', N'Male', N'21-30', N'Indonesia', N'Waiklibang',
        N'0266 Walton Way');

INSERT INTO players
VALUES (511, N'Ferdinand', N'Edmonds', N'fedmondse6@cbsnews.com', N'Male', N'31-40', N'Greece', N'Ágios Andréas',
        N'3155 Oakridge Center');

INSERT INTO players
VALUES (512, N'Linn', N'Aickin', N'laickine7@nih.v', N'Female', N'31-40', N'China', N'Xinjie',
        N'69381 Schmedeman Drive');

INSERT INTO players
VALUES (513, N'Conney', N'Agglione', N'cagglionee8@elpais.com', N'Male', N'10-21', N'Brazil', N'Francisco Morato',
        N'12834 Briar Crest Terrace');

INSERT INTO players
VALUES (514, N'Ellerey', N'Haggerston', N'ehaggerstone9@photobucket.com', N'Female', N'41-50', N'Ukraine', N'Olyka',
        N'90517 Roth Avenue');

INSERT INTO players
VALUES (515, N'Conrade', N'Lambarth', N'clambarthea@tumblr.com', N'Male', N'51-60', N'Sweden', N'Hässleholm',
        N'137 8th Plaza');

INSERT INTO players
VALUES (516, N'Theresa', N'Hinkley', N'thinkleyeb@bloglines.com', N'Male', N'51-60', N'Ukraine', N'Reshetylivka',
        N'87 Park Meadow Road');

INSERT INTO players
VALUES (517, N'Iolanthe', N'Whatman', N'iwhatmanec@phoca.cz', N'Female', N'31-40', N'China', N'Xintang',
        N'25855 Carberry Street');

INSERT INTO players
VALUES (518, N'Berta', N'Carek', N'bcareked@ibm.com', N'Female', N'21-30', N'Philippines', N'Bacuyangan',
        N'8532 Vermont Court');

INSERT INTO players
VALUES (519, N'Anne-corinne', N'Lowin', N'alowinee@ft.com', N'Female', N'10-21', N'Canada', N'lden',
        N'2157 Glacier Hill Circle');

INSERT INTO players
VALUES (520, N'ober', N'Paulmann', N'gpaulmannef@wp.com', N'Female', N'51-60', N'Russia', N'Khokhryaki',
        N'7036 Melody Lane');

INSERT INTO players
VALUES (521, N'Sandy', N'Arman', N'sarmaneg@issuu.com', N'Female', N'21-30', N'Guatemala', N'San Pedro Jocopilas',
        N'59 Vera Hill');

INSERT INTO players
VALUES (522, N'Cherida', N'Navarro', N'cnavarroeh@v.uk', N'Female', N'41-50', N'Russia', N'Strel''na',
        N'4 Clemons Way');

INSERT INTO players
VALUES (523, N'Winn', N'Lyall', N'wlyallei@storify.com', N'Male', N'21-30', N'Philippines', N'Janagdong',
        N'188 Hazelcrest Plaza');

INSERT INTO players
VALUES (524, N'Violante', N'Hentze', N'vhentzeej@wikia.com', N'Female', N'31-40', N'Mozambique', N'Manjacaze',
        N'1 Towne Junction');

INSERT INTO players
VALUES (525, N'Aylmer', N'Heed', N'aheedek@disqus.com', N'Female', N'41-50', N'China', N'Shengmi',
        N'0772 Donald Circle');

INSERT INTO players
VALUES (526, N'Julienne', N'Rapson', N'jrapsonel@epa.v', N'Male', N'10-21', N'Poland', N'Skulsk', N'12 Warrior Circle');

INSERT INTO players
VALUES (527, N'Ira', N'MacLucais', N'imaclucaisem@blogs.com', N'Female', N'51-60', N'China', N'Lianghe',
        N'70 Chive Street');

INSERT INTO players
VALUES (528, N'Yoshiko', N'Jeannenet', N'yjeanneneten@loc.v', N'Male', N'10-21', N'China', N'Ercheng',
        N'12213 Schlimgen Terrace');

INSERT INTO players
VALUES (529, N'Collin', N'Mulleary', N'cmullearyeo@t.co', N'Male', N'41-50', N'China', N'Zhourui',
        N'30014 Mayer Center');

INSERT INTO players
VALUES (530, N'Thurstan', N'Bilam', N'tbilamep@blogspot.com', N'Male', N'41-50', N'Portugal', N'Portela',
        N'2 Merchant Street');

INSERT INTO players
VALUES (531, N'Kally', N'Widger', N'kwidgereq@nydailynews.com', N'Female', N'31-40', N'Indonesia', N'Banjar Ambengan',
        N'73 Anzinger Drive');

INSERT INTO players
VALUES (532, N'Nico', N'Wrankmore', N'nwrankmoreer@mediafire.com', N'Male', N'41-50', N'Sweden', N'Södertälje',
        N'0260 Old Shore Hill');

INSERT INTO players
VALUES (533, N'Sergent', N'McGreay', N'smcgreayes@yellowpages.com', N'Male', N'10-21', N'China', N'Wengyang',
        N'65 Waywood Center');

INSERT INTO players
VALUES (534, N'Normy', N'Varden', N'nvardenet@nps.v', N'Male', N'21-30', N'China', N'Quanyang', N'4078 Northport Road');

INSERT INTO players
VALUES (535, N'Alessandra', N'Cammack', N'acammackeu@ovh.net', N'Male', N'21-30', N'Russia', N'Ozerki',
        N'248 Ridgeway Hill');

INSERT INTO players
VALUES (536, N'Tarah', N'Barrett', N'tbarrettev@army.mil', N'Female', N'51-60', N'Mexico', N'Juan N Alvarez',
        N'65061 Wayridge Avenue');

INSERT INTO players
VALUES (537, N'Glenden', N'MacDaid', N'gmacdaidew@de.vu', N'Male', N'31-40', N'Morocco', N'Azilal',
        N'40 Ridgeview Hill');

INSERT INTO players
VALUES (538, N'Bearnard', N'Cawsby', N'bcawsbyex@pinterest.com', N'Female', N'10-21', N'Albania', N'Lushnjë',
        N'3018 Eagan Lane');

INSERT INTO players
VALUES (539, N'Lauri', N'Jollands', N'ljollandsey@webs.com', N'Male', N'10-21', N'Malaysia', N'Kuala Lumpur',
        N'98798 Dakota Plaza');

INSERT INTO players
VALUES (540, N'Wiley', N'Birkenhead', N'wbirkenheadez@gnu.org', N'Female', N'31-40', N'China', N'Qiaodong',
        N'155 Prairieview Crossing');

INSERT INTO players
VALUES (541, N'Gerianne', N'Bearcroft', N'gbearcroftf0@netscape.com', N'Female', N'41-50', N'Albania', N'Novoselë',
        N'4 Nevada Road');

INSERT INTO players
VALUES (542, N'Davita', N'Tickel', N'dtickelf1@lycos.com', N'Male', N'31-40', N'Kyrgyzstan', N'Lebedinovka',
        N'0 Kenwood Park');

INSERT INTO players
VALUES (543, N'Audra', N'Toghill', N'atoghillf2@sourceforge.net', N'Male', N'51-60', N'Poland', N'Brodnica',
        N'29 Cody Parkway');

INSERT INTO players
VALUES (544, N'Marjy', N'Santhouse', N'msanthousef3@imdb.com', N'Male', N'21-30', N'China', N'Yuchi', N'74 Dapin Road');

INSERT INTO players
VALUES (545, N'Alli', N'Mustoo', N'amustoof4@apache.org', N'Female', N'41-50', N'China', N'Yangyong',
        N'871 East Circle');

INSERT INTO players
VALUES (546, N'Berenice', N'Le land', N'blelandf5@tmall.com', N'Female', N'31-40', N'Indonesia', N'Sindang',
        N'943 Alpine Junction');

INSERT INTO players
VALUES (547, N'Brit', N'Aps', N'bapsf6@buzzfeed.com', N'Male', N'31-40', N'Indonesia', N'Tegarenkrajan',
        N'2 Arapahoe Park');

INSERT INTO players
VALUES (548, N'Dyane', N'Featonby', N'dfeatonbyf7@yandex.ru', N'Male', N'31-40', N'Portugal', N'Carvalhais',
        N'52 Jay Lane');

INSERT INTO players
VALUES (549, N'Wilt', N'Handmore', N'whandmoref8@slate.com', N'Female', N'51-60', N'Cuba', N'Camajuaní',
        N'693 Harbort Avenue');

INSERT INTO players
VALUES (550, N'Micky', N'Hellmer', N'mhellmerf9@foxnews.com', N'Female', N'10-21', N'Argentina', N'Río Galles',
        N'520 Forest Run Pass');

INSERT INTO players
VALUES (551, N'Mavis', N'Blankau', N'mblankaufa@pen.io', N'Female', N'10-21', N'Brazil', N'Matozinhos',
        N'87 Bayside Hill');

INSERT INTO players
VALUES (552, N'Scotti', N'Sawford', N'ssawfordfb@statcounter.com', N'Female', N'51-60', N'Brazil', N'Sorocaba',
        N'0 Moland Avenue');

INSERT INTO players
VALUES (553, N'Collin', N'Rosewarne', N'crosewarnefc@macromedia.com', N'Male', N'21-30', N'Botswana', N'Manyana',
        N'584 Arizona Road');

INSERT INTO players
VALUES (554, N'Mathilde', N'Jess', N'mjessfd@infoseek.co.jp', N'Male', N'10-21', N'Syria', N'Ma‘dan',
        N'49935 Summer Ridge Circle');

INSERT INTO players
VALUES (555, N'Mandy', N'Lampkin', N'mlampkinfe@stumbleupon.com', N'Male', N'51-60', N'Uganda', N'Kiryandon',
        N'7 Coolidge Point');

INSERT INTO players
VALUES (556, N'Ronny', N'Paulton', N'rpaultonff@sphinn.com', N'Female', N'41-50', N'Iran', N'Namin',
        N'5794 Straubel Place');

INSERT INTO players
VALUES (557, N'Thaine', N'Chardin', N'tchardinfg@mapquest.com', N'Female', N'10-21', N'Russia', N'Katyr-Yurt',
        N'92339 Fuller Lane');

INSERT INTO players
VALUES (558, N'Ally', N'Cato', N'acatofh@hatena.ne.jp', N'Male', N'21-30', N'Greece', N'Palaífyto',
        N'664 Village Street');

INSERT INTO players
VALUES (559, N'Anna-diana', N'Landsman', N'alandsmanfi@berkeley.edu', N'Male', N'41-50', N'China', N'Lirang',
        N'18 1st Junction');

INSERT INTO players
VALUES (560, N'Chen', N'Sneller', N'csnellerfj@freewebs.com', N'Female', N'31-40', N'China', N'Yunfu',
        N'882 Mayer Terrace');

INSERT INTO players
VALUES (561, N'Juline', N'Salasar', N'jsalasarfk@vk.com', N'Male', N'41-50', N'Indonesia', N'Bendo',
        N'055 Colorado Plaza');

INSERT INTO players
VALUES (562, N'Hanan', N'Pheasey', N'hpheaseyfl@intel.com', N'Female', N'31-40', N'South Africa', N'Pretoria',
        N'91429 Sunfield Drive');

INSERT INTO players
VALUES (563, N'Ernestus', N'Mc Gaughey', N'emcgaugheyfm@nasa.v', N'Female', N'10-21', N'United States', N'Wichita',
        N'939 Sloan Plaza');

INSERT INTO players
VALUES (564, N'Andra', N'Mastrantone', N'amastrantonefn@time.com', N'Male', N'51-60', N'Bosnia and Herzevina',
        N'Gnojnica', N'7 Victoria Court');

INSERT INTO players
VALUES (565, N'Lethia', N'Keenan', N'lkeenanfo@php.net', N'Female', N'10-21', N'Portugal', N'Cova da Iria',
        N'427 Oneill Center');

INSERT INTO players
VALUES (566, N'Graehme', N'Hub', N'ghubfp@examiner.com', N'Male', N'31-40', N'Portugal', N'Granja', N'2 Helena Way');

INSERT INTO players
VALUES (567, N'Keane', N'Bendix', N'kbendixfq@ft.com', N'Female', N'41-50', N'Indonesia', N'Nagrog',
        N'264 Dennis Road');

INSERT INTO players
VALUES (568, N'Rodi', N'Pigne', N'rpignefr@theguardian.com', N'Female', N'21-30', N'China', N'Liulimiao',
        N'8 Rowland Lane');

INSERT INTO players
VALUES (569, N'Oralia', N'Bangley', N'obangleyfs@globo.com', N'Female', N'41-50', N'China', N'Sanzhang',
        N'2 Bonner Hill');

INSERT INTO players
VALUES (570, N'Blake', N'Francillo', N'bfrancilloft@ning.com', N'Female', N'51-60', N'China', N'Hanjianglu',
        N'5 Milwaukee Plaza');

INSERT INTO players
VALUES (571, N'Cherin', N'Kayser', N'ckayserfu@yahoo.com', N'Male', N'31-40', N'Poland', N'Chodziez',
        N'69480 Basil Street');

INSERT INTO players
VALUES (572, N'Nicoline', N'Petrusch', N'npetruschfv@berkeley.edu', N'Male', N'41-50', N'Philippines', N'Salinas',
        N'7793 Anniversary Alley');

INSERT INTO players
VALUES (573, N'Stephanie', N'Giacomasso', N'sgiacomassofw@cnbc.com', N'Female', N'21-30', N'South Africa',
        N'Heidelberg', N'93625 Muir Circle');

INSERT INTO players
VALUES (574, N'Thorin', N'Ghidetti', N'tghidettifx@arizona.edu', N'Male', N'41-50', N'China', N'Leping',
        N'5 Bowman Avenue');

INSERT INTO players
VALUES (575, N'Pen', N'Dewitt', N'pdewittfy@ning.com', N'Male', N'41-50', N'Poland', N'Pila', N'517 Mayfield Hill');

INSERT INTO players
VALUES (576, N'Othella', N'Cornewall', N'ocornewallfz@bbc.co.uk', N'Female', N'51-60', N'China', N'Qabqir',
        N'666 Briar Crest Hill');

INSERT INTO players
VALUES (577, N'Stacey', N'Romi', N'sromig0@jugem.jp', N'Male', N'21-30', N'Russia', N'Saint Petersburg',
        N'139 Forest Run Hill');

INSERT INTO players
VALUES (578, N'Jone', N'Bretelle', N'jbretelleg1@a8.net', N'Male', N'21-30', N'Tanzania', N'Bukonyo',
        N'27949 Texas Crossing');

INSERT INTO players
VALUES (579, N'Vyky', N'Reucastle', N'vreucastleg2@hubpages.com', N'Male', N'21-30', N'Comoros', N'Ziroudani',
        N'4 Larry Park');

INSERT INTO players
VALUES (580, N'Carter', N'Gillard', N'cgillardg3@cornell.edu', N'Male', N'21-30', N'Morocco', N'Martil',
        N'47 Charing Cross Road');

INSERT INTO players
VALUES (581, N'Coreen', N'Jacmar', N'cjacmarg4@ning.com', N'Male', N'10-21', N'Uganda', N'Fort Portal',
        N'3 Nova Court');

INSERT INTO players
VALUES (582, N'Fancy', N'Mockford', N'fmockfordg5@altervista.org', N'Male', N'41-50', N'Philippines', N'Kanlagay',
        N'63 Tennyson Center');

INSERT INTO players
VALUES (583, N'Rahel', N'Greatrex', N'rgreatrexg6@quantcast.com', N'Female', N'21-30', N'Indonesia', N'Mataraben',
        N'09889 Anhalt Hill');

INSERT INTO players
VALUES (584, N'Mair', N'Couttes', N'mcouttesg7@geocities.jp', N'Female', N'51-60', N'Russia', N'Perm',
        N'8591 Kensington Place');

INSERT INTO players
VALUES (585, N'Zachariah', N'Kuna', N'zkunag8@unblog.fr', N'Female', N'21-30', N'Peru', N'Pacaycasa',
        N'99952 Clemons Drive');

INSERT INTO players
VALUES (586, N'Rebekkah', N'Wignall', N'rwignallg9@icq.com', N'Female', N'51-60', N'Peru', N'Quiñota',
        N'3 Grayhawk Road');

INSERT INTO players
VALUES (587, N'Elene', N'Alleway', N'eallewayga@patch.com', N'Male', N'31-40', N'China', N'Taosha',
        N'69147 Old Shore Alley');

INSERT INTO players
VALUES (588, N'Tatum', N'Lanchester', N'tlanchestergb@parallels.com', N'Female', N'41-50', N'Vietnam', N'Tây H?',
        N'61169 Anzinger Way');

INSERT INTO players
VALUES (589, N'Stillmann', N'Cuncarr', N'scuncarrgc@slashdot.org', N'Male', N'31-40', N'China', N'Lushan',
        N'380 Memorial Hill');

INSERT INTO players
VALUES (590, N'Dwight', N'Vye', N'dvyegd@people.com.cn', N'Male', N'51-60', N'Indonesia', N'Oetua',
        N'1508 Di Loreto Court');

INSERT INTO players
VALUES (591, N'Rodolph', N'Hacard', N'rhacardge@cdbaby.com', N'Male', N'31-40', N'Brazil', N'Buriti Bravo',
        N'10 Red Cloud Drive');

INSERT INTO players
VALUES (592, N'Timmie', N'Shackel', N'tshackelgf@wordpress.com', N'Female', N'31-40', N'China', N'Xiuying',
        N'24 Morrow Center');

INSERT INTO players
VALUES (593, N'Glenine', N'Dickens', N'gdickensgg@discuz.net', N'Male', N'41-50', N'Peru', N'Samanco',
        N'31396 Derek Place');

INSERT INTO players
VALUES (594, N'Charline', N'Arrowsmith', N'carrowsmithgh@feedburner.com', N'Male', N'31-40', N'France', N'Vernon',
        N'45844 Corscot Road');

INSERT INTO players
VALUES (595, N'Richart', N'Weekley', N'rweekleygi@hao123.com', N'Female', N'51-60', N'Czech Republic', N'Kozmice',
        N'0448 Thompson Point');

INSERT INTO players
VALUES (596, N'Daryle', N'Sumpton', N'dsumptongj@house.v', N'Male', N'51-60', N'China', N'Xinyi', N'52 Armistice Way');

INSERT INTO players
VALUES (597, N'Lora', N'Tregidga', N'ltregidgagk@bluehost.com', N'Female', N'10-21', N'Indonesia', N'Jalasenga',
        N'2 Victoria Road');

INSERT INTO players
VALUES (598, N'Wash', N'Gregan', N'wgregangl@prlog.org', N'Female', N'51-60', N'Poland', N'Oborniki Slaskie',
        N'09025 Harper Hill');

INSERT INTO players
VALUES (599, N'Olwen', N'Rannells', N'orannellsgm@sphinn.com', N'Male', N'31-40', N'Russia', N'Baryshevo',
        N'078 Glendale Crossing');

INSERT INTO players
VALUES (600, N'Dannel', N'Littlejohn', N'dlittlejohngn@naver.com', N'Female', N'21-30', N'Indonesia', N'Cikiray',
        N'42 Fisk Street');

INSERT INTO players
VALUES (601, N'Sheila', N'Toupe', N'stoupe@amazon.com', N'Female', N'21-30', N'Russia', N'Novaya Chigla',
        N'6 Little Fleur Plaza');

INSERT INTO players
VALUES (602, N'Sabrina', N'Amori', N'samorigp@baidu.com', N'Male', N'51-60', N'Russia', N'Nyrob', N'8 6th Trail');

INSERT INTO players
VALUES (603, N'Clementine', N'Tradewell', N'ctradewellgq@marketwatch.com', N'Female', N'21-30', N'China', N'Anlu',
        N'20443 Anderson Place');

INSERT INTO players
VALUES (604, N'Timothea', N'Birdwhistell', N'tbirdwhistellgr@free.fr', N'Female', N'31-40', N'Indonesia', N'Natarleba',
        N'19 Rowland Hill');

INSERT INTO players
VALUES (605, N'Fleming', N'Guilloud', N'fguilloudgs@bbb.org', N'Female', N'31-40', N'Colombia', N'Rivera',
        N'4358 Lukken Plaza');

INSERT INTO players
VALUES (606, N'Maureen', N'Jelly', N'mjellygt@gravatar.com', N'Male', N'51-60', N'China', N'Changsheng',
        N'283 Crescent Oaks Way');

INSERT INTO players
VALUES (607, N'Aryn', N'Perell', N'aperellgu@paypal.com', N'Female', N'31-40', N'Palestinian Territory', N'Rantis',
        N'690 Donald Court');

INSERT INTO players
VALUES (608, N'Dag', N'Beddie', N'dbeddiegv@paginegialle.it', N'Female', N'21-30', N'Peru', N'Lacabamba',
        N'9039 Arizona Parkway');

INSERT INTO players
VALUES (609, N'Alvera', N'Sone', N'asonegw@discovery.com', N'Female', N'51-60', N'China', N'Beitan',
        N'634 Mallory Road');

INSERT INTO players
VALUES (610, N'Carly', N'Stocken', N'cstockengx@mapy.cz', N'Male', N'41-50', N'Indonesia', N'Menanga',
        N'03947 Mccormick Drive');

INSERT INTO players
VALUES (611, N'Daffi', N'Stanyforth', N'dstanyforthgy@businessweek.com', N'Male', N'10-21', N'China', N'Xushangqiao',
        N'316 Ludington Road');

INSERT INTO players
VALUES (612, N'Amelie', N'sforth', N'asforthgz@spiegel.de', N'Male', N'21-30', N'Ukraine', N'Enerdar',
        N'8 Riverside Terrace');

INSERT INTO players
VALUES (613, N'Ev', N'Mollin', N'emollinh0@ezinearticles.com', N'Male', N'21-30', N'Finland', N'Honkajoki',
        N'17 Longview Drive');

INSERT INTO players
VALUES (614, N'Lara', N'Pargeter', N'lpargeterh1@instagram.com', N'Female', N'41-50', N'Indonesia', N'Karanganyar',
        N'30909 Glendale Road');

INSERT INTO players
VALUES (615, N'Mikol', N'Regan', N'mreganh2@usa.v', N'Female', N'41-50', N'Philippines', N'Dangcalan',
        N'257 Evergreen Pass');

INSERT INTO players
VALUES (616, N'Coreen', N'Shay', N'cshayh3@virginia.edu', N'Female', N'41-50', N'Poland', N'Jablon',
        N'51 Randy Junction');

INSERT INTO players
VALUES (617, N'Standford', N'Janicek', N'sjanicekh4@forbes.com', N'Male', N'10-21', N'France', N'Redon',
        N'3231 Prentice Hill');

INSERT INTO players
VALUES (618, N'Zach', N'Hudghton', N'zhudghtonh5@ox.ac.uk', N'Male', N'41-50', N'Indonesia', N'Kertosari',
        N'3 Cardinal Trail');

INSERT INTO players
VALUES (619, N'Natalya', N'Dimnage', N'ndimnageh6@blogtalkradio.com', N'Female', N'41-50', N'Philippines',
        N'San Vicente', N'7617 Bowman Lane');

INSERT INTO players
VALUES (620, N'Miguela', N'Antonov', N'mantonovh7@booking.com', N'Male', N'41-50', N'Serbia', N'Nikinci',
        N'70 Ryan Point');

INSERT INTO players
VALUES (621, N'Booth', N'Andrieu', N'bandrieuh8@newsvine.com', N'Male', N'41-50', N'Nigeria', N'Kende',
        N'30 Harper Avenue');

INSERT INTO players
VALUES (622, N'Myrna', N'McCotter', N'mmccotterh9@geocities.jp', N'Female', N'10-21', N'Serbia', N'Idvor',
        N'9 1st Place');

INSERT INTO players
VALUES (623, N'Irvin', N'Ralestone', N'iralestoneha@indie.com', N'Female', N'10-21', N'Honduras', N'Camalote',
        N'20 Anderson Place');

INSERT INTO players
VALUES (624, N'Kath', N'Ciotti', N'kciottihb@springer.com', N'Female', N'41-50', N'China', N'Huangshi',
        N'42 Autumn Leaf Court');

INSERT INTO players
VALUES (625, N'Clim', N'Bonavia', N'cbonaviahc@cdc.v', N'Male', N'41-50', N'Philippines', N'Anno',
        N'425 Maple Crossing');

INSERT INTO players
VALUES (626, N'Tierney', N'Fehners', N'tfehnershd@cnn.com', N'Male', N'41-50', N'Indonesia', N'Kudang',
        N'482 Manufacturers Parkway');

INSERT INTO players
VALUES (627, N'Rustin', N'Normanvell', N'rnormanvellhe@w3.org', N'Male', N'31-40', N'Chile', N'Buin',
        N'5 Mandrake Road');

INSERT INTO players
VALUES (628, N'Ermengarde', N'McCaster', N'emccasterhf@nasa.v', N'Male', N'21-30', N'Russia', N'Divnoye',
        N'3289 Acker Place');

INSERT INTO players
VALUES (629, N'Drake', N'Meyer', N'dmeyerhg@cisco.com', N'Male', N'41-50', N'Sweden', N'Hässelby', N'6 Express Hill');

INSERT INTO players
VALUES (630, N'Jacky', N'Tregensoe', N'jtregensoehh@deviantart.com', N'Male', N'31-40', N'Portugal', N'Várzea',
        N'593 Macpherson Circle');

INSERT INTO players
VALUES (631, N'Katy', N'Lawtie', N'klawtiehi@elegantthemes.com', N'Male', N'31-40', N'Brazil', N'Paracambi',
        N'03 Hauk Place');

INSERT INTO players
VALUES (632, N'Jennica', N'Stuckey', N'jstuckeyhj@globo.com', N'Male', N'41-50', N'Ukraine', N'Apostolove',
        N'541 Schlimgen Junction');

INSERT INTO players
VALUES (633, N'Theodora', N'Caroline', N'tcarolinehk@instagram.com', N'Female', N'10-21', N'France', N'Nanterre',
        N'8 Mesta Court');

INSERT INTO players
VALUES (634, N'Obie', N'Derks', N'oderkshl@studiopress.com', N'Male', N'10-21', N'Ecuador', N'Nueva Loja',
        N'07457 Everett Plaza');

INSERT INTO players
VALUES (635, N'Minnaminnie', N'Nezey', N'mnezeyhm@eepurl.com', N'Female', N'31-40', N'China', N'Rongmei',
        N'600 Buhler Place');

INSERT INTO players
VALUES (636, N'Nola', N'Tapscott', N'ntapscotthn@sphinn.com', N'Female', N'31-40', N'Poland', N'Brzeszcze',
        N'57842 Mcbride Junction');

INSERT INTO players
VALUES (637, N'Edith', N'Glencrosche', N'eglencroscheho@npr.org', N'Male', N'41-50', N'Sweden', N'Motala',
        N'3 Fulton Place');

INSERT INTO players
VALUES (638, N'Isador', N'Henkmann', N'ihenkmannhp@dyndns.org', N'Female', N'51-60', N'Russia', N'Nikol’skoye',
        N'38 Shoshone Alley');

INSERT INTO players
VALUES (639, N'Karyl', N'Deaves', N'kdeaveshq@archive.org', N'Female', N'41-50', N'Mali', N'Bafoulabé',
        N'62 Mesta Place');

INSERT INTO players
VALUES (640, N'Carlyn', N'Libermore', N'clibermorehr@nsw.v.au', N'Male', N'31-40', N'Indonesia', N'Baran',
        N'71 Warbler Pass');

INSERT INTO players
VALUES (641, N'Tamma', N'Lipman', N'tlipmanhs@nifty.com', N'Female', N'31-40', N'United States', N'Newark',
        N'171 Glendale Avenue');

INSERT INTO players
VALUES (642, N'Robers', N'Davydkov', N'rdavydkovht@nationalgeographic.com', N'Female', N'51-60', N'Brazil',
        N'Belo Oriente', N'73 lf Road');

INSERT INTO players
VALUES (643, N'Jane', N'Jindracek', N'jjindracekhu@freewebs.com', N'Female', N'31-40', N'Albania', N'Novoselë',
        N'82717 Sutherland Hill');

INSERT INTO players
VALUES (644, N'Danit', N'Jaime', N'djaimehv@phpbb.com', N'Female', N'51-60', N'China', N'Xiashihao', N'9 Texas Circle');

INSERT INTO players
VALUES (645, N'Carrol', N'Whitlaw', N'cwhitlawhw@ogle.cn', N'Male', N'31-40', N'Thailand', N'Kanchanaburi',
        N'543 Canary Park');

INSERT INTO players
VALUES (646, N'Dominica', N'Swyne', N'dswynehx@deliciousdays.com', N'Female', N'31-40', N'Sudan', N'Al Lawa',
        N'880 Blaine Court');

INSERT INTO players
VALUES (647, N'Ivette', N'Jonk', N'ijonkhy@jigsy.com', N'Female', N'21-30', N'Russia', N'Peterhof',
        N'23 La Follette Park');

INSERT INTO players
VALUES (648, N'Cirilo', N'Witherup', N'cwitheruphz@miitbeian.v.cn', N'Male', N'51-60', N'Indonesia', N'Sembalunbumbung',
        N'25136 Fairview Lane');

INSERT INTO players
VALUES (649, N'Zed', N'Stonhewer', N'zstonheweri0@meetup.com', N'Male', N'21-30', N'Indonesia', N'Ngedhusuba',
        N'780 Scoville Road');

INSERT INTO players
VALUES (650, N'Betteann', N'Trott', N'btrotti1@.com', N'Female', N'10-21', N'Greece', N'Vlycháda', N'74 Bayside Drive');

INSERT INTO players
VALUES (651, N'Milt', N'Kuhnt', N'mkuhnti2@fastcompany.com', N'Female', N'41-50', N'Canada', N'Orangeville',
        N'11 Becker Hill');

INSERT INTO players
VALUES (652, N'Audi', N'Kynton', N'akyntoni3@furl.net', N'Male', N'21-30', N'Portugal', N'Gramaços',
        N'5 Bartelt Trail');

INSERT INTO players
VALUES (653, N'Ellsworth', N'Wormleighton', N'ewormleightoni4@networkadvertising.org', N'Female', N'41-50',
        N'Indonesia', N'Birsa', N'9 Marcy Park');

INSERT INTO players
VALUES (654, N'Damien', N'Jankiewicz', N'djankiewiczi5@dii.com', N'Female', N'21-30', N'Colombia', N'Cácota',
        N'9 Duke Place');

INSERT INTO players
VALUES (655, N'Kristopher', N'Surplice', N'ksurplicei6@taobao.com', N'Male', N'10-21', N'Indonesia', N'Melikkrajan',
        N'539 Independence Park');

INSERT INTO players
VALUES (656, N'Meryl', N'Gawthorp', N'mgawthorpi7@unblog.fr', N'Female', N'31-40', N'Poland', N'Laziska Górne',
        N'88 Delaware Place');

INSERT INTO players
VALUES (657, N'Bordie', N'Woolis', N'bwoolisi8@unblog.fr', N'Female', N'31-40', N'China', N'Liuzhi',
        N'638 Fair Oaks Alley');

INSERT INTO players
VALUES (658, N'Herculie', N'Gaynsford', N'hgaynsfordi9@uiuc.edu', N'Female', N'41-50', N'China', N'Wukeshu',
        N'1382 Sauthoff Street');

INSERT INTO players
VALUES (659, N'Brannon', N'MacLleese', N'bmaclleeseia@list-manage.com', N'Female', N'21-30', N'Brazil', N'Guaçuí',
        N'9 Canary Court');

INSERT INTO players
VALUES (660, N'Petunia', N'Redmire', N'predmireib@odreads.com', N'Female', N'21-30', N'China', N'Guancangping',
        N'559 Helena Plaza');

INSERT INTO players
VALUES (661, N'Carmita', N'Jakubczyk', N'cjakubczykic@thetimes.co.uk', N'Male', N'51-60', N'France', N'Blois',
        N'585 Chinook Circle');

INSERT INTO players
VALUES (662, N'Elianora', N'Posen', N'eposenid@dyndns.org', N'Female', N'41-50', N'China', N'Wudian',
        N'8547 Lotheville Drive');

INSERT INTO players
VALUES (663, N'Nina', N'Kynston', N'nkynstonie@twitter.com', N'Male', N'41-50', N'Anla', N'N’dalatando',
        N'0 Blaine Avenue');

INSERT INTO players
VALUES (664, N'Fleur', N'Rockcliffe', N'frockcliffeif@blogger.com', N'Male', N'41-50', N'China', N'Dubu',
        N'5 Main Trail');

INSERT INTO players
VALUES (665, N'Caterina', N'Glede', N'cgledeig@tiny.cc', N'Male', N'41-50', N'Brazil', N'Três de Maio',
        N'4031 Crownhardt Circle');

INSERT INTO players
VALUES (666, N'Flo', N'Witherden', N'fwitherdenih@hao123.com', N'Female', N'21-30', N'Russia', N'Oyskhara',
        N'5788 Service Drive');

INSERT INTO players
VALUES (667, N'Verne', N'Elvy', N'velvyii@weebly.com', N'Female', N'10-21', N'China', N'Zhuji', N'4218 Dwight Point');

INSERT INTO players
VALUES (668, N'Hyacinth', N'O''Flaverty', N'hoflavertyij@slideshare.net', N'Male', N'31-40', N'Brazil', N'Jucás',
        N'53169 Main Road');

INSERT INTO players
VALUES (669, N'Eva', N'Rallin', N'erallinik@cloudflare.com', N'Female', N'31-40', N'Philippines', N'Luna',
        N'98292 East Court');

INSERT INTO players
VALUES (670, N'Sandye', N'McKinty', N'smckintyil@t.co', N'Female', N'41-50', N'United States', N'Winter Haven',
        N'2 Jackson Road');

INSERT INTO players
VALUES (671, N'Tremayne', N'Billett', N'tbillettim@freewebs.com', N'Female', N'31-40', N'Japan', N'Matsushima',
        N'60 Tomscot Street');

INSERT INTO players
VALUES (672, N'Trista', N'Gask', N'tgaskin@arstechnica.com', N'Male', N'10-21', N'Georgia', N'Tsaghveri',
        N'094 Northridge Pass');

INSERT INTO players
VALUES (673, N'Ahmed', N'Fautley', N'afautleyio@woothemes.com', N'Male', N'51-60', N'Indonesia', N'Batujaran',
        N'7 Sachs Crossing');

INSERT INTO players
VALUES (674, N'Carrol', N'Vidler', N'cvidlerip@jalbum.net', N'Male', N'21-30', N'Sweden', N'Kristinehamn',
        N'76027 Pankratz Avenue');

INSERT INTO players
VALUES (675, N'Portie', N'Bryers', N'pbryersiq@list-manage.com', N'Male', N'41-50', N'Vietnam', N'Si Ma Cai',
        N'1 Veith Pass');

INSERT INTO players
VALUES (676, N'Merilee', N'Donne', N'mdonneir@businesswire.com', N'Female', N'51-60', N'Monlia', N'Ulaandel',
        N'849 Fairfield Court');

INSERT INTO players
VALUES (677, N'Frankie', N'MacCauley', N'fmaccauleyis@yelp.com', N'Male', N'31-40', N'Indonesia', N'Tanjung Palas',
        N'2548 Brentwood Avenue');

INSERT INTO players
VALUES (678, N'Edik', N'Ocklin', N'eocklinit@ogle.de', N'Female', N'41-50', N'Indonesia', N'Karangbungur',
        N'23 Redwing Park');

INSERT INTO players
VALUES (679, N'Alane', N'Bonnell', N'abonnelliu@amazon.de', N'Male', N'41-50', N'China', N'Huayuanli',
        N'282 Wayridge Point');

INSERT INTO players
VALUES (680, N'Dorena', N'Booton', N'dbootoniv@prweb.com', N'Female', N'41-50', N'United States', N'Tempe',
        N'41 Cordelia Parkway');

INSERT INTO players
VALUES (681, N'dwin', N'Mapledorum', N'gmapledorumiw@zdnet.com', N'Male', N'21-30', N'Argentina', N'San Justo',
        N'48023 Sycamore Road');

INSERT INTO players
VALUES (682, N'Nan', N'Murgatroyd', N'nmurgatroydix@example.com', N'Male', N'51-60', N'Bangladesh', N'Cox’s Bazar',
        N'879 Onsgard Circle');

INSERT INTO players
VALUES (683, N'Sawyer', N'Klimochkin', N'sklimochkiniy@fc2.com', N'Female', N'41-50', N'Sweden', N'Borlänge',
        N'41 Packers Circle');

INSERT INTO players
VALUES (684, N'Laurens', N'Fairlam', N'lfairlamiz@sina.com.cn', N'Male', N'51-60', N'Russia', N'Kama',
        N'7734 Mccormick Center');

INSERT INTO players
VALUES (685, N'Emmett', N'Alyokhin', N'ealyokhinj0@psu.edu', N'Male', N'31-40', N'Indonesia', N'Kasingan',
        N'0091 Rutledge Alley');

INSERT INTO players
VALUES (686, N'Rice', N'Frodsham', N'rfrodshamj1@networksolutions.com', N'Male', N'10-21', N'Indonesia', N'Fatuhilik',
        N'182 Eastwood Place');

INSERT INTO players
VALUES (687, N'Sutherland', N'Barnish', N'sbarnishj2@flickr.com', N'Male', N'41-50', N'Brazil', N'Massaranduba',
        N'21 Blaine Hill');

INSERT INTO players
VALUES (688, N'Whitby', N'Barbisch', N'wbarbischj3@gravatar.com', N'Male', N'51-60', N'China', N'Hengshui',
        N'5 Burning Wood Street');

INSERT INTO players
VALUES (689, N'Zacharias', N'Armatys', N'zarmatysj4@seattletimes.com', N'Female', N'10-21', N'Kenya', N'Makueni',
        N'463 Forster Center');

INSERT INTO players
VALUES (690, N'Cathie', N'Blint', N'cblintj5@businessweek.com', N'Female', N'51-60', N'Bosnia and Herzevina', N'Hiseti',
        N'64903 Messerschmidt Alley');

INSERT INTO players
VALUES (691, N'Veronika', N'Common', N'vcommonj6@nationalgeographic.com', N'Male', N'10-21', N'Vietnam',
        N'Th? Tr?n Quán Lào', N'65 Talmadge Road');

INSERT INTO players
VALUES (692, N'Hilario', N'Vido', N'hvidoj7@usa.v', N'Female', N'41-50', N'China', N'Longtang', N'978 Sullivan Street');

INSERT INTO players
VALUES (693, N'Gale', N'Cristofvao', N'gcristofvaoj8@bluehost.com', N'Male', N'41-50', N'Japan', N'Tomigusuku',
        N'55 Dottie Center');

INSERT INTO players
VALUES (694, N'Toby', N'Garratty', N'tgarrattyj9@foxnews.com', N'Male', N'21-30', N'Portugal', N'Além do Rio',
        N'04 Marcy Parkway');

INSERT INTO players
VALUES (695, N'Fernande', N'Burkhill', N'fburkhillja@parallels.com', N'Female', N'51-60', N'China', N'Yongxing',
        N'2735 John Wall Junction');

INSERT INTO players
VALUES (696, N'Chevy', N'Livezey', N'clivezeyjb@php.net', N'Female', N'10-21', N'Indonesia', N'Cigembor',
        N'924 Pennsylvania Junction');

INSERT INTO players
VALUES (697, N'Kelsy', N'Sainteau', N'ksainteaujc@dion.ne.jp', N'Female', N'51-60', N'Kenya', N'Siaya',
        N'07 Carpenter Hill');

INSERT INTO players
VALUES (698, N'Traver', N'Stokell', N'tstokelljd@comcast.net', N'Male', N'41-50', N'South Africa', N'Mtubatuba',
        N'93196 Larry Point');

INSERT INTO players
VALUES (699, N'Easter', N'Tuite', N'etuiteje@multiply.com', N'Female', N'51-60', N'Bahamas', N'Masons Bay',
        N'30028 Browning Parkway');

INSERT INTO players
VALUES (700, N'Lotti', N'Mager', N'lmagerjf@dell.com', N'Female', N'21-30', N'Indonesia', N'Lahar', N'6 Hayes Place');

INSERT INTO players
VALUES (701, N'Tansy', N'Sidery', N'tsideryjg@sou.com', N'Female', N'10-21', N'Portugal', N'Ourentã',
        N'3295 Messerschmidt Way');

INSERT INTO players
VALUES (702, N'Salvidor', N'Bates', N'sbatesjh@tiny.cc', N'Female', N'21-30', N'Israel', N'Yehud',
        N'01 Arrowood Point');

INSERT INTO players
VALUES (703, N'Whitney', N'Ogilvie', N'wogilvieji@slideshare.net', N'Male', N'21-30', N'China', N'Langzhong',
        N'16518 Londonderry Street');

INSERT INTO players
VALUES (704, N'Samaria', N'Mabee', N'smabeejj@tinypic.com', N'Female', N'51-60', N'United States', N'Whittier',
        N'558 North Hill');

INSERT INTO players
VALUES (705, N'Roderich', N'Lukash', N'rlukashjk@imageshack.us', N'Male', N'31-40', N'Colombia', N'Mompós',
        N'55252 Summer Ridge Parkway');

INSERT INTO players
VALUES (706, N'Margy', N'Dosedale', N'mdosedalejl@earthlink.net', N'Male', N'21-30', N'Malaysia', N'Kuala Lumpur',
        N'98 Ridgeway Crossing');

INSERT INTO players
VALUES (707, N'Ferguson', N'Bromell', N'fbromelljm@networksolutions.com', N'Female', N'31-40', N'France', N'Saintes',
        N'7 Briar Crest Court');

INSERT INTO players
VALUES (708, N'Kristy', N'Coope', N'kcoopejn@ox.ac.uk', N'Male', N'51-60', N'China', N'Nanshi', N'445 Leroy Road');

INSERT INTO players
VALUES (709, N'Dimitry', N'Vanne', N'dvannejo@example.com', N'Female', N'31-40', N'Philippines', N'Carpenter',
        N'70745 Daystar Hill');

INSERT INTO players
VALUES (710, N'ddart', N'Ferrarin', N'gferrarinjp@indie.com', N'Female', N'41-50', N'Poland', N'Paslek',
        N'5 Fieldstone Avenue');

INSERT INTO players
VALUES (711, N'Elvera', N'Hentze', N'ehentzejq@last.fm', N'Female', N'31-40', N'Czech Republic', N'Hrebec',
        N'293 North Place');

INSERT INTO players
VALUES (712, N'Christabella', N'Cuffin', N'ccuffinjr@bing.com', N'Female', N'51-60', N'China', N'Haicheng',
        N'6310 Paget Park');

INSERT INTO players
VALUES (713, N'Maggee', N'Harp', N'mharpjs@cnet.com', N'Male', N'31-40', N'Tanzania', N'Mameni', N'28 Arkansas Alley');

INSERT INTO players
VALUES (714, N'Raimundo', N'Sandercock', N'rsandercockjt@icq.com', N'Male', N'21-30', N'Peru', N'Yuracyacu',
        N'4088 Sage Street');

INSERT INTO players
VALUES (715, N'Loren', N'Tansey', N'ltanseyju@time.com', N'Female', N'31-40', N'France', N'Nanterre',
        N'2 Beilfuss Junction');

INSERT INTO players
VALUES (716, N'Becki', N'McLoughlin', N'bmcloughlinjv@cyberchimps.com', N'Female', N'10-21', N'Philippines',
        N'Marintoc', N'12 5th Trail');

INSERT INTO players
VALUES (717, N'Gage', N'Matterface', N'gmatterfacejw@histats.com', N'Male', N'41-50', N'Panama', N'Veracruz',
        N'612 Buhler Terrace');

INSERT INTO players
VALUES (718, N'Fran', N'Abade', N'fabadejx@wikispaces.com', N'Female', N'10-21', N'Poland', N'Stare Pole',
        N'15 Melvin Road');

INSERT INTO players
VALUES (719, N'Shaun', N'Kaemena', N'skaemenajy@exblog.jp', N'Female', N'21-30', N'Russia', N'Segezha',
        N'4 Wayridge Way');

INSERT INTO players
VALUES (720, N'Thorndike', N'Abrashkin', N'tabrashkinjz@wikia.com', N'Male', N'51-60', N'Sweden', N'Stockholm',
        N'6799 Petterle Road');

INSERT INTO players
VALUES (721, N'Annis', N'Orry', N'aorryk0@chronoengine.com', N'Male', N'41-50', N'Brazil', N'Itapagé',
        N'08704 Hoepker Circle');

INSERT INTO players
VALUES (722, N'Lemmie', N'Tuffs', N'ltuffsk1@tinypic.com', N'Female', N'51-60', N'Brazil', N'Senador Pompeu',
        N'05 Hermina Avenue');

INSERT INTO players
VALUES (723, N'Nikki', N'Maden', N'nmadenk2@geocities.com', N'Female', N'41-50', N'Peru', N'Lanlacuni Bajo',
        N'38 Service Hill');

INSERT INTO players
VALUES (724, N'Isa', N'Matchell', N'imatchellk3@shutterfly.com', N'Female', N'41-50', N'Nigeria', N'Giade',
        N'20981 Autumn Leaf Lane');

INSERT INTO players
VALUES (725, N'Weber', N'Suggitt', N'wsuggittk4@pinterest.com', N'Male', N'10-21', N'China', N'Jianling',
        N'2402 John Wall Drive');

INSERT INTO players
VALUES (726, N'Raynard', N'Maffucci', N'rmaffuccik5@usda.v', N'Male', N'41-50', N'Ukraine', N'Ovruch',
        N'57069 Toban Crossing');

INSERT INTO players
VALUES (727, N'Jemmie', N'O''Keenan', N'jokeenank6@github.io', N'Male', N'31-40', N'Indonesia', N'Cibenda',
        N'251 Bartelt Point');

INSERT INTO players
VALUES (728, N'Ciel', N'Fenty', N'cfentyk7@tiny.cc', N'Male', N'41-50', N'Japan', N'Ofunato',
        N'12421 Prairie Rose Hill');

INSERT INTO players
VALUES (729, N'Dulciana', N'Colafate', N'dcolafatek8@amazon.de', N'Male', N'21-30', N'Brazil', N'Nova Venécia',
        N'2 Pennsylvania Park');

INSERT INTO players
VALUES (730, N'Rin', N'Prahm', N'rprahmk9@cafepress.com', N'Female', N'10-21', N'Colombia', N'Pamplona',
        N'27117 Morning Circle');

INSERT INTO players
VALUES (731, N'Nonna', N'Oddboy', N'noddboyka@foxnews.com', N'Male', N'10-21', N'Gambia', N'Gunjur',
        N'89798 Monterey Park');

INSERT INTO players
VALUES (732, N'Etti', N'Tuxwell', N'etuxwellkb@opera.com', N'Male', N'10-21', N'France', N'Saint-Marcellin',
        N'07328 Melvin Junction');

INSERT INTO players
VALUES (733, N'Eleanora', N'Geale', N'egealekc@ow.ly', N'Male', N'51-60', N'Mauritius', N'Notre Dame',
        N'5 Washington Pass');

INSERT INTO players
VALUES (734, N'Weber', N'Chenery', N'wchenerykd@pen.io', N'Male', N'10-21', N'Syria', N'Ad Darbasiyah',
        N'623 Almo Lane');

INSERT INTO players
VALUES (735, N'Reggie', N'Checcucci', N'rcheccuccike@addtoany.com', N'Female', N'51-60', N'Brazil', N'Gravatá',
        N'1 Nevada Street');

INSERT INTO players
VALUES (736, N'Steffen', N'Arthars', N'sartharskf@nytimes.com', N'Male', N'31-40', N'Syria', N'As Sab‘ Biyar',
        N'90892 Linden Plaza');

INSERT INTO players
VALUES (737, N'Geordie', N'Asals', N'gasalskg@tripod.com', N'Male', N'31-40', N'Germany', N'Hannover',
        N'46 Dayton Plaza');

INSERT INTO players
VALUES (738, N'Norrie', N'Heintzsch', N'nheintzschkh@ogle.com.br', N'Female', N'41-50', N'Peru', N'Singa',
        N'87484 Eagle Crest Court');

INSERT INTO players
VALUES (739, N'Chiquia', N'Baudinet', N'cbaudinetki@china.com.cn', N'Male', N'51-60', N'China', N'Xinxing',
        N'521 Melby Road');

INSERT INTO players
VALUES (740, N'Israel', N'Noell', N'inoellkj@nytimes.com', N'Male', N'21-30', N'Brazil', N'Franco da Rocha',
        N'2827 Messerschmidt Parkway');

INSERT INTO players
VALUES (741, N'Noell', N'Rowswell', N'nrowswellkk@hatena.ne.jp', N'Male', N'41-50', N'Canada', N'Louiseville',
        N'80 Spenser Terrace');

INSERT INTO players
VALUES (742, N'Derrek', N'Cowely', N'dcowelykl@histats.com', N'Female', N'10-21', N'China', N'Huangjiazhai',
        N'71 Harbort Way');

INSERT INTO players
VALUES (743, N'Pru', N'Natte', N'pnattekm@weebly.com', N'Female', N'31-40', N'Sweden', N'Norrköping',
        N'26244 7th Crossing');

INSERT INTO players
VALUES (744, N'Leonidas', N'Finney', N'lfinneykn@tuttocitta.it', N'Female', N'51-60', N'Iran', N'Eqlid',
        N'439 Grim Parkway');

INSERT INTO players
VALUES (745, N'Melli', N'Marriot', N'mmarriotko@slate.com', N'Female', N'41-50', N'China', N'Baima',
        N'9 Service Junction');

INSERT INTO players
VALUES (746, N'Tess', N'Marcham', N'tmarchamkp@forbes.com', N'Female', N'10-21', N'Russia', N'Rossosh’',
        N'4 Graedel Center');

INSERT INTO players
VALUES (747, N'Brien', N'Zanni', N'bzannikq@netvibes.com', N'Male', N'51-60', N'Honduras', N'Nacaome',
        N'9398 Hoard Point');

INSERT INTO players
VALUES (748, N'Ricki', N'Dickson', N'rdicksonkr@about.me', N'Male', N'51-60', N'Venezuela', N'Cumanacoa',
        N'9 Emmet Street');

INSERT INTO players
VALUES (749, N'Misty', N'Such', N'msuchks@va.v', N'Female', N'51-60', N'China', N'Guojiaba', N'2429 Starling Lane');

INSERT INTO players
VALUES (750, N'Benjy', N'Itter', N'bitterkt@amazon.co.jp', N'Male', N'10-21', N'Botswana', N'Nokaneng',
        N'29359 Gale Parkway');

INSERT INTO players
VALUES (751, N'Henryetta', N'Kidney', N'hkidneyku@pagesperso-orange.fr', N'Female', N'10-21', N'Philippines',
        N'Minglanilla', N'7 Atwood Road');

INSERT INTO players
VALUES (752, N'Erminia', N'Patek', N'epatekkv@skyrock.com', N'Female', N'31-40', N'Brazil', N'Flores da Cunha',
        N'80 Crownhardt Avenue');

INSERT INTO players
VALUES (753, N'Ivan', N'Lermit', N'ilermitkw@latimes.com', N'Female', N'21-30', N'Dominican Republic', N'Pedro García',
        N'21 Schiller Alley');

INSERT INTO players
VALUES (754, N'Zahara', N'Puckinghorne', N'zpuckinghornekx@bluehost.com', N'Male', N'10-21', N'Russia', N'Novorossiysk',
        N'61904 Laurel Court');

INSERT INTO players
VALUES (755, N'Ted', N'McGrorty', N'tmcgrortyky@geocities.com', N'Female', N'51-60', N'Greece', N'Tsákoi',
        N'04 Thackeray Hill');

INSERT INTO players
VALUES (756, N'Loralie', N'Glentz', N'lglentzkz@msu.edu', N'Female', N'21-30', N'Saint Lucia', N'Laborie',
        N'50 Monument Alley');

INSERT INTO players
VALUES (757, N'Flor', N'Janks', N'fjanksl0@accuweather.com', N'Female', N'31-40', N'France', N'Villeneuve-d''Ascq',
        N'3583 Bartillon Crossing');

INSERT INTO players
VALUES (758, N'Rafaellle', N'Andersch', N'randerschl1@sfgate.com', N'Male', N'31-40', N'Philippines', N'Baro',
        N'82 Summerview Place');

INSERT INTO players
VALUES (759, N'Valle', N'Morrilly', N'vmorrillyl2@linkedin.com', N'Female', N'41-50', N'Colombia', N'Palestina',
        N'104 Summer Ridge Park');

INSERT INTO players
VALUES (760, N'Danica', N'Jepensen', N'djepensenl3@bbc.co.uk', N'Female', N'51-60', N'Nigeria', N'Sankera',
        N'1 Ridge Oak Terrace');

INSERT INTO players
VALUES (761, N'Nicolina', N'Westerman', N'nwestermanl4@imdb.com', N'Male', N'41-50', N'Ireland', N'Ratoath',
        N'0 Bowman Place');

INSERT INTO players
VALUES (762, N'Haleigh', N'Woodhams', N'hwoodhamsl5@sbwire.com', N'Male', N'51-60', N'Philippines', N'Allen',
        N'86 Jenna Road');

INSERT INTO players
VALUES (763, N'Coleen', N'McSkin', N'cmcskinl6@sina.com.cn', N'Female', N'31-40', N'Brazil', N'Oeiras',
        N'96 Dennis Circle');

INSERT INTO players
VALUES (764, N'Grayce', N'ly', N'glyl7@hatena.ne.jp', N'Male', N'51-60', N'Yemen', N'Rajuzah', N'5 Shoshone Point');

INSERT INTO players
VALUES (765, N'Elmore', N'Island', N'eislandl8@ogle.pl', N'Male', N'10-21', N'China', N'Xin’an',
        N'4444 John Wall Crossing');

INSERT INTO players
VALUES (766, N'Martita', N'Burnyate', N'mburnyatel9@ox.ac.uk', N'Male', N'31-40', N'China', N'Zhanjiang',
        N'7054 Village Hill');

INSERT INTO players
VALUES (767, N'Danny', N'Pittet', N'dpittetla@ucoz.ru', N'Male', N'31-40', N'Sweden', N'Västerås', N'3796 West Circle');

INSERT INTO players
VALUES (768, N'Wyn', N'Vinson', N'wvinsonlb@imdb.com', N'Male', N'31-40', N'China', N'Dalonghua',
        N'0986 Manitowish Parkway');

INSERT INTO players
VALUES (769, N'Meta', N'Divisek', N'mdiviseklc@slate.com', N'Female', N'31-40', N'New Zealand', N'Rosebank',
        N'9363 Superior Point');

INSERT INTO players
VALUES (770, N'Meade', N'Jiggins', N'mjigginsld@weather.com', N'Male', N'51-60', N'China', N'Da’ao',
        N'975 Fair Oaks Point');

INSERT INTO players
VALUES (771, N'Scotty', N'Dunk', N'sdunkle@ogle.ru', N'Male', N'21-30', N'Indonesia', N'Desa Wetan Ciakar',
        N'6929 8th Trail');

INSERT INTO players
VALUES (772, N'Ynes', N'Taill', N'ytailllf@cnbc.com', N'Female', N'41-50', N'Brazil', N'Aquidauana',
        N'531 Bellgrove Center');

INSERT INTO players
VALUES (773, N'Marjie', N'Stoffers', N'mstofferslg@geocities.jp', N'Female', N'21-30', N'Portugal', N'Vila',
        N'6 Havey Road');

INSERT INTO players
VALUES (774, N'Wilbert', N'Broxton', N'wbroxtonlh@msu.edu', N'Male', N'41-50', N'France', N'Brest',
        N'77 Mccormick Park');

INSERT INTO players
VALUES (775, N'Nata', N'Ricoald', N'nricoaldli@ycombinator.com', N'Male', N'31-40', N'China', N'Xiongguan',
        N'15 Dovetail Avenue');

INSERT INTO players
VALUES (776, N'Courtenay', N'Kryska', N'ckryskalj@dot.v', N'Male', N'51-60', N'Brazil', N'Limoeiro',
        N'0428 Jenifer Court');

INSERT INTO players
VALUES (777, N'Bernhard', N'Simkins', N'bsimkinslk@altervista.org', N'Female', N'31-40', N'China', N'Zhu’ao',
        N'6506 Pearson Street');

INSERT INTO players
VALUES (778, N'Cosimo', N'Sear', N'csearll@hao123.com', N'Female', N'21-30', N'Ukraine', N'Bus’k',
        N'888 John Wall Trail');

INSERT INTO players
VALUES (779, N'Toby', N'Wife', N'twifelm@ycombinator.com', N'Female', N'10-21', N'Indonesia', N'Cigalontang',
        N'8844 Crowley Park');

INSERT INTO players
VALUES (780, N'Anabelle', N'Gilphillan', N'agilphillanln@icio.us', N'Female', N'10-21', N'Japan', N'Minami-rinkan',
        N'5867 Kim Drive');

INSERT INTO players
VALUES (781, N'Ginevra', N'Firsby', N'gfirsbylo@t-online.de', N'Female', N'21-30', N'Russia', N'Kardzhin',
        N'58 Garrison Place');

INSERT INTO players
VALUES (782, N'Lilly', N'Edds', N'leddslp@guardian.co.uk', N'Male', N'10-21', N'Russia', N'Kazanskaya',
        N'67 Porter Court');

INSERT INTO players
VALUES (783, N'Christyna', N'Brevitt', N'cbrevittlq@tamu.edu', N'Female', N'10-21', N'Czech Republic', N'Zabrušany',
        N'9334 Briar Crest Park');

INSERT INTO players
VALUES (784, N'Shanda', N'Lockier', N'slockierlr@bandcamp.com', N'Male', N'21-30', N'China', N'Wanghu',
        N'5885 Texas Pass');

INSERT INTO players
VALUES (785, N'Livvy', N'Drysdell', N'ldrysdellls@webmd.com', N'Male', N'51-60', N'Dominican Republic', N'Enriquillo',
        N'096 Armistice Pass');

INSERT INTO players
VALUES (786, N'Eryn', N'Seakes', N'eseakeslt@jiathis.com', N'Male', N'21-30', N'Germany', N'Halle',
        N'47 Ridgeway Alley');

INSERT INTO players
VALUES (787, N'Clementina', N'Jagg', N'cjagglu@utexas.edu', N'Female', N'10-21', N'China', N'Pubu',
        N'3029 Lindbergh Point');

INSERT INTO players
VALUES (788, N'Ignaz', N'Blasetti', N'iblasettilv@timesonline.co.uk', N'Male', N'51-60', N'Philippines', N'Bukal Sur',
        N'4396 Barby Point');

INSERT INTO players
VALUES (789, N'Paige', N'Bernardotte', N'pbernardottelw@java.com', N'Male', N'21-30', N'Mexico', N'Santa Cruz',
        N'6 Linden Drive');

INSERT INTO players
VALUES (790, N'Con', N'Jouannot', N'cjouannotlx@taobao.com', N'Female', N'21-30', N'Colombia', N'Majagual',
        N'10 Comanche Trail');

INSERT INTO players
VALUES (791, N'Delainey', N'Cason', N'dcasonly@webs.com', N'Female', N'51-60', N'Chile', N'Corral',
        N'711 Farwell Park');

INSERT INTO players
VALUES (792, N'Oliy', N'Detoc', N'odetoclz@bandcamp.com', N'Male', N'21-30', N'Russia', N'Miatli',
        N'5296 Thompson Junction');

INSERT INTO players
VALUES (793, N'Andras', N'Balk', N'abalkm0@amazon.com', N'Male', N'51-60', N'China', N'Youhua', N'2 Talmadge Pass');

INSERT INTO players
VALUES (794, N'Teodorico', N'Haslock', N'thaslockm1@xing.com', N'Male', N'21-30', N'China', N'Qamdo',
        N'17728 Boyd Terrace');

INSERT INTO players
VALUES (795, N'Raphael', N'Jacobsson', N'rjacobssonm2@xrea.com', N'Female', N'21-30', N'Peru', N'Llauta',
        N'5308 Nancy Hill');

INSERT INTO players
VALUES (796, N'Roana', N'Sargison', N'rsargisonm3@reverbnation.com', N'Male', N'21-30', N'Indonesia', N'Bak',
        N'16622 Waywood Pass');

INSERT INTO players
VALUES (797, N'Sid', N'Bartol', N'sbartolm4@macromedia.com', N'Female', N'21-30', N'Madagascar', N'Anjepy',
        N'6 Oriole Junction');

INSERT INTO players
VALUES (798, N'Ephrem', N'MacEllen', N'emacellenm5@wiley.com', N'Male', N'10-21', N'Philippines', N'Tudela',
        N'55 Brickson Park Hill');

INSERT INTO players
VALUES (799, N'Hamel', N'Deery', N'hdeerym6@answers.com', N'Female', N'41-50', N'Philippines', N'Salvacion',
        N'94730 Lighthouse Bay Park');

INSERT INTO players
VALUES (800, N'Dunn', N'Pattington', N'dpattingtonm7@about.com', N'Female', N'31-40', N'Brazil', N'União da Vitória',
        N'89878 Messerschmidt Parkway');

INSERT INTO players
VALUES (801, N'Jeramey', N'oms', N'jomsm8@xing.com', N'Female', N'10-21', N'Russia', N'Porosozero',
        N'7 Northwestern Way');

INSERT INTO players
VALUES (802, N'Mellicent', N'Adnams', N'madnamsm9@amazonaws.com', N'Female', N'51-60', N'China', N'Zhongshanlu',
        N'19 Kipling Alley');

INSERT INTO players
VALUES (803, N'Ginnie', N'Kenwyn', N'gkenwynma@miitbeian.v.cn', N'Male', N'41-50', N'Russia', N'Palkino',
        N'240 East Alley');

INSERT INTO players
VALUES (804, N'ldia', N'Barr', N'gbarrmb@livejournal.com', N'Female', N'21-30', N'Vietnam', N'Thành Ph? H? Long',
        N'2277 Scott Hill');

INSERT INTO players
VALUES (805, N'Skipton', N'Farge', N'sfargemc@ogle.it', N'Female', N'51-60', N'United States', N'Naples',
        N'2 Warrior Avenue');

INSERT INTO players
VALUES (806, N'Poppy', N'Hughlin', N'phughlinmd@arizona.edu', N'Male', N'41-50', N'France', N'Villeneuve-d''Ascq',
        N'3 Spenser Point');

INSERT INTO players
VALUES (807, N'Rhys', N'Picknett', N'rpicknettme@amazon.com', N'Male', N'51-60', N'Libya', N'Al Jaghbub',
        N'0914 Sachs Terrace');

INSERT INTO players
VALUES (808, N'Niccolo', N'Ram', N'nrammf@phoca.cz', N'Male', N'31-40', N'Indonesia', N'Jangkat',
        N'32 Brickson Park Park');

INSERT INTO players
VALUES (809, N'Guinevere', N'Ambroix', N'gambroixmg@pbs.org', N'Male', N'21-30', N'China', N'Jinchang',
        N'170 Lakeland Hill');

INSERT INTO players
VALUES (810, N'Whit', N'Van Bruggen', N'wvanbruggenmh@typepad.com', N'Male', N'31-40', N'Brazil', N'Quixadá',
        N'8 Redwing Hill');

INSERT INTO players
VALUES (811, N'Daniele', N'Staples', N'dstaplesmi@blogtalkradio.com', N'Female', N'41-50', N'Croatia', N'Cacinci',
        N'0 Westport Road');

INSERT INTO players
VALUES (812, N'Vinnie', N'Skehens', N'vskehensmj@ibm.com', N'Male', N'31-40', N'Argentina', N'La Cruz',
        N'8 Bowman Street');

INSERT INTO players
VALUES (813, N'Bartolemo', N'Tither', N'btithermk@spotify.com', N'Female', N'10-21', N'Indonesia', N'Pamotan',
        N'942 Springs Junction');

INSERT INTO players
VALUES (814, N'Victoir', N'Pennycook', N'vpennycookml@moonfruit.com', N'Male', N'31-40', N'Russia', N'Vnukovo',
        N'420 Granby Court');

INSERT INTO players
VALUES (815, N'Roderi', N'Melonby', N'rmelonbymm@networksolutions.com', N'Male', N'41-50', N'Chile', N'Los Ángeles',
        N'467 Sullivan Parkway');

INSERT INTO players
VALUES (816, N'Quintilla', N'Stathor', N'qstathormn@phoca.cz', N'Male', N'41-50', N'Ireland', N'Ballina',
        N'31277 Stone Corner Place');

INSERT INTO players
VALUES (817, N'Glenn', N'Hackinge', N'ghackingemo@ed.v', N'Male', N'10-21', N'Croatia', N'Bršadin',
        N'77 American Ash Avenue');

INSERT INTO players
VALUES (818, N'Parrnell', N'Farman', N'pfarmanmp@amazonaws.com', N'Female', N'31-40', N'Niger', N'Dondoutchi',
        N'3 School Terrace');

INSERT INTO players
VALUES (819, N'Beatriz', N'Jean', N'bjeanmq@jiathis.com', N'Female', N'10-21', N'Sweden', N'Umeå',
        N'05 Prentice Alley');

INSERT INTO players
VALUES (820, N'Obidiah', N'Rounsefell', N'orounsefellmr@ftc.v', N'Male', N'10-21', N'Indonesia', N'Banjar Budakeling',
        N'7 Glacier Hill Parkway');

INSERT INTO players
VALUES (821, N'Chance', N'Poxson', N'cpoxsonms@yellowpages.com', N'Female', N'51-60', N'Costa Rica', N'Nicoya',
        N'03296 Delaware Plaza');

INSERT INTO players
VALUES (822, N'Stefano', N'Mongain', N'smongainmt@eepurl.com', N'Female', N'51-60', N'South Africa', N'Mogwase',
        N'397 Ridgeway Point');

INSERT INTO players
VALUES (823, N'Odetta', N'Giocannoni', N'ogiocannonimu@netvibes.com', N'Male', N'31-40', N'Russia', N'Sosnovka',
        N'55093 Sugar Place');

INSERT INTO players
VALUES (824, N'Eartha', N'Maude', N'emaudemv@bbc.co.uk', N'Female', N'31-40', N'Indonesia', N'Pontang Tengah',
        N'8 Walton Drive');

INSERT INTO players
VALUES (825, N'Magdalen', N'Kernock', N'mkernockmw@topsy.com', N'Female', N'21-30', N'Russia', N'Businovo',
        N'1 Beilfuss Alley');

INSERT INTO players
VALUES (826, N'Noreen', N'Guerner', N'nguernermx@hibu.com', N'Female', N'31-40', N'Russia', N'Rybnoye',
        N'05 Sutherland Circle');

INSERT INTO players
VALUES (827, N'U', N'MacMorland', N'umacmorlandmy@quantcast.com', N'Female', N'31-40', N'United States', N'Bakersfield',
        N'95 Schiller Lane');

INSERT INTO players
VALUES (828, N'Ermentrude', N'Plackstone', N'eplackstonemz@mit.edu', N'Female', N'31-40', N'Poland',
        N'Miejsce Piastowe', N'33 Dunning Place');

INSERT INTO players
VALUES (829, N'Bourke', N'Arnson', N'barnsonn0@nasa.v', N'Female', N'31-40', N'Iraq', N'?alabjah',
        N'540 Sommers Circle');

INSERT INTO players
VALUES (830, N'Arnie', N'Thorn', N'athornn1@reuters.com', N'Male', N'31-40', N'Libya', N'Tarhuna',
        N'34316 Anniversary Place');

INSERT INTO players
VALUES (831, N'Melva', N'Thomasson', N'mthomassonn2@hc360.com', N'Female', N'10-21', N'Mexico', N'Las Flores',
        N'0441 Aberg Lane');

INSERT INTO players
VALUES (832, N'Phillie', N'Ozanne', N'pozannen3@ovh.net', N'Male', N'10-21', N'Indonesia', N'Sumber',
        N'8280 Dryden Street');

INSERT INTO players
VALUES (833, N'Leilah', N'Swainson', N'lswainsonn4@theglobeandmail.com', N'Male', N'51-60', N'Hungary', N'Gyor',
        N'2 Welch Center');

INSERT INTO players
VALUES (834, N'Leopold', N'Wooldridge', N'lwooldridgen5@privacy.v.au', N'Female', N'51-60', N'Colombia', N'Pacho',
        N'4 Aberg Pass');

INSERT INTO players
VALUES (835, N'Katha', N'Pucknell', N'kpucknelln6@desdev.cn', N'Male', N'31-40', N'China', N'Wuxia', N'2 Lukken Lane');

INSERT INTO players
VALUES (836, N'Bell', N'Troth', N'btrothn7@theglobeandmail.com', N'Male', N'10-21', N'Germany', N'Nürnberg',
        N'106 Valley Edge Court');

INSERT INTO players
VALUES (837, N'Carey', N'Pidgley', N'cpidgleyn8@ogle.com.br', N'Male', N'21-30', N'Germany', N'Braunschweig',
        N'49 Meadow Ridge Road');

INSERT INTO players
VALUES (838, N'Gerald', N'Whal', N'gwhaln9@dmoz.org', N'Male', N'51-60', N'China', N'Chengguan', N'412 Waywood Court');

INSERT INTO players
VALUES (839, N'Mitchel', N'Risborough', N'mrisboroughna@behance.net', N'Female', N'41-50', N'Netherlands', N'Den Haag',
        N'73015 Kropf Trail');

INSERT INTO players
VALUES (840, N'Lanie', N'Reven', N'lrevennb@blogger.com', N'Female', N'31-40', N'Croatia', N'Slatina',
        N'2 Pond Parkway');

INSERT INTO players
VALUES (841, N'Ilyse', N'Tayspell', N'itayspellnc@archive.org', N'Male', N'51-60', N'Brazil', N'Pacatuba',
        N'638 Washington Point');

INSERT INTO players
VALUES (842, N'Rosalind', N'Ganderton', N'rgandertonnd@sciencedaily.com', N'Female', N'10-21', N'Peru', N'Acobambilla',
        N'375 Waubesa Way');

INSERT INTO players
VALUES (843, N'Lorens', N'Battaille', N'lbattaillene@newsvine.com', N'Male', N'51-60', N'United States', N'Sioux Falls',
        N'52438 Vahlen Crossing');

INSERT INTO players
VALUES (844, N'Susette', N'Savoury', N'ssavourynf@pen.io', N'Female', N'51-60', N'Senegal', N'Ziguinchor',
        N'91 Dovetail Junction');

INSERT INTO players
VALUES (845, N'Inna', N'Dallender', N'idallenderng@epa.v', N'Female', N'21-30', N'Uruguay', N'Paso de Carrasco',
        N'5 Lyons Junction');

INSERT INTO players
VALUES (846, N'Patrica', N'Summerbell', N'psummerbellnh@unesco.org', N'Female', N'31-40', N'China', N'Wanmao',
        N'56754 Heath Drive');

INSERT INTO players
VALUES (847, N'Georgeanne', N'Ziems', N'gziemsni@domainmarket.com', N'Female', N'41-50', N'China', N'Pudong',
        N'2643 Butterfield Trail');

INSERT INTO players
VALUES (848, N'Gail', N'Crust', N'gcrustnj@alibaba.com', N'Male', N'51-60', N'Czech Republic', N'Dobrív',
        N'97202 Sloan Lane');

INSERT INTO players
VALUES (849, N'Blaine', N'Buckwell', N'bbuckwellnk@hubpages.com', N'Male', N'21-30', N'South Africa', N'Phalaborwa',
        N'9418 Kedzie Center');

INSERT INTO players
VALUES (850, N'Jock', N'Murfin', N'jmurfinnl@walmart.com', N'Female', N'51-60', N'Poland', N'Krasnystaw',
        N'146 Pennsylvania Junction');

INSERT INTO players
VALUES (851, N'Tanhya', N'Haggard', N'thaggardnm@deliciousdays.com', N'Female', N'51-60', N'Russia', N'Dvurechensk',
        N'07 Ridgeway Pass');

INSERT INTO players
VALUES (852, N'Gerianne', N'Haycroft', N'ghaycroftnn@github.io', N'Male', N'41-50', N'Ecuador', N'Machala',
        N'940 Stephen Point');

INSERT INTO players
VALUES (853, N'Floria', N'Inchley', N'finchleyno@fda.v', N'Female', N'51-60', N'Belarus', N'Mir', N'77 Heath Park');

INSERT INTO players
VALUES (854, N'Inga', N'Shreeve', N'ishreevenp@exblog.jp', N'Female', N'21-30', N'Russia', N'Shali',
        N'52134 Lyons Way');

INSERT INTO players
VALUES (855, N'Darleen', N'Sweetsur', N'dsweetsurnq@bluehost.com', N'Female', N'41-50', N'China', N'Anrong',
        N'5152 Meadow Ridge Circle');

INSERT INTO players
VALUES (856, N'Carol-jean', N'Reekie', N'creekienr@webeden.co.uk', N'Male', N'10-21', N'Canada', N'Dorval',
        N'83 Corscot Plaza');

INSERT INTO players
VALUES (857, N'Christopher', N'Rossant', N'crossantns@github.io', N'Male', N'31-40', N'Ireland', N'Dundrum',
        N'736 Summerview Hill');

INSERT INTO players
VALUES (858, N'Haily', N'Voden', N'hvodennt@redcross.org', N'Male', N'41-50', N'Malaysia', N'Kota Bharu',
        N'1904 Forest Lane');

INSERT INTO players
VALUES (859, N'Abran', N'Bebbington', N'abebbingtonnu@discovery.com', N'Male', N'10-21', N'North Korea', N'Hungju-dong',
        N'3 Jackson Drive');

INSERT INTO players
VALUES (860, N'Grata', N'Oldland', N'ldlandnv@blogspot.com', N'Male', N'51-60', N'Philippines', N'Busay',
        N'262 Montana Parkway');

INSERT INTO players
VALUES (861, N'Lynn', N'Fawdry', N'lfawdrynw@lulu.com', N'Female', N'31-40', N'Philippines', N'Mayo',
        N'1043 Surrey Crossing');

INSERT INTO players
VALUES (862, N'Jeff', N'Furnell', N'jfurnellnx@yahoo.co.jp', N'Female', N'41-50', N'Indonesia', N'Tetaf',
        N'906 Moland Circle');

INSERT INTO players
VALUES (863, N'Zia', N'Terrazzo', N'zterrazzony@weibo.com', N'Female', N'21-30', N'Mauritania', N'Nouakchott',
        N'15 Schlimgen Way');

INSERT INTO players
VALUES (864, N'Deonne', N'Henrych', N'dhenrychnz@businessweek.com', N'Female', N'21-30', N'Ghana', N'Gbawe',
        N'23169 Northfield Place');

INSERT INTO players
VALUES (865, N'Tore', N'Guillot', N'tguilloto0@economist.com', N'Male', N'31-40', N'China', N'Fengjia',
        N'93 Clemons Park');

INSERT INTO players
VALUES (866, N'Adah', N'Gniewosz', N'agniewoszo1@wunderground.com', N'Male', N'21-30', N'Japan', N'Sobue',
        N'15426 Miller Drive');

INSERT INTO players
VALUES (867, N'Alia', N'Filpi', N'afilpio2@smh.com.au', N'Female', N'31-40', N'Norway', N'Grimstad',
        N'270 Holy Cross Road');

INSERT INTO players
VALUES (868, N'Nat', N'Richardot', N'nrichardoto3@umich.edu', N'Female', N'51-60', N'Uganda', N'Mpigi',
        N'2360 Village Parkway');

INSERT INTO players
VALUES (869, N'Blanche', N'Bulcock', N'bbulcocko4@webs.com', N'Male', N'51-60', N'Indonesia', N'Patemon',
        N'1 Novick Circle');

INSERT INTO players
VALUES (870, N'Trudy', N'Conrard', N'tconrardo5@people.com.cn', N'Male', N'51-60', N'Hungary', N'Sopron',
        N'2736 Londonderry Hill');

INSERT INTO players
VALUES (871, N'Zelig', N'Ausher', N'zaushero6@adobe.com', N'Male', N'10-21', N'Finland', N'Suodenniemi',
        N'8693 Fair Oaks Parkway');

INSERT INTO players
VALUES (872, N'Kala', N'Lukianov', N'klukianovo7@nsw.v.au', N'Female', N'31-40', N'Bahrain', N'Dar Kulayb',
        N'58053 Crowley Park');

INSERT INTO players
VALUES (873, N'Donaugh', N'Roseaman', N'droseamano8@ox.ac.uk', N'Female', N'21-30', N'France', N'Saint-Leu-la-Forêt',
        N'60034 Fairview Place');

INSERT INTO players
VALUES (874, N'Kriste', N'Kingsnoad', N'kkingsnoado9@soundcloud.com', N'Female', N'10-21', N'Japan', N'Kushima',
        N'58164 Shopko Crossing');

INSERT INTO players
VALUES (875, N'Thatcher', N'Veel', N'tveeloa@ning.com', N'Male', N'21-30', N'China', N'Huanglong',
        N'9721 Charing Cross Pass');

INSERT INTO players
VALUES (876, N'Alard', N'Gladding', N'agladdinb@cornell.edu', N'Male', N'41-50', N'Venezuela', N'Caucagüito',
        N'6 Coleman Crossing');

INSERT INTO players
VALUES (877, N'Farlie', N'Follin', N'ffollinoc@cam.ac.uk', N'Male', N'41-50', N'Kazakhstan', N'Tobol',
        N'6 lf Course Court');

INSERT INTO players
VALUES (878, N'Kendricks', N'Tixier', N'ktixierod@hp.com', N'Female', N'51-60', N'Sweden', N'Särö', N'831 Leroy Pass');

INSERT INTO players
VALUES (879, N'Salomo', N'Bruff', N'sbruffoe@twitter.com', N'Female', N'10-21', N'Philippines', N'Caracal',
        N'4 Monica Street');

INSERT INTO players
VALUES (880, N'Alexandra', N'Dalloway', N'adallowayof@slashdot.org', N'Male', N'10-21', N'Indonesia', N'Cukanguncal',
        N'1668 Rusk Pass');

INSERT INTO players
VALUES (881, N'Brandise', N'Spaduzza', N'bspaduzzaog@cocolog-nifty.com', N'Female', N'31-40', N'Latvia', N'Bolderaja',
        N'6 Rigney Lane');

INSERT INTO players
VALUES (882, N'Roarke', N'Abbis', N'rabbisoh@engadget.com', N'Female', N'10-21', N'Democratic Republic of the Con',
        N'Kisangani', N'810 Clarendon Alley');

INSERT INTO players
VALUES (883, N'Roselin', N'Carpmile', N'rcarpmileoi@skyrock.com', N'Male', N'51-60', N'Macedonia', N'??????',
        N'58 Stuart Junction');

INSERT INTO players
VALUES (884, N'Katharine', N'Booth', N'kboothoj@wufoo.com', N'Female', N'41-50', N'China', N'Ningyuan',
        N'3 Bunker Hill Point');

INSERT INTO players
VALUES (885, N'Wildon', N'Daveley', N'wdaveleyok@yandex.ru', N'Male', N'41-50', N'Poland', N'Jablonica Polska',
        N'91 Westport Lane');

INSERT INTO players
VALUES (886, N'Danila', N'Yarrell', N'dyarrellol@ibm.com', N'Female', N'10-21', N'China', N'Gaoshi',
        N'9760 Glendale Point');

INSERT INTO players
VALUES (887, N'Perkin', N'Bazek', N'pbazekom@facebook.com', N'Male', N'41-50', N'Portugal', N'Cortinhas',
        N'449 Vermont Circle');

INSERT INTO players
VALUES (888, N'Boy', N'Ritmeyer', N'britmeyeron@mapy.cz', N'Female', N'51-60', N'Morocco', N'Kariat Arkmane',
        N'68 Pearson Court');

INSERT INTO players
VALUES (889, N'Bonnie', N'Broxap', N'bbroxapoo@creativecommons.org', N'Male', N'51-60', N'Uzbekistan',
        N'Chimboy Shahri', N'8677 Maple Park');

INSERT INTO players
VALUES (890, N'Edmon', N'Melross', N'emelrossop@latimes.com', N'Female', N'31-40', N'Brazil', N'Itaitinga',
        N'5 Tennessee Plaza');

INSERT INTO players
VALUES (891, N'Deeyn', N'Hamlin', N'dhamlinoq@istockphoto.com', N'Male', N'21-30', N'Portugal', N'Luso',
        N'1 Carioca Center');

INSERT INTO players
VALUES (892, N'Sal', N'Bortolomei', N'sbortolomeior@hubpages.com', N'Male', N'41-50', N'China', N'Fuhe',
        N'15 Burning Wood Park');

INSERT INTO players
VALUES (893, N'Edithe', N'Duguid', N'eduguidos@who.int', N'Male', N'31-40', N'Indonesia', N'Sinargalih',
        N'98787 4th Trail');

INSERT INTO players
VALUES (894, N'Della', N'Wrangle', N'dwrangleot@imgur.com', N'Male', N'31-40', N'Philippines', N'Ajuy',
        N'74 Banding Crossing');

INSERT INTO players
VALUES (895, N'Garrek', N'Chiene', N'gchieneou@ogle.com.au', N'Female', N'41-50', N'Greece', N'Dimitsána',
        N'4 Crowley Hill');

INSERT INTO players
VALUES (896, N'Molli', N'Latliff', N'mlatliffov@icio.us', N'Male', N'41-50', N'China', N'Bailu', N'2025 6th Road');

INSERT INTO players
VALUES (897, N'Katrina', N'Batson', N'kbatsonow@xinhuanet.com', N'Female', N'51-60', N'United States', N'Lafayette',
        N'459 East Drive');

INSERT INTO players
VALUES (898, N'Ruperto', N'Tatnell', N'rtatnellox@yandex.ru', N'Female', N'21-30', N'Thailand', N'Kamalasai',
        N'866 Sutteridge Parkway');

INSERT INTO players
VALUES (899, N'Noe', N'Kerman', N'nkermanoy@studiopress.com', N'Female', N'31-40', N'Greece', N'Kímolos',
        N'43 Messerschmidt Hill');

INSERT INTO players
VALUES (900, N'Orland', N'McGinny', N'omcginnyoz@biglobe.ne.jp', N'Male', N'51-60', N'Philippines', N'Rominimbang',
        N'8735 Dryden Plaza');

INSERT INTO players
VALUES (901, N'Bernete', N'Grinstead', N'bgrinsteadp0@ucla.edu', N'Female', N'31-40', N'Russia', N'Burla',
        N'44487 Washington Alley');

INSERT INTO players
VALUES (902, N'Samara', N'Fowkes', N'sfowkesp1@cafepress.com', N'Male', N'10-21', N'Ukraine', N'Bila Tserkva',
        N'0 Glacier Hill Road');

INSERT INTO players
VALUES (903, N'Martie', N'Rawsthorne', N'mrawsthornep2@printfriendly.com', N'Male', N'41-50', N'South Africa',
        N'Marquard', N'92085 Boyd Way');

INSERT INTO players
VALUES (904, N'Marvin', N'Ebbrell', N'mebbrellp3@hud.v', N'Female', N'21-30', N'France', N'Paris La Défense',
        N'6 Ruskin Crossing');

INSERT INTO players
VALUES (905, N'Nealson', N'MacLaren', N'nmaclarenp4@meetup.com', N'Female', N'41-50', N'Albania', N'Libofshë',
        N'16 Scoville Hill');

INSERT INTO players
VALUES (906, N'Rorke', N'Mattis', N'rmattisp5@accuweather.com', N'Male', N'41-50', N'Pakistan', N'Pir jo th',
        N'3 Huxley Pass');

INSERT INTO players
VALUES (907, N'Yehudi', N'Letts', N'ylettsp6@pinterest.com', N'Female', N'41-50', N'Canada', N'Banff',
        N'3 Hooker Street');

INSERT INTO players
VALUES (908, N'Meridel', N'Saul', N'msaulp7@webeden.co.uk', N'Female', N'41-50', N'China', N'Zhujiang',
        N'034 Northridge Plaza');

INSERT INTO players
VALUES (909, N'Daphne', N'Foy', N'dfoyp8@nydailynews.com', N'Male', N'10-21', N'United States', N'New York City',
        N'7556 Daystar Court');

INSERT INTO players
VALUES (910, N'Eliot', N'Gatteridge', N'egatteridgep9@blinklist.com', N'Male', N'41-50', N'Indonesia', N'Bantul',
        N'4415 Gateway Parkway');

INSERT INTO players
VALUES (911, N'Eugenio', N'Gheorghie', N'egheorghiepa@scientificamerican.com', N'Female', N'51-60', N'Indonesia',
        N'Cipeucang', N'87557 Anderson Place');

INSERT INTO players
VALUES (912, N'Clarice', N'Whettleton', N'cwhettletonpb@dmoz.org', N'Female', N'51-60', N'Bosnia and Herzevina',
        N'Ilici', N'005 Oneill Way');

INSERT INTO players
VALUES (913, N'Scarface', N'Lednor', N'slednorpc@si.edu', N'Male', N'41-50', N'China', N'Hanjia', N'1 Judy Plaza');

INSERT INTO players
VALUES (914, N'Neall', N'Dewicke', N'ndewickepd@chron.com', N'Male', N'41-50', N'Indonesia', N'Jalasenga',
        N'05505 Tennessee Center');

INSERT INTO players
VALUES (915, N'Bevvy', N'Blankley', N'bblankleype@shareasale.com', N'Male', N'41-50', N'Saudi Arabia', N'Al ‘Ulá',
        N'87 Killdeer Court');

INSERT INTO players
VALUES (916, N'Kaja', N'MacTrustey', N'kmactrusteypf@furl.net', N'Female', N'31-40', N'China', N'Guicheng',
        N'8 Jana Crossing');

INSERT INTO players
VALUES (917, N'Rriocard', N'odbourn', N'rodbournpg@wisc.edu', N'Male', N'10-21', N'Madagascar', N'Ihosy',
        N'97 Drewry Hill');

INSERT INTO players
VALUES (918, N'Larina', N'Moggach', N'lmoggachph@examiner.com', N'Female', N'31-40', N'Syria', N'Al Qamsiyah',
        N'61939 Clemons Lane');

INSERT INTO players
VALUES (919, N'Griffie', N'Loseby', N'glosebypi@ogle.com', N'Female', N'21-30', N'China', N'Lingyang',
        N'4119 Lawn Pass');

INSERT INTO players
VALUES (920, N'Ephraim', N'Greveson', N'egrevesonpj@discovery.com', N'Female', N'21-30', N'Portugal', N'Ponte',
        N'103 Garrison Road');

INSERT INTO players
VALUES (921, N'Enrico', N'Callum', N'ecallumpk@wordpress.com', N'Female', N'31-40', N'Russia', N'Slobodka',
        N'38672 Morrow Way');

INSERT INTO players
VALUES (922, N'Juana', N'Clappison', N'jclappisonpl@wp.com', N'Female', N'51-60', N'Jamaica', N'Lionel Town',
        N'6 Everett Road');

INSERT INTO players
VALUES (923, N'Adi', N'Gerge', N'agergepm@pagesperso-orange.fr', N'Female', N'21-30', N'Cambodia', N'Siem Reap',
        N'4 Old Shore Circle');

INSERT INTO players
VALUES (924, N'Timmie', N'Mowsdale', N'tmowsdalepn@cdc.v', N'Male', N'31-40', N'Indonesia', N'Parse',
        N'3 Scoville Hill');

INSERT INTO players
VALUES (925, N'Fair', N'Halewood', N'fhalewoodpo@people.com.cn', N'Female', N'21-30', N'Ukraine', N'Tysmenychany',
        N'4934 Burning Wood Circle');

INSERT INTO players
VALUES (926, N'Benjie', N'Tinsey', N'btinseypp@123-reg.co.uk', N'Male', N'41-50', N'China', N'Labao',
        N'85258 Arrowood Road');

INSERT INTO players
VALUES (927, N'Celisse', N'Dobrovolski', N'cdobrovolskipq@drupal.org', N'Female', N'10-21', N'Ukraine', N'Troyits’ke',
        N'4810 Bonner Trail');

INSERT INTO players
VALUES (928, N'Gaspar', N'Blackden', N'gblackdenpr@people.com.cn', N'Female', N'41-50', N'China', N'Xazgat',
        N'2933 Jenifer Junction');

INSERT INTO players
VALUES (929, N'Boyd', N'Bartomeu', N'bbartomeups@ogle.ca', N'Male', N'51-60', N'Philippines', N'Bukid',
        N'44543 5th Terrace');

INSERT INTO players
VALUES (930, N'Lacie', N'Timmis', N'ltimmispt@discovery.com', N'Female', N'10-21', N'China', N'Tanxi', N'2 Sage Trail');

INSERT INTO players
VALUES (931, N'Mordy', N'Kaysor', N'mkaysorpu@seesaa.net', N'Female', N'31-40', N'China', N'Huacao',
        N'03 Merrick Pass');

INSERT INTO players
VALUES (932, N'Scotti', N'Kibard', N'skibardpv@flavors.me', N'Male', N'10-21', N'Kazakhstan', N'Embi',
        N'944 Loomis Center');

INSERT INTO players
VALUES (933, N'Heather', N'Mathivat', N'hmathivatpw@ogle.cn', N'Male', N'51-60', N'Honduras', N'Corquín',
        N'5 Graedel Park');

INSERT INTO players
VALUES (934, N'Bernadine', N'Foskew', N'bfoskewpx@dell.com', N'Male', N'41-50', N'China', N'Chenjiatan',
        N'29495 Blue Bill Park Lane');

INSERT INTO players
VALUES (935, N'Kanya', N'Tarbin', N'ktarbinpy@yellowpages.com', N'Male', N'31-40', N'Russia', N'Irkutsk',
        N'7 Southridge Place');

INSERT INTO players
VALUES (936, N'Bethina', N'Rowney', N'browneypz@i2i.jp', N'Female', N'31-40', N'Malawi', N'Machinga',
        N'81 Annamark Parkway');

INSERT INTO players
VALUES (937, N'Jonathon', N'Scyone', N'jscyoneq0@devhub.com', N'Female', N'31-40', N'Indonesia', N'Cibo',
        N'869 Novick Center');

INSERT INTO players
VALUES (938, N'Isahella', N'Stearn', N'istearnq1@tiny.cc', N'Female', N'31-40', N'Argentina', N'Huinca Renancó',
        N'875 Lerdahl Center');

INSERT INTO players
VALUES (939, N'Carroll', N'Carvell', N'ccarvellq2@bloglovin.com', N'Male', N'41-50', N'Indonesia', N'Kutamangu',
        N'598 Grasskamp Hill');

INSERT INTO players
VALUES (940, N'Morgan', N'Budding', N'mbuddingq3@biglobe.ne.jp', N'Female', N'10-21', N'Russia', N'Sochi',
        N'24 Sloan Circle');

INSERT INTO players
VALUES (941, N'Husein', N'Pechacek', N'hpechacekq4@scientificamerican.com', N'Male', N'31-40', N'Russia', N'Vyksa',
        N'43181 Dennis Way');

INSERT INTO players
VALUES (942, N'Wakefield', N'Kennaway', N'wkennawayq5@admin.ch', N'Male', N'10-21', N'France', N'Creil',
        N'072 Lunder Alley');

INSERT INTO players
VALUES (943, N'Julietta', N'Beverage', N'jbeverageq6@ogle.ca', N'Male', N'41-50', N'United States', N'Rochester',
        N'8 David Road');

INSERT INTO players
VALUES (944, N'Rog', N'Tyrer', N'rtyrerq7@sbwire.com', N'Female', N'41-50', N'Nigeria', N'Rijau',
        N'10451 Miller Trail');

INSERT INTO players
VALUES (945, N'Alice', N'Bartoszewicz', N'abartoszewiczq8@rambler.ru', N'Male', N'51-60', N'China', N'Meicheng',
        N'785 Stoughton Plaza');

INSERT INTO players
VALUES (946, N'Benny', N'Eslie', N'beslieq9@census.v', N'Male', N'31-40', N'China', N'Long’an Chengxiangzhen',
        N'065 Stang Trail');

INSERT INTO players
VALUES (947, N'Brewster', N'Russi', N'brussiqa@xrea.com', N'Male', N'31-40', N'Philippines', N'Tignoan',
        N'57427 Red Cloud Terrace');

INSERT INTO players
VALUES (948, N'Jeane', N'Barnes', N'jbarnesqb@state.tx.us', N'Male', N'10-21', N'China', N'Leping',
        N'09 Carey Crossing');

INSERT INTO players
VALUES (949, N'Betsy', N'Massey', N'bmasseyqc@hp.com', N'Male', N'10-21', N'Poland', N'Olszanica', N'6113 Badeau Lane');

INSERT INTO players
VALUES (950, N'Vincenty', N'Nudd', N'vnuddqd@ca.v', N'Female', N'51-60', N'Indonesia', N'Kahabe', N'1811 Mayer Park');

INSERT INTO players
VALUES (951, N'Merrile', N'Storry', N'mstorryqe@theguardian.com', N'Male', N'21-30', N'Bangladesh', N'Pirojpur',
        N'49285 Manitowish Avenue');

INSERT INTO players
VALUES (952, N'Flori', N'Chalkly', N'fchalklyqf@irs.v', N'Female', N'51-60', N'Brazil', N'Pinhais', N'2 Jana Place');

INSERT INTO players
VALUES (953, N'Vin', N'Creasy', N'vcreasyqg@hao123.com', N'Female', N'31-40', N'Brazil', N'Carauari',
        N'017 Hansons Trail');

INSERT INTO players
VALUES (954, N'Hercule', N'Brotheridge', N'hbrotheridgeqh@networkadvertising.org', N'Female', N'51-60', N'Canada',
        N'Vegreville', N'0 Kipling Terrace');

INSERT INTO players
VALUES (955, N'Freda', N'Furphy', N'ffurphyqi@domainmarket.com', N'Female', N'21-30', N'Russia', N'Sinyavino',
        N'5 Vernon Avenue');

INSERT INTO players
VALUES (956, N'Filide', N'Davsley', N'fdavsleyqj@mapy.cz', N'Female', N'21-30', N'Indonesia', N'Bonsari',
        N'17880 Main Road');

INSERT INTO players
VALUES (957, N'Alma', N'Mitcham', N'amitchamqk@t-online.de', N'Female', N'41-50', N'Andorra', N'Sant Julià de Lòria',
        N'75622 Hoepker Parkway');

INSERT INTO players
VALUES (958, N'Aurlie', N'Van der Merwe', N'avandermerweql@unesco.org', N'Male', N'41-50', N'Panama', N'El Coco',
        N'93181 Scoville Hill');

INSERT INTO players
VALUES (959, N'Talya', N'Durran', N'tdurranqm@fc2.com', N'Female', N'21-30', N'Ireland', N'Kilmacanoge',
        N'870 International Pass');

INSERT INTO players
VALUES (960, N'Grenville', N'Aldie', N'galdieqn@telegraph.co.uk', N'Female', N'41-50', N'China', N'Keyinhe',
        N'95 Fieldstone Crossing');

INSERT INTO players
VALUES (961, N'Anders', N'Sugar', N'asugarqo@unesco.org', N'Male', N'41-50', N'United States', N'Oklahoma City',
        N'0935 Merchant Point');

INSERT INTO players
VALUES (962, N'Lauri', N'Graveson', N'lgravesonqp@unc.edu', N'Female', N'51-60', N'Portugal', N'São João do Campo',
        N'0494 Elka Park');

INSERT INTO players
VALUES (963, N'Tomi', N'Machans', N'tmachansqq@ucoz.ru', N'Female', N'41-50', N'Philippines', N'Guinabsan',
        N'075 Namekan Circle');

INSERT INTO players
VALUES (964, N'Rock', N'Flew', N'rflewqr@webnode.com', N'Female', N'21-30', N'Indonesia', N'Kenyau',
        N'62869 Kropf Road');

INSERT INTO players
VALUES (965, N'Klement', N'Shord', N'kshordqs@icio.us', N'Male', N'31-40', N'China', N'Guli', N'6 Sunnyside Street');

INSERT INTO players
VALUES (966, N'Roberto', N'Creaney', N'rcreaneyqt@cdbaby.com', N'Male', N'31-40', N'Uruguay', N'Baltasar Brum',
        N'3 Badeau Street');

INSERT INTO players
VALUES (967, N'Mitchel', N'MacCard', N'mmaccardqu@blogspot.com', N'Female', N'21-30', N'Argentina', N'Oro Verde',
        N'2 Morningstar Parkway');

INSERT INTO players
VALUES (968, N'Thomasina', N'Andrasch', N'tandraschqv@reverbnation.com', N'Female', N'51-60', N'Portugal', N'Ermida',
        N'2 Sycamore Center');

INSERT INTO players
VALUES (969, N'Marv', N'Caveill', N'mcaveillqw@icq.com', N'Female', N'31-40', N'Egypt', N'Samalut',
        N'7258 Holmberg Avenue');

INSERT INTO players
VALUES (970, N'Agnesse', N'Gaskal', N'agaskalqx@yahoo.co.jp', N'Male', N'31-40', N'Indonesia', N'Sumberjeruk',
        N'66803 Hoepker Park');

INSERT INTO players
VALUES (971, N'Clim', N'Ivain', N'civainqy@princeton.edu', N'Female', N'41-50', N'France', N'Chalon-sur-Saône',
        N'02 Ilene Avenue');

INSERT INTO players
VALUES (972, N'Mylo', N'Fairbridge', N'mfairbridgeqz@whitehouse.v', N'Male', N'51-60', N'Venezuela', N'Barinitas',
        N'12 Talmadge Hill');

INSERT INTO players
VALUES (973, N'Viki', N'Launder', N'vlaunderr0@hao123.com', N'Male', N'10-21', N'China', N'Qinggang',
        N'89467 Pankratz Avenue');

INSERT INTO players
VALUES (974, N'Lucila', N'L''oiseau', N'lloiseaur1@trellian.com', N'Male', N'31-40', N'Cuba', N'Cifuentes',
        N'38 Burning Wood Alley');

INSERT INTO players
VALUES (975, N'Marcus', N'O''Hannigan', N'mohanniganr2@bloomberg.com', N'Female', N'21-30', N'Jordan', N'‘Izra',
        N'41408 David Drive');

INSERT INTO players
VALUES (976, N'Ferdy', N'Oakeby', N'foakebyr3@mozilla.org', N'Male', N'10-21', N'Argentina', N'Dolores',
        N'39765 lf Course Place');

INSERT INTO players
VALUES (977, N'Dunc', N'Livett', N'dlivettr4@forbes.com', N'Female', N'10-21', N'Yemen', N'Az Zahir',
        N'8 Stuart Place');

INSERT INTO players
VALUES (978, N'Fiorenze', N'Woodcock', N'fwoodcockr5@theglobeandmail.com', N'Male', N'51-60', N'Libya', N'Al Abyar',
        N'1235 Jenna Plaza');

INSERT INTO players
VALUES (979, N'Jeane', N'Pawlyn', N'jpawlynr6@ovh.net', N'Female', N'21-30', N'France', N'Alès', N'98769 Express Pass');

INSERT INTO players
VALUES (980, N'Robbi', N'Simms', N'rsimmsr7@cam.ac.uk', N'Female', N'31-40', N'Russia', N'Pshekhskaya',
        N'113 Duke Plaza');

INSERT INTO players
VALUES (981, N'Angeli', N'Killock', N'akillockr8@furl.net', N'Male', N'10-21', N'Japan', N'Kariya',
        N'163 Schiller Crossing');

INSERT INTO players
VALUES (982, N'Prudy', N'Brandle', N'pbrandler9@foxnews.com', N'Female', N'10-21', N'Czech Republic', N'Nová Role',
        N'1 Merrick Plaza');

INSERT INTO players
VALUES (983, N'Carolin', N'Jedrych', N'cjedrychra@senate.v', N'Male', N'41-50', N'Russia', N'Srednebelaya',
        N'94 Cody Circle');

INSERT INTO players
VALUES (984, N'Valaria', N'Miles', N'vmilesrb@sciencedirect.com', N'Male', N'51-60', N'Indonesia', N'Dukuh Kaler',
        N'1 Lindbergh Parkway');

INSERT INTO players
VALUES (985, N'Jabez', N'Swiers', N'jswiersrc@icio.us', N'Female', N'31-40', N'Honduras', N'La Guama',
        N'1381 Stuart Junction');

INSERT INTO players
VALUES (986, N'Sawyer', N'Frandsen', N'sfrandsenrd@squarespace.com', N'Female', N'31-40', N'Cuba', N'Las Tunas',
        N'2 Brown Plaza');

INSERT INTO players
VALUES (987, N'Arnoldo', N'Notti', N'anottire@woothemes.com', N'Female', N'51-60', N'China', N'Zhaolingpu',
        N'26 Hansons Place');

INSERT INTO players
VALUES (988, N'Hilliary', N'Carrabot', N'hcarrabotrf@dyndns.org', N'Male', N'21-30', N'Thailand', N'Saba Yoi',
        N'954 Gateway Point');

INSERT INTO players
VALUES (989, N'Gustave', N'Perkis', N'gperkisrg@php.net', N'Female', N'10-21', N'France', N'Nantes',
        N'6182 Moland Court');

INSERT INTO game_sessions
VALUES (1, CAST(N'2022-03-13T06:17:36.000' AS timestamp), CAST(N'2022-03-13T08:34:27.000' AS timestamp), 824, 4);

INSERT INTO game_sessions
VALUES (2, CAST(N'2021-11-24T16:43:45.000' AS timestamp), CAST(N'2021-11-24T19:00:36.000' AS timestamp), 770, 1);

INSERT INTO game_sessions
VALUES (3, CAST(N'2022-05-04T18:04:37.000' AS timestamp), CAST(N'2022-05-04T20:21:28.000' AS timestamp), 224, 3);

INSERT INTO game_sessions
VALUES (4, CAST(N'2022-03-10T03:17:42.000' AS timestamp), CAST(N'2022-03-10T05:34:33.000' AS timestamp), 12, 1);

INSERT INTO game_sessions
VALUES (5, CAST(N'2021-10-24T01:05:24.000' AS timestamp), CAST(N'2021-10-24T03:22:15.000' AS timestamp), 715, 1);

INSERT INTO game_sessions
VALUES (6, CAST(N'2022-07-23T06:47:51.000' AS timestamp), CAST(N'2022-07-23T09:04:42.000' AS timestamp), 940, 1);

INSERT INTO game_sessions
VALUES (7, CAST(N'2021-08-03T05:51:30.000' AS timestamp), CAST(N'2021-08-03T08:08:21.000' AS timestamp), 248, 3);

INSERT INTO game_sessions
VALUES (8, CAST(N'2022-02-24T19:07:14.000' AS timestamp), CAST(N'2022-02-24T21:24:05.000' AS timestamp), 99, 1);

INSERT INTO game_sessions
VALUES (9, CAST(N'2021-07-31T11:33:26.000' AS timestamp), CAST(N'2021-07-31T13:50:17.000' AS timestamp), 852, 3);

INSERT INTO game_sessions
VALUES (10, CAST(N'2022-01-07T15:24:36.000' AS timestamp), CAST(N'2022-01-07T17:41:27.000' AS timestamp), 648, 2);

INSERT INTO game_sessions
VALUES (11, CAST(N'2021-08-18T03:42:08.000' AS timestamp), CAST(N'2021-08-18T05:58:59.000' AS timestamp), 776, 3);

INSERT INTO game_sessions
VALUES (12, CAST(N'2022-07-27T18:40:17.000' AS timestamp), CAST(N'2022-07-27T20:57:08.000' AS timestamp), 296, 2);

INSERT INTO game_sessions
VALUES (13, CAST(N'2021-08-15T19:16:22.000' AS timestamp), CAST(N'2021-08-15T21:33:13.000' AS timestamp), 839, 3);

INSERT INTO game_sessions
VALUES (14, CAST(N'2022-02-04T18:24:22.000' AS timestamp), CAST(N'2022-02-04T20:41:13.000' AS timestamp), 787, 1);

INSERT INTO game_sessions
VALUES (15, CAST(N'2022-01-09T10:42:35.000' AS timestamp), CAST(N'2022-01-09T12:59:26.000' AS timestamp), 177, 4);

INSERT INTO game_sessions
VALUES (16, CAST(N'2022-06-21T03:05:28.000' AS timestamp), CAST(N'2022-06-21T05:22:19.000' AS timestamp), 433, 4);

INSERT INTO game_sessions
VALUES (17, CAST(N'2022-06-26T00:50:35.000' AS timestamp), CAST(N'2022-06-26T03:07:26.000' AS timestamp), 277, 3);

INSERT INTO game_sessions
VALUES (18, CAST(N'2022-01-11T07:59:44.000' AS timestamp), CAST(N'2022-01-11T10:16:35.000' AS timestamp), 724, 4);

INSERT INTO game_sessions
VALUES (19, CAST(N'2021-09-02T14:46:46.000' AS timestamp), CAST(N'2021-09-02T17:03:37.000' AS timestamp), 178, 4);

INSERT INTO game_sessions
VALUES (20, CAST(N'2021-10-23T09:49:38.000' AS timestamp), CAST(N'2021-10-23T12:06:29.000' AS timestamp), 103, 4);

INSERT INTO game_sessions
VALUES (21, CAST(N'2022-03-21T19:05:58.000' AS timestamp), CAST(N'2022-03-21T21:22:49.000' AS timestamp), 376, 2);

INSERT INTO game_sessions
VALUES (22, CAST(N'2021-10-30T08:20:56.000' AS timestamp), CAST(N'2021-10-30T10:37:47.000' AS timestamp), 523, 3);

INSERT INTO game_sessions
VALUES (23, CAST(N'2022-07-24T19:40:45.000' AS timestamp), CAST(N'2022-07-24T21:57:36.000' AS timestamp), 728, 2);

INSERT INTO game_sessions
VALUES (24, CAST(N'2021-11-02T07:39:52.000' AS timestamp), CAST(N'2021-11-02T09:56:43.000' AS timestamp), 718, 3);

INSERT INTO game_sessions
VALUES (25, CAST(N'2022-07-25T22:31:59.000' AS timestamp), CAST(N'2022-07-26T00:48:50.000' AS timestamp), 795, 1);

INSERT INTO game_sessions
VALUES (26, CAST(N'2022-05-22T15:23:54.000' AS timestamp), CAST(N'2022-05-22T17:40:45.000' AS timestamp), 579, 2);

INSERT INTO game_sessions
VALUES (27, CAST(N'2022-01-20T11:33:51.000' AS timestamp), CAST(N'2022-01-20T13:50:42.000' AS timestamp), 912, 1);

INSERT INTO game_sessions
VALUES (28, CAST(N'2022-01-23T11:49:46.000' AS timestamp), CAST(N'2022-01-23T14:06:37.000' AS timestamp), 66, 4);

INSERT INTO game_sessions
VALUES (29, CAST(N'2021-07-31T12:33:31.000' AS timestamp), CAST(N'2021-07-31T14:50:22.000' AS timestamp), 951, 4);

INSERT INTO game_sessions
VALUES (30, CAST(N'2022-06-10T12:17:08.000' AS timestamp), CAST(N'2022-06-10T14:33:59.000' AS timestamp), 474, 2);

INSERT INTO game_sessions
VALUES (31, CAST(N'2022-02-19T15:47:10.000' AS timestamp), CAST(N'2022-02-19T18:04:01.000' AS timestamp), 294, 3);

INSERT INTO game_sessions
VALUES (32, CAST(N'2022-01-06T17:09:58.000' AS timestamp), CAST(N'2022-01-06T19:26:49.000' AS timestamp), 404, 2);

INSERT INTO game_sessions
VALUES (33, CAST(N'2022-05-30T15:04:21.000' AS timestamp), CAST(N'2022-05-30T17:21:12.000' AS timestamp), 897, 4);

INSERT INTO game_sessions
VALUES (34, CAST(N'2021-11-19T09:14:21.000' AS timestamp), CAST(N'2021-11-19T11:31:12.000' AS timestamp), 327, 4);

INSERT INTO game_sessions
VALUES (35, CAST(N'2021-11-19T22:34:24.000' AS timestamp), CAST(N'2021-11-20T00:51:15.000' AS timestamp), 997, 3);

INSERT INTO game_sessions
VALUES (36, CAST(N'2021-12-22T13:15:11.000' AS timestamp), CAST(N'2021-12-22T15:32:02.000' AS timestamp), 217, 3);

INSERT INTO game_sessions
VALUES (37, CAST(N'2022-07-04T12:19:28.000' AS timestamp), CAST(N'2022-07-04T14:36:19.000' AS timestamp), 833, 4);

INSERT INTO game_sessions
VALUES (38, CAST(N'2022-03-05T22:39:12.000' AS timestamp), CAST(N'2022-03-06T00:56:03.000' AS timestamp), 489, 3);

INSERT INTO game_sessions
VALUES (39, CAST(N'2021-11-02T19:43:04.000' AS timestamp), CAST(N'2021-11-02T21:59:55.000' AS timestamp), 982, 3);

INSERT INTO game_sessions
VALUES (40, CAST(N'2021-10-14T19:53:19.000' AS timestamp), CAST(N'2021-10-14T22:10:10.000' AS timestamp), 642, 4);

INSERT INTO game_sessions
VALUES (41, CAST(N'2021-11-23T01:24:07.000' AS timestamp), CAST(N'2021-11-23T03:40:58.000' AS timestamp), 541, 3);

INSERT INTO game_sessions
VALUES (42, CAST(N'2022-03-13T15:47:39.000' AS timestamp), CAST(N'2022-03-13T18:04:30.000' AS timestamp), 568, 3);

INSERT INTO game_sessions
VALUES (43, CAST(N'2022-06-14T05:25:55.000' AS timestamp), CAST(N'2022-06-14T07:42:46.000' AS timestamp), 413, 2);

INSERT INTO game_sessions
VALUES (44, CAST(N'2022-05-05T03:34:48.000' AS timestamp), CAST(N'2022-05-05T05:51:39.000' AS timestamp), 494, 2);

INSERT INTO game_sessions
VALUES (45, CAST(N'2022-03-10T06:53:01.000' AS timestamp), CAST(N'2022-03-10T09:09:52.000' AS timestamp), 317, 1);

INSERT INTO game_sessions
VALUES (46, CAST(N'2022-03-14T12:25:40.000' AS timestamp), CAST(N'2022-03-14T14:42:31.000' AS timestamp), 727, 1);

INSERT INTO game_sessions
VALUES (47, CAST(N'2021-10-08T21:30:12.000' AS timestamp), CAST(N'2021-10-08T23:47:03.000' AS timestamp), 634, 4);

INSERT INTO game_sessions
VALUES (48, CAST(N'2022-04-16T09:17:31.000' AS timestamp), CAST(N'2022-04-16T11:34:22.000' AS timestamp), 116, 1);

INSERT INTO game_sessions
VALUES (49, CAST(N'2021-08-16T02:49:59.000' AS timestamp), CAST(N'2021-08-16T05:06:50.000' AS timestamp), 451, 1);

INSERT INTO game_sessions
VALUES (50, CAST(N'2022-05-26T03:21:24.000' AS timestamp), CAST(N'2022-05-26T05:38:15.000' AS timestamp), 474, 4);

INSERT INTO game_sessions
VALUES (51, CAST(N'2022-06-11T13:28:54.000' AS timestamp), CAST(N'2022-06-11T15:45:45.000' AS timestamp), 560, 2);

INSERT INTO game_sessions
VALUES (52, CAST(N'2021-10-09T19:38:27.000' AS timestamp), CAST(N'2021-10-09T21:55:18.000' AS timestamp), 831, 2);

INSERT INTO game_sessions
VALUES (53, CAST(N'2021-12-29T21:30:13.000' AS timestamp), CAST(N'2021-12-29T23:47:04.000' AS timestamp), 10, 2);

INSERT INTO game_sessions
VALUES (54, CAST(N'2021-11-07T10:44:42.000' AS timestamp), CAST(N'2021-11-07T13:01:33.000' AS timestamp), 598, 3);

INSERT INTO game_sessions
VALUES (55, CAST(N'2022-01-17T05:59:49.000' AS timestamp), CAST(N'2022-01-17T08:16:40.000' AS timestamp), 714, 4);

INSERT INTO game_sessions
VALUES (56, CAST(N'2021-09-11T23:07:54.000' AS timestamp), CAST(N'2021-09-12T01:24:45.000' AS timestamp), 238, 4);

INSERT INTO game_sessions
VALUES (57, CAST(N'2021-10-11T11:32:50.000' AS timestamp), CAST(N'2021-10-11T13:49:41.000' AS timestamp), 658, 3);

INSERT INTO game_sessions
VALUES (58, CAST(N'2021-07-31T17:12:05.000' AS timestamp), CAST(N'2021-07-31T19:28:56.000' AS timestamp), 143, 3);

INSERT INTO game_sessions
VALUES (59, CAST(N'2021-12-05T02:41:44.000' AS timestamp), CAST(N'2021-12-05T04:58:35.000' AS timestamp), 417, 4);

INSERT INTO game_sessions
VALUES (60, CAST(N'2021-08-03T02:03:12.000' AS timestamp), CAST(N'2021-08-03T04:20:03.000' AS timestamp), 945, 4);

INSERT INTO game_sessions
VALUES (61, CAST(N'2022-01-04T22:30:15.000' AS timestamp), CAST(N'2022-01-05T00:47:06.000' AS timestamp), 780, 4);

INSERT INTO game_sessions
VALUES (62, CAST(N'2022-07-09T20:56:13.000' AS timestamp), CAST(N'2022-07-09T23:13:04.000' AS timestamp), 885, 2);

INSERT INTO game_sessions
VALUES (63, CAST(N'2022-03-24T12:18:39.000' AS timestamp), CAST(N'2022-03-24T14:35:30.000' AS timestamp), 238, 3);

INSERT INTO game_sessions
VALUES (64, CAST(N'2022-02-22T01:57:05.000' AS timestamp), CAST(N'2022-02-22T04:13:56.000' AS timestamp), 793, 3);

INSERT INTO game_sessions
VALUES (65, CAST(N'2022-04-21T09:28:34.000' AS timestamp), CAST(N'2022-04-21T11:45:25.000' AS timestamp), 325, 1);

INSERT INTO game_sessions
VALUES (66, CAST(N'2022-01-25T18:24:55.000' AS timestamp), CAST(N'2022-01-25T20:41:46.000' AS timestamp), 568, 2);

INSERT INTO game_sessions
VALUES (67, CAST(N'2021-10-23T12:38:01.000' AS timestamp), CAST(N'2021-10-23T14:54:52.000' AS timestamp), 129, 4);

INSERT INTO game_sessions
VALUES (68, CAST(N'2022-03-31T16:05:55.000' AS timestamp), CAST(N'2022-03-31T18:22:46.000' AS timestamp), 668, 3);

INSERT INTO game_sessions
VALUES (69, CAST(N'2022-05-31T15:12:22.000' AS timestamp), CAST(N'2022-05-31T17:29:13.000' AS timestamp), 758, 2);

INSERT INTO game_sessions
VALUES (70, CAST(N'2022-02-17T02:14:17.000' AS timestamp), CAST(N'2022-02-17T04:31:08.000' AS timestamp), 281, 1);

INSERT INTO game_sessions
VALUES (71, CAST(N'2022-03-29T05:53:12.000' AS timestamp), CAST(N'2022-03-29T08:10:03.000' AS timestamp), 880, 3);

INSERT INTO game_sessions
VALUES (72, CAST(N'2021-12-09T07:38:06.000' AS timestamp), CAST(N'2021-12-09T09:54:57.000' AS timestamp), 797, 4);

INSERT INTO game_sessions
VALUES (73, CAST(N'2021-12-25T08:21:05.000' AS timestamp), CAST(N'2021-12-25T10:37:56.000' AS timestamp), 847, 3);

INSERT INTO game_sessions
VALUES (74, CAST(N'2021-10-18T13:52:07.000' AS timestamp), CAST(N'2021-10-18T16:08:58.000' AS timestamp), 264, 4);

INSERT INTO game_sessions
VALUES (75, CAST(N'2022-06-29T14:18:17.000' AS timestamp), CAST(N'2022-06-29T16:35:08.000' AS timestamp), 375, 2);

INSERT INTO game_sessions
VALUES (76, CAST(N'2022-06-23T13:27:39.000' AS timestamp), CAST(N'2022-06-23T15:44:30.000' AS timestamp), 915, 1);

INSERT INTO game_sessions
VALUES (77, CAST(N'2022-07-13T03:54:00.000' AS timestamp), CAST(N'2022-07-13T06:10:51.000' AS timestamp), 251, 1);

INSERT INTO game_sessions
VALUES (78, CAST(N'2021-11-06T07:30:41.000' AS timestamp), CAST(N'2021-11-06T09:47:32.000' AS timestamp), 747, 1);

INSERT INTO game_sessions
VALUES (79, CAST(N'2022-06-10T12:01:53.000' AS timestamp), CAST(N'2022-06-10T14:18:44.000' AS timestamp), 332, 4);

INSERT INTO game_sessions
VALUES (80, CAST(N'2021-12-02T06:35:16.000' AS timestamp), CAST(N'2021-12-02T08:52:07.000' AS timestamp), 941, 2);

INSERT INTO game_sessions
VALUES (81, CAST(N'2022-05-03T10:11:29.000' AS timestamp), CAST(N'2022-05-03T12:28:20.000' AS timestamp), 526, 1);

INSERT INTO game_sessions
VALUES (82, CAST(N'2022-05-23T23:28:07.000' AS timestamp), CAST(N'2022-05-24T01:44:58.000' AS timestamp), 54, 1);

INSERT INTO game_sessions
VALUES (83, CAST(N'2021-10-11T15:49:32.000' AS timestamp), CAST(N'2021-10-11T18:06:23.000' AS timestamp), 31, 4);

INSERT INTO game_sessions
VALUES (84, CAST(N'2021-08-29T18:00:16.000' AS timestamp), CAST(N'2021-08-29T20:17:07.000' AS timestamp), 75, 2);

INSERT INTO game_sessions
VALUES (85, CAST(N'2021-10-19T06:27:52.000' AS timestamp), CAST(N'2021-10-19T08:44:43.000' AS timestamp), 796, 3);

INSERT INTO game_sessions
VALUES (86, CAST(N'2022-01-28T04:58:26.000' AS timestamp), CAST(N'2022-01-28T07:15:17.000' AS timestamp), 431, 2);

INSERT INTO game_sessions
VALUES (87, CAST(N'2021-09-21T16:16:34.000' AS timestamp), CAST(N'2021-09-21T18:33:25.000' AS timestamp), 706, 1);

INSERT INTO game_sessions
VALUES (88, CAST(N'2022-02-22T11:21:45.000' AS timestamp), CAST(N'2022-02-22T13:38:36.000' AS timestamp), 50, 4);

INSERT INTO game_sessions
VALUES (89, CAST(N'2022-07-21T15:04:42.000' AS timestamp), CAST(N'2022-07-21T17:21:33.000' AS timestamp), 193, 3);

INSERT INTO game_sessions
VALUES (90, CAST(N'2022-01-25T01:45:40.000' AS timestamp), CAST(N'2022-01-25T04:02:31.000' AS timestamp), 27, 3);

INSERT INTO game_sessions
VALUES (91, CAST(N'2021-08-03T04:34:19.000' AS timestamp), CAST(N'2021-08-03T06:51:10.000' AS timestamp), 714, 4);

INSERT INTO game_sessions
VALUES (92, CAST(N'2022-03-23T03:58:12.000' AS timestamp), CAST(N'2022-03-23T06:15:03.000' AS timestamp), 758, 2);

INSERT INTO game_sessions
VALUES (93, CAST(N'2021-09-29T05:58:39.000' AS timestamp), CAST(N'2021-09-29T08:15:30.000' AS timestamp), 838, 1);

INSERT INTO game_sessions
VALUES (94, CAST(N'2021-08-12T11:25:57.000' AS timestamp), CAST(N'2021-08-12T13:42:48.000' AS timestamp), 542, 3);

INSERT INTO game_sessions
VALUES (95, CAST(N'2021-08-16T10:01:31.000' AS timestamp), CAST(N'2021-08-16T12:18:22.000' AS timestamp), 953, 4);

INSERT INTO game_sessions
VALUES (96, CAST(N'2021-08-07T19:09:57.000' AS timestamp), CAST(N'2021-08-07T21:26:48.000' AS timestamp), 613, 1);

INSERT INTO game_sessions
VALUES (97, CAST(N'2022-07-15T10:15:58.000' AS timestamp), CAST(N'2022-07-15T12:32:49.000' AS timestamp), 383, 3);

INSERT INTO game_sessions
VALUES (98, CAST(N'2022-05-16T19:59:06.000' AS timestamp), CAST(N'2022-05-16T22:15:57.000' AS timestamp), 636, 4);

INSERT INTO game_sessions
VALUES (99, CAST(N'2022-02-17T13:15:14.000' AS timestamp), CAST(N'2022-02-17T15:32:05.000' AS timestamp), 571, 4);

INSERT INTO game_sessions
VALUES (100, CAST(N'2022-01-01T15:00:52.000' AS timestamp), CAST(N'2022-01-01T17:17:43.000' AS timestamp), 67, 4);

INSERT INTO game_sessions
VALUES (101, CAST(N'2021-09-03T16:29:33.000' AS timestamp), CAST(N'2021-09-03T18:46:24.000' AS timestamp), 723, 2);

INSERT INTO game_sessions
VALUES (102, CAST(N'2022-05-09T15:47:03.000' AS timestamp), CAST(N'2022-05-09T18:03:54.000' AS timestamp), 577, 2);

INSERT INTO game_sessions
VALUES (103, CAST(N'2021-08-22T19:57:41.000' AS timestamp), CAST(N'2021-08-22T22:14:32.000' AS timestamp), 832, 2);

INSERT INTO game_sessions
VALUES (104, CAST(N'2022-07-13T10:35:05.000' AS timestamp), CAST(N'2022-07-13T12:51:56.000' AS timestamp), 748, 2);

INSERT INTO game_sessions
VALUES (105, CAST(N'2021-12-27T13:35:17.000' AS timestamp), CAST(N'2021-12-27T15:52:08.000' AS timestamp), 670, 1);

INSERT INTO game_sessions
VALUES (106, CAST(N'2022-01-22T10:56:23.000' AS timestamp), CAST(N'2022-01-22T13:13:14.000' AS timestamp), 926, 1);

INSERT INTO game_sessions
VALUES (107, CAST(N'2022-01-21T00:12:48.000' AS timestamp), CAST(N'2022-01-21T02:29:39.000' AS timestamp), 472, 3);

INSERT INTO game_sessions
VALUES (108, CAST(N'2022-04-14T01:34:13.000' AS timestamp), CAST(N'2022-04-14T03:51:04.000' AS timestamp), 433, 1);

INSERT INTO game_sessions
VALUES (109, CAST(N'2021-09-08T09:44:38.000' AS timestamp), CAST(N'2021-09-08T12:01:29.000' AS timestamp), 818, 1);

INSERT INTO game_sessions
VALUES (110, CAST(N'2021-10-12T00:56:08.000' AS timestamp), CAST(N'2021-10-12T03:12:59.000' AS timestamp), 575, 4);

INSERT INTO game_sessions
VALUES (111, CAST(N'2021-08-07T05:01:09.000' AS timestamp), CAST(N'2021-08-07T07:18:00.000' AS timestamp), 340, 3);

INSERT INTO game_sessions
VALUES (112, CAST(N'2021-12-19T21:02:03.000' AS timestamp), CAST(N'2021-12-19T23:18:54.000' AS timestamp), 201, 4);

INSERT INTO game_sessions
VALUES (113, CAST(N'2021-11-03T01:40:00.000' AS timestamp), CAST(N'2021-11-03T03:56:51.000' AS timestamp), 538, 3);

INSERT INTO game_sessions
VALUES (114, CAST(N'2022-07-11T19:19:14.000' AS timestamp), CAST(N'2022-07-11T21:36:05.000' AS timestamp), 745, 4);

INSERT INTO game_sessions
VALUES (115, CAST(N'2021-08-12T23:11:05.000' AS timestamp), CAST(N'2021-08-13T01:27:56.000' AS timestamp), 463, 1);

INSERT INTO game_sessions
VALUES (116, CAST(N'2021-08-24T21:27:28.000' AS timestamp), CAST(N'2021-08-24T23:44:19.000' AS timestamp), 288, 3);

INSERT INTO game_sessions
VALUES (117, CAST(N'2021-10-04T09:09:03.000' AS timestamp), CAST(N'2021-10-04T11:25:54.000' AS timestamp), 951, 1);

INSERT INTO game_sessions
VALUES (118, CAST(N'2021-12-19T11:47:52.000' AS timestamp), CAST(N'2021-12-19T14:04:43.000' AS timestamp), 944, 3);

INSERT INTO game_sessions
VALUES (119, CAST(N'2021-11-17T22:57:39.000' AS timestamp), CAST(N'2021-11-18T01:14:30.000' AS timestamp), 113, 1);

INSERT INTO game_sessions
VALUES (120, CAST(N'2021-12-20T21:31:44.000' AS timestamp), CAST(N'2021-12-20T23:48:35.000' AS timestamp), 433, 3);

INSERT INTO game_sessions
VALUES (121, CAST(N'2021-09-14T12:57:25.000' AS timestamp), CAST(N'2021-09-14T15:14:16.000' AS timestamp), 719, 4);

INSERT INTO game_sessions
VALUES (122, CAST(N'2021-12-06T20:03:18.000' AS timestamp), CAST(N'2021-12-06T22:20:09.000' AS timestamp), 773, 3);

INSERT INTO game_sessions
VALUES (123, CAST(N'2022-02-20T21:50:08.000' AS timestamp), CAST(N'2022-02-21T00:06:59.000' AS timestamp), 150, 2);

INSERT INTO game_sessions
VALUES (124, CAST(N'2021-09-30T14:22:48.000' AS timestamp), CAST(N'2021-09-30T16:39:39.000' AS timestamp), 480, 4);

INSERT INTO game_sessions
VALUES (125, CAST(N'2022-02-14T06:57:27.000' AS timestamp), CAST(N'2022-02-14T09:14:18.000' AS timestamp), 447, 2);

INSERT INTO game_sessions
VALUES (126, CAST(N'2021-12-28T12:43:34.000' AS timestamp), CAST(N'2021-12-28T15:00:25.000' AS timestamp), 443, 3);

INSERT INTO game_sessions
VALUES (127, CAST(N'2021-08-12T11:14:08.000' AS timestamp), CAST(N'2021-08-12T13:30:59.000' AS timestamp), 675, 1);

INSERT INTO game_sessions
VALUES (128, CAST(N'2022-07-10T06:32:18.000' AS timestamp), CAST(N'2022-07-10T08:49:09.000' AS timestamp), 731, 3);

INSERT INTO game_sessions
VALUES (129, CAST(N'2022-01-28T03:36:56.000' AS timestamp), CAST(N'2022-01-28T05:53:47.000' AS timestamp), 462, 4);

INSERT INTO game_sessions
VALUES (130, CAST(N'2021-11-22T08:26:26.000' AS timestamp), CAST(N'2021-11-22T10:43:17.000' AS timestamp), 1000, 4);

INSERT INTO game_sessions
VALUES (131, CAST(N'2022-04-23T09:54:52.000' AS timestamp), CAST(N'2022-04-23T12:11:43.000' AS timestamp), 524, 4);

INSERT INTO game_sessions
VALUES (132, CAST(N'2021-12-09T12:30:15.000' AS timestamp), CAST(N'2021-12-09T14:47:06.000' AS timestamp), 723, 1);

INSERT INTO game_sessions
VALUES (133, CAST(N'2021-09-20T23:51:26.000' AS timestamp), CAST(N'2021-09-21T02:08:17.000' AS timestamp), 893, 2);

INSERT INTO game_sessions
VALUES (134, CAST(N'2022-07-05T05:20:55.000' AS timestamp), CAST(N'2022-07-05T07:37:46.000' AS timestamp), 800, 2);

INSERT INTO game_sessions
VALUES (135, CAST(N'2022-04-30T18:34:11.000' AS timestamp), CAST(N'2022-04-30T20:51:02.000' AS timestamp), 25, 2);

INSERT INTO game_sessions
VALUES (136, CAST(N'2021-11-30T14:46:21.000' AS timestamp), CAST(N'2021-11-30T17:03:12.000' AS timestamp), 246, 3);

INSERT INTO game_sessions
VALUES (137, CAST(N'2021-10-23T10:04:12.000' AS timestamp), CAST(N'2021-10-23T12:21:03.000' AS timestamp), 283, 1);

INSERT INTO game_sessions
VALUES (138, CAST(N'2021-11-13T22:01:31.000' AS timestamp), CAST(N'2021-11-14T00:18:22.000' AS timestamp), 864, 4);

INSERT INTO game_sessions
VALUES (139, CAST(N'2022-03-14T04:40:54.000' AS timestamp), CAST(N'2022-03-14T06:57:45.000' AS timestamp), 313, 4);

INSERT INTO game_sessions
VALUES (140, CAST(N'2022-07-08T12:32:07.000' AS timestamp), CAST(N'2022-07-08T14:48:58.000' AS timestamp), 751, 2);

INSERT INTO game_sessions
VALUES (141, CAST(N'2021-09-16T14:02:51.000' AS timestamp), CAST(N'2021-09-16T16:19:42.000' AS timestamp), 683, 1);

INSERT INTO game_sessions
VALUES (142, CAST(N'2022-07-13T18:35:47.000' AS timestamp), CAST(N'2022-07-13T20:52:38.000' AS timestamp), 912, 4);

INSERT INTO game_sessions
VALUES (143, CAST(N'2021-09-10T10:50:56.000' AS timestamp), CAST(N'2021-09-10T13:07:47.000' AS timestamp), 135, 2);

INSERT INTO game_sessions
VALUES (144, CAST(N'2021-08-10T06:11:07.000' AS timestamp), CAST(N'2021-08-10T08:27:58.000' AS timestamp), 104, 1);

INSERT INTO game_sessions
VALUES (145, CAST(N'2022-05-22T17:18:58.000' AS timestamp), CAST(N'2022-05-22T19:35:49.000' AS timestamp), 478, 2);

INSERT INTO game_sessions
VALUES (146, CAST(N'2021-10-02T23:21:59.000' AS timestamp), CAST(N'2021-10-03T01:38:50.000' AS timestamp), 446, 4);

INSERT INTO game_sessions
VALUES (147, CAST(N'2021-10-13T02:08:14.000' AS timestamp), CAST(N'2021-10-13T04:25:05.000' AS timestamp), 403, 1);

INSERT INTO game_sessions
VALUES (148, CAST(N'2021-08-27T21:29:08.000' AS timestamp), CAST(N'2021-08-27T23:45:59.000' AS timestamp), 325, 4);

INSERT INTO game_sessions
VALUES (149, CAST(N'2022-01-07T19:04:45.000' AS timestamp), CAST(N'2022-01-07T21:21:36.000' AS timestamp), 568, 1);

INSERT INTO game_sessions
VALUES (150, CAST(N'2022-06-27T08:11:13.000' AS timestamp), CAST(N'2022-06-27T10:28:04.000' AS timestamp), 494, 2);

INSERT INTO game_sessions
VALUES (151, CAST(N'2022-01-08T07:06:40.000' AS timestamp), CAST(N'2022-01-08T09:23:31.000' AS timestamp), 214, 4);

INSERT INTO game_sessions
VALUES (152, CAST(N'2022-04-28T20:37:38.000' AS timestamp), CAST(N'2022-04-28T22:54:29.000' AS timestamp), 555, 1);

INSERT INTO game_sessions
VALUES (153, CAST(N'2022-06-19T01:52:35.000' AS timestamp), CAST(N'2022-06-19T04:09:26.000' AS timestamp), 846, 3);

INSERT INTO game_sessions
VALUES (154, CAST(N'2022-01-10T21:43:52.000' AS timestamp), CAST(N'2022-01-11T00:00:43.000' AS timestamp), 413, 1);

INSERT INTO game_sessions
VALUES (155, CAST(N'2021-10-04T07:56:08.000' AS timestamp), CAST(N'2021-10-04T10:12:59.000' AS timestamp), 729, 1);

INSERT INTO game_sessions
VALUES (156, CAST(N'2022-02-22T17:00:07.000' AS timestamp), CAST(N'2022-02-22T19:16:58.000' AS timestamp), 280, 4);

INSERT INTO game_sessions
VALUES (157, CAST(N'2022-07-08T17:21:42.000' AS timestamp), CAST(N'2022-07-08T19:38:33.000' AS timestamp), 837, 2);

INSERT INTO game_sessions
VALUES (158, CAST(N'2022-07-18T05:53:01.000' AS timestamp), CAST(N'2022-07-18T08:09:52.000' AS timestamp), 411, 1);

INSERT INTO game_sessions
VALUES (159, CAST(N'2021-10-21T16:04:37.000' AS timestamp), CAST(N'2021-10-21T18:21:28.000' AS timestamp), 58, 1);

INSERT INTO game_sessions
VALUES (160, CAST(N'2021-10-09T08:51:31.000' AS timestamp), CAST(N'2021-10-09T11:08:22.000' AS timestamp), 756, 3);

INSERT INTO game_sessions
VALUES (161, CAST(N'2021-10-20T07:39:38.000' AS timestamp), CAST(N'2021-10-20T09:56:29.000' AS timestamp), 552, 2);

INSERT INTO game_sessions
VALUES (162, CAST(N'2021-08-29T06:29:11.000' AS timestamp), CAST(N'2021-08-29T08:46:02.000' AS timestamp), 340, 4);

INSERT INTO game_sessions
VALUES (163, CAST(N'2021-12-09T15:46:25.000' AS timestamp), CAST(N'2021-12-09T18:03:16.000' AS timestamp), 374, 4);

INSERT INTO game_sessions
VALUES (164, CAST(N'2022-01-26T20:35:12.000' AS timestamp), CAST(N'2022-01-26T22:52:03.000' AS timestamp), 649, 2);

INSERT INTO game_sessions
VALUES (165, CAST(N'2021-08-28T10:18:35.000' AS timestamp), CAST(N'2021-08-28T12:35:26.000' AS timestamp), 663, 2);

INSERT INTO game_sessions
VALUES (166, CAST(N'2022-06-02T12:05:33.000' AS timestamp), CAST(N'2022-06-02T14:22:24.000' AS timestamp), 468, 1);

INSERT INTO game_sessions
VALUES (167, CAST(N'2022-05-05T03:16:34.000' AS timestamp), CAST(N'2022-05-05T05:33:25.000' AS timestamp), 719, 4);

INSERT INTO game_sessions
VALUES (168, CAST(N'2022-05-19T06:19:51.000' AS timestamp), CAST(N'2022-05-19T08:36:42.000' AS timestamp), 604, 1);

INSERT INTO game_sessions
VALUES (169, CAST(N'2021-10-24T21:01:23.000' AS timestamp), CAST(N'2021-10-24T23:18:14.000' AS timestamp), 500, 1);

INSERT INTO game_sessions
VALUES (170, CAST(N'2021-11-02T17:24:28.000' AS timestamp), CAST(N'2021-11-02T19:41:19.000' AS timestamp), 301, 4);

INSERT INTO game_sessions
VALUES (171, CAST(N'2021-12-25T10:04:41.000' AS timestamp), CAST(N'2021-12-25T12:21:32.000' AS timestamp), 142, 2);

INSERT INTO game_sessions
VALUES (172, CAST(N'2021-11-22T15:21:26.000' AS timestamp), CAST(N'2021-11-22T17:38:17.000' AS timestamp), 320, 1);

INSERT INTO game_sessions
VALUES (173, CAST(N'2021-11-09T00:21:39.000' AS timestamp), CAST(N'2021-11-09T02:38:30.000' AS timestamp), 16, 3);

INSERT INTO game_sessions
VALUES (174, CAST(N'2021-12-12T05:10:04.000' AS timestamp), CAST(N'2021-12-12T07:26:55.000' AS timestamp), 674, 2);

INSERT INTO game_sessions
VALUES (175, CAST(N'2022-06-08T13:21:43.000' AS timestamp), CAST(N'2022-06-08T15:38:34.000' AS timestamp), 131, 1);

INSERT INTO game_sessions
VALUES (176, CAST(N'2021-12-19T11:04:38.000' AS timestamp), CAST(N'2021-12-19T13:21:29.000' AS timestamp), 695, 1);

INSERT INTO game_sessions
VALUES (177, CAST(N'2021-08-19T07:19:30.000' AS timestamp), CAST(N'2021-08-19T09:36:21.000' AS timestamp), 969, 2);

INSERT INTO game_sessions
VALUES (178, CAST(N'2022-07-15T03:43:02.000' AS timestamp), CAST(N'2022-07-15T05:59:53.000' AS timestamp), 593, 3);

INSERT INTO game_sessions
VALUES (179, CAST(N'2022-04-14T09:49:51.000' AS timestamp), CAST(N'2022-04-14T12:06:42.000' AS timestamp), 598, 4);

INSERT INTO game_sessions
VALUES (180, CAST(N'2022-04-14T20:11:26.000' AS timestamp), CAST(N'2022-04-14T22:28:17.000' AS timestamp), 400, 1);

INSERT INTO game_sessions
VALUES (181, CAST(N'2022-03-07T00:41:52.000' AS timestamp), CAST(N'2022-03-07T02:58:43.000' AS timestamp), 552, 1);

INSERT INTO game_sessions
VALUES (182, CAST(N'2021-11-27T11:36:18.000' AS timestamp), CAST(N'2021-11-27T13:53:09.000' AS timestamp), 228, 3);

INSERT INTO game_sessions
VALUES (183, CAST(N'2022-03-04T00:01:45.000' AS timestamp), CAST(N'2022-03-04T02:18:36.000' AS timestamp), 704, 2);

INSERT INTO game_sessions
VALUES (184, CAST(N'2021-10-30T16:27:44.000' AS timestamp), CAST(N'2021-10-30T18:44:35.000' AS timestamp), 180, 2);

INSERT INTO game_sessions
VALUES (185, CAST(N'2022-04-08T23:12:21.000' AS timestamp), CAST(N'2022-04-09T01:29:12.000' AS timestamp), 57, 3);

INSERT INTO game_sessions
VALUES (186, CAST(N'2021-10-25T13:06:33.000' AS timestamp), CAST(N'2021-10-25T15:23:24.000' AS timestamp), 257, 4);

INSERT INTO game_sessions
VALUES (187, CAST(N'2021-12-18T14:02:56.000' AS timestamp), CAST(N'2021-12-18T16:19:47.000' AS timestamp), 604, 2);

INSERT INTO game_sessions
VALUES (188, CAST(N'2022-02-07T02:33:37.000' AS timestamp), CAST(N'2022-02-07T04:50:28.000' AS timestamp), 148, 2);

INSERT INTO game_sessions
VALUES (189, CAST(N'2022-04-21T19:56:30.000' AS timestamp), CAST(N'2022-04-21T22:13:21.000' AS timestamp), 697, 2);

INSERT INTO game_sessions
VALUES (190, CAST(N'2022-03-13T00:47:32.000' AS timestamp), CAST(N'2022-03-13T03:04:23.000' AS timestamp), 290, 3);

INSERT INTO game_sessions
VALUES (191, CAST(N'2022-05-24T23:59:58.000' AS timestamp), CAST(N'2022-05-25T02:16:49.000' AS timestamp), 406, 4);

INSERT INTO game_sessions
VALUES (192, CAST(N'2022-01-04T07:33:26.000' AS timestamp), CAST(N'2022-01-04T09:50:17.000' AS timestamp), 190, 4);

INSERT INTO game_sessions
VALUES (193, CAST(N'2021-10-28T10:08:43.000' AS timestamp), CAST(N'2021-10-28T12:25:34.000' AS timestamp), 88, 3);

INSERT INTO game_sessions
VALUES (194, CAST(N'2022-07-12T08:26:09.000' AS timestamp), CAST(N'2022-07-12T10:43:00.000' AS timestamp), 446, 3);

INSERT INTO game_sessions
VALUES (195, CAST(N'2021-12-27T15:25:02.000' AS timestamp), CAST(N'2021-12-27T17:41:53.000' AS timestamp), 842, 2);

INSERT INTO game_sessions
VALUES (196, CAST(N'2022-06-09T23:30:34.000' AS timestamp), CAST(N'2022-06-10T01:47:25.000' AS timestamp), 66, 3);

INSERT INTO game_sessions
VALUES (197, CAST(N'2021-11-01T18:42:52.000' AS timestamp), CAST(N'2021-11-01T20:59:43.000' AS timestamp), 258, 2);

INSERT INTO game_sessions
VALUES (198, CAST(N'2021-08-26T10:22:26.000' AS timestamp), CAST(N'2021-08-26T12:39:17.000' AS timestamp), 851, 3);

INSERT INTO game_sessions
VALUES (199, CAST(N'2022-02-17T10:58:20.000' AS timestamp), CAST(N'2022-02-17T13:15:11.000' AS timestamp), 384, 2);

INSERT INTO game_sessions
VALUES (200, CAST(N'2021-09-16T17:40:38.000' AS timestamp), CAST(N'2021-09-16T19:57:29.000' AS timestamp), 798, 3);

INSERT INTO game_sessions
VALUES (201, CAST(N'2021-08-24T15:02:23.000' AS timestamp), CAST(N'2021-08-24T17:19:14.000' AS timestamp), 99, 1);

INSERT INTO game_sessions
VALUES (202, CAST(N'2022-03-31T20:41:56.000' AS timestamp), CAST(N'2022-03-31T22:58:47.000' AS timestamp), 901, 2);

INSERT INTO game_sessions
VALUES (203, CAST(N'2022-01-14T19:42:01.000' AS timestamp), CAST(N'2022-01-14T21:58:52.000' AS timestamp), 524, 1);

INSERT INTO game_sessions
VALUES (204, CAST(N'2021-11-13T03:55:02.000' AS timestamp), CAST(N'2021-11-13T06:11:53.000' AS timestamp), 12, 1);

INSERT INTO game_sessions
VALUES (205, CAST(N'2021-08-05T13:37:35.000' AS timestamp), CAST(N'2021-08-05T15:54:26.000' AS timestamp), 486, 1);

INSERT INTO game_sessions
VALUES (206, CAST(N'2022-06-25T17:16:21.000' AS timestamp), CAST(N'2022-06-25T19:33:12.000' AS timestamp), 816, 4);

INSERT INTO game_sessions
VALUES (207, CAST(N'2021-11-18T05:50:40.000' AS timestamp), CAST(N'2021-11-18T08:07:31.000' AS timestamp), 98, 2);

INSERT INTO game_sessions
VALUES (208, CAST(N'2022-07-18T00:49:03.000' AS timestamp), CAST(N'2022-07-18T03:05:54.000' AS timestamp), 571, 2);

INSERT INTO game_sessions
VALUES (209, CAST(N'2021-11-28T00:05:26.000' AS timestamp), CAST(N'2021-11-28T02:22:17.000' AS timestamp), 720, 2);

INSERT INTO game_sessions
VALUES (210, CAST(N'2021-09-27T03:42:33.000' AS timestamp), CAST(N'2021-09-27T05:59:24.000' AS timestamp), 816, 4);

INSERT INTO game_sessions
VALUES (211, CAST(N'2021-10-30T17:47:19.000' AS timestamp), CAST(N'2021-10-30T20:04:10.000' AS timestamp), 413, 3);

INSERT INTO game_sessions
VALUES (212, CAST(N'2022-03-14T19:24:04.000' AS timestamp), CAST(N'2022-03-14T21:40:55.000' AS timestamp), 603, 1);

INSERT INTO game_sessions
VALUES (213, CAST(N'2021-09-12T23:55:47.000' AS timestamp), CAST(N'2021-09-13T02:12:38.000' AS timestamp), 5, 2);

INSERT INTO game_sessions
VALUES (214, CAST(N'2022-04-25T06:37:28.000' AS timestamp), CAST(N'2022-04-25T08:54:19.000' AS timestamp), 643, 4);

INSERT INTO game_sessions
VALUES (215, CAST(N'2022-03-12T09:39:50.000' AS timestamp), CAST(N'2022-03-12T11:56:41.000' AS timestamp), 192, 3);

INSERT INTO game_sessions
VALUES (216, CAST(N'2022-05-07T12:22:39.000' AS timestamp), CAST(N'2022-05-07T14:39:30.000' AS timestamp), 237, 3);

INSERT INTO game_sessions
VALUES (217, CAST(N'2022-04-27T06:40:27.000' AS timestamp), CAST(N'2022-04-27T08:57:18.000' AS timestamp), 944, 1);

INSERT INTO game_sessions
VALUES (218, CAST(N'2021-10-12T02:02:34.000' AS timestamp), CAST(N'2021-10-12T04:19:25.000' AS timestamp), 967, 2);

INSERT INTO game_sessions
VALUES (219, CAST(N'2021-10-02T07:41:11.000' AS timestamp), CAST(N'2021-10-02T09:58:02.000' AS timestamp), 206, 1);

INSERT INTO game_sessions
VALUES (220, CAST(N'2022-02-20T23:51:28.000' AS timestamp), CAST(N'2022-02-21T02:08:19.000' AS timestamp), 665, 4);

INSERT INTO game_sessions
VALUES (221, CAST(N'2022-02-18T01:28:08.000' AS timestamp), CAST(N'2022-02-18T03:44:59.000' AS timestamp), 534, 1);

INSERT INTO game_sessions
VALUES (222, CAST(N'2021-09-17T16:58:04.000' AS timestamp), CAST(N'2021-09-17T19:14:55.000' AS timestamp), 319, 3);

INSERT INTO game_sessions
VALUES (223, CAST(N'2021-09-07T12:56:54.000' AS timestamp), CAST(N'2021-09-07T15:13:45.000' AS timestamp), 593, 3);

INSERT INTO game_sessions
VALUES (224, CAST(N'2022-02-09T10:38:25.000' AS timestamp), CAST(N'2022-02-09T12:55:16.000' AS timestamp), 885, 3);

INSERT INTO game_sessions
VALUES (225, CAST(N'2022-02-18T10:07:54.000' AS timestamp), CAST(N'2022-02-18T12:24:45.000' AS timestamp), 150, 3);

INSERT INTO game_sessions
VALUES (226, CAST(N'2022-06-23T16:50:10.000' AS timestamp), CAST(N'2022-06-23T19:07:01.000' AS timestamp), 447, 3);

INSERT INTO game_sessions
VALUES (227, CAST(N'2021-10-05T12:45:54.000' AS timestamp), CAST(N'2021-10-05T15:02:45.000' AS timestamp), 782, 1);

INSERT INTO game_sessions
VALUES (228, CAST(N'2022-07-23T00:11:30.000' AS timestamp), CAST(N'2022-07-23T02:28:21.000' AS timestamp), 567, 2);

INSERT INTO game_sessions
VALUES (229, CAST(N'2021-12-18T05:06:20.000' AS timestamp), CAST(N'2021-12-18T07:23:11.000' AS timestamp), 337, 1);

INSERT INTO game_sessions
VALUES (230, CAST(N'2022-05-05T10:20:15.000' AS timestamp), CAST(N'2022-05-05T12:37:06.000' AS timestamp), 603, 3);

INSERT INTO game_sessions
VALUES (231, CAST(N'2021-12-27T00:00:48.000' AS timestamp), CAST(N'2021-12-27T02:17:39.000' AS timestamp), 851, 4);

INSERT INTO game_sessions
VALUES (232, CAST(N'2021-09-02T06:35:08.000' AS timestamp), CAST(N'2021-09-02T08:51:59.000' AS timestamp), 924, 4);

INSERT INTO game_sessions
VALUES (233, CAST(N'2022-05-02T05:53:33.000' AS timestamp), CAST(N'2022-05-02T08:10:24.000' AS timestamp), 120, 2);

INSERT INTO game_sessions
VALUES (234, CAST(N'2022-02-16T16:13:25.000' AS timestamp), CAST(N'2022-02-16T18:30:16.000' AS timestamp), 599, 3);

INSERT INTO game_sessions
VALUES (235, CAST(N'2021-08-22T16:36:45.000' AS timestamp), CAST(N'2021-08-22T18:53:36.000' AS timestamp), 160, 3);

INSERT INTO game_sessions
VALUES (236, CAST(N'2021-12-16T21:24:48.000' AS timestamp), CAST(N'2021-12-16T23:41:39.000' AS timestamp), 59, 3);

INSERT INTO game_sessions
VALUES (237, CAST(N'2022-04-25T13:33:18.000' AS timestamp), CAST(N'2022-04-25T15:50:09.000' AS timestamp), 23, 3);

INSERT INTO game_sessions
VALUES (238, CAST(N'2022-06-09T01:57:18.000' AS timestamp), CAST(N'2022-06-09T04:14:09.000' AS timestamp), 287, 2);

INSERT INTO game_sessions
VALUES (239, CAST(N'2021-10-01T20:10:40.000' AS timestamp), CAST(N'2021-10-01T22:27:31.000' AS timestamp), 233, 3);

INSERT INTO game_sessions
VALUES (240, CAST(N'2022-05-19T13:44:22.000' AS timestamp), CAST(N'2022-05-19T16:01:13.000' AS timestamp), 55, 4);

INSERT INTO game_sessions
VALUES (241, CAST(N'2022-07-13T19:01:16.000' AS timestamp), CAST(N'2022-07-13T21:18:07.000' AS timestamp), 242, 4);

INSERT INTO game_sessions
VALUES (242, CAST(N'2021-11-06T18:27:24.000' AS timestamp), CAST(N'2021-11-06T20:44:15.000' AS timestamp), 828, 2);

INSERT INTO game_sessions
VALUES (243, CAST(N'2021-12-31T10:37:42.000' AS timestamp), CAST(N'2021-12-31T12:54:33.000' AS timestamp), 244, 4);

INSERT INTO game_sessions
VALUES (244, CAST(N'2021-08-30T20:26:01.000' AS timestamp), CAST(N'2021-08-30T22:42:52.000' AS timestamp), 382, 1);

INSERT INTO game_sessions
VALUES (245, CAST(N'2022-07-18T08:44:45.000' AS timestamp), CAST(N'2022-07-18T11:01:36.000' AS timestamp), 833, 2);

INSERT INTO game_sessions
VALUES (246, CAST(N'2022-02-27T15:56:46.000' AS timestamp), CAST(N'2022-02-27T18:13:37.000' AS timestamp), 992, 1);

INSERT INTO game_sessions
VALUES (247, CAST(N'2021-10-20T22:37:50.000' AS timestamp), CAST(N'2021-10-21T00:54:41.000' AS timestamp), 554, 4);

INSERT INTO game_sessions
VALUES (248, CAST(N'2022-02-14T17:05:10.000' AS timestamp), CAST(N'2022-02-14T19:22:01.000' AS timestamp), 388, 4);

INSERT INTO game_sessions
VALUES (249, CAST(N'2022-02-02T09:31:51.000' AS timestamp), CAST(N'2022-02-02T11:48:42.000' AS timestamp), 499, 2);

INSERT INTO game_sessions
VALUES (250, CAST(N'2022-05-02T01:04:16.000' AS timestamp), CAST(N'2022-05-02T03:21:07.000' AS timestamp), 920, 2);

INSERT INTO game_sessions
VALUES (251, CAST(N'2022-03-29T01:46:17.000' AS timestamp), CAST(N'2022-03-29T04:03:08.000' AS timestamp), 989, 3);

INSERT INTO game_sessions
VALUES (252, CAST(N'2021-12-12T23:52:56.000' AS timestamp), CAST(N'2021-12-13T02:09:47.000' AS timestamp), 783, 1);

INSERT INTO game_sessions
VALUES (253, CAST(N'2021-09-16T06:12:46.000' AS timestamp), CAST(N'2021-09-16T08:29:37.000' AS timestamp), 966, 4);

INSERT INTO game_sessions
VALUES (254, CAST(N'2022-07-10T09:28:52.000' AS timestamp), CAST(N'2022-07-10T11:45:43.000' AS timestamp), 784, 4);

INSERT INTO game_sessions
VALUES (255, CAST(N'2022-06-22T19:08:46.000' AS timestamp), CAST(N'2022-06-22T21:25:37.000' AS timestamp), 905, 4);

INSERT INTO game_sessions
VALUES (256, CAST(N'2022-07-01T20:34:45.000' AS timestamp), CAST(N'2022-07-01T22:51:36.000' AS timestamp), 611, 4);

INSERT INTO game_sessions
VALUES (257, CAST(N'2022-06-21T20:30:18.000' AS timestamp), CAST(N'2022-06-21T22:47:09.000' AS timestamp), 808, 2);

INSERT INTO game_sessions
VALUES (258, CAST(N'2022-01-05T13:43:14.000' AS timestamp), CAST(N'2022-01-05T16:00:05.000' AS timestamp), 48, 2);

INSERT INTO game_sessions
VALUES (259, CAST(N'2022-03-22T19:23:12.000' AS timestamp), CAST(N'2022-03-22T21:40:03.000' AS timestamp), 150, 3);

INSERT INTO game_sessions
VALUES (260, CAST(N'2021-12-25T16:24:27.000' AS timestamp), CAST(N'2021-12-25T18:41:18.000' AS timestamp), 355, 4);

INSERT INTO game_sessions
VALUES (261, CAST(N'2022-02-19T06:11:20.000' AS timestamp), CAST(N'2022-02-19T08:28:11.000' AS timestamp), 38, 4);

INSERT INTO game_sessions
VALUES (262, CAST(N'2022-06-05T11:26:22.000' AS timestamp), CAST(N'2022-06-05T13:43:13.000' AS timestamp), 352, 1);

INSERT INTO game_sessions
VALUES (263, CAST(N'2022-02-12T20:19:36.000' AS timestamp), CAST(N'2022-02-12T22:36:27.000' AS timestamp), 90, 4);

INSERT INTO game_sessions
VALUES (264, CAST(N'2022-03-10T15:18:55.000' AS timestamp), CAST(N'2022-03-10T17:35:46.000' AS timestamp), 872, 4);

INSERT INTO game_sessions
VALUES (265, CAST(N'2021-11-05T08:33:30.000' AS timestamp), CAST(N'2021-11-05T10:50:21.000' AS timestamp), 421, 3);

INSERT INTO game_sessions
VALUES (266, CAST(N'2021-12-22T00:58:47.000' AS timestamp), CAST(N'2021-12-22T03:15:38.000' AS timestamp), 191, 2);

INSERT INTO game_sessions
VALUES (267, CAST(N'2021-08-31T00:47:48.000' AS timestamp), CAST(N'2021-08-31T03:04:39.000' AS timestamp), 497, 1);

INSERT INTO game_sessions
VALUES (268, CAST(N'2022-06-25T02:15:16.000' AS timestamp), CAST(N'2022-06-25T04:32:07.000' AS timestamp), 70, 3);

INSERT INTO game_sessions
VALUES (269, CAST(N'2022-05-29T07:07:47.000' AS timestamp), CAST(N'2022-05-29T09:24:38.000' AS timestamp), 539, 1);

INSERT INTO game_sessions
VALUES (270, CAST(N'2021-09-25T04:44:47.000' AS timestamp), CAST(N'2021-09-25T07:01:38.000' AS timestamp), 658, 4);

INSERT INTO game_sessions
VALUES (271, CAST(N'2021-10-12T05:26:58.000' AS timestamp), CAST(N'2021-10-12T07:43:49.000' AS timestamp), 264, 4);

INSERT INTO game_sessions
VALUES (272, CAST(N'2022-04-12T03:22:13.000' AS timestamp), CAST(N'2022-04-12T05:39:04.000' AS timestamp), 258, 1);

INSERT INTO game_sessions
VALUES (273, CAST(N'2022-05-23T22:32:55.000' AS timestamp), CAST(N'2022-05-24T00:49:46.000' AS timestamp), 844, 1);

INSERT INTO game_sessions
VALUES (274, CAST(N'2022-07-15T15:16:26.000' AS timestamp), CAST(N'2022-07-15T17:33:17.000' AS timestamp), 284, 2);

INSERT INTO game_sessions
VALUES (275, CAST(N'2022-02-17T17:35:30.000' AS timestamp), CAST(N'2022-02-17T19:52:21.000' AS timestamp), 189, 1);

INSERT INTO game_sessions
VALUES (276, CAST(N'2021-11-06T17:47:47.000' AS timestamp), CAST(N'2021-11-06T20:04:38.000' AS timestamp), 928, 1);

INSERT INTO game_sessions
VALUES (277, CAST(N'2022-04-23T16:59:25.000' AS timestamp), CAST(N'2022-04-23T19:16:16.000' AS timestamp), 716, 2);

INSERT INTO game_sessions
VALUES (278, CAST(N'2022-07-15T02:44:25.000' AS timestamp), CAST(N'2022-07-15T05:01:16.000' AS timestamp), 200, 4);

INSERT INTO game_sessions
VALUES (279, CAST(N'2021-10-12T02:59:03.000' AS timestamp), CAST(N'2021-10-12T05:15:54.000' AS timestamp), 381, 2);

INSERT INTO game_sessions
VALUES (280, CAST(N'2022-06-18T22:13:26.000' AS timestamp), CAST(N'2022-06-19T00:30:17.000' AS timestamp), 265, 2);

INSERT INTO game_sessions
VALUES (281, CAST(N'2021-08-01T17:32:12.000' AS timestamp), CAST(N'2021-08-01T19:49:03.000' AS timestamp), 498, 3);

INSERT INTO game_sessions
VALUES (282, CAST(N'2022-05-01T08:28:13.000' AS timestamp), CAST(N'2022-05-01T10:45:04.000' AS timestamp), 308, 2);

INSERT INTO game_sessions
VALUES (283, CAST(N'2021-12-10T23:54:33.000' AS timestamp), CAST(N'2021-12-11T02:11:24.000' AS timestamp), 768, 2);

INSERT INTO game_sessions
VALUES (284, CAST(N'2021-12-19T08:01:07.000' AS timestamp), CAST(N'2021-12-19T10:17:58.000' AS timestamp), 712, 3);

INSERT INTO game_sessions
VALUES (285, CAST(N'2022-06-24T11:33:11.000' AS timestamp), CAST(N'2022-06-24T13:50:02.000' AS timestamp), 453, 3);

INSERT INTO game_sessions
VALUES (286, CAST(N'2021-08-02T12:39:05.000' AS timestamp), CAST(N'2021-08-02T14:55:56.000' AS timestamp), 823, 1);

INSERT INTO game_sessions
VALUES (287, CAST(N'2021-10-23T02:59:07.000' AS timestamp), CAST(N'2021-10-23T05:15:58.000' AS timestamp), 498, 1);

INSERT INTO game_sessions
VALUES (288, CAST(N'2021-12-04T17:58:09.000' AS timestamp), CAST(N'2021-12-04T20:15:00.000' AS timestamp), 970, 3);

INSERT INTO game_sessions
VALUES (289, CAST(N'2021-12-02T16:37:25.000' AS timestamp), CAST(N'2021-12-02T18:54:16.000' AS timestamp), 755, 3);

INSERT INTO game_sessions
VALUES (290, CAST(N'2022-02-12T02:16:39.000' AS timestamp), CAST(N'2022-02-12T04:33:30.000' AS timestamp), 1, 4);

INSERT INTO game_sessions
VALUES (291, CAST(N'2021-09-27T16:20:58.000' AS timestamp), CAST(N'2021-09-27T18:37:49.000' AS timestamp), 365, 4);

INSERT INTO game_sessions
VALUES (292, CAST(N'2022-01-09T12:53:24.000' AS timestamp), CAST(N'2022-01-09T15:10:15.000' AS timestamp), 960, 1);

INSERT INTO game_sessions
VALUES (293, CAST(N'2021-09-09T00:39:19.000' AS timestamp), CAST(N'2021-09-09T02:56:10.000' AS timestamp), 550, 3);

INSERT INTO game_sessions
VALUES (294, CAST(N'2021-12-14T20:46:28.000' AS timestamp), CAST(N'2021-12-14T23:03:19.000' AS timestamp), 670, 3);

INSERT INTO game_sessions
VALUES (295, CAST(N'2022-06-17T15:21:11.000' AS timestamp), CAST(N'2022-06-17T17:38:02.000' AS timestamp), 924, 3);

INSERT INTO game_sessions
VALUES (296, CAST(N'2022-06-05T14:28:45.000' AS timestamp), CAST(N'2022-06-05T16:45:36.000' AS timestamp), 337, 4);

INSERT INTO game_sessions
VALUES (297, CAST(N'2022-03-02T00:38:02.000' AS timestamp), CAST(N'2022-03-02T02:54:53.000' AS timestamp), 447, 3);

INSERT INTO game_sessions
VALUES (298, CAST(N'2022-02-26T19:09:50.000' AS timestamp), CAST(N'2022-02-26T21:26:41.000' AS timestamp), 590, 4);

INSERT INTO game_sessions
VALUES (299, CAST(N'2021-09-22T19:44:55.000' AS timestamp), CAST(N'2021-09-22T22:01:46.000' AS timestamp), 874, 2);

INSERT INTO game_sessions
VALUES (300, CAST(N'2022-07-02T15:50:24.000' AS timestamp), CAST(N'2022-07-02T18:07:15.000' AS timestamp), 93, 3);

INSERT INTO game_sessions
VALUES (301, CAST(N'2021-11-29T13:02:41.000' AS timestamp), CAST(N'2021-11-29T15:19:32.000' AS timestamp), 869, 2);

INSERT INTO game_sessions
VALUES (302, CAST(N'2022-06-22T17:09:53.000' AS timestamp), CAST(N'2022-06-22T19:26:44.000' AS timestamp), 200, 3);

INSERT INTO game_sessions
VALUES (303, CAST(N'2022-06-08T14:05:38.000' AS timestamp), CAST(N'2022-06-08T16:22:29.000' AS timestamp), 864, 4);

INSERT INTO game_sessions
VALUES (304, CAST(N'2021-10-24T03:44:33.000' AS timestamp), CAST(N'2021-10-24T06:01:24.000' AS timestamp), 825, 1);

INSERT INTO game_sessions
VALUES (305, CAST(N'2022-04-15T18:56:51.000' AS timestamp), CAST(N'2022-04-15T21:13:42.000' AS timestamp), 660, 4);

INSERT INTO game_sessions
VALUES (306, CAST(N'2021-09-08T07:25:25.000' AS timestamp), CAST(N'2021-09-08T09:42:16.000' AS timestamp), 653, 4);

INSERT INTO game_sessions
VALUES (307, CAST(N'2021-08-16T17:03:56.000' AS timestamp), CAST(N'2021-08-16T19:20:47.000' AS timestamp), 764, 2);

INSERT INTO game_sessions
VALUES (308, CAST(N'2022-01-03T15:50:50.000' AS timestamp), CAST(N'2022-01-03T18:07:41.000' AS timestamp), 333, 1);

INSERT INTO game_sessions
VALUES (309, CAST(N'2022-05-31T05:38:29.000' AS timestamp), CAST(N'2022-05-31T07:55:20.000' AS timestamp), 400, 3);

INSERT INTO game_sessions
VALUES (310, CAST(N'2021-09-13T17:14:16.000' AS timestamp), CAST(N'2021-09-13T19:31:07.000' AS timestamp), 66, 2);

INSERT INTO game_sessions
VALUES (311, CAST(N'2022-02-13T00:02:20.000' AS timestamp), CAST(N'2022-02-13T02:19:11.000' AS timestamp), 262, 4);

INSERT INTO game_sessions
VALUES (312, CAST(N'2021-11-06T08:30:23.000' AS timestamp), CAST(N'2021-11-06T10:47:14.000' AS timestamp), 240, 3);

INSERT INTO game_sessions
VALUES (313, CAST(N'2021-09-03T12:42:38.000' AS timestamp), CAST(N'2021-09-03T14:59:29.000' AS timestamp), 958, 2);

INSERT INTO game_sessions
VALUES (314, CAST(N'2021-08-18T04:28:11.000' AS timestamp), CAST(N'2021-08-18T06:45:02.000' AS timestamp), 259, 4);

INSERT INTO game_sessions
VALUES (315, CAST(N'2022-03-18T04:58:11.000' AS timestamp), CAST(N'2022-03-18T07:15:02.000' AS timestamp), 566, 1);

INSERT INTO game_sessions
VALUES (316, CAST(N'2021-08-23T05:19:22.000' AS timestamp), CAST(N'2021-08-23T07:36:13.000' AS timestamp), 751, 3);

INSERT INTO game_sessions
VALUES (317, CAST(N'2022-04-11T16:44:02.000' AS timestamp), CAST(N'2022-04-11T19:00:53.000' AS timestamp), 560, 1);

INSERT INTO game_sessions
VALUES (318, CAST(N'2022-01-20T05:19:45.000' AS timestamp), CAST(N'2022-01-20T07:36:36.000' AS timestamp), 441, 4);

INSERT INTO game_sessions
VALUES (319, CAST(N'2021-08-06T15:05:21.000' AS timestamp), CAST(N'2021-08-06T17:22:12.000' AS timestamp), 165, 1);

INSERT INTO game_sessions
VALUES (320, CAST(N'2022-05-15T10:53:20.000' AS timestamp), CAST(N'2022-05-15T13:10:11.000' AS timestamp), 115, 1);

INSERT INTO game_sessions
VALUES (321, CAST(N'2022-01-29T19:45:33.000' AS timestamp), CAST(N'2022-01-29T22:02:24.000' AS timestamp), 523, 3);

INSERT INTO game_sessions
VALUES (322, CAST(N'2022-01-20T07:05:10.000' AS timestamp), CAST(N'2022-01-20T09:22:01.000' AS timestamp), 493, 4);

INSERT INTO game_sessions
VALUES (323, CAST(N'2022-05-03T20:58:41.000' AS timestamp), CAST(N'2022-05-03T23:15:32.000' AS timestamp), 209, 2);

INSERT INTO game_sessions
VALUES (324, CAST(N'2021-12-14T09:03:20.000' AS timestamp), CAST(N'2021-12-14T11:20:11.000' AS timestamp), 23, 3);

INSERT INTO game_sessions
VALUES (325, CAST(N'2021-11-13T01:33:17.000' AS timestamp), CAST(N'2021-11-13T03:50:08.000' AS timestamp), 521, 4);

INSERT INTO game_sessions
VALUES (326, CAST(N'2022-02-20T08:37:18.000' AS timestamp), CAST(N'2022-02-20T10:54:09.000' AS timestamp), 252, 1);

INSERT INTO game_sessions
VALUES (327, CAST(N'2021-08-16T12:35:11.000' AS timestamp), CAST(N'2021-08-16T14:52:02.000' AS timestamp), 804, 4);

INSERT INTO game_sessions
VALUES (328, CAST(N'2022-04-12T22:30:36.000' AS timestamp), CAST(N'2022-04-13T00:47:27.000' AS timestamp), 941, 3);

INSERT INTO game_sessions
VALUES (329, CAST(N'2022-03-14T10:37:06.000' AS timestamp), CAST(N'2022-03-14T12:53:57.000' AS timestamp), 457, 1);

INSERT INTO game_sessions
VALUES (330, CAST(N'2021-12-18T10:33:49.000' AS timestamp), CAST(N'2021-12-18T12:50:40.000' AS timestamp), 551, 4);

INSERT INTO game_sessions
VALUES (331, CAST(N'2021-11-27T14:42:09.000' AS timestamp), CAST(N'2021-11-27T16:59:00.000' AS timestamp), 936, 4);

INSERT INTO game_sessions
VALUES (332, CAST(N'2022-01-09T23:54:32.000' AS timestamp), CAST(N'2022-01-10T02:11:23.000' AS timestamp), 492, 4);

INSERT INTO game_sessions
VALUES (333, CAST(N'2021-11-14T19:12:50.000' AS timestamp), CAST(N'2021-11-14T21:29:41.000' AS timestamp), 553, 3);

INSERT INTO game_sessions
VALUES (334, CAST(N'2022-03-04T23:30:08.000' AS timestamp), CAST(N'2022-03-05T01:46:59.000' AS timestamp), 129, 2);

INSERT INTO game_sessions
VALUES (335, CAST(N'2022-06-09T12:37:20.000' AS timestamp), CAST(N'2022-06-09T14:54:11.000' AS timestamp), 898, 4);

INSERT INTO game_sessions
VALUES (336, CAST(N'2021-11-12T13:53:55.000' AS timestamp), CAST(N'2021-11-12T16:10:46.000' AS timestamp), 294, 3);

INSERT INTO game_sessions
VALUES (337, CAST(N'2021-11-02T00:02:29.000' AS timestamp), CAST(N'2021-11-02T02:19:20.000' AS timestamp), 375, 1);

INSERT INTO game_sessions
VALUES (338, CAST(N'2022-07-01T22:19:29.000' AS timestamp), CAST(N'2022-07-02T00:36:20.000' AS timestamp), 448, 4);

INSERT INTO game_sessions
VALUES (339, CAST(N'2021-12-31T04:05:15.000' AS timestamp), CAST(N'2021-12-31T06:22:06.000' AS timestamp), 46, 4);

INSERT INTO game_sessions
VALUES (340, CAST(N'2021-11-07T05:39:33.000' AS timestamp), CAST(N'2021-11-07T07:56:24.000' AS timestamp), 748, 3);

INSERT INTO game_sessions
VALUES (341, CAST(N'2022-03-02T18:14:13.000' AS timestamp), CAST(N'2022-03-02T20:31:04.000' AS timestamp), 496, 3);

INSERT INTO game_sessions
VALUES (342, CAST(N'2021-11-06T22:42:26.000' AS timestamp), CAST(N'2021-11-07T00:59:17.000' AS timestamp), 838, 1);

INSERT INTO game_sessions
VALUES (343, CAST(N'2021-08-26T19:26:37.000' AS timestamp), CAST(N'2021-08-26T21:43:28.000' AS timestamp), 630, 1);

INSERT INTO game_sessions
VALUES (344, CAST(N'2022-02-25T18:45:57.000' AS timestamp), CAST(N'2022-02-25T21:02:48.000' AS timestamp), 749, 1);

INSERT INTO game_sessions
VALUES (345, CAST(N'2021-08-23T00:10:26.000' AS timestamp), CAST(N'2021-08-23T02:27:17.000' AS timestamp), 933, 2);

INSERT INTO game_sessions
VALUES (346, CAST(N'2021-08-05T06:06:22.000' AS timestamp), CAST(N'2021-08-05T08:23:13.000' AS timestamp), 229, 1);

INSERT INTO game_sessions
VALUES (347, CAST(N'2021-12-21T12:31:42.000' AS timestamp), CAST(N'2021-12-21T14:48:33.000' AS timestamp), 199, 1);

INSERT INTO game_sessions
VALUES (348, CAST(N'2022-06-08T13:17:58.000' AS timestamp), CAST(N'2022-06-08T15:34:49.000' AS timestamp), 29, 4);

INSERT INTO game_sessions
VALUES (349, CAST(N'2022-07-06T00:05:54.000' AS timestamp), CAST(N'2022-07-06T02:22:45.000' AS timestamp), 920, 3);

INSERT INTO game_sessions
VALUES (350, CAST(N'2021-10-07T01:35:59.000' AS timestamp), CAST(N'2021-10-07T03:52:50.000' AS timestamp), 187, 2);

INSERT INTO game_sessions
VALUES (351, CAST(N'2021-09-01T21:36:01.000' AS timestamp), CAST(N'2021-09-01T23:52:52.000' AS timestamp), 724, 3);

INSERT INTO game_sessions
VALUES (352, CAST(N'2022-06-25T21:59:21.000' AS timestamp), CAST(N'2022-06-26T00:16:12.000' AS timestamp), 712, 3);

INSERT INTO game_sessions
VALUES (353, CAST(N'2022-01-07T22:28:38.000' AS timestamp), CAST(N'2022-01-08T00:45:29.000' AS timestamp), 605, 4);

INSERT INTO game_sessions
VALUES (354, CAST(N'2021-10-25T10:45:20.000' AS timestamp), CAST(N'2021-10-25T13:02:11.000' AS timestamp), 442, 1);

INSERT INTO game_sessions
VALUES (355, CAST(N'2021-11-12T10:47:19.000' AS timestamp), CAST(N'2021-11-12T13:04:10.000' AS timestamp), 432, 3);

INSERT INTO game_sessions
VALUES (356, CAST(N'2022-02-20T05:45:13.000' AS timestamp), CAST(N'2022-02-20T08:02:04.000' AS timestamp), 887, 4);

INSERT INTO game_sessions
VALUES (357, CAST(N'2021-11-15T23:17:13.000' AS timestamp), CAST(N'2021-11-16T01:34:04.000' AS timestamp), 412, 3);

INSERT INTO game_sessions
VALUES (358, CAST(N'2022-06-06T10:43:41.000' AS timestamp), CAST(N'2022-06-06T13:00:32.000' AS timestamp), 533, 1);

INSERT INTO game_sessions
VALUES (359, CAST(N'2021-08-25T01:59:11.000' AS timestamp), CAST(N'2021-08-25T04:16:02.000' AS timestamp), 965, 2);

INSERT INTO game_sessions
VALUES (360, CAST(N'2021-09-30T01:54:40.000' AS timestamp), CAST(N'2021-09-30T04:11:31.000' AS timestamp), 372, 2);

INSERT INTO game_sessions
VALUES (361, CAST(N'2022-04-10T20:33:24.000' AS timestamp), CAST(N'2022-04-10T22:50:15.000' AS timestamp), 823, 1);

INSERT INTO game_sessions
VALUES (362, CAST(N'2022-07-02T02:31:56.000' AS timestamp), CAST(N'2022-07-02T04:48:47.000' AS timestamp), 893, 2);

INSERT INTO game_sessions
VALUES (363, CAST(N'2022-01-29T01:59:26.000' AS timestamp), CAST(N'2022-01-29T04:16:17.000' AS timestamp), 927, 4);

INSERT INTO game_sessions
VALUES (364, CAST(N'2021-10-19T18:09:06.000' AS timestamp), CAST(N'2021-10-19T20:25:57.000' AS timestamp), 675, 4);

INSERT INTO game_sessions
VALUES (365, CAST(N'2022-06-29T02:39:41.000' AS timestamp), CAST(N'2022-06-29T04:56:32.000' AS timestamp), 392, 2);

INSERT INTO game_sessions
VALUES (366, CAST(N'2022-06-22T15:42:22.000' AS timestamp), CAST(N'2022-06-22T17:59:13.000' AS timestamp), 828, 4);

INSERT INTO game_sessions
VALUES (367, CAST(N'2022-07-15T09:24:49.000' AS timestamp), CAST(N'2022-07-15T11:41:40.000' AS timestamp), 797, 3);

INSERT INTO game_sessions
VALUES (368, CAST(N'2022-04-22T10:53:51.000' AS timestamp), CAST(N'2022-04-22T13:10:42.000' AS timestamp), 22, 2);

INSERT INTO game_sessions
VALUES (369, CAST(N'2022-07-28T13:58:37.000' AS timestamp), CAST(N'2022-07-28T16:15:28.000' AS timestamp), 851, 1);

INSERT INTO game_sessions
VALUES (370, CAST(N'2021-09-28T06:14:41.000' AS timestamp), CAST(N'2021-09-28T08:31:32.000' AS timestamp), 373, 1);

INSERT INTO game_sessions
VALUES (371, CAST(N'2021-12-02T01:26:59.000' AS timestamp), CAST(N'2021-12-02T03:43:50.000' AS timestamp), 906, 1);

INSERT INTO game_sessions
VALUES (372, CAST(N'2022-01-23T16:14:57.000' AS timestamp), CAST(N'2022-01-23T18:31:48.000' AS timestamp), 55, 3);

INSERT INTO game_sessions
VALUES (373, CAST(N'2022-01-05T13:58:42.000' AS timestamp), CAST(N'2022-01-05T16:15:33.000' AS timestamp), 688, 1);

INSERT INTO game_sessions
VALUES (374, CAST(N'2022-05-30T05:59:17.000' AS timestamp), CAST(N'2022-05-30T08:16:08.000' AS timestamp), 421, 1);

INSERT INTO game_sessions
VALUES (375, CAST(N'2021-11-14T20:42:40.000' AS timestamp), CAST(N'2021-11-14T22:59:31.000' AS timestamp), 984, 1);

INSERT INTO game_sessions
VALUES (376, CAST(N'2022-01-24T12:57:58.000' AS timestamp), CAST(N'2022-01-24T15:14:49.000' AS timestamp), 412, 3);

INSERT INTO game_sessions
VALUES (377, CAST(N'2021-08-31T05:57:33.000' AS timestamp), CAST(N'2021-08-31T08:14:24.000' AS timestamp), 800, 3);

INSERT INTO game_sessions
VALUES (378, CAST(N'2021-08-22T22:10:51.000' AS timestamp), CAST(N'2021-08-23T00:27:42.000' AS timestamp), 589, 1);

INSERT INTO game_sessions
VALUES (379, CAST(N'2021-11-04T00:20:53.000' AS timestamp), CAST(N'2021-11-04T02:37:44.000' AS timestamp), 345, 2);

INSERT INTO game_sessions
VALUES (380, CAST(N'2021-08-14T07:09:58.000' AS timestamp), CAST(N'2021-08-14T09:26:49.000' AS timestamp), 849, 3);

INSERT INTO game_sessions
VALUES (381, CAST(N'2021-09-17T11:27:13.000' AS timestamp), CAST(N'2021-09-17T13:44:04.000' AS timestamp), 121, 3);

INSERT INTO game_sessions
VALUES (382, CAST(N'2021-08-24T10:46:43.000' AS timestamp), CAST(N'2021-08-24T13:03:34.000' AS timestamp), 276, 2);

INSERT INTO game_sessions
VALUES (383, CAST(N'2021-11-19T15:18:59.000' AS timestamp), CAST(N'2021-11-19T17:35:50.000' AS timestamp), 533, 1);

INSERT INTO game_sessions
VALUES (384, CAST(N'2022-01-18T18:23:51.000' AS timestamp), CAST(N'2022-01-18T20:40:42.000' AS timestamp), 862, 1);

INSERT INTO game_sessions
VALUES (385, CAST(N'2022-06-28T04:30:54.000' AS timestamp), CAST(N'2022-06-28T06:47:45.000' AS timestamp), 198, 3);

INSERT INTO game_sessions
VALUES (386, CAST(N'2022-01-07T20:07:12.000' AS timestamp), CAST(N'2022-01-07T22:24:03.000' AS timestamp), 160, 1);

INSERT INTO game_sessions
VALUES (387, CAST(N'2021-10-07T21:45:48.000' AS timestamp), CAST(N'2021-10-08T00:02:39.000' AS timestamp), 714, 1);

INSERT INTO game_sessions
VALUES (388, CAST(N'2022-04-05T11:05:31.000' AS timestamp), CAST(N'2022-04-05T13:22:22.000' AS timestamp), 505, 3);

INSERT INTO game_sessions
VALUES (389, CAST(N'2022-07-28T16:03:50.000' AS timestamp), CAST(N'2022-07-28T18:20:41.000' AS timestamp), 384, 3);

INSERT INTO game_sessions
VALUES (390, CAST(N'2022-07-08T22:04:15.000' AS timestamp), CAST(N'2022-07-09T00:21:06.000' AS timestamp), 328, 2);

INSERT INTO game_sessions
VALUES (391, CAST(N'2022-07-03T22:53:02.000' AS timestamp), CAST(N'2022-07-04T01:09:53.000' AS timestamp), 560, 4);

INSERT INTO game_sessions
VALUES (392, CAST(N'2022-07-02T13:17:18.000' AS timestamp), CAST(N'2022-07-02T15:34:09.000' AS timestamp), 867, 1);

INSERT INTO game_sessions
VALUES (393, CAST(N'2021-08-10T12:57:11.000' AS timestamp), CAST(N'2021-08-10T15:14:02.000' AS timestamp), 155, 3);

INSERT INTO game_sessions
VALUES (394, CAST(N'2022-06-24T03:27:01.000' AS timestamp), CAST(N'2022-06-24T05:43:52.000' AS timestamp), 792, 1);

INSERT INTO game_sessions
VALUES (395, CAST(N'2021-12-28T01:58:25.000' AS timestamp), CAST(N'2021-12-28T04:15:16.000' AS timestamp), 116, 4);

INSERT INTO game_sessions
VALUES (396, CAST(N'2022-03-24T14:43:21.000' AS timestamp), CAST(N'2022-03-24T17:00:12.000' AS timestamp), 435, 4);

INSERT INTO game_sessions
VALUES (397, CAST(N'2021-12-19T00:15:16.000' AS timestamp), CAST(N'2021-12-19T02:32:07.000' AS timestamp), 482, 4);

INSERT INTO game_sessions
VALUES (398, CAST(N'2022-02-16T07:26:33.000' AS timestamp), CAST(N'2022-02-16T09:43:24.000' AS timestamp), 852, 1);

INSERT INTO game_sessions
VALUES (399, CAST(N'2022-03-04T07:31:28.000' AS timestamp), CAST(N'2022-03-04T09:48:19.000' AS timestamp), 191, 1);

INSERT INTO game_sessions
VALUES (400, CAST(N'2022-02-27T19:50:53.000' AS timestamp), CAST(N'2022-02-27T22:07:44.000' AS timestamp), 990, 4);

INSERT INTO game_sessions
VALUES (401, CAST(N'2022-05-02T21:17:59.000' AS timestamp), CAST(N'2022-05-02T23:34:50.000' AS timestamp), 351, 4);

INSERT INTO game_sessions
VALUES (402, CAST(N'2021-09-30T06:35:28.000' AS timestamp), CAST(N'2021-09-30T08:52:19.000' AS timestamp), 672, 1);

INSERT INTO game_sessions
VALUES (403, CAST(N'2021-12-20T07:43:48.000' AS timestamp), CAST(N'2021-12-20T10:00:39.000' AS timestamp), 923, 3);

INSERT INTO game_sessions
VALUES (404, CAST(N'2022-07-14T10:45:59.000' AS timestamp), CAST(N'2022-07-14T13:02:50.000' AS timestamp), 547, 1);

INSERT INTO game_sessions
VALUES (405, CAST(N'2022-04-19T04:34:15.000' AS timestamp), CAST(N'2022-04-19T06:51:06.000' AS timestamp), 991, 3);

INSERT INTO game_sessions
VALUES (406, CAST(N'2022-06-28T03:28:37.000' AS timestamp), CAST(N'2022-06-28T05:45:28.000' AS timestamp), 765, 4);

INSERT INTO game_sessions
VALUES (407, CAST(N'2022-05-30T11:36:06.000' AS timestamp), CAST(N'2022-05-30T13:52:57.000' AS timestamp), 148, 1);

INSERT INTO game_sessions
VALUES (408, CAST(N'2022-06-04T10:01:14.000' AS timestamp), CAST(N'2022-06-04T12:18:05.000' AS timestamp), 460, 2);

INSERT INTO game_sessions
VALUES (409, CAST(N'2022-04-09T21:00:12.000' AS timestamp), CAST(N'2022-04-09T23:17:03.000' AS timestamp), 128, 4);

INSERT INTO game_sessions
VALUES (410, CAST(N'2021-10-21T04:02:35.000' AS timestamp), CAST(N'2021-10-21T06:19:26.000' AS timestamp), 941, 4);

INSERT INTO game_sessions
VALUES (411, CAST(N'2021-09-11T00:20:06.000' AS timestamp), CAST(N'2021-09-11T02:36:57.000' AS timestamp), 38, 2);

INSERT INTO game_sessions
VALUES (412, CAST(N'2021-12-27T20:56:49.000' AS timestamp), CAST(N'2021-12-27T23:13:40.000' AS timestamp), 605, 2);

INSERT INTO game_sessions
VALUES (413, CAST(N'2021-11-17T23:17:07.000' AS timestamp), CAST(N'2021-11-18T01:33:58.000' AS timestamp), 397, 3);

INSERT INTO game_sessions
VALUES (414, CAST(N'2022-03-01T08:45:58.000' AS timestamp), CAST(N'2022-03-01T11:02:49.000' AS timestamp), 439, 4);

INSERT INTO game_sessions
VALUES (415, CAST(N'2022-07-13T01:13:21.000' AS timestamp), CAST(N'2022-07-13T03:30:12.000' AS timestamp), 748, 3);

INSERT INTO game_sessions
VALUES (416, CAST(N'2022-04-19T01:40:10.000' AS timestamp), CAST(N'2022-04-19T03:57:01.000' AS timestamp), 451, 1);

INSERT INTO game_sessions
VALUES (417, CAST(N'2022-04-26T08:55:32.000' AS timestamp), CAST(N'2022-04-26T11:12:23.000' AS timestamp), 800, 1);

INSERT INTO game_sessions
VALUES (418, CAST(N'2022-02-02T19:43:06.000' AS timestamp), CAST(N'2022-02-02T21:59:57.000' AS timestamp), 123, 1);

INSERT INTO game_sessions
VALUES (419, CAST(N'2022-05-09T15:49:38.000' AS timestamp), CAST(N'2022-05-09T18:06:29.000' AS timestamp), 929, 1);

INSERT INTO game_sessions
VALUES (420, CAST(N'2022-03-26T14:43:46.000' AS timestamp), CAST(N'2022-03-26T17:00:37.000' AS timestamp), 677, 1);

INSERT INTO game_sessions
VALUES (421, CAST(N'2021-08-07T07:13:30.000' AS timestamp), CAST(N'2021-08-07T09:30:21.000' AS timestamp), 717, 2);

INSERT INTO game_sessions
VALUES (422, CAST(N'2022-02-21T00:22:01.000' AS timestamp), CAST(N'2022-02-21T02:38:52.000' AS timestamp), 439, 4);

INSERT INTO game_sessions
VALUES (423, CAST(N'2021-12-25T18:29:41.000' AS timestamp), CAST(N'2021-12-25T20:46:32.000' AS timestamp), 808, 4);

INSERT INTO game_sessions
VALUES (424, CAST(N'2022-01-20T22:38:33.000' AS timestamp), CAST(N'2022-01-21T00:55:24.000' AS timestamp), 37, 3);

INSERT INTO game_sessions
VALUES (425, CAST(N'2022-01-13T22:28:45.000' AS timestamp), CAST(N'2022-01-14T00:45:36.000' AS timestamp), 902, 4);

INSERT INTO game_sessions
VALUES (426, CAST(N'2021-09-15T22:06:30.000' AS timestamp), CAST(N'2021-09-16T00:23:21.000' AS timestamp), 627, 1);

INSERT INTO game_sessions
VALUES (427, CAST(N'2022-02-12T00:57:26.000' AS timestamp), CAST(N'2022-02-12T03:14:17.000' AS timestamp), 339, 3);

INSERT INTO game_sessions
VALUES (428, CAST(N'2021-11-30T14:13:28.000' AS timestamp), CAST(N'2021-11-30T16:30:19.000' AS timestamp), 289, 3);

INSERT INTO game_sessions
VALUES (429, CAST(N'2021-12-05T13:02:56.000' AS timestamp), CAST(N'2021-12-05T15:19:47.000' AS timestamp), 547, 3);

INSERT INTO game_sessions
VALUES (430, CAST(N'2021-12-27T11:58:37.000' AS timestamp), CAST(N'2021-12-27T14:15:28.000' AS timestamp), 942, 2);

INSERT INTO game_sessions
VALUES (431, CAST(N'2021-09-23T01:03:58.000' AS timestamp), CAST(N'2021-09-23T03:20:49.000' AS timestamp), 252, 1);

INSERT INTO game_sessions
VALUES (432, CAST(N'2022-01-16T06:05:27.000' AS timestamp), CAST(N'2022-01-16T08:22:18.000' AS timestamp), 367, 1);

INSERT INTO game_sessions
VALUES (433, CAST(N'2022-06-17T12:00:00.000' AS timestamp), CAST(N'2022-06-17T14:16:51.000' AS timestamp), 342, 2);

INSERT INTO game_sessions
VALUES (434, CAST(N'2022-01-09T02:53:21.000' AS timestamp), CAST(N'2022-01-09T05:10:12.000' AS timestamp), 880, 1);

INSERT INTO game_sessions
VALUES (435, CAST(N'2022-03-09T09:27:23.000' AS timestamp), CAST(N'2022-03-09T11:44:14.000' AS timestamp), 682, 4);

INSERT INTO game_sessions
VALUES (436, CAST(N'2021-08-14T03:36:53.000' AS timestamp), CAST(N'2021-08-14T05:53:44.000' AS timestamp), 561, 4);

INSERT INTO game_sessions
VALUES (437, CAST(N'2022-01-28T22:38:15.000' AS timestamp), CAST(N'2022-01-29T00:55:06.000' AS timestamp), 664, 3);

INSERT INTO game_sessions
VALUES (438, CAST(N'2022-03-20T21:34:57.000' AS timestamp), CAST(N'2022-03-20T23:51:48.000' AS timestamp), 182, 4);

INSERT INTO game_sessions
VALUES (439, CAST(N'2021-10-26T09:55:35.000' AS timestamp), CAST(N'2021-10-26T12:12:26.000' AS timestamp), 816, 2);

INSERT INTO game_sessions
VALUES (440, CAST(N'2021-08-04T04:44:34.000' AS timestamp), CAST(N'2021-08-04T07:01:25.000' AS timestamp), 944, 4);

INSERT INTO game_sessions
VALUES (441, CAST(N'2022-01-07T05:50:05.000' AS timestamp), CAST(N'2022-01-07T08:06:56.000' AS timestamp), 185, 1);

INSERT INTO game_sessions
VALUES (442, CAST(N'2021-09-10T22:32:15.000' AS timestamp), CAST(N'2021-09-11T00:49:06.000' AS timestamp), 846, 4);

INSERT INTO game_sessions
VALUES (443, CAST(N'2022-02-01T16:58:29.000' AS timestamp), CAST(N'2022-02-01T19:15:20.000' AS timestamp), 753, 2);

INSERT INTO game_sessions
VALUES (444, CAST(N'2021-10-13T10:20:48.000' AS timestamp), CAST(N'2021-10-13T12:37:39.000' AS timestamp), 870, 3);

INSERT INTO game_sessions
VALUES (445, CAST(N'2022-03-13T00:26:03.000' AS timestamp), CAST(N'2022-03-13T02:42:54.000' AS timestamp), 917, 2);

INSERT INTO game_sessions
VALUES (446, CAST(N'2022-05-29T14:28:05.000' AS timestamp), CAST(N'2022-05-29T16:44:56.000' AS timestamp), 123, 4);

INSERT INTO game_sessions
VALUES (447, CAST(N'2022-03-21T23:02:22.000' AS timestamp), CAST(N'2022-03-22T01:19:13.000' AS timestamp), 847, 2);

INSERT INTO game_sessions
VALUES (448, CAST(N'2021-11-29T21:37:57.000' AS timestamp), CAST(N'2021-11-29T23:54:48.000' AS timestamp), 833, 3);

INSERT INTO game_sessions
VALUES (449, CAST(N'2022-07-19T23:18:04.000' AS timestamp), CAST(N'2022-07-20T01:34:55.000' AS timestamp), 678, 3);

INSERT INTO game_sessions
VALUES (450, CAST(N'2021-12-24T01:13:47.000' AS timestamp), CAST(N'2021-12-24T03:30:38.000' AS timestamp), 645, 1);

INSERT INTO game_sessions
VALUES (451, CAST(N'2022-04-13T09:11:34.000' AS timestamp), CAST(N'2022-04-13T11:28:25.000' AS timestamp), 367, 3);

INSERT INTO game_sessions
VALUES (452, CAST(N'2022-02-17T02:59:33.000' AS timestamp), CAST(N'2022-02-17T05:16:24.000' AS timestamp), 236, 3);

INSERT INTO game_sessions
VALUES (453, CAST(N'2021-09-07T19:22:13.000' AS timestamp), CAST(N'2021-09-07T21:39:04.000' AS timestamp), 909, 1);

INSERT INTO game_sessions
VALUES (454, CAST(N'2021-11-21T05:37:36.000' AS timestamp), CAST(N'2021-11-21T07:54:27.000' AS timestamp), 897, 2);

INSERT INTO game_sessions
VALUES (455, CAST(N'2021-08-04T12:14:44.000' AS timestamp), CAST(N'2021-08-04T14:31:35.000' AS timestamp), 665, 3);

INSERT INTO game_sessions
VALUES (456, CAST(N'2022-03-28T17:12:08.000' AS timestamp), CAST(N'2022-03-28T19:28:59.000' AS timestamp), 773, 4);

INSERT INTO game_sessions
VALUES (457, CAST(N'2021-08-01T21:40:10.000' AS timestamp), CAST(N'2021-08-01T23:57:01.000' AS timestamp), 113, 3);

INSERT INTO game_sessions
VALUES (458, CAST(N'2022-04-24T02:58:17.000' AS timestamp), CAST(N'2022-04-24T05:15:08.000' AS timestamp), 451, 2);

INSERT INTO game_sessions
VALUES (459, CAST(N'2022-06-03T15:16:24.000' AS timestamp), CAST(N'2022-06-03T17:33:15.000' AS timestamp), 494, 2);

INSERT INTO game_sessions
VALUES (460, CAST(N'2022-02-23T06:38:24.000' AS timestamp), CAST(N'2022-02-23T08:55:15.000' AS timestamp), 451, 3);

INSERT INTO game_sessions
VALUES (461, CAST(N'2022-03-16T08:32:16.000' AS timestamp), CAST(N'2022-03-16T10:49:07.000' AS timestamp), 132, 4);

INSERT INTO game_sessions
VALUES (462, CAST(N'2022-01-15T05:55:07.000' AS timestamp), CAST(N'2022-01-15T08:11:58.000' AS timestamp), 749, 4);

INSERT INTO game_sessions
VALUES (463, CAST(N'2022-05-12T18:34:26.000' AS timestamp), CAST(N'2022-05-12T20:51:17.000' AS timestamp), 889, 1);

INSERT INTO game_sessions
VALUES (464, CAST(N'2022-05-13T20:11:57.000' AS timestamp), CAST(N'2022-05-13T22:28:48.000' AS timestamp), 755, 3);

INSERT INTO game_sessions
VALUES (465, CAST(N'2022-05-25T04:32:40.000' AS timestamp), CAST(N'2022-05-25T06:49:31.000' AS timestamp), 145, 1);

INSERT INTO game_sessions
VALUES (466, CAST(N'2021-08-14T21:33:47.000' AS timestamp), CAST(N'2021-08-14T23:50:38.000' AS timestamp), 157, 2);

INSERT INTO game_sessions
VALUES (467, CAST(N'2021-10-31T22:49:50.000' AS timestamp), CAST(N'2021-11-01T01:06:41.000' AS timestamp), 17, 2);

INSERT INTO game_sessions
VALUES (468, CAST(N'2022-04-05T21:14:40.000' AS timestamp), CAST(N'2022-04-05T23:31:31.000' AS timestamp), 121, 2);

INSERT INTO game_sessions
VALUES (469, CAST(N'2022-04-23T03:23:31.000' AS timestamp), CAST(N'2022-04-23T05:40:22.000' AS timestamp), 793, 3);

INSERT INTO game_sessions
VALUES (470, CAST(N'2021-08-07T00:39:23.000' AS timestamp), CAST(N'2021-08-07T02:56:14.000' AS timestamp), 372, 1);

INSERT INTO game_sessions
VALUES (471, CAST(N'2021-09-22T00:17:01.000' AS timestamp), CAST(N'2021-09-22T02:33:52.000' AS timestamp), 982, 3);

INSERT INTO game_sessions
VALUES (472, CAST(N'2022-06-02T12:06:14.000' AS timestamp), CAST(N'2022-06-02T14:23:05.000' AS timestamp), 230, 2);

INSERT INTO game_sessions
VALUES (473, CAST(N'2021-09-30T13:39:39.000' AS timestamp), CAST(N'2021-09-30T15:56:30.000' AS timestamp), 508, 3);

INSERT INTO game_sessions
VALUES (474, CAST(N'2021-08-09T12:53:33.000' AS timestamp), CAST(N'2021-08-09T15:10:24.000' AS timestamp), 112, 1);

INSERT INTO game_sessions
VALUES (475, CAST(N'2022-05-23T15:31:41.000' AS timestamp), CAST(N'2022-05-23T17:48:32.000' AS timestamp), 109, 4);

INSERT INTO game_sessions
VALUES (476, CAST(N'2022-01-28T04:30:31.000' AS timestamp), CAST(N'2022-01-28T06:47:22.000' AS timestamp), 332, 2);

INSERT INTO game_sessions
VALUES (477, CAST(N'2021-10-09T22:35:31.000' AS timestamp), CAST(N'2021-10-10T00:52:22.000' AS timestamp), 281, 4);

INSERT INTO game_sessions
VALUES (478, CAST(N'2022-05-24T11:49:54.000' AS timestamp), CAST(N'2022-05-24T14:06:45.000' AS timestamp), 408, 2);

INSERT INTO game_sessions
VALUES (479, CAST(N'2022-05-27T06:02:29.000' AS timestamp), CAST(N'2022-05-27T08:19:20.000' AS timestamp), 131, 1);

INSERT INTO game_sessions
VALUES (480, CAST(N'2022-06-05T06:51:00.000' AS timestamp), CAST(N'2022-06-05T09:07:51.000' AS timestamp), 214, 4);

INSERT INTO game_sessions
VALUES (481, CAST(N'2022-03-08T09:29:23.000' AS timestamp), CAST(N'2022-03-08T11:46:14.000' AS timestamp), 781, 4);

INSERT INTO game_sessions
VALUES (482, CAST(N'2022-04-23T22:21:13.000' AS timestamp), CAST(N'2022-04-24T00:38:04.000' AS timestamp), 279, 4);

INSERT INTO game_sessions
VALUES (483, CAST(N'2021-11-05T19:02:08.000' AS timestamp), CAST(N'2021-11-05T21:18:59.000' AS timestamp), 856, 4);

INSERT INTO game_sessions
VALUES (484, CAST(N'2021-08-27T08:27:19.000' AS timestamp), CAST(N'2021-08-27T10:44:10.000' AS timestamp), 272, 4);

INSERT INTO game_sessions
VALUES (485, CAST(N'2022-06-03T02:46:34.000' AS timestamp), CAST(N'2022-06-03T05:03:25.000' AS timestamp), 127, 3);

INSERT INTO game_sessions
VALUES (486, CAST(N'2021-12-16T21:56:42.000' AS timestamp), CAST(N'2021-12-17T00:13:33.000' AS timestamp), 171, 1);

INSERT INTO game_sessions
VALUES (487, CAST(N'2022-05-08T13:44:20.000' AS timestamp), CAST(N'2022-05-08T16:01:11.000' AS timestamp), 290, 1);

INSERT INTO game_sessions
VALUES (488, CAST(N'2022-06-11T04:58:53.000' AS timestamp), CAST(N'2022-06-11T07:15:44.000' AS timestamp), 819, 1);

INSERT INTO game_sessions
VALUES (489, CAST(N'2022-05-08T15:46:08.000' AS timestamp), CAST(N'2022-05-08T18:02:59.000' AS timestamp), 68, 2);

INSERT INTO game_sessions
VALUES (490, CAST(N'2021-08-25T23:21:49.000' AS timestamp), CAST(N'2021-08-26T01:38:40.000' AS timestamp), 71, 4);

INSERT INTO game_sessions
VALUES (491, CAST(N'2022-03-31T08:17:33.000' AS timestamp), CAST(N'2022-03-31T10:34:24.000' AS timestamp), 286, 4);

INSERT INTO game_sessions
VALUES (492, CAST(N'2022-07-28T11:00:52.000' AS timestamp), CAST(N'2022-07-28T13:17:43.000' AS timestamp), 310, 4);

INSERT INTO game_sessions
VALUES (493, CAST(N'2022-06-11T14:44:09.000' AS timestamp), CAST(N'2022-06-11T17:01:00.000' AS timestamp), 275, 4);

INSERT INTO game_sessions
VALUES (494, CAST(N'2022-01-15T06:59:57.000' AS timestamp), CAST(N'2022-01-15T09:16:48.000' AS timestamp), 432, 1);

INSERT INTO game_sessions
VALUES (495, CAST(N'2021-10-18T15:31:42.000' AS timestamp), CAST(N'2021-10-18T17:48:33.000' AS timestamp), 45, 1);

INSERT INTO game_sessions
VALUES (496, CAST(N'2022-06-04T05:12:41.000' AS timestamp), CAST(N'2022-06-04T07:29:32.000' AS timestamp), 474, 2);

INSERT INTO game_sessions
VALUES (497, CAST(N'2021-07-29T18:47:00.000' AS timestamp), CAST(N'2021-07-29T21:03:51.000' AS timestamp), 405, 2);

INSERT INTO game_sessions
VALUES (498, CAST(N'2022-01-06T19:19:19.000' AS timestamp), CAST(N'2022-01-06T21:36:10.000' AS timestamp), 173, 3);

INSERT INTO game_sessions
VALUES (499, CAST(N'2022-07-02T13:17:47.000' AS timestamp), CAST(N'2022-07-02T15:34:38.000' AS timestamp), 878, 3);

INSERT INTO game_sessions
VALUES (500, CAST(N'2022-05-16T02:27:45.000' AS timestamp), CAST(N'2022-05-16T04:44:36.000' AS timestamp), 281, 4);

INSERT INTO game_sessions
VALUES (501, CAST(N'2022-01-07T17:28:58.000' AS timestamp), CAST(N'2022-01-07T19:45:49.000' AS timestamp), 551, 3);

INSERT INTO game_sessions
VALUES (502, CAST(N'2022-06-28T16:57:53.000' AS timestamp), CAST(N'2022-06-28T19:14:44.000' AS timestamp), 218, 4);

INSERT INTO game_sessions
VALUES (503, CAST(N'2022-07-22T02:28:46.000' AS timestamp), CAST(N'2022-07-22T04:45:37.000' AS timestamp), 500, 2);

INSERT INTO game_sessions
VALUES (504, CAST(N'2021-10-14T12:45:24.000' AS timestamp), CAST(N'2021-10-14T15:02:15.000' AS timestamp), 940, 1);

INSERT INTO game_sessions
VALUES (505, CAST(N'2022-01-26T08:13:54.000' AS timestamp), CAST(N'2022-01-26T10:30:45.000' AS timestamp), 341, 2);

INSERT INTO game_sessions
VALUES (506, CAST(N'2021-12-16T16:32:35.000' AS timestamp), CAST(N'2021-12-16T18:49:26.000' AS timestamp), 138, 2);

INSERT INTO game_sessions
VALUES (507, CAST(N'2022-03-14T20:35:30.000' AS timestamp), CAST(N'2022-03-14T22:52:21.000' AS timestamp), 703, 1);

INSERT INTO game_sessions
VALUES (508, CAST(N'2021-12-11T12:23:09.000' AS timestamp), CAST(N'2021-12-11T14:40:00.000' AS timestamp), 55, 1);

INSERT INTO game_sessions
VALUES (509, CAST(N'2022-07-03T23:37:29.000' AS timestamp), CAST(N'2022-07-04T01:54:20.000' AS timestamp), 325, 4);

INSERT INTO game_sessions
VALUES (510, CAST(N'2022-01-31T14:58:39.000' AS timestamp), CAST(N'2022-01-31T17:15:30.000' AS timestamp), 842, 4);

INSERT INTO game_sessions
VALUES (511, CAST(N'2022-03-16T18:03:50.000' AS timestamp), CAST(N'2022-03-16T20:20:41.000' AS timestamp), 383, 2);

INSERT INTO game_sessions
VALUES (512, CAST(N'2021-08-02T16:27:36.000' AS timestamp), CAST(N'2021-08-02T18:44:27.000' AS timestamp), 153, 3);

INSERT INTO game_sessions
VALUES (513, CAST(N'2021-10-12T23:12:13.000' AS timestamp), CAST(N'2021-10-13T01:29:04.000' AS timestamp), 945, 3);

INSERT INTO game_sessions
VALUES (514, CAST(N'2022-01-27T16:38:11.000' AS timestamp), CAST(N'2022-01-27T18:55:02.000' AS timestamp), 313, 4);

INSERT INTO game_sessions
VALUES (515, CAST(N'2022-02-13T04:12:22.000' AS timestamp), CAST(N'2022-02-13T06:29:13.000' AS timestamp), 949, 2);

INSERT INTO game_sessions
VALUES (516, CAST(N'2021-07-31T23:54:39.000' AS timestamp), CAST(N'2021-08-01T02:11:30.000' AS timestamp), 664, 2);

INSERT INTO game_sessions
VALUES (517, CAST(N'2021-12-20T01:08:02.000' AS timestamp), CAST(N'2021-12-20T03:24:53.000' AS timestamp), 645, 2);

INSERT INTO game_sessions
VALUES (518, CAST(N'2022-05-03T06:08:00.000' AS timestamp), CAST(N'2022-05-03T08:24:51.000' AS timestamp), 287, 4);

INSERT INTO game_sessions
VALUES (519, CAST(N'2022-04-25T06:31:54.000' AS timestamp), CAST(N'2022-04-25T08:48:45.000' AS timestamp), 633, 1);

INSERT INTO game_sessions
VALUES (520, CAST(N'2021-10-20T11:40:25.000' AS timestamp), CAST(N'2021-10-20T13:57:16.000' AS timestamp), 487, 3);

INSERT INTO game_sessions
VALUES (521, CAST(N'2021-11-02T08:58:46.000' AS timestamp), CAST(N'2021-11-02T11:15:37.000' AS timestamp), 313, 4);

INSERT INTO game_sessions
VALUES (522, CAST(N'2022-07-11T17:57:38.000' AS timestamp), CAST(N'2022-07-11T20:14:29.000' AS timestamp), 913, 1);

INSERT INTO game_sessions
VALUES (523, CAST(N'2021-12-03T15:02:51.000' AS timestamp), CAST(N'2021-12-03T17:19:42.000' AS timestamp), 456, 1);

INSERT INTO game_sessions
VALUES (524, CAST(N'2022-06-04T16:49:01.000' AS timestamp), CAST(N'2022-06-04T19:05:52.000' AS timestamp), 953, 1);

INSERT INTO game_sessions
VALUES (525, CAST(N'2021-08-28T02:21:42.000' AS timestamp), CAST(N'2021-08-28T04:38:33.000' AS timestamp), 557, 4);

INSERT INTO game_sessions
VALUES (526, CAST(N'2022-04-27T10:56:13.000' AS timestamp), CAST(N'2022-04-27T13:13:04.000' AS timestamp), 293, 1);

INSERT INTO game_sessions
VALUES (527, CAST(N'2021-11-01T15:13:32.000' AS timestamp), CAST(N'2021-11-01T17:30:23.000' AS timestamp), 265, 3);

INSERT INTO game_sessions
VALUES (528, CAST(N'2022-03-11T22:38:09.000' AS timestamp), CAST(N'2022-03-12T00:55:00.000' AS timestamp), 245, 3);

INSERT INTO game_sessions
VALUES (529, CAST(N'2022-04-28T21:54:17.000' AS timestamp), CAST(N'2022-04-29T00:11:08.000' AS timestamp), 998, 3);

INSERT INTO game_sessions
VALUES (530, CAST(N'2022-02-17T15:39:07.000' AS timestamp), CAST(N'2022-02-17T17:55:58.000' AS timestamp), 366, 1);

INSERT INTO game_sessions
VALUES (531, CAST(N'2021-11-25T09:51:45.000' AS timestamp), CAST(N'2021-11-25T12:08:36.000' AS timestamp), 572, 3);

INSERT INTO game_sessions
VALUES (532, CAST(N'2021-09-04T19:29:43.000' AS timestamp), CAST(N'2021-09-04T21:46:34.000' AS timestamp), 167, 2);

INSERT INTO game_sessions
VALUES (533, CAST(N'2021-12-18T04:44:55.000' AS timestamp), CAST(N'2021-12-18T07:01:46.000' AS timestamp), 292, 3);

INSERT INTO game_sessions
VALUES (534, CAST(N'2022-06-28T11:01:34.000' AS timestamp), CAST(N'2022-06-28T13:18:25.000' AS timestamp), 920, 3);

INSERT INTO game_sessions
VALUES (535, CAST(N'2021-09-13T12:18:47.000' AS timestamp), CAST(N'2021-09-13T14:35:38.000' AS timestamp), 301, 3);

INSERT INTO game_sessions
VALUES (536, CAST(N'2022-04-23T03:45:43.000' AS timestamp), CAST(N'2022-04-23T06:02:34.000' AS timestamp), 477, 1);

INSERT INTO game_sessions
VALUES (537, CAST(N'2021-09-02T11:37:26.000' AS timestamp), CAST(N'2021-09-02T13:54:17.000' AS timestamp), 285, 3);

INSERT INTO game_sessions
VALUES (538, CAST(N'2022-04-21T08:36:24.000' AS timestamp), CAST(N'2022-04-21T10:53:15.000' AS timestamp), 82, 2);

INSERT INTO game_sessions
VALUES (539, CAST(N'2022-01-18T23:35:01.000' AS timestamp), CAST(N'2022-01-19T01:51:52.000' AS timestamp), 354, 3);

INSERT INTO game_sessions
VALUES (540, CAST(N'2021-12-12T15:17:28.000' AS timestamp), CAST(N'2021-12-12T17:34:19.000' AS timestamp), 385, 2);

INSERT INTO game_sessions
VALUES (541, CAST(N'2022-04-21T12:39:12.000' AS timestamp), CAST(N'2022-04-21T14:56:03.000' AS timestamp), 944, 4);

INSERT INTO game_sessions
VALUES (542, CAST(N'2022-01-25T20:48:13.000' AS timestamp), CAST(N'2022-01-25T23:05:04.000' AS timestamp), 978, 4);

INSERT INTO game_sessions
VALUES (543, CAST(N'2021-12-17T06:42:54.000' AS timestamp), CAST(N'2021-12-17T08:59:45.000' AS timestamp), 465, 3);

INSERT INTO game_sessions
VALUES (544, CAST(N'2022-05-11T18:25:49.000' AS timestamp), CAST(N'2022-05-11T20:42:40.000' AS timestamp), 857, 2);

INSERT INTO game_sessions
VALUES (545, CAST(N'2021-08-03T08:23:46.000' AS timestamp), CAST(N'2021-08-03T10:40:37.000' AS timestamp), 596, 2);

INSERT INTO game_sessions
VALUES (546, CAST(N'2022-01-20T16:20:21.000' AS timestamp), CAST(N'2022-01-20T18:37:12.000' AS timestamp), 264, 4);

INSERT INTO game_sessions
VALUES (547, CAST(N'2021-10-29T04:04:22.000' AS timestamp), CAST(N'2021-10-29T06:21:13.000' AS timestamp), 370, 2);

INSERT INTO game_sessions
VALUES (548, CAST(N'2021-08-12T00:29:12.000' AS timestamp), CAST(N'2021-08-12T02:46:03.000' AS timestamp), 981, 2);

INSERT INTO game_sessions
VALUES (549, CAST(N'2021-10-17T13:50:47.000' AS timestamp), CAST(N'2021-10-17T16:07:38.000' AS timestamp), 762, 3);

INSERT INTO game_sessions
VALUES (550, CAST(N'2022-01-08T10:25:25.000' AS timestamp), CAST(N'2022-01-08T12:42:16.000' AS timestamp), 873, 4);

INSERT INTO game_sessions
VALUES (551, CAST(N'2021-10-07T23:31:10.000' AS timestamp), CAST(N'2021-10-08T01:48:01.000' AS timestamp), 557, 1);

INSERT INTO game_sessions
VALUES (552, CAST(N'2021-12-23T18:42:24.000' AS timestamp), CAST(N'2021-12-23T20:59:15.000' AS timestamp), 691, 3);

INSERT INTO game_sessions
VALUES (553, CAST(N'2022-04-03T15:11:41.000' AS timestamp), CAST(N'2022-04-03T17:28:32.000' AS timestamp), 651, 1);

INSERT INTO game_sessions
VALUES (554, CAST(N'2021-10-05T09:46:07.000' AS timestamp), CAST(N'2021-10-05T12:02:58.000' AS timestamp), 957, 2);

INSERT INTO game_sessions
VALUES (555, CAST(N'2021-08-08T23:38:19.000' AS timestamp), CAST(N'2021-08-09T01:55:10.000' AS timestamp), 756, 4);

INSERT INTO game_sessions
VALUES (556, CAST(N'2022-04-05T03:19:35.000' AS timestamp), CAST(N'2022-04-05T05:36:26.000' AS timestamp), 713, 3);

INSERT INTO game_sessions
VALUES (557, CAST(N'2021-08-15T14:46:37.000' AS timestamp), CAST(N'2021-08-15T17:03:28.000' AS timestamp), 239, 4);

INSERT INTO game_sessions
VALUES (558, CAST(N'2022-02-13T03:48:37.000' AS timestamp), CAST(N'2022-02-13T06:05:28.000' AS timestamp), 415, 1);

INSERT INTO game_sessions
VALUES (559, CAST(N'2022-03-03T21:13:08.000' AS timestamp), CAST(N'2022-03-03T23:29:59.000' AS timestamp), 266, 3);

INSERT INTO game_sessions
VALUES (560, CAST(N'2021-12-03T03:39:29.000' AS timestamp), CAST(N'2021-12-03T05:56:20.000' AS timestamp), 822, 4);

INSERT INTO game_sessions
VALUES (561, CAST(N'2021-12-14T03:32:49.000' AS timestamp), CAST(N'2021-12-14T05:49:40.000' AS timestamp), 884, 3);

INSERT INTO game_sessions
VALUES (562, CAST(N'2022-06-03T05:45:39.000' AS timestamp), CAST(N'2022-06-03T08:02:30.000' AS timestamp), 374, 1);

INSERT INTO game_sessions
VALUES (563, CAST(N'2022-03-28T01:41:13.000' AS timestamp), CAST(N'2022-03-28T03:58:04.000' AS timestamp), 358, 3);

INSERT INTO game_sessions
VALUES (564, CAST(N'2022-05-07T14:04:55.000' AS timestamp), CAST(N'2022-05-07T16:21:46.000' AS timestamp), 247, 1);

INSERT INTO game_sessions
VALUES (565, CAST(N'2022-04-29T17:07:54.000' AS timestamp), CAST(N'2022-04-29T19:24:45.000' AS timestamp), 965, 4);

INSERT INTO game_sessions
VALUES (566, CAST(N'2021-10-06T20:24:05.000' AS timestamp), CAST(N'2021-10-06T22:40:56.000' AS timestamp), 487, 1);

INSERT INTO game_sessions
VALUES (567, CAST(N'2021-10-24T05:45:50.000' AS timestamp), CAST(N'2021-10-24T08:02:41.000' AS timestamp), 82, 4);

INSERT INTO game_sessions
VALUES (568, CAST(N'2022-04-16T10:33:00.000' AS timestamp), CAST(N'2022-04-16T12:49:51.000' AS timestamp), 352, 1);

INSERT INTO game_sessions
VALUES (569, CAST(N'2022-05-20T21:00:18.000' AS timestamp), CAST(N'2022-05-20T23:17:09.000' AS timestamp), 635, 4);

INSERT INTO game_sessions
VALUES (570, CAST(N'2022-05-05T08:10:02.000' AS timestamp), CAST(N'2022-05-05T10:26:53.000' AS timestamp), 132, 1);

INSERT INTO game_sessions
VALUES (571, CAST(N'2022-04-08T10:49:09.000' AS timestamp), CAST(N'2022-04-08T13:06:00.000' AS timestamp), 3, 3);

INSERT INTO game_sessions
VALUES (572, CAST(N'2021-12-25T10:07:17.000' AS timestamp), CAST(N'2021-12-25T12:24:08.000' AS timestamp), 260, 4);

INSERT INTO game_sessions
VALUES (573, CAST(N'2022-03-17T06:42:50.000' AS timestamp), CAST(N'2022-03-17T08:59:41.000' AS timestamp), 779, 4);

INSERT INTO game_sessions
VALUES (574, CAST(N'2022-01-13T22:58:59.000' AS timestamp), CAST(N'2022-01-14T01:15:50.000' AS timestamp), 60, 3);

INSERT INTO game_sessions
VALUES (575, CAST(N'2021-10-22T23:53:27.000' AS timestamp), CAST(N'2021-10-23T02:10:18.000' AS timestamp), 696, 4);

INSERT INTO game_sessions
VALUES (576, CAST(N'2022-06-19T05:33:17.000' AS timestamp), CAST(N'2022-06-19T07:50:08.000' AS timestamp), 942, 4);

INSERT INTO game_sessions
VALUES (577, CAST(N'2022-03-13T22:15:10.000' AS timestamp), CAST(N'2022-03-14T00:32:01.000' AS timestamp), 317, 1);

INSERT INTO game_sessions
VALUES (578, CAST(N'2021-11-16T03:46:46.000' AS timestamp), CAST(N'2021-11-16T06:03:37.000' AS timestamp), 595, 1);

INSERT INTO game_sessions
VALUES (579, CAST(N'2021-12-12T03:11:22.000' AS timestamp), CAST(N'2021-12-12T05:28:13.000' AS timestamp), 859, 4);

INSERT INTO game_sessions
VALUES (580, CAST(N'2021-12-18T02:37:13.000' AS timestamp), CAST(N'2021-12-18T04:54:04.000' AS timestamp), 908, 1);

INSERT INTO game_sessions
VALUES (581, CAST(N'2022-01-15T10:23:51.000' AS timestamp), CAST(N'2022-01-15T12:40:42.000' AS timestamp), 556, 3);

INSERT INTO game_sessions
VALUES (582, CAST(N'2021-10-15T10:26:17.000' AS timestamp), CAST(N'2021-10-15T12:43:08.000' AS timestamp), 700, 2);

INSERT INTO game_sessions
VALUES (583, CAST(N'2022-06-16T07:12:40.000' AS timestamp), CAST(N'2022-06-16T09:29:31.000' AS timestamp), 993, 3);

INSERT INTO game_sessions
VALUES (584, CAST(N'2021-10-12T15:47:09.000' AS timestamp), CAST(N'2021-10-12T18:04:00.000' AS timestamp), 525, 2);

INSERT INTO game_sessions
VALUES (585, CAST(N'2021-07-31T22:21:25.000' AS timestamp), CAST(N'2021-08-01T00:38:16.000' AS timestamp), 515, 2);

INSERT INTO game_sessions
VALUES (586, CAST(N'2022-06-15T17:53:11.000' AS timestamp), CAST(N'2022-06-15T20:10:02.000' AS timestamp), 475, 4);

INSERT INTO game_sessions
VALUES (587, CAST(N'2021-10-04T21:29:12.000' AS timestamp), CAST(N'2021-10-04T23:46:03.000' AS timestamp), 330, 1);

INSERT INTO game_sessions
VALUES (588, CAST(N'2022-03-20T00:18:30.000' AS timestamp), CAST(N'2022-03-20T02:35:21.000' AS timestamp), 324, 1);

INSERT INTO game_sessions
VALUES (589, CAST(N'2022-04-14T11:42:25.000' AS timestamp), CAST(N'2022-04-14T13:59:16.000' AS timestamp), 544, 4);

INSERT INTO game_sessions
VALUES (590, CAST(N'2021-10-26T00:14:41.000' AS timestamp), CAST(N'2021-10-26T02:31:32.000' AS timestamp), 794, 3);

INSERT INTO game_sessions
VALUES (591, CAST(N'2021-09-09T10:57:24.000' AS timestamp), CAST(N'2021-09-09T13:14:15.000' AS timestamp), 213, 3);

INSERT INTO game_sessions
VALUES (592, CAST(N'2021-08-20T21:13:48.000' AS timestamp), CAST(N'2021-08-20T23:30:39.000' AS timestamp), 846, 3);

INSERT INTO game_sessions
VALUES (593, CAST(N'2021-11-30T10:14:28.000' AS timestamp), CAST(N'2021-11-30T12:31:19.000' AS timestamp), 596, 3);

INSERT INTO game_sessions
VALUES (594, CAST(N'2021-09-25T05:49:36.000' AS timestamp), CAST(N'2021-09-25T08:06:27.000' AS timestamp), 340, 1);

INSERT INTO game_sessions
VALUES (595, CAST(N'2021-12-16T02:14:14.000' AS timestamp), CAST(N'2021-12-16T04:31:05.000' AS timestamp), 347, 3);

INSERT INTO game_sessions
VALUES (596, CAST(N'2021-09-27T08:17:05.000' AS timestamp), CAST(N'2021-09-27T10:33:56.000' AS timestamp), 183, 1);

INSERT INTO game_sessions
VALUES (597, CAST(N'2022-07-01T19:21:30.000' AS timestamp), CAST(N'2022-07-01T21:38:21.000' AS timestamp), 636, 2);

INSERT INTO game_sessions
VALUES (598, CAST(N'2021-11-05T21:56:58.000' AS timestamp), CAST(N'2021-11-06T00:13:49.000' AS timestamp), 480, 1);

INSERT INTO game_sessions
VALUES (599, CAST(N'2021-11-29T02:17:21.000' AS timestamp), CAST(N'2021-11-29T04:34:12.000' AS timestamp), 969, 1);

INSERT INTO game_sessions
VALUES (600, CAST(N'2022-05-26T12:38:53.000' AS timestamp), CAST(N'2022-05-26T14:55:44.000' AS timestamp), 70, 3);

INSERT INTO game_sessions
VALUES (601, CAST(N'2021-09-14T10:17:03.000' AS timestamp), CAST(N'2021-09-14T12:33:54.000' AS timestamp), 986, 1);

INSERT INTO game_sessions
VALUES (602, CAST(N'2022-05-27T10:21:26.000' AS timestamp), CAST(N'2022-05-27T12:38:17.000' AS timestamp), 697, 3);

INSERT INTO game_sessions
VALUES (603, CAST(N'2022-05-10T06:08:11.000' AS timestamp), CAST(N'2022-05-10T08:25:02.000' AS timestamp), 416, 4);

INSERT INTO game_sessions
VALUES (604, CAST(N'2022-06-11T06:48:56.000' AS timestamp), CAST(N'2022-06-11T09:05:47.000' AS timestamp), 227, 3);

INSERT INTO game_sessions
VALUES (605, CAST(N'2022-05-27T13:13:50.000' AS timestamp), CAST(N'2022-05-27T15:30:41.000' AS timestamp), 697, 3);

INSERT INTO game_sessions
VALUES (606, CAST(N'2022-04-18T15:44:03.000' AS timestamp), CAST(N'2022-04-18T18:00:54.000' AS timestamp), 338, 3);

INSERT INTO game_sessions
VALUES (607, CAST(N'2022-07-03T14:31:12.000' AS timestamp), CAST(N'2022-07-03T16:48:03.000' AS timestamp), 452, 3);

INSERT INTO game_sessions
VALUES (608, CAST(N'2022-07-19T22:40:59.000' AS timestamp), CAST(N'2022-07-20T00:57:50.000' AS timestamp), 283, 1);

INSERT INTO game_sessions
VALUES (609, CAST(N'2022-01-14T09:27:24.000' AS timestamp), CAST(N'2022-01-14T11:44:15.000' AS timestamp), 467, 3);

INSERT INTO game_sessions
VALUES (610, CAST(N'2022-05-13T01:12:15.000' AS timestamp), CAST(N'2022-05-13T03:29:06.000' AS timestamp), 352, 2);

INSERT INTO game_sessions
VALUES (611, CAST(N'2021-09-04T07:04:33.000' AS timestamp), CAST(N'2021-09-04T09:21:24.000' AS timestamp), 794, 2);

INSERT INTO game_sessions
VALUES (612, CAST(N'2022-04-07T02:27:34.000' AS timestamp), CAST(N'2022-04-07T04:44:25.000' AS timestamp), 349, 1);

INSERT INTO game_sessions
VALUES (613, CAST(N'2022-01-13T20:58:01.000' AS timestamp), CAST(N'2022-01-13T23:14:52.000' AS timestamp), 649, 2);

INSERT INTO game_sessions
VALUES (614, CAST(N'2022-07-26T04:52:22.000' AS timestamp), CAST(N'2022-07-26T07:09:13.000' AS timestamp), 341, 3);

INSERT INTO game_sessions
VALUES (615, CAST(N'2022-07-28T14:04:29.000' AS timestamp), CAST(N'2022-07-28T16:21:20.000' AS timestamp), 139, 2);

INSERT INTO game_sessions
VALUES (616, CAST(N'2022-06-09T00:01:32.000' AS timestamp), CAST(N'2022-06-09T02:18:23.000' AS timestamp), 925, 4);

INSERT INTO game_sessions
VALUES (617, CAST(N'2022-06-10T03:34:46.000' AS timestamp), CAST(N'2022-06-10T05:51:37.000' AS timestamp), 84, 1);

INSERT INTO game_sessions
VALUES (618, CAST(N'2021-09-23T07:59:07.000' AS timestamp), CAST(N'2021-09-23T10:15:58.000' AS timestamp), 19, 4);

INSERT INTO game_sessions
VALUES (619, CAST(N'2022-07-21T23:01:43.000' AS timestamp), CAST(N'2022-07-22T01:18:34.000' AS timestamp), 463, 1);

INSERT INTO game_sessions
VALUES (620, CAST(N'2022-05-03T13:49:54.000' AS timestamp), CAST(N'2022-05-03T16:06:45.000' AS timestamp), 969, 3);

INSERT INTO game_sessions
VALUES (621, CAST(N'2021-09-28T00:10:01.000' AS timestamp), CAST(N'2021-09-28T02:26:52.000' AS timestamp), 366, 1);

INSERT INTO game_sessions
VALUES (622, CAST(N'2022-03-08T12:15:28.000' AS timestamp), CAST(N'2022-03-08T14:32:19.000' AS timestamp), 881, 4);

INSERT INTO game_sessions
VALUES (623, CAST(N'2021-08-20T13:54:07.000' AS timestamp), CAST(N'2021-08-20T16:10:58.000' AS timestamp), 291, 1);

INSERT INTO game_sessions
VALUES (624, CAST(N'2022-02-14T06:33:10.000' AS timestamp), CAST(N'2022-02-14T08:50:01.000' AS timestamp), 78, 2);

INSERT INTO game_sessions
VALUES (625, CAST(N'2022-05-11T22:23:30.000' AS timestamp), CAST(N'2022-05-12T00:40:21.000' AS timestamp), 718, 2);

INSERT INTO game_sessions
VALUES (626, CAST(N'2022-02-09T00:57:59.000' AS timestamp), CAST(N'2022-02-09T03:14:50.000' AS timestamp), 864, 2);

INSERT INTO game_sessions
VALUES (627, CAST(N'2022-05-21T02:40:29.000' AS timestamp), CAST(N'2022-05-21T04:57:20.000' AS timestamp), 85, 4);

INSERT INTO game_sessions
VALUES (628, CAST(N'2021-10-09T01:39:19.000' AS timestamp), CAST(N'2021-10-09T03:56:10.000' AS timestamp), 286, 2);

INSERT INTO game_sessions
VALUES (629, CAST(N'2022-05-25T14:31:19.000' AS timestamp), CAST(N'2022-05-25T16:48:10.000' AS timestamp), 397, 4);

INSERT INTO game_sessions
VALUES (630, CAST(N'2021-08-05T23:03:17.000' AS timestamp), CAST(N'2021-08-06T01:20:08.000' AS timestamp), 113, 2);

INSERT INTO game_sessions
VALUES (631, CAST(N'2021-07-30T19:08:53.000' AS timestamp), CAST(N'2021-07-30T21:25:44.000' AS timestamp), 720, 3);

INSERT INTO game_sessions
VALUES (632, CAST(N'2022-06-05T05:37:03.000' AS timestamp), CAST(N'2022-06-05T07:53:54.000' AS timestamp), 61, 1);

INSERT INTO game_sessions
VALUES (633, CAST(N'2021-09-14T03:33:43.000' AS timestamp), CAST(N'2021-09-14T05:50:34.000' AS timestamp), 861, 2);

INSERT INTO game_sessions
VALUES (634, CAST(N'2022-02-11T09:11:14.000' AS timestamp), CAST(N'2022-02-11T11:28:05.000' AS timestamp), 888, 1);

INSERT INTO game_sessions
VALUES (635, CAST(N'2022-04-24T17:39:30.000' AS timestamp), CAST(N'2022-04-24T19:56:21.000' AS timestamp), 715, 2);

INSERT INTO game_sessions
VALUES (636, CAST(N'2022-06-21T05:16:23.000' AS timestamp), CAST(N'2022-06-21T07:33:14.000' AS timestamp), 377, 2);

INSERT INTO game_sessions
VALUES (637, CAST(N'2022-05-01T20:47:21.000' AS timestamp), CAST(N'2022-05-01T23:04:12.000' AS timestamp), 203, 1);

INSERT INTO game_sessions
VALUES (638, CAST(N'2022-03-17T15:00:33.000' AS timestamp), CAST(N'2022-03-17T17:17:24.000' AS timestamp), 828, 1);

INSERT INTO game_sessions
VALUES (639, CAST(N'2022-02-14T13:24:41.000' AS timestamp), CAST(N'2022-02-14T15:41:32.000' AS timestamp), 727, 1);

INSERT INTO game_sessions
VALUES (640, CAST(N'2022-06-08T13:12:32.000' AS timestamp), CAST(N'2022-06-08T15:29:23.000' AS timestamp), 968, 1);

INSERT INTO game_sessions
VALUES (641, CAST(N'2022-04-02T22:38:25.000' AS timestamp), CAST(N'2022-04-03T00:55:16.000' AS timestamp), 368, 3);

INSERT INTO game_sessions
VALUES (642, CAST(N'2021-09-04T22:13:17.000' AS timestamp), CAST(N'2021-09-05T00:30:08.000' AS timestamp), 686, 1);

INSERT INTO game_sessions
VALUES (643, CAST(N'2021-11-20T06:21:22.000' AS timestamp), CAST(N'2021-11-20T08:38:13.000' AS timestamp), 411, 2);

INSERT INTO game_sessions
VALUES (644, CAST(N'2022-05-12T18:03:22.000' AS timestamp), CAST(N'2022-05-12T20:20:13.000' AS timestamp), 527, 4);

INSERT INTO game_sessions
VALUES (645, CAST(N'2021-10-25T10:42:10.000' AS timestamp), CAST(N'2021-10-25T12:59:01.000' AS timestamp), 920, 4);

INSERT INTO game_sessions
VALUES (646, CAST(N'2022-04-16T21:34:21.000' AS timestamp), CAST(N'2022-04-16T23:51:12.000' AS timestamp), 234, 2);

INSERT INTO game_sessions
VALUES (647, CAST(N'2022-02-13T04:32:13.000' AS timestamp), CAST(N'2022-02-13T06:49:04.000' AS timestamp), 878, 1);

INSERT INTO game_sessions
VALUES (648, CAST(N'2022-04-02T03:51:31.000' AS timestamp), CAST(N'2022-04-02T06:08:22.000' AS timestamp), 144, 1);

INSERT INTO game_sessions
VALUES (649, CAST(N'2022-01-07T08:09:23.000' AS timestamp), CAST(N'2022-01-07T10:26:14.000' AS timestamp), 124, 1);

INSERT INTO game_sessions
VALUES (650, CAST(N'2022-07-27T15:04:15.000' AS timestamp), CAST(N'2022-07-27T17:21:06.000' AS timestamp), 548, 1);

INSERT INTO game_sessions
VALUES (651, CAST(N'2022-01-23T08:38:40.000' AS timestamp), CAST(N'2022-01-23T10:55:31.000' AS timestamp), 730, 4);

INSERT INTO game_sessions
VALUES (652, CAST(N'2021-12-31T10:53:38.000' AS timestamp), CAST(N'2021-12-31T13:10:29.000' AS timestamp), 500, 4);

INSERT INTO game_sessions
VALUES (653, CAST(N'2022-03-31T17:50:27.000' AS timestamp), CAST(N'2022-03-31T20:07:18.000' AS timestamp), 262, 3);

INSERT INTO game_sessions
VALUES (654, CAST(N'2022-03-22T22:33:25.000' AS timestamp), CAST(N'2022-03-23T00:50:16.000' AS timestamp), 819, 1);

INSERT INTO game_sessions
VALUES (655, CAST(N'2021-11-07T09:03:06.000' AS timestamp), CAST(N'2021-11-07T11:19:57.000' AS timestamp), 812, 1);

INSERT INTO game_sessions
VALUES (656, CAST(N'2021-12-18T15:34:19.000' AS timestamp), CAST(N'2021-12-18T17:51:10.000' AS timestamp), 38, 4);

INSERT INTO game_sessions
VALUES (657, CAST(N'2021-08-28T16:25:16.000' AS timestamp), CAST(N'2021-08-28T18:42:07.000' AS timestamp), 216, 3);

INSERT INTO game_sessions
VALUES (658, CAST(N'2021-09-07T08:49:24.000' AS timestamp), CAST(N'2021-09-07T11:06:15.000' AS timestamp), 24, 2);

INSERT INTO game_sessions
VALUES (659, CAST(N'2021-11-27T09:39:06.000' AS timestamp), CAST(N'2021-11-27T11:55:57.000' AS timestamp), 268, 1);

INSERT INTO game_sessions
VALUES (660, CAST(N'2022-07-22T22:52:22.000' AS timestamp), CAST(N'2022-07-23T01:09:13.000' AS timestamp), 762, 4);

INSERT INTO game_sessions
VALUES (661, CAST(N'2021-08-22T19:39:47.000' AS timestamp), CAST(N'2021-08-22T21:56:38.000' AS timestamp), 338, 2);

INSERT INTO game_sessions
VALUES (662, CAST(N'2021-09-17T20:19:03.000' AS timestamp), CAST(N'2021-09-17T22:35:54.000' AS timestamp), 537, 1);

INSERT INTO game_sessions
VALUES (663, CAST(N'2022-04-13T16:39:10.000' AS timestamp), CAST(N'2022-04-13T18:56:01.000' AS timestamp), 609, 2);

INSERT INTO game_sessions
VALUES (664, CAST(N'2022-05-29T15:39:29.000' AS timestamp), CAST(N'2022-05-29T17:56:20.000' AS timestamp), 420, 4);

INSERT INTO game_sessions
VALUES (665, CAST(N'2021-09-21T15:38:16.000' AS timestamp), CAST(N'2021-09-21T17:55:07.000' AS timestamp), 47, 1);

INSERT INTO game_sessions
VALUES (666, CAST(N'2022-02-22T18:58:42.000' AS timestamp), CAST(N'2022-02-22T21:15:33.000' AS timestamp), 359, 3);

INSERT INTO game_sessions
VALUES (667, CAST(N'2022-03-26T14:32:43.000' AS timestamp), CAST(N'2022-03-26T16:49:34.000' AS timestamp), 235, 3);

INSERT INTO game_sessions
VALUES (668, CAST(N'2022-04-05T09:35:13.000' AS timestamp), CAST(N'2022-04-05T11:52:04.000' AS timestamp), 277, 4);

INSERT INTO game_sessions
VALUES (669, CAST(N'2021-09-23T10:08:55.000' AS timestamp), CAST(N'2021-09-23T12:25:46.000' AS timestamp), 24, 1);

INSERT INTO game_sessions
VALUES (670, CAST(N'2022-06-09T15:00:21.000' AS timestamp), CAST(N'2022-06-09T17:17:12.000' AS timestamp), 540, 2);

INSERT INTO game_sessions
VALUES (671, CAST(N'2021-10-21T21:24:53.000' AS timestamp), CAST(N'2021-10-21T23:41:44.000' AS timestamp), 840, 2);

INSERT INTO game_sessions
VALUES (672, CAST(N'2022-05-14T22:00:32.000' AS timestamp), CAST(N'2022-05-15T00:17:23.000' AS timestamp), 784, 1);

INSERT INTO game_sessions
VALUES (673, CAST(N'2022-04-05T00:18:53.000' AS timestamp), CAST(N'2022-04-05T02:35:44.000' AS timestamp), 20, 2);

INSERT INTO game_sessions
VALUES (674, CAST(N'2022-06-02T08:35:59.000' AS timestamp), CAST(N'2022-06-02T10:52:50.000' AS timestamp), 470, 4);

INSERT INTO game_sessions
VALUES (675, CAST(N'2022-03-31T16:51:38.000' AS timestamp), CAST(N'2022-03-31T19:08:29.000' AS timestamp), 1000, 4);

INSERT INTO game_sessions
VALUES (676, CAST(N'2021-07-31T12:00:09.000' AS timestamp), CAST(N'2021-07-31T14:17:00.000' AS timestamp), 804, 2);

INSERT INTO game_sessions
VALUES (677, CAST(N'2022-02-23T21:29:21.000' AS timestamp), CAST(N'2022-02-23T23:46:12.000' AS timestamp), 581, 3);

INSERT INTO game_sessions
VALUES (678, CAST(N'2021-08-12T17:01:45.000' AS timestamp), CAST(N'2021-08-12T19:18:36.000' AS timestamp), 758, 2);

INSERT INTO game_sessions
VALUES (679, CAST(N'2022-03-25T08:52:07.000' AS timestamp), CAST(N'2022-03-25T11:08:58.000' AS timestamp), 269, 1);

INSERT INTO game_sessions
VALUES (680, CAST(N'2022-01-29T05:07:30.000' AS timestamp), CAST(N'2022-01-29T07:24:21.000' AS timestamp), 271, 4);

INSERT INTO game_sessions
VALUES (681, CAST(N'2022-06-20T19:56:51.000' AS timestamp), CAST(N'2022-06-20T22:13:42.000' AS timestamp), 367, 4);

INSERT INTO game_sessions
VALUES (682, CAST(N'2021-08-06T07:25:59.000' AS timestamp), CAST(N'2021-08-06T09:42:50.000' AS timestamp), 225, 4);

INSERT INTO game_sessions
VALUES (683, CAST(N'2021-09-18T19:53:16.000' AS timestamp), CAST(N'2021-09-18T22:10:07.000' AS timestamp), 842, 3);

INSERT INTO game_sessions
VALUES (684, CAST(N'2021-12-09T22:30:59.000' AS timestamp), CAST(N'2021-12-10T00:47:50.000' AS timestamp), 257, 1);

INSERT INTO game_sessions
VALUES (685, CAST(N'2022-01-20T06:20:52.000' AS timestamp), CAST(N'2022-01-20T08:37:43.000' AS timestamp), 683, 3);

INSERT INTO game_sessions
VALUES (686, CAST(N'2021-11-18T10:25:50.000' AS timestamp), CAST(N'2021-11-18T12:42:41.000' AS timestamp), 352, 3);

INSERT INTO game_sessions
VALUES (687, CAST(N'2022-07-20T08:41:46.000' AS timestamp), CAST(N'2022-07-20T10:58:37.000' AS timestamp), 618, 1);

INSERT INTO game_sessions
VALUES (688, CAST(N'2021-10-10T12:00:50.000' AS timestamp), CAST(N'2021-10-10T14:17:41.000' AS timestamp), 593, 2);

INSERT INTO game_sessions
VALUES (689, CAST(N'2021-09-21T01:57:01.000' AS timestamp), CAST(N'2021-09-21T04:13:52.000' AS timestamp), 415, 2);

INSERT INTO game_sessions
VALUES (690, CAST(N'2022-07-18T14:16:07.000' AS timestamp), CAST(N'2022-07-18T16:32:58.000' AS timestamp), 425, 3);

INSERT INTO game_sessions
VALUES (691, CAST(N'2021-10-30T02:01:30.000' AS timestamp), CAST(N'2021-10-30T04:18:21.000' AS timestamp), 449, 2);

INSERT INTO game_sessions
VALUES (692, CAST(N'2021-11-02T10:02:06.000' AS timestamp), CAST(N'2021-11-02T12:18:57.000' AS timestamp), 438, 2);

INSERT INTO game_sessions
VALUES (693, CAST(N'2022-04-19T12:20:29.000' AS timestamp), CAST(N'2022-04-19T14:37:20.000' AS timestamp), 446, 3);

INSERT INTO game_sessions
VALUES (694, CAST(N'2022-07-27T06:06:00.000' AS timestamp), CAST(N'2022-07-27T08:22:51.000' AS timestamp), 242, 3);

INSERT INTO game_sessions
VALUES (695, CAST(N'2021-11-15T01:11:57.000' AS timestamp), CAST(N'2021-11-15T03:28:48.000' AS timestamp), 935, 1);

INSERT INTO game_sessions
VALUES (696, CAST(N'2021-12-30T14:07:57.000' AS timestamp), CAST(N'2021-12-30T16:24:48.000' AS timestamp), 670, 3);

INSERT INTO game_sessions
VALUES (697, CAST(N'2021-12-10T05:49:58.000' AS timestamp), CAST(N'2021-12-10T08:06:49.000' AS timestamp), 324, 4);

INSERT INTO game_sessions
VALUES (698, CAST(N'2021-08-16T03:35:33.000' AS timestamp), CAST(N'2021-08-16T05:52:24.000' AS timestamp), 750, 2);

INSERT INTO game_sessions
VALUES (699, CAST(N'2022-07-15T04:51:17.000' AS timestamp), CAST(N'2022-07-15T07:08:08.000' AS timestamp), 229, 2);

INSERT INTO game_sessions
VALUES (700, CAST(N'2022-03-19T04:55:43.000' AS timestamp), CAST(N'2022-03-19T07:12:34.000' AS timestamp), 151, 2);

INSERT INTO game_sessions
VALUES (701, CAST(N'2022-07-01T02:12:33.000' AS timestamp), CAST(N'2022-07-01T04:29:24.000' AS timestamp), 178, 3);

INSERT INTO game_sessions
VALUES (702, CAST(N'2022-05-05T19:14:18.000' AS timestamp), CAST(N'2022-05-05T21:31:09.000' AS timestamp), 236, 3);

INSERT INTO game_sessions
VALUES (703, CAST(N'2022-01-17T19:49:04.000' AS timestamp), CAST(N'2022-01-17T22:05:55.000' AS timestamp), 124, 1);

INSERT INTO game_sessions
VALUES (704, CAST(N'2021-09-17T23:22:00.000' AS timestamp), CAST(N'2021-09-18T01:38:51.000' AS timestamp), 717, 1);

INSERT INTO game_sessions
VALUES (705, CAST(N'2022-07-13T23:15:46.000' AS timestamp), CAST(N'2022-07-14T01:32:37.000' AS timestamp), 535, 2);

INSERT INTO game_sessions
VALUES (706, CAST(N'2021-09-04T13:27:41.000' AS timestamp), CAST(N'2021-09-04T15:44:32.000' AS timestamp), 995, 2);

INSERT INTO game_sessions
VALUES (707, CAST(N'2022-04-20T23:46:27.000' AS timestamp), CAST(N'2022-04-21T02:03:18.000' AS timestamp), 751, 2);

INSERT INTO game_sessions
VALUES (708, CAST(N'2022-06-29T20:07:39.000' AS timestamp), CAST(N'2022-06-29T22:24:30.000' AS timestamp), 439, 1);

INSERT INTO game_sessions
VALUES (709, CAST(N'2022-01-27T21:49:04.000' AS timestamp), CAST(N'2022-01-28T00:05:55.000' AS timestamp), 816, 1);

INSERT INTO game_sessions
VALUES (710, CAST(N'2022-01-01T13:18:05.000' AS timestamp), CAST(N'2022-01-01T15:34:56.000' AS timestamp), 463, 1);

INSERT INTO game_sessions
VALUES (711, CAST(N'2022-04-17T03:55:40.000' AS timestamp), CAST(N'2022-04-17T06:12:31.000' AS timestamp), 228, 4);

INSERT INTO game_sessions
VALUES (712, CAST(N'2022-04-28T11:18:10.000' AS timestamp), CAST(N'2022-04-28T13:35:01.000' AS timestamp), 856, 4);

INSERT INTO game_sessions
VALUES (713, CAST(N'2022-06-25T17:44:37.000' AS timestamp), CAST(N'2022-06-25T20:01:28.000' AS timestamp), 743, 2);

INSERT INTO game_sessions
VALUES (714, CAST(N'2021-09-30T06:06:38.000' AS timestamp), CAST(N'2021-09-30T08:23:29.000' AS timestamp), 948, 3);

INSERT INTO game_sessions
VALUES (715, CAST(N'2022-03-10T19:53:39.000' AS timestamp), CAST(N'2022-03-10T22:10:30.000' AS timestamp), 646, 3);

INSERT INTO game_sessions
VALUES (716, CAST(N'2021-09-27T23:00:17.000' AS timestamp), CAST(N'2021-09-28T01:17:08.000' AS timestamp), 432, 2);

INSERT INTO game_sessions
VALUES (717, CAST(N'2021-09-12T01:44:25.000' AS timestamp), CAST(N'2021-09-12T04:01:16.000' AS timestamp), 505, 4);

INSERT INTO game_sessions
VALUES (718, CAST(N'2022-06-09T08:33:39.000' AS timestamp), CAST(N'2022-06-09T10:50:30.000' AS timestamp), 340, 2);

INSERT INTO game_sessions
VALUES (719, CAST(N'2022-05-25T02:10:40.000' AS timestamp), CAST(N'2022-05-25T04:27:31.000' AS timestamp), 489, 1);

INSERT INTO game_sessions
VALUES (720, CAST(N'2021-11-28T03:53:28.000' AS timestamp), CAST(N'2021-11-28T06:10:19.000' AS timestamp), 339, 3);

INSERT INTO game_sessions
VALUES (721, CAST(N'2021-08-03T09:35:51.000' AS timestamp), CAST(N'2021-08-03T11:52:42.000' AS timestamp), 458, 1);

INSERT INTO game_sessions
VALUES (722, CAST(N'2021-09-22T20:14:10.000' AS timestamp), CAST(N'2021-09-22T22:31:01.000' AS timestamp), 247, 2);

INSERT INTO game_sessions
VALUES (723, CAST(N'2022-05-10T18:09:46.000' AS timestamp), CAST(N'2022-05-10T20:26:37.000' AS timestamp), 900, 3);

INSERT INTO game_sessions
VALUES (724, CAST(N'2022-01-05T18:33:07.000' AS timestamp), CAST(N'2022-01-05T20:49:58.000' AS timestamp), 138, 4);

INSERT INTO game_sessions
VALUES (725, CAST(N'2022-03-15T22:18:50.000' AS timestamp), CAST(N'2022-03-16T00:35:41.000' AS timestamp), 450, 3);

INSERT INTO game_sessions
VALUES (726, CAST(N'2022-03-01T00:25:34.000' AS timestamp), CAST(N'2022-03-01T02:42:25.000' AS timestamp), 47, 1);

INSERT INTO game_sessions
VALUES (727, CAST(N'2022-01-04T06:11:40.000' AS timestamp), CAST(N'2022-01-04T08:28:31.000' AS timestamp), 881, 4);

INSERT INTO game_sessions
VALUES (728, CAST(N'2021-08-24T06:29:44.000' AS timestamp), CAST(N'2021-08-24T08:46:35.000' AS timestamp), 881, 3);

INSERT INTO game_sessions
VALUES (729, CAST(N'2021-10-12T08:50:03.000' AS timestamp), CAST(N'2021-10-12T11:06:54.000' AS timestamp), 415, 4);

INSERT INTO game_sessions
VALUES (730, CAST(N'2021-12-21T02:43:39.000' AS timestamp), CAST(N'2021-12-21T05:00:30.000' AS timestamp), 985, 3);

INSERT INTO game_sessions
VALUES (731, CAST(N'2022-03-08T20:07:21.000' AS timestamp), CAST(N'2022-03-08T22:24:12.000' AS timestamp), 526, 3);

INSERT INTO game_sessions
VALUES (732, CAST(N'2021-10-23T08:41:56.000' AS timestamp), CAST(N'2021-10-23T10:58:47.000' AS timestamp), 80, 2);

INSERT INTO game_sessions
VALUES (733, CAST(N'2022-02-16T03:40:10.000' AS timestamp), CAST(N'2022-02-16T05:57:01.000' AS timestamp), 735, 2);

INSERT INTO game_sessions
VALUES (734, CAST(N'2022-03-19T14:01:20.000' AS timestamp), CAST(N'2022-03-19T16:18:11.000' AS timestamp), 77, 3);

INSERT INTO game_sessions
VALUES (735, CAST(N'2022-01-24T05:09:48.000' AS timestamp), CAST(N'2022-01-24T07:26:39.000' AS timestamp), 480, 2);

INSERT INTO game_sessions
VALUES (736, CAST(N'2021-09-06T15:46:20.000' AS timestamp), CAST(N'2021-09-06T18:03:11.000' AS timestamp), 843, 1);

INSERT INTO game_sessions
VALUES (737, CAST(N'2021-08-06T07:37:50.000' AS timestamp), CAST(N'2021-08-06T09:54:41.000' AS timestamp), 189, 1);

INSERT INTO game_sessions
VALUES (738, CAST(N'2022-01-16T04:02:07.000' AS timestamp), CAST(N'2022-01-16T06:18:58.000' AS timestamp), 359, 2);

INSERT INTO game_sessions
VALUES (739, CAST(N'2021-09-14T00:49:30.000' AS timestamp), CAST(N'2021-09-14T03:06:21.000' AS timestamp), 424, 2);

INSERT INTO game_sessions
VALUES (740, CAST(N'2021-12-22T17:38:00.000' AS timestamp), CAST(N'2021-12-22T19:54:51.000' AS timestamp), 816, 4);

INSERT INTO game_sessions
VALUES (741, CAST(N'2021-11-04T19:15:39.000' AS timestamp), CAST(N'2021-11-04T21:32:30.000' AS timestamp), 67, 2);

INSERT INTO game_sessions
VALUES (742, CAST(N'2022-06-26T06:42:51.000' AS timestamp), CAST(N'2022-06-26T08:59:42.000' AS timestamp), 380, 4);

INSERT INTO game_sessions
VALUES (743, CAST(N'2021-08-13T15:04:37.000' AS timestamp), CAST(N'2021-08-13T17:21:28.000' AS timestamp), 104, 4);

INSERT INTO game_sessions
VALUES (744, CAST(N'2021-10-20T21:02:45.000' AS timestamp), CAST(N'2021-10-20T23:19:36.000' AS timestamp), 706, 1);

INSERT INTO game_sessions
VALUES (745, CAST(N'2022-05-12T14:05:20.000' AS timestamp), CAST(N'2022-05-12T16:22:11.000' AS timestamp), 993, 3);

INSERT INTO game_sessions
VALUES (746, CAST(N'2022-05-02T00:39:42.000' AS timestamp), CAST(N'2022-05-02T02:56:33.000' AS timestamp), 467, 4);

INSERT INTO game_sessions
VALUES (747, CAST(N'2021-11-16T07:19:55.000' AS timestamp), CAST(N'2021-11-16T09:36:46.000' AS timestamp), 159, 1);

INSERT INTO game_sessions
VALUES (748, CAST(N'2021-12-05T20:06:47.000' AS timestamp), CAST(N'2021-12-05T22:23:38.000' AS timestamp), 229, 3);

INSERT INTO game_sessions
VALUES (749, CAST(N'2021-12-24T05:24:32.000' AS timestamp), CAST(N'2021-12-24T07:41:23.000' AS timestamp), 375, 1);

INSERT INTO game_sessions
VALUES (750, CAST(N'2021-10-15T19:23:20.000' AS timestamp), CAST(N'2021-10-15T21:40:11.000' AS timestamp), 635, 3);

INSERT INTO game_sessions
VALUES (751, CAST(N'2021-12-24T02:38:47.000' AS timestamp), CAST(N'2021-12-24T04:55:38.000' AS timestamp), 75, 2);

INSERT INTO game_sessions
VALUES (752, CAST(N'2021-10-17T13:49:35.000' AS timestamp), CAST(N'2021-10-17T16:06:26.000' AS timestamp), 651, 3);

INSERT INTO game_sessions
VALUES (753, CAST(N'2022-04-08T19:54:48.000' AS timestamp), CAST(N'2022-04-08T22:11:39.000' AS timestamp), 185, 3);

INSERT INTO game_sessions
VALUES (754, CAST(N'2021-11-21T09:18:41.000' AS timestamp), CAST(N'2021-11-21T11:35:32.000' AS timestamp), 60, 3);

INSERT INTO game_sessions
VALUES (755, CAST(N'2022-05-29T14:57:32.000' AS timestamp), CAST(N'2022-05-29T17:14:23.000' AS timestamp), 330, 3);

INSERT INTO game_sessions
VALUES (756, CAST(N'2021-12-21T16:41:11.000' AS timestamp), CAST(N'2021-12-21T18:58:02.000' AS timestamp), 214, 3);

INSERT INTO game_sessions
VALUES (757, CAST(N'2022-03-29T01:06:03.000' AS timestamp), CAST(N'2022-03-29T03:22:54.000' AS timestamp), 205, 1);

INSERT INTO game_sessions
VALUES (758, CAST(N'2021-08-19T08:37:05.000' AS timestamp), CAST(N'2021-08-19T10:53:56.000' AS timestamp), 948, 3);

INSERT INTO game_sessions
VALUES (759, CAST(N'2021-11-10T18:30:23.000' AS timestamp), CAST(N'2021-11-10T20:47:14.000' AS timestamp), 76, 4);

INSERT INTO game_sessions
VALUES (760, CAST(N'2022-01-14T12:40:52.000' AS timestamp), CAST(N'2022-01-14T14:57:43.000' AS timestamp), 284, 1);

INSERT INTO game_sessions
VALUES (761, CAST(N'2022-01-25T21:09:45.000' AS timestamp), CAST(N'2022-01-25T23:26:36.000' AS timestamp), 631, 2);

INSERT INTO game_sessions
VALUES (762, CAST(N'2021-10-09T02:43:50.000' AS timestamp), CAST(N'2021-10-09T05:00:41.000' AS timestamp), 263, 1);

INSERT INTO game_sessions
VALUES (763, CAST(N'2022-01-03T15:24:21.000' AS timestamp), CAST(N'2022-01-03T17:41:12.000' AS timestamp), 106, 2);

INSERT INTO game_sessions
VALUES (764, CAST(N'2022-01-24T04:27:38.000' AS timestamp), CAST(N'2022-01-24T06:44:29.000' AS timestamp), 152, 3);

INSERT INTO game_sessions
VALUES (765, CAST(N'2021-09-08T13:59:22.000' AS timestamp), CAST(N'2021-09-08T16:16:13.000' AS timestamp), 78, 3);

INSERT INTO game_sessions
VALUES (766, CAST(N'2022-05-18T03:37:30.000' AS timestamp), CAST(N'2022-05-18T05:54:21.000' AS timestamp), 54, 2);

INSERT INTO game_sessions
VALUES (767, CAST(N'2022-05-16T08:01:02.000' AS timestamp), CAST(N'2022-05-16T10:17:53.000' AS timestamp), 329, 1);

INSERT INTO game_sessions
VALUES (768, CAST(N'2022-02-04T22:59:53.000' AS timestamp), CAST(N'2022-02-05T01:16:44.000' AS timestamp), 841, 1);

INSERT INTO game_sessions
VALUES (769, CAST(N'2022-05-03T21:25:48.000' AS timestamp), CAST(N'2022-05-03T23:42:39.000' AS timestamp), 649, 3);

INSERT INTO game_sessions
VALUES (770, CAST(N'2022-06-24T22:20:16.000' AS timestamp), CAST(N'2022-06-25T00:37:07.000' AS timestamp), 528, 2);

INSERT INTO game_sessions
VALUES (771, CAST(N'2021-11-12T12:47:53.000' AS timestamp), CAST(N'2021-11-12T15:04:44.000' AS timestamp), 269, 2);

INSERT INTO game_sessions
VALUES (772, CAST(N'2022-01-25T05:44:19.000' AS timestamp), CAST(N'2022-01-25T08:01:10.000' AS timestamp), 980, 1);

INSERT INTO game_sessions
VALUES (773, CAST(N'2021-12-29T16:34:51.000' AS timestamp), CAST(N'2021-12-29T18:51:42.000' AS timestamp), 132, 4);

INSERT INTO game_sessions
VALUES (774, CAST(N'2022-02-20T05:53:44.000' AS timestamp), CAST(N'2022-02-20T08:10:35.000' AS timestamp), 429, 4);

INSERT INTO game_sessions
VALUES (775, CAST(N'2022-01-25T14:14:18.000' AS timestamp), CAST(N'2022-01-25T16:31:09.000' AS timestamp), 298, 2);

INSERT INTO game_sessions
VALUES (776, CAST(N'2021-11-07T06:08:16.000' AS timestamp), CAST(N'2021-11-07T08:25:07.000' AS timestamp), 639, 3);

INSERT INTO game_sessions
VALUES (777, CAST(N'2022-07-15T01:32:16.000' AS timestamp), CAST(N'2022-07-15T03:49:07.000' AS timestamp), 830, 3);

INSERT INTO game_sessions
VALUES (778, CAST(N'2022-01-23T12:22:42.000' AS timestamp), CAST(N'2022-01-23T14:39:33.000' AS timestamp), 574, 1);

INSERT INTO game_sessions
VALUES (779, CAST(N'2021-12-05T03:27:12.000' AS timestamp), CAST(N'2021-12-05T05:44:03.000' AS timestamp), 100, 4);

INSERT INTO game_sessions
VALUES (780, CAST(N'2022-01-26T02:21:44.000' AS timestamp), CAST(N'2022-01-26T04:38:35.000' AS timestamp), 918, 3);

INSERT INTO game_sessions
VALUES (781, CAST(N'2022-07-20T01:27:32.000' AS timestamp), CAST(N'2022-07-20T03:44:23.000' AS timestamp), 963, 1);

INSERT INTO game_sessions
VALUES (782, CAST(N'2022-02-18T15:26:53.000' AS timestamp), CAST(N'2022-02-18T17:43:44.000' AS timestamp), 806, 4);

INSERT INTO game_sessions
VALUES (783, CAST(N'2022-07-20T12:14:57.000' AS timestamp), CAST(N'2022-07-20T14:31:48.000' AS timestamp), 361, 4);

INSERT INTO game_sessions
VALUES (784, CAST(N'2022-06-20T04:44:34.000' AS timestamp), CAST(N'2022-06-20T07:01:25.000' AS timestamp), 670, 2);

INSERT INTO game_sessions
VALUES (785, CAST(N'2021-09-14T09:17:28.000' AS timestamp), CAST(N'2021-09-14T11:34:19.000' AS timestamp), 379, 1);

INSERT INTO game_sessions
VALUES (786, CAST(N'2022-02-01T15:06:44.000' AS timestamp), CAST(N'2022-02-01T17:23:35.000' AS timestamp), 820, 2);

INSERT INTO game_sessions
VALUES (787, CAST(N'2021-11-23T11:06:33.000' AS timestamp), CAST(N'2021-11-23T13:23:24.000' AS timestamp), 948, 4);

INSERT INTO game_sessions
VALUES (788, CAST(N'2021-09-12T10:48:04.000' AS timestamp), CAST(N'2021-09-12T13:04:55.000' AS timestamp), 851, 4);

INSERT INTO game_sessions
VALUES (789, CAST(N'2022-06-25T18:00:09.000' AS timestamp), CAST(N'2022-06-25T20:17:00.000' AS timestamp), 678, 1);

INSERT INTO game_sessions
VALUES (790, CAST(N'2021-10-15T19:16:21.000' AS timestamp), CAST(N'2021-10-15T21:33:12.000' AS timestamp), 104, 4);

INSERT INTO game_sessions
VALUES (791, CAST(N'2021-11-16T11:46:59.000' AS timestamp), CAST(N'2021-11-16T14:03:50.000' AS timestamp), 463, 3);

INSERT INTO game_sessions
VALUES (792, CAST(N'2021-10-02T13:36:44.000' AS timestamp), CAST(N'2021-10-02T15:53:35.000' AS timestamp), 681, 1);

INSERT INTO game_sessions
VALUES (793, CAST(N'2022-01-21T20:46:00.000' AS timestamp), CAST(N'2022-01-21T23:02:51.000' AS timestamp), 798, 2);

INSERT INTO game_sessions
VALUES (794, CAST(N'2022-07-06T18:06:22.000' AS timestamp), CAST(N'2022-07-06T20:23:13.000' AS timestamp), 729, 2);

INSERT INTO game_sessions
VALUES (795, CAST(N'2022-06-14T22:57:26.000' AS timestamp), CAST(N'2022-06-15T01:14:17.000' AS timestamp), 28, 4);

INSERT INTO game_sessions
VALUES (796, CAST(N'2022-01-03T17:03:26.000' AS timestamp), CAST(N'2022-01-03T19:20:17.000' AS timestamp), 283, 4);

INSERT INTO game_sessions
VALUES (797, CAST(N'2021-09-22T14:12:27.000' AS timestamp), CAST(N'2021-09-22T16:29:18.000' AS timestamp), 297, 3);

INSERT INTO game_sessions
VALUES (798, CAST(N'2022-07-02T19:44:49.000' AS timestamp), CAST(N'2022-07-02T22:01:40.000' AS timestamp), 987, 2);

INSERT INTO game_sessions
VALUES (799, CAST(N'2022-04-11T18:37:55.000' AS timestamp), CAST(N'2022-04-11T20:54:46.000' AS timestamp), 556, 2);

INSERT INTO game_sessions
VALUES (800, CAST(N'2022-06-25T17:43:41.000' AS timestamp), CAST(N'2022-06-25T20:00:32.000' AS timestamp), 78, 3);

INSERT INTO game_sessions
VALUES (801, CAST(N'2021-10-15T23:50:31.000' AS timestamp), CAST(N'2021-10-16T02:07:22.000' AS timestamp), 598, 1);

INSERT INTO game_sessions
VALUES (802, CAST(N'2022-01-28T20:24:48.000' AS timestamp), CAST(N'2022-01-28T22:41:39.000' AS timestamp), 916, 1);

INSERT INTO game_sessions
VALUES (803, CAST(N'2022-05-11T02:56:32.000' AS timestamp), CAST(N'2022-05-11T05:13:23.000' AS timestamp), 840, 2);

INSERT INTO game_sessions
VALUES (804, CAST(N'2021-08-25T04:38:08.000' AS timestamp), CAST(N'2021-08-25T06:54:59.000' AS timestamp), 28, 2);

INSERT INTO game_sessions
VALUES (805, CAST(N'2022-06-24T07:16:20.000' AS timestamp), CAST(N'2022-06-24T09:33:11.000' AS timestamp), 529, 4);

INSERT INTO game_sessions
VALUES (806, CAST(N'2022-04-06T07:44:37.000' AS timestamp), CAST(N'2022-04-06T10:01:28.000' AS timestamp), 609, 2);

INSERT INTO game_sessions
VALUES (807, CAST(N'2021-08-19T12:21:27.000' AS timestamp), CAST(N'2021-08-19T14:38:18.000' AS timestamp), 268, 1);

INSERT INTO game_sessions
VALUES (808, CAST(N'2021-09-25T21:57:20.000' AS timestamp), CAST(N'2021-09-26T00:14:11.000' AS timestamp), 891, 1);

INSERT INTO game_sessions
VALUES (809, CAST(N'2022-02-06T19:49:55.000' AS timestamp), CAST(N'2022-02-06T22:06:46.000' AS timestamp), 239, 4);

INSERT INTO game_sessions
VALUES (810, CAST(N'2022-01-01T17:46:31.000' AS timestamp), CAST(N'2022-01-01T20:03:22.000' AS timestamp), 748, 4);

INSERT INTO game_sessions
VALUES (811, CAST(N'2022-02-23T11:49:42.000' AS timestamp), CAST(N'2022-02-23T14:06:33.000' AS timestamp), 452, 3);

INSERT INTO game_sessions
VALUES (812, CAST(N'2021-11-13T17:49:45.000' AS timestamp), CAST(N'2021-11-13T20:06:36.000' AS timestamp), 702, 2);

INSERT INTO game_sessions
VALUES (813, CAST(N'2022-07-26T16:25:10.000' AS timestamp), CAST(N'2022-07-26T18:42:01.000' AS timestamp), 261, 4);

INSERT INTO game_sessions
VALUES (814, CAST(N'2022-04-01T14:32:18.000' AS timestamp), CAST(N'2022-04-01T16:49:09.000' AS timestamp), 878, 1);

INSERT INTO game_sessions
VALUES (815, CAST(N'2022-04-02T09:33:40.000' AS timestamp), CAST(N'2022-04-02T11:50:31.000' AS timestamp), 807, 4);

INSERT INTO game_sessions
VALUES (816, CAST(N'2021-11-12T16:23:43.000' AS timestamp), CAST(N'2021-11-12T18:40:34.000' AS timestamp), 945, 2);

INSERT INTO game_sessions
VALUES (817, CAST(N'2021-10-19T22:17:59.000' AS timestamp), CAST(N'2021-10-20T00:34:50.000' AS timestamp), 271, 1);

INSERT INTO game_sessions
VALUES (818, CAST(N'2022-07-18T14:43:20.000' AS timestamp), CAST(N'2022-07-18T17:00:11.000' AS timestamp), 471, 1);

INSERT INTO game_sessions
VALUES (819, CAST(N'2022-03-26T23:05:24.000' AS timestamp), CAST(N'2022-03-27T01:22:15.000' AS timestamp), 136, 2);

INSERT INTO game_sessions
VALUES (820, CAST(N'2022-07-07T14:08:29.000' AS timestamp), CAST(N'2022-07-07T16:25:20.000' AS timestamp), 452, 4);

INSERT INTO game_sessions
VALUES (821, CAST(N'2022-04-10T01:24:19.000' AS timestamp), CAST(N'2022-04-10T03:41:10.000' AS timestamp), 169, 1);

INSERT INTO game_sessions
VALUES (822, CAST(N'2022-03-01T00:18:46.000' AS timestamp), CAST(N'2022-03-01T02:35:37.000' AS timestamp), 510, 4);

INSERT INTO game_sessions
VALUES (823, CAST(N'2022-07-08T20:58:29.000' AS timestamp), CAST(N'2022-07-08T23:15:20.000' AS timestamp), 729, 4);

INSERT INTO game_sessions
VALUES (824, CAST(N'2021-11-01T12:23:36.000' AS timestamp), CAST(N'2021-11-01T14:40:27.000' AS timestamp), 598, 3);

INSERT INTO game_sessions
VALUES (825, CAST(N'2021-11-06T14:08:05.000' AS timestamp), CAST(N'2021-11-06T16:24:56.000' AS timestamp), 25, 4);

INSERT INTO game_sessions
VALUES (826, CAST(N'2021-10-10T05:55:02.000' AS timestamp), CAST(N'2021-10-10T08:11:53.000' AS timestamp), 283, 3);

INSERT INTO game_sessions
VALUES (827, CAST(N'2022-04-16T14:16:32.000' AS timestamp), CAST(N'2022-04-16T16:33:23.000' AS timestamp), 646, 1);

INSERT INTO game_sessions
VALUES (828, CAST(N'2022-06-23T06:55:30.000' AS timestamp), CAST(N'2022-06-23T09:12:21.000' AS timestamp), 785, 2);

INSERT INTO game_sessions
VALUES (829, CAST(N'2021-08-23T08:50:31.000' AS timestamp), CAST(N'2021-08-23T11:07:22.000' AS timestamp), 414, 3);

INSERT INTO game_sessions
VALUES (830, CAST(N'2022-01-19T05:54:19.000' AS timestamp), CAST(N'2022-01-19T08:11:10.000' AS timestamp), 14, 3);

INSERT INTO game_sessions
VALUES (831, CAST(N'2021-12-22T23:20:49.000' AS timestamp), CAST(N'2021-12-23T01:37:40.000' AS timestamp), 864, 1);

INSERT INTO game_sessions
VALUES (832, CAST(N'2022-06-28T18:06:52.000' AS timestamp), CAST(N'2022-06-28T20:23:43.000' AS timestamp), 625, 2);

INSERT INTO game_sessions
VALUES (833, CAST(N'2022-04-04T23:50:53.000' AS timestamp), CAST(N'2022-04-05T02:07:44.000' AS timestamp), 953, 1);

INSERT INTO game_sessions
VALUES (834, CAST(N'2021-11-17T08:10:46.000' AS timestamp), CAST(N'2021-11-17T10:27:37.000' AS timestamp), 345, 3);

INSERT INTO game_sessions
VALUES (835, CAST(N'2022-03-30T03:25:31.000' AS timestamp), CAST(N'2022-03-30T05:42:22.000' AS timestamp), 389, 3);

INSERT INTO game_sessions
VALUES (836, CAST(N'2022-03-31T05:34:16.000' AS timestamp), CAST(N'2022-03-31T07:51:07.000' AS timestamp), 230, 1);

INSERT INTO game_sessions
VALUES (837, CAST(N'2022-04-07T05:46:50.000' AS timestamp), CAST(N'2022-04-07T08:03:41.000' AS timestamp), 11, 2);

INSERT INTO game_sessions
VALUES (838, CAST(N'2021-09-22T09:34:14.000' AS timestamp), CAST(N'2021-09-22T11:51:05.000' AS timestamp), 730, 3);

INSERT INTO game_sessions
VALUES (839, CAST(N'2021-11-18T04:44:32.000' AS timestamp), CAST(N'2021-11-18T07:01:23.000' AS timestamp), 579, 2);

INSERT INTO game_sessions
VALUES (840, CAST(N'2022-05-12T21:35:05.000' AS timestamp), CAST(N'2022-05-12T23:51:56.000' AS timestamp), 145, 3);

INSERT INTO game_sessions
VALUES (841, CAST(N'2022-06-17T01:30:18.000' AS timestamp), CAST(N'2022-06-17T03:47:09.000' AS timestamp), 778, 3);

INSERT INTO game_sessions
VALUES (842, CAST(N'2021-12-21T08:00:53.000' AS timestamp), CAST(N'2021-12-21T10:17:44.000' AS timestamp), 369, 2);

INSERT INTO game_sessions
VALUES (843, CAST(N'2021-12-20T08:54:41.000' AS timestamp), CAST(N'2021-12-20T11:11:32.000' AS timestamp), 962, 3);

INSERT INTO game_sessions
VALUES (844, CAST(N'2022-02-23T04:01:30.000' AS timestamp), CAST(N'2022-02-23T06:18:21.000' AS timestamp), 798, 2);

INSERT INTO game_sessions
VALUES (845, CAST(N'2021-12-13T11:19:36.000' AS timestamp), CAST(N'2021-12-13T13:36:27.000' AS timestamp), 313, 4);

INSERT INTO game_sessions
VALUES (846, CAST(N'2021-08-04T23:29:36.000' AS timestamp), CAST(N'2021-08-05T01:46:27.000' AS timestamp), 279, 4);

INSERT INTO game_sessions
VALUES (847, CAST(N'2021-11-29T15:49:30.000' AS timestamp), CAST(N'2021-11-29T18:06:21.000' AS timestamp), 791, 1);

INSERT INTO game_sessions
VALUES (848, CAST(N'2021-10-08T11:21:48.000' AS timestamp), CAST(N'2021-10-08T13:38:39.000' AS timestamp), 806, 1);

INSERT INTO game_sessions
VALUES (849, CAST(N'2022-01-26T13:53:39.000' AS timestamp), CAST(N'2022-01-26T16:10:30.000' AS timestamp), 668, 1);

INSERT INTO game_sessions
VALUES (850, CAST(N'2022-06-06T01:08:55.000' AS timestamp), CAST(N'2022-06-06T03:25:46.000' AS timestamp), 792, 2);

INSERT INTO game_sessions
VALUES (851, CAST(N'2021-12-25T14:00:34.000' AS timestamp), CAST(N'2021-12-25T16:17:25.000' AS timestamp), 288, 3);

INSERT INTO game_sessions
VALUES (852, CAST(N'2022-03-09T05:58:58.000' AS timestamp), CAST(N'2022-03-09T08:15:49.000' AS timestamp), 951, 2);

INSERT INTO game_sessions
VALUES (853, CAST(N'2021-10-21T14:39:38.000' AS timestamp), CAST(N'2021-10-21T16:56:29.000' AS timestamp), 843, 2);

INSERT INTO game_sessions
VALUES (854, CAST(N'2022-01-03T15:04:17.000' AS timestamp), CAST(N'2022-01-03T17:21:08.000' AS timestamp), 197, 2);

INSERT INTO game_sessions
VALUES (855, CAST(N'2021-12-10T08:39:25.000' AS timestamp), CAST(N'2021-12-10T10:56:16.000' AS timestamp), 416, 1);

INSERT INTO game_sessions
VALUES (856, CAST(N'2022-03-14T15:39:28.000' AS timestamp), CAST(N'2022-03-14T17:56:19.000' AS timestamp), 533, 1);

INSERT INTO game_sessions
VALUES (857, CAST(N'2021-10-19T22:45:22.000' AS timestamp), CAST(N'2021-10-20T01:02:13.000' AS timestamp), 384, 2);

INSERT INTO game_sessions
VALUES (858, CAST(N'2022-06-21T10:23:37.000' AS timestamp), CAST(N'2022-06-21T12:40:28.000' AS timestamp), 655, 1);

INSERT INTO game_sessions
VALUES (859, CAST(N'2021-11-11T21:33:52.000' AS timestamp), CAST(N'2021-11-11T23:50:43.000' AS timestamp), 933, 2);

INSERT INTO game_sessions
VALUES (860, CAST(N'2021-09-24T17:40:59.000' AS timestamp), CAST(N'2021-09-24T19:57:50.000' AS timestamp), 480, 4);

INSERT INTO game_sessions
VALUES (861, CAST(N'2022-05-03T19:47:37.000' AS timestamp), CAST(N'2022-05-03T22:04:28.000' AS timestamp), 820, 2);

INSERT INTO game_sessions
VALUES (862, CAST(N'2021-12-27T17:52:50.000' AS timestamp), CAST(N'2021-12-27T20:09:41.000' AS timestamp), 556, 2);

INSERT INTO game_sessions
VALUES (863, CAST(N'2022-06-07T01:34:36.000' AS timestamp), CAST(N'2022-06-07T03:51:27.000' AS timestamp), 393, 2);

INSERT INTO game_sessions
VALUES (864, CAST(N'2021-10-02T12:23:49.000' AS timestamp), CAST(N'2021-10-02T14:40:40.000' AS timestamp), 801, 4);

INSERT INTO game_sessions
VALUES (865, CAST(N'2022-03-05T19:44:54.000' AS timestamp), CAST(N'2022-03-05T22:01:45.000' AS timestamp), 343, 1);

INSERT INTO game_sessions
VALUES (866, CAST(N'2022-04-10T11:29:03.000' AS timestamp), CAST(N'2022-04-10T13:45:54.000' AS timestamp), 3, 3);

INSERT INTO game_sessions
VALUES (867, CAST(N'2022-02-09T20:29:07.000' AS timestamp), CAST(N'2022-02-09T22:45:58.000' AS timestamp), 641, 3);

INSERT INTO game_sessions
VALUES (868, CAST(N'2022-06-10T02:59:31.000' AS timestamp), CAST(N'2022-06-10T05:16:22.000' AS timestamp), 180, 1);

INSERT INTO game_sessions
VALUES (869, CAST(N'2022-05-05T11:18:10.000' AS timestamp), CAST(N'2022-05-05T13:35:01.000' AS timestamp), 816, 3);

INSERT INTO game_sessions
VALUES (870, CAST(N'2022-04-13T22:28:31.000' AS timestamp), CAST(N'2022-04-14T00:45:22.000' AS timestamp), 67, 2);

INSERT INTO game_sessions
VALUES (871, CAST(N'2022-05-08T13:20:17.000' AS timestamp), CAST(N'2022-05-08T15:37:08.000' AS timestamp), 542, 3);

INSERT INTO game_sessions
VALUES (872, CAST(N'2021-09-14T01:48:04.000' AS timestamp), CAST(N'2021-09-14T04:04:55.000' AS timestamp), 318, 3);

INSERT INTO game_sessions
VALUES (873, CAST(N'2021-09-23T17:08:12.000' AS timestamp), CAST(N'2021-09-23T19:25:03.000' AS timestamp), 820, 4);

INSERT INTO game_sessions
VALUES (874, CAST(N'2022-06-15T22:24:39.000' AS timestamp), CAST(N'2022-06-16T00:41:30.000' AS timestamp), 608, 1);

INSERT INTO game_sessions
VALUES (875, CAST(N'2022-04-02T18:43:49.000' AS timestamp), CAST(N'2022-04-02T21:00:40.000' AS timestamp), 454, 2);

INSERT INTO game_sessions
VALUES (876, CAST(N'2022-03-08T21:57:45.000' AS timestamp), CAST(N'2022-03-09T00:14:36.000' AS timestamp), 887, 4);

INSERT INTO game_sessions
VALUES (877, CAST(N'2022-05-01T18:16:23.000' AS timestamp), CAST(N'2022-05-01T20:33:14.000' AS timestamp), 316, 1);

INSERT INTO game_sessions
VALUES (878, CAST(N'2022-06-29T07:47:34.000' AS timestamp), CAST(N'2022-06-29T10:04:25.000' AS timestamp), 909, 3);

INSERT INTO game_sessions
VALUES (879, CAST(N'2022-06-05T18:48:01.000' AS timestamp), CAST(N'2022-06-05T21:04:52.000' AS timestamp), 367, 3);

INSERT INTO game_sessions
VALUES (880, CAST(N'2022-05-14T09:55:07.000' AS timestamp), CAST(N'2022-05-14T12:11:58.000' AS timestamp), 98, 1);

INSERT INTO game_sessions
VALUES (881, CAST(N'2021-12-09T18:28:33.000' AS timestamp), CAST(N'2021-12-09T20:45:24.000' AS timestamp), 284, 2);

INSERT INTO game_sessions
VALUES (882, CAST(N'2022-04-14T12:50:19.000' AS timestamp), CAST(N'2022-04-14T15:07:10.000' AS timestamp), 604, 4);

INSERT INTO game_sessions
VALUES (883, CAST(N'2021-10-25T09:36:35.000' AS timestamp), CAST(N'2021-10-25T11:53:26.000' AS timestamp), 381, 3);

INSERT INTO game_sessions
VALUES (884, CAST(N'2021-09-17T13:32:48.000' AS timestamp), CAST(N'2021-09-17T15:49:39.000' AS timestamp), 270, 2);

INSERT INTO game_sessions
VALUES (885, CAST(N'2022-01-05T11:44:32.000' AS timestamp), CAST(N'2022-01-05T14:01:23.000' AS timestamp), 831, 2);

INSERT INTO game_sessions
VALUES (886, CAST(N'2022-03-22T18:33:47.000' AS timestamp), CAST(N'2022-03-22T20:50:38.000' AS timestamp), 659, 3);

INSERT INTO game_sessions
VALUES (887, CAST(N'2022-06-16T09:43:54.000' AS timestamp), CAST(N'2022-06-16T12:00:45.000' AS timestamp), 731, 1);

INSERT INTO game_sessions
VALUES (888, CAST(N'2021-09-16T10:26:49.000' AS timestamp), CAST(N'2021-09-16T12:43:40.000' AS timestamp), 25, 4);

INSERT INTO game_sessions
VALUES (889, CAST(N'2021-10-25T06:51:21.000' AS timestamp), CAST(N'2021-10-25T09:08:12.000' AS timestamp), 167, 1);

INSERT INTO game_sessions
VALUES (890, CAST(N'2021-11-19T06:38:47.000' AS timestamp), CAST(N'2021-11-19T08:55:38.000' AS timestamp), 840, 1);

INSERT INTO game_sessions
VALUES (891, CAST(N'2021-10-30T08:31:55.000' AS timestamp), CAST(N'2021-10-30T10:48:46.000' AS timestamp), 175, 1);

INSERT INTO game_sessions
VALUES (892, CAST(N'2022-05-14T12:43:05.000' AS timestamp), CAST(N'2022-05-14T14:59:56.000' AS timestamp), 760, 2);

INSERT INTO game_sessions
VALUES (893, CAST(N'2022-01-06T02:13:47.000' AS timestamp), CAST(N'2022-01-06T04:30:38.000' AS timestamp), 129, 2);

INSERT INTO game_sessions
VALUES (894, CAST(N'2022-07-02T18:24:12.000' AS timestamp), CAST(N'2022-07-02T20:41:03.000' AS timestamp), 808, 3);

INSERT INTO game_sessions
VALUES (895, CAST(N'2022-02-02T14:50:00.000' AS timestamp), CAST(N'2022-02-02T17:06:51.000' AS timestamp), 715, 1);

INSERT INTO game_sessions
VALUES (896, CAST(N'2022-04-01T05:43:00.000' AS timestamp), CAST(N'2022-04-01T07:59:51.000' AS timestamp), 897, 2);

INSERT INTO game_sessions
VALUES (897, CAST(N'2021-11-28T20:39:17.000' AS timestamp), CAST(N'2021-11-28T22:56:08.000' AS timestamp), 199, 3);

INSERT INTO game_sessions
VALUES (898, CAST(N'2022-04-17T03:36:22.000' AS timestamp), CAST(N'2022-04-17T05:53:13.000' AS timestamp), 760, 4);

INSERT INTO game_sessions
VALUES (899, CAST(N'2021-08-02T19:31:01.000' AS timestamp), CAST(N'2021-08-02T21:47:52.000' AS timestamp), 44, 1);

INSERT INTO game_sessions
VALUES (900, CAST(N'2021-10-26T01:59:05.000' AS timestamp), CAST(N'2021-10-26T04:15:56.000' AS timestamp), 865, 2);

INSERT INTO game_sessions
VALUES (901, CAST(N'2021-10-03T11:55:06.000' AS timestamp), CAST(N'2021-10-03T14:11:57.000' AS timestamp), 27, 3);

INSERT INTO game_sessions
VALUES (902, CAST(N'2021-08-03T04:21:21.000' AS timestamp), CAST(N'2021-08-03T06:38:12.000' AS timestamp), 428, 1);

INSERT INTO game_sessions
VALUES (903, CAST(N'2022-07-18T05:14:58.000' AS timestamp), CAST(N'2022-07-18T07:31:49.000' AS timestamp), 213, 3);

INSERT INTO game_sessions
VALUES (904, CAST(N'2022-07-10T02:44:18.000' AS timestamp), CAST(N'2022-07-10T05:01:09.000' AS timestamp), 691, 2);

INSERT INTO game_sessions
VALUES (905, CAST(N'2021-10-14T12:21:26.000' AS timestamp), CAST(N'2021-10-14T14:38:17.000' AS timestamp), 351, 3);

INSERT INTO game_sessions
VALUES (906, CAST(N'2022-01-06T03:07:29.000' AS timestamp), CAST(N'2022-01-06T05:24:20.000' AS timestamp), 67, 2);

INSERT INTO game_sessions
VALUES (907, CAST(N'2021-12-25T16:27:33.000' AS timestamp), CAST(N'2021-12-25T18:44:24.000' AS timestamp), 781, 3);

INSERT INTO game_sessions
VALUES (908, CAST(N'2022-07-24T08:00:56.000' AS timestamp), CAST(N'2022-07-24T10:17:47.000' AS timestamp), 677, 3);

INSERT INTO game_sessions
VALUES (909, CAST(N'2022-02-12T20:45:12.000' AS timestamp), CAST(N'2022-02-12T23:02:03.000' AS timestamp), 966, 1);

INSERT INTO game_sessions
VALUES (910, CAST(N'2022-07-06T01:59:06.000' AS timestamp), CAST(N'2022-07-06T04:15:57.000' AS timestamp), 994, 1);

INSERT INTO game_sessions
VALUES (911, CAST(N'2021-10-15T09:01:25.000' AS timestamp), CAST(N'2021-10-15T11:18:16.000' AS timestamp), 1000, 1);

INSERT INTO game_sessions
VALUES (912, CAST(N'2022-01-28T08:13:26.000' AS timestamp), CAST(N'2022-01-28T10:30:17.000' AS timestamp), 195, 3);

INSERT INTO game_sessions
VALUES (913, CAST(N'2022-06-23T09:15:49.000' AS timestamp), CAST(N'2022-06-23T11:32:40.000' AS timestamp), 980, 1);

INSERT INTO game_sessions
VALUES (914, CAST(N'2021-11-02T13:36:04.000' AS timestamp), CAST(N'2021-11-02T15:52:55.000' AS timestamp), 865, 2);

INSERT INTO game_sessions
VALUES (915, CAST(N'2022-06-27T19:37:44.000' AS timestamp), CAST(N'2022-06-27T21:54:35.000' AS timestamp), 314, 2);

INSERT INTO game_sessions
VALUES (916, CAST(N'2021-10-14T16:57:35.000' AS timestamp), CAST(N'2021-10-14T19:14:26.000' AS timestamp), 801, 1);

INSERT INTO game_sessions
VALUES (917, CAST(N'2021-10-13T15:52:05.000' AS timestamp), CAST(N'2021-10-13T18:08:56.000' AS timestamp), 281, 1);

INSERT INTO game_sessions
VALUES (918, CAST(N'2022-05-23T00:56:50.000' AS timestamp), CAST(N'2022-05-23T03:13:41.000' AS timestamp), 223, 3);

INSERT INTO game_sessions
VALUES (919, CAST(N'2021-10-17T22:03:24.000' AS timestamp), CAST(N'2021-10-18T00:20:15.000' AS timestamp), 409, 1);

INSERT INTO game_sessions
VALUES (920, CAST(N'2021-11-09T21:01:46.000' AS timestamp), CAST(N'2021-11-09T23:18:37.000' AS timestamp), 976, 4);

INSERT INTO game_sessions
VALUES (921, CAST(N'2022-04-10T13:12:24.000' AS timestamp), CAST(N'2022-04-10T15:29:15.000' AS timestamp), 929, 3);

INSERT INTO game_sessions
VALUES (922, CAST(N'2022-07-19T01:15:39.000' AS timestamp), CAST(N'2022-07-19T03:32:30.000' AS timestamp), 846, 3);

INSERT INTO game_sessions
VALUES (923, CAST(N'2021-07-31T13:13:01.000' AS timestamp), CAST(N'2021-07-31T15:29:52.000' AS timestamp), 226, 1);

INSERT INTO game_sessions
VALUES (924, CAST(N'2022-01-27T20:01:49.000' AS timestamp), CAST(N'2022-01-27T22:18:40.000' AS timestamp), 724, 1);

INSERT INTO game_sessions
VALUES (925, CAST(N'2021-09-29T09:20:41.000' AS timestamp), CAST(N'2021-09-29T11:37:32.000' AS timestamp), 87, 3);

INSERT INTO game_sessions
VALUES (926, CAST(N'2022-07-04T01:55:35.000' AS timestamp), CAST(N'2022-07-04T04:12:26.000' AS timestamp), 211, 3);

INSERT INTO game_sessions
VALUES (927, CAST(N'2022-05-10T02:37:02.000' AS timestamp), CAST(N'2022-05-10T04:53:53.000' AS timestamp), 392, 1);

INSERT INTO game_sessions
VALUES (928, CAST(N'2022-02-22T03:50:00.000' AS timestamp), CAST(N'2022-02-22T06:06:51.000' AS timestamp), 253, 2);

INSERT INTO game_sessions
VALUES (929, CAST(N'2021-12-09T04:15:53.000' AS timestamp), CAST(N'2021-12-09T06:32:44.000' AS timestamp), 942, 2);

INSERT INTO game_sessions
VALUES (930, CAST(N'2022-07-09T10:26:50.000' AS timestamp), CAST(N'2022-07-09T12:43:41.000' AS timestamp), 807, 2);

INSERT INTO game_sessions
VALUES (931, CAST(N'2021-10-10T19:48:18.000' AS timestamp), CAST(N'2021-10-10T22:05:09.000' AS timestamp), 603, 2);

INSERT INTO game_sessions
VALUES (932, CAST(N'2022-06-06T06:47:55.000' AS timestamp), CAST(N'2022-06-06T09:04:46.000' AS timestamp), 72, 4);

INSERT INTO game_sessions
VALUES (933, CAST(N'2021-11-05T07:28:10.000' AS timestamp), CAST(N'2021-11-05T09:45:01.000' AS timestamp), 759, 1);

INSERT INTO game_sessions
VALUES (934, CAST(N'2022-03-04T12:02:46.000' AS timestamp), CAST(N'2022-03-04T14:19:37.000' AS timestamp), 336, 1);

INSERT INTO game_sessions
VALUES (935, CAST(N'2022-05-30T03:58:08.000' AS timestamp), CAST(N'2022-05-30T06:14:59.000' AS timestamp), 192, 3);

INSERT INTO game_sessions
VALUES (936, CAST(N'2022-04-13T15:57:25.000' AS timestamp), CAST(N'2022-04-13T18:14:16.000' AS timestamp), 190, 2);

INSERT INTO game_sessions
VALUES (937, CAST(N'2022-06-23T07:46:32.000' AS timestamp), CAST(N'2022-06-23T10:03:23.000' AS timestamp), 658, 3);

INSERT INTO game_sessions
VALUES (938, CAST(N'2021-12-12T18:38:55.000' AS timestamp), CAST(N'2021-12-12T20:55:46.000' AS timestamp), 563, 4);

INSERT INTO game_sessions
VALUES (939, CAST(N'2021-11-30T08:17:29.000' AS timestamp), CAST(N'2021-11-30T10:34:20.000' AS timestamp), 956, 4);

INSERT INTO game_sessions
VALUES (940, CAST(N'2021-09-21T14:16:17.000' AS timestamp), CAST(N'2021-09-21T16:33:08.000' AS timestamp), 275, 4);

INSERT INTO game_sessions
VALUES (941, CAST(N'2022-02-19T18:31:39.000' AS timestamp), CAST(N'2022-02-19T20:48:30.000' AS timestamp), 659, 3);

INSERT INTO game_sessions
VALUES (942, CAST(N'2022-07-23T00:46:40.000' AS timestamp), CAST(N'2022-07-23T03:03:31.000' AS timestamp), 69, 2);

INSERT INTO game_sessions
VALUES (943, CAST(N'2021-11-14T20:23:02.000' AS timestamp), CAST(N'2021-11-14T22:39:53.000' AS timestamp), 827, 3);

INSERT INTO game_sessions
VALUES (944, CAST(N'2021-07-30T15:57:17.000' AS timestamp), CAST(N'2021-07-30T18:14:08.000' AS timestamp), 663, 2);

INSERT INTO game_sessions
VALUES (945, CAST(N'2021-11-15T03:53:17.000' AS timestamp), CAST(N'2021-11-15T06:10:08.000' AS timestamp), 501, 4);

INSERT INTO game_sessions
VALUES (946, CAST(N'2022-05-05T15:57:28.000' AS timestamp), CAST(N'2022-05-05T18:14:19.000' AS timestamp), 107, 2);

INSERT INTO game_sessions
VALUES (947, CAST(N'2022-05-20T12:18:37.000' AS timestamp), CAST(N'2022-05-20T14:35:28.000' AS timestamp), 886, 4);

INSERT INTO game_sessions
VALUES (948, CAST(N'2022-07-19T19:24:19.000' AS timestamp), CAST(N'2022-07-19T21:41:10.000' AS timestamp), 977, 4);

INSERT INTO game_sessions
VALUES (949, CAST(N'2021-09-18T07:56:46.000' AS timestamp), CAST(N'2021-09-18T10:13:37.000' AS timestamp), 228, 1);

INSERT INTO game_sessions
VALUES (950, CAST(N'2022-06-29T23:29:57.000' AS timestamp), CAST(N'2022-06-30T01:46:48.000' AS timestamp), 671, 4);

INSERT INTO game_sessions
VALUES (951, CAST(N'2021-09-03T13:19:30.000' AS timestamp), CAST(N'2021-09-03T15:36:21.000' AS timestamp), 372, 2);

INSERT INTO game_sessions
VALUES (952, CAST(N'2021-12-12T23:32:00.000' AS timestamp), CAST(N'2021-12-13T01:48:51.000' AS timestamp), 92, 1);

INSERT INTO game_sessions
VALUES (953, CAST(N'2021-10-16T03:23:01.000' AS timestamp), CAST(N'2021-10-16T05:39:52.000' AS timestamp), 904, 3);

INSERT INTO game_sessions
VALUES (954, CAST(N'2022-03-19T22:00:00.000' AS timestamp), CAST(N'2022-03-20T00:16:51.000' AS timestamp), 97, 2);

INSERT INTO game_sessions
VALUES (955, CAST(N'2022-06-13T08:57:21.000' AS timestamp), CAST(N'2022-06-13T11:14:12.000' AS timestamp), 258, 4);

INSERT INTO game_sessions
VALUES (956, CAST(N'2022-01-21T01:58:43.000' AS timestamp), CAST(N'2022-01-21T04:15:34.000' AS timestamp), 375, 3);

INSERT INTO game_sessions
VALUES (957, CAST(N'2022-04-22T14:31:38.000' AS timestamp), CAST(N'2022-04-22T16:48:29.000' AS timestamp), 2, 3);

INSERT INTO game_sessions
VALUES (958, CAST(N'2022-06-20T12:19:40.000' AS timestamp), CAST(N'2022-06-20T14:36:31.000' AS timestamp), 646, 4);

INSERT INTO game_sessions
VALUES (959, CAST(N'2021-08-17T17:57:22.000' AS timestamp), CAST(N'2021-08-17T20:14:13.000' AS timestamp), 466, 3);

INSERT INTO game_sessions
VALUES (960, CAST(N'2022-07-23T15:03:52.000' AS timestamp), CAST(N'2022-07-23T17:20:43.000' AS timestamp), 533, 3);

INSERT INTO game_sessions
VALUES (961, CAST(N'2022-06-03T06:16:54.000' AS timestamp), CAST(N'2022-06-03T08:33:45.000' AS timestamp), 506, 4);

INSERT INTO game_sessions
VALUES (962, CAST(N'2022-03-10T23:06:54.000' AS timestamp), CAST(N'2022-03-11T01:23:45.000' AS timestamp), 319, 4);

INSERT INTO game_sessions
VALUES (963, CAST(N'2022-05-09T22:09:45.000' AS timestamp), CAST(N'2022-05-10T00:26:36.000' AS timestamp), 416, 2);

INSERT INTO game_sessions
VALUES (964, CAST(N'2021-10-19T09:31:04.000' AS timestamp), CAST(N'2021-10-19T11:47:55.000' AS timestamp), 454, 4);

INSERT INTO game_sessions
VALUES (965, CAST(N'2021-12-30T00:47:22.000' AS timestamp), CAST(N'2021-12-30T03:04:13.000' AS timestamp), 72, 3);

INSERT INTO game_sessions
VALUES (966, CAST(N'2021-08-01T13:22:29.000' AS timestamp), CAST(N'2021-08-01T15:39:20.000' AS timestamp), 724, 1);

INSERT INTO game_sessions
VALUES (967, CAST(N'2021-11-05T09:14:58.000' AS timestamp), CAST(N'2021-11-05T11:31:49.000' AS timestamp), 979, 2);

INSERT INTO game_sessions
VALUES (968, CAST(N'2022-01-15T12:07:18.000' AS timestamp), CAST(N'2022-01-15T14:24:09.000' AS timestamp), 3, 3);

INSERT INTO game_sessions
VALUES (969, CAST(N'2022-01-07T16:04:19.000' AS timestamp), CAST(N'2022-01-07T18:21:10.000' AS timestamp), 297, 4);

INSERT INTO game_sessions
VALUES (970, CAST(N'2022-07-21T22:34:18.000' AS timestamp), CAST(N'2022-07-22T00:51:09.000' AS timestamp), 335, 2);

INSERT INTO game_sessions
VALUES (971, CAST(N'2021-12-02T01:28:07.000' AS timestamp), CAST(N'2021-12-02T03:44:58.000' AS timestamp), 773, 3);

INSERT INTO game_sessions
VALUES (972, CAST(N'2021-10-27T11:00:13.000' AS timestamp), CAST(N'2021-10-27T13:17:04.000' AS timestamp), 261, 2);

INSERT INTO game_sessions
VALUES (973, CAST(N'2022-01-06T02:04:37.000' AS timestamp), CAST(N'2022-01-06T04:21:28.000' AS timestamp), 344, 4);

INSERT INTO game_sessions
VALUES (974, CAST(N'2022-01-03T23:51:05.000' AS timestamp), CAST(N'2022-01-04T02:07:56.000' AS timestamp), 245, 4);

INSERT INTO game_sessions
VALUES (975, CAST(N'2022-02-24T09:15:09.000' AS timestamp), CAST(N'2022-02-24T11:32:00.000' AS timestamp), 72, 4);

INSERT INTO game_sessions
VALUES (976, CAST(N'2022-02-11T09:36:14.000' AS timestamp), CAST(N'2022-02-11T11:53:05.000' AS timestamp), 321, 4);

INSERT INTO game_sessions
VALUES (977, CAST(N'2021-12-05T20:47:28.000' AS timestamp), CAST(N'2021-12-05T23:04:19.000' AS timestamp), 996, 4);

INSERT INTO game_sessions
VALUES (978, CAST(N'2021-08-06T00:45:05.000' AS timestamp), CAST(N'2021-08-06T03:01:56.000' AS timestamp), 92, 3);

INSERT INTO game_sessions
VALUES (979, CAST(N'2021-09-03T18:45:28.000' AS timestamp), CAST(N'2021-09-03T21:02:19.000' AS timestamp), 568, 3);

INSERT INTO game_sessions
VALUES (980, CAST(N'2021-08-19T23:09:30.000' AS timestamp), CAST(N'2021-08-20T01:26:21.000' AS timestamp), 884, 1);

INSERT INTO game_sessions
VALUES (981, CAST(N'2021-11-26T06:35:13.000' AS timestamp), CAST(N'2021-11-26T08:52:04.000' AS timestamp), 386, 4);

INSERT INTO game_sessions
VALUES (982, CAST(N'2022-05-13T16:25:24.000' AS timestamp), CAST(N'2022-05-13T18:42:15.000' AS timestamp), 388, 3);

INSERT INTO game_sessions
VALUES (983, CAST(N'2022-01-26T03:53:04.000' AS timestamp), CAST(N'2022-01-26T06:09:55.000' AS timestamp), 283, 3);

INSERT INTO game_sessions
VALUES (984, CAST(N'2021-11-10T06:16:24.000' AS timestamp), CAST(N'2021-11-10T08:33:15.000' AS timestamp), 571, 3);

INSERT INTO game_sessions
VALUES (985, CAST(N'2021-08-23T16:50:00.000' AS timestamp), CAST(N'2021-08-23T19:06:51.000' AS timestamp), 737, 1);

INSERT INTO game_sessions
VALUES (986, CAST(N'2022-03-23T15:08:41.000' AS timestamp), CAST(N'2022-03-23T17:25:32.000' AS timestamp), 987, 2);

INSERT INTO game_sessions
VALUES (987, CAST(N'2021-12-19T15:04:31.000' AS timestamp), CAST(N'2021-12-19T17:21:22.000' AS timestamp), 952, 4);

INSERT INTO game_sessions
VALUES (988, CAST(N'2021-10-16T04:01:21.000' AS timestamp), CAST(N'2021-10-16T06:18:12.000' AS timestamp), 968, 1);

INSERT INTO game_sessions
VALUES (989, CAST(N'2022-06-12T20:41:37.000' AS timestamp), CAST(N'2022-06-12T22:58:28.000' AS timestamp), 400, 2);

INSERT INTO game_sessions
VALUES (990, CAST(N'2021-10-13T09:34:38.000' AS timestamp), CAST(N'2021-10-13T11:51:29.000' AS timestamp), 583, 2);

INSERT INTO game_sessions
VALUES (991, CAST(N'2021-08-11T20:08:21.000' AS timestamp), CAST(N'2021-08-11T22:25:12.000' AS timestamp), 692, 3);

INSERT INTO game_sessions
VALUES (992, CAST(N'2022-04-06T23:22:39.000' AS timestamp), CAST(N'2022-04-07T01:39:30.000' AS timestamp), 168, 3);

INSERT INTO game_sessions
VALUES (993, CAST(N'2021-08-09T20:31:56.000' AS timestamp), CAST(N'2021-08-09T22:48:47.000' AS timestamp), 172, 4);

INSERT INTO game_sessions
VALUES (994, CAST(N'2022-05-11T09:48:10.000' AS timestamp), CAST(N'2022-05-11T12:05:01.000' AS timestamp), 958, 1);

INSERT INTO game_sessions
VALUES (995, CAST(N'2021-09-06T15:54:46.000' AS timestamp), CAST(N'2021-09-06T18:11:37.000' AS timestamp), 981, 2);

INSERT INTO game_sessions
VALUES (996, CAST(N'2022-01-01T20:38:21.000' AS timestamp), CAST(N'2022-01-01T22:55:12.000' AS timestamp), 641, 1);

INSERT INTO game_sessions
VALUES (997, CAST(N'2022-06-12T22:38:45.000' AS timestamp), CAST(N'2022-06-13T00:55:36.000' AS timestamp), 539, 4);

INSERT INTO game_sessions
VALUES (998, CAST(N'2021-08-22T00:47:26.000' AS timestamp), CAST(N'2021-08-22T03:04:17.000' AS timestamp), 562, 2);

INSERT INTO game_sessions
VALUES (999, CAST(N'2021-12-12T13:38:36.000' AS timestamp), CAST(N'2021-12-12T15:55:27.000' AS timestamp), 314, 3);

INSERT INTO game_sessions
VALUES (1000, CAST(N'2022-02-10T20:50:10.000' AS timestamp), CAST(N'2022-02-10T23:07:01.000' AS timestamp), 458, 3);

INSERT INTO games
VALUES (1, N'Ronstring');

INSERT INTO games
VALUES (2, N'Keylex');

INSERT INTO games
VALUES (3, N'Sonair');

INSERT INTO games
VALUES (4, N'Bamity');

INSERT INTO paying_method
VALUES (1, N'americanexpress', N'337941554584291');

INSERT INTO paying_method
VALUES (1, N'visa', N'4286896061356');

INSERT INTO paying_method
VALUES (2, N'americanexpress', N'337941328883896');

INSERT INTO paying_method
VALUES (2, N'visa', N'4041598871838724');

INSERT INTO paying_method
VALUES (3, N'mastercard', N'5421081414469189');

INSERT INTO paying_method
VALUES (3, N'visa', N'4017954054556544');

INSERT INTO paying_method
VALUES (3, N'visa', N'4041598745834');

INSERT INTO paying_method
VALUES (4, N'americanexpress', N'374288492547988');

INSERT INTO paying_method
VALUES (4, N'mastercard', N'5002351759674660');

INSERT INTO paying_method
VALUES (5, N'americanexpress', N'371378906222915');

INSERT INTO paying_method
VALUES (5, N'visa', N'4017958707933406');

INSERT INTO paying_method
VALUES (6, N'visa', N'4041374722603596');

INSERT INTO paying_method
VALUES (6, N'visa', N'4152966116765686');

INSERT INTO paying_method
VALUES (7, N'americanexpress', N'374622341740636');

INSERT INTO paying_method
VALUES (7, N'mastercard', N'5100149519197845');

INSERT INTO paying_method
VALUES (7, N'visa', N'4041376607919229');

INSERT INTO paying_method
VALUES (7, N'visa', N'4041592238349');

INSERT INTO paying_method
VALUES (8, N'americanexpress', N'337941293657507');

INSERT INTO paying_method
VALUES (8, N'americanexpress', N'337941941480369');

INSERT INTO paying_method
VALUES (8, N'visa', N'4041379696347');

INSERT INTO paying_method
VALUES (9, N'americanexpress', N'371893403103525');

INSERT INTO paying_method
VALUES (9, N'mastercard', N'5100149846527532');

INSERT INTO paying_method
VALUES (10, N'mastercard', N'5100147217944815');

INSERT INTO paying_method
VALUES (10, N'visa', N'4017954824337324');

INSERT INTO paying_method
VALUES (11, N'mastercard', N'5494966055460095');

INSERT INTO paying_method
VALUES (11, N'visa', N'4017954506309377');

INSERT INTO paying_method
VALUES (11, N'visa', N'4041372963678');

INSERT INTO paying_method
VALUES (11, N'visa', N'4041378291546');

INSERT INTO paying_method
VALUES (11, N'visa', N'4598214278142077');

INSERT INTO paying_method
VALUES (12, N'americanexpress', N'374283882025687');

INSERT INTO paying_method
VALUES (12, N'visa', N'4041379402977');

INSERT INTO paying_method
VALUES (13, N'mastercard', N'5007663141623808');

INSERT INTO paying_method
VALUES (13, N'mastercard', N'5135060372588492');

INSERT INTO paying_method
VALUES (13, N'visa', N'4017952014065424');

INSERT INTO paying_method
VALUES (13, N'visa', N'4041375268273');

INSERT INTO paying_method
VALUES (14, N'visa', N'4017954481740802');

INSERT INTO paying_method
VALUES (14, N'visa', N'4041375583002');

INSERT INTO paying_method
VALUES (14, N'visa', N'4319430747923');

INSERT INTO paying_method
VALUES (15, N'americanexpress', N'374288679693746');

INSERT INTO paying_method
VALUES (15, N'americanexpress', N'378299156044473');

INSERT INTO paying_method
VALUES (15, N'mastercard', N'5497693834707540');

INSERT INTO paying_method
VALUES (15, N'visa', N'4041590527323649');

INSERT INTO paying_method
VALUES (16, N'mastercard', N'5240802823376650');

INSERT INTO paying_method
VALUES (16, N'visa', N'4041593329368473');

INSERT INTO paying_method
VALUES (17, N'americanexpress', N'337941583659213');

INSERT INTO paying_method
VALUES (17, N'mastercard', N'5100130563582736');

INSERT INTO paying_method
VALUES (17, N'mastercard', N'5480989637714363');

INSERT INTO paying_method
VALUES (18, N'mastercard', N'5002359123584366');

INSERT INTO paying_method
VALUES (18, N'mastercard', N'5361151884734826');

INSERT INTO paying_method
VALUES (19, N'americanexpress', N'374283746749639');

INSERT INTO paying_method
VALUES (19, N'mastercard', N'5007660364217714');

INSERT INTO paying_method
VALUES (19, N'visa', N'4041593416885405');

INSERT INTO paying_method
VALUES (20, N'americanexpress', N'337941748994166');

INSERT INTO paying_method
VALUES (20, N'mastercard', N'5261308647064914');

INSERT INTO paying_method
VALUES (20, N'visa', N'4041370475121');

INSERT INTO paying_method
VALUES (21, N'mastercard', N'5010128415901962');

INSERT INTO paying_method
VALUES (21, N'visa', N'4041379402903422');

INSERT INTO paying_method
VALUES (22, N'americanexpress', N'371540385124702');

INSERT INTO paying_method
VALUES (22, N'americanexpress', N'374283637238049');

INSERT INTO paying_method
VALUES (22, N'americanexpress', N'374302556231866');

INSERT INTO paying_method
VALUES (22, N'mastercard', N'5100174807197372');

INSERT INTO paying_method
VALUES (22, N'visa', N'4017957839863');

INSERT INTO paying_method
VALUES (23, N'mastercard', N'5002352799964806');

INSERT INTO paying_method
VALUES (23, N'mastercard', N'5100138694230018');

INSERT INTO paying_method
VALUES (24, N'visa', N'4041370458616919');

INSERT INTO paying_method
VALUES (24, N'visa', N'4789385360155');

INSERT INTO paying_method
VALUES (25, N'mastercard', N'5108755097299902');

INSERT INTO paying_method
VALUES (25, N'visa', N'4387775520171');

INSERT INTO paying_method
VALUES (26, N'americanexpress', N'346165646311575');

INSERT INTO paying_method
VALUES (26, N'americanexpress', N'372301780616332');

INSERT INTO paying_method
VALUES (26, N'visa', N'4041375886714111');

INSERT INTO paying_method
VALUES (27, N'americanexpress', N'372301659181665');

INSERT INTO paying_method
VALUES (27, N'americanexpress', N'372600592669557');

INSERT INTO paying_method
VALUES (27, N'visa', N'4017958212862');

INSERT INTO paying_method
VALUES (28, N'mastercard', N'5100179053749347');

INSERT INTO paying_method
VALUES (28, N'visa', N'4041375987856');

INSERT INTO paying_method
VALUES (29, N'mastercard', N'5108759661587429');

INSERT INTO paying_method
VALUES (29, N'visa', N'4017950612548460');

INSERT INTO paying_method
VALUES (29, N'visa', N'4041591586461023');

INSERT INTO paying_method
VALUES (30, N'americanexpress', N'372301939086445');

INSERT INTO paying_method
VALUES (30, N'visa', N'4697209200766290');

INSERT INTO paying_method
VALUES (31, N'mastercard', N'5564065187605126');

INSERT INTO paying_method
VALUES (31, N'visa', N'4793961120710');

INSERT INTO paying_method
VALUES (32, N'americanexpress', N'345657738161281');

INSERT INTO paying_method
VALUES (32, N'americanexpress', N'346820668550795');

INSERT INTO paying_method
VALUES (32, N'mastercard', N'5007660151641688');

INSERT INTO paying_method
VALUES (32, N'mastercard', N'5258789242822605');

INSERT INTO paying_method
VALUES (33, N'americanexpress', N'374622511194481');

INSERT INTO paying_method
VALUES (33, N'visa', N'4041375972650');

INSERT INTO paying_method
VALUES (34, N'americanexpress', N'372301023294467');

INSERT INTO paying_method
VALUES (34, N'visa', N'4041376384804248');

INSERT INTO paying_method
VALUES (35, N'mastercard', N'5002353817410392');

INSERT INTO paying_method
VALUES (35, N'mastercard', N'5121459336171047');

INSERT INTO paying_method
VALUES (36, N'americanexpress', N'374622440265329');

INSERT INTO paying_method
VALUES (36, N'americanexpress', N'374622825030033');

INSERT INTO paying_method
VALUES (36, N'mastercard', N'5108754295832556');

INSERT INTO paying_method
VALUES (36, N'visa', N'4017951655095450');

INSERT INTO paying_method
VALUES (36, N'visa', N'4041374075602526');

INSERT INTO paying_method
VALUES (37, N'americanexpress', N'374622057122540');

INSERT INTO paying_method
VALUES (37, N'mastercard', N'5108751118260353');

INSERT INTO paying_method
VALUES (37, N'visa', N'4017958204208');

INSERT INTO paying_method
VALUES (38, N'mastercard', N'5007667282794468');

INSERT INTO paying_method
VALUES (38, N'mastercard', N'5100144587004163');

INSERT INTO paying_method
VALUES (38, N'mastercard', N'5260755041128771');

INSERT INTO paying_method
VALUES (38, N'visa', N'4041374906089');

INSERT INTO paying_method
VALUES (39, N'americanexpress', N'374622558113436');

INSERT INTO paying_method
VALUES (39, N'visa', N'4373066189035712');

INSERT INTO paying_method
VALUES (40, N'americanexpress', N'374622105238918');

INSERT INTO paying_method
VALUES (40, N'mastercard', N'5010127863573885');

INSERT INTO paying_method
VALUES (40, N'mastercard', N'5100135105291969');

INSERT INTO paying_method
VALUES (40, N'visa', N'4292084886539');

INSERT INTO paying_method
VALUES (41, N'americanexpress', N'374283823483466');

INSERT INTO paying_method
VALUES (41, N'mastercard', N'5466258665965570');

INSERT INTO paying_method
VALUES (42, N'americanexpress', N'374622008374364');

INSERT INTO paying_method
VALUES (42, N'mastercard', N'5100143061670598');

INSERT INTO paying_method
VALUES (43, N'americanexpress', N'374288456792521');

INSERT INTO paying_method
VALUES (43, N'americanexpress', N'374622797075131');

INSERT INTO paying_method
VALUES (43, N'mastercard', N'5048371992732519');

INSERT INTO paying_method
VALUES (44, N'americanexpress', N'340099710329815');

INSERT INTO paying_method
VALUES (44, N'mastercard', N'5181925089514655');

INSERT INTO paying_method
VALUES (45, N'americanexpress', N'371888204794241');

INSERT INTO paying_method
VALUES (45, N'mastercard', N'5010124401206128');

INSERT INTO paying_method
VALUES (45, N'mastercard', N'5100173999658506');

INSERT INTO paying_method
VALUES (45, N'visa', N'4041590617593');

INSERT INTO paying_method
VALUES (45, N'visa', N'4041593625270');

INSERT INTO paying_method
VALUES (46, N'visa', N'4041373545995');

INSERT INTO paying_method
VALUES (46, N'visa', N'4097366392269180');

INSERT INTO paying_method
VALUES (47, N'americanexpress', N'372301957114855');

INSERT INTO paying_method
VALUES (47, N'mastercard', N'5100170111439500');

INSERT INTO paying_method
VALUES (48, N'americanexpress', N'374288373230266');

INSERT INTO paying_method
VALUES (48, N'mastercard', N'5263041019608376');

INSERT INTO paying_method
VALUES (49, N'americanexpress', N'337941109254887');

INSERT INTO paying_method
VALUES (49, N'visa', N'4961705694973');

INSERT INTO paying_method
VALUES (50, N'americanexpress', N'374283792791477');

INSERT INTO paying_method
VALUES (50, N'americanexpress', N'374622453626748');

INSERT INTO paying_method
VALUES (50, N'mastercard', N'5002356170798709');

INSERT INTO paying_method
VALUES (51, N'americanexpress', N'374622772666680');

INSERT INTO paying_method
VALUES (51, N'mastercard', N'5007661891350028');

INSERT INTO paying_method
VALUES (51, N'mastercard', N'5007668011647456');

INSERT INTO paying_method
VALUES (51, N'mastercard', N'5100133424593256');

INSERT INTO paying_method
VALUES (51, N'visa', N'4968018225628019');

INSERT INTO paying_method
VALUES (52, N'americanexpress', N'337941950198092');

INSERT INTO paying_method
VALUES (52, N'americanexpress', N'374622262533184');

INSERT INTO paying_method
VALUES (52, N'mastercard', N'5100147701249283');

INSERT INTO paying_method
VALUES (52, N'visa', N'4225864146641');

INSERT INTO paying_method
VALUES (53, N'mastercard', N'5007665368479954');

INSERT INTO paying_method
VALUES (53, N'mastercard', N'5100134777321915');

INSERT INTO paying_method
VALUES (53, N'visa', N'4041375836947');

INSERT INTO paying_method
VALUES (54, N'mastercard', N'5010126296464183');

INSERT INTO paying_method
VALUES (54, N'mastercard', N'5048372887827885');

INSERT INTO paying_method
VALUES (54, N'mastercard', N'5100148013117580');

INSERT INTO paying_method
VALUES (55, N'americanexpress', N'374283395987738');

INSERT INTO paying_method
VALUES (55, N'americanexpress', N'374622948896757');

INSERT INTO paying_method
VALUES (55, N'mastercard', N'5007661727836406');

INSERT INTO paying_method
VALUES (55, N'mastercard', N'5048370099476236');

INSERT INTO paying_method
VALUES (56, N'americanexpress', N'372301704477126');

INSERT INTO paying_method
VALUES (56, N'mastercard', N'5277899937494664');

INSERT INTO paying_method
VALUES (56, N'visa', N'4274756076478245');

INSERT INTO paying_method
VALUES (56, N'visa', N'4990998760552546');

INSERT INTO paying_method
VALUES (57, N'americanexpress', N'374283222451882');

INSERT INTO paying_method
VALUES (57, N'americanexpress', N'376134240867450');

INSERT INTO paying_method
VALUES (57, N'mastercard', N'5007663391153928');

INSERT INTO paying_method
VALUES (58, N'americanexpress', N'342757264211899');

INSERT INTO paying_method
VALUES (58, N'visa', N'4041590920827691');

INSERT INTO paying_method
VALUES (59, N'mastercard', N'5100147747699459');

INSERT INTO paying_method
VALUES (59, N'visa', N'4017951019241147');

INSERT INTO paying_method
VALUES (59, N'visa', N'4041599150331');

INSERT INTO paying_method
VALUES (60, N'americanexpress', N'341390431191397');

INSERT INTO paying_method
VALUES (60, N'americanexpress', N'374283286211461');

INSERT INTO paying_method
VALUES (60, N'americanexpress', N'374622476847131');

INSERT INTO paying_method
VALUES (60, N'mastercard', N'5139043002342981');

INSERT INTO paying_method
VALUES (61, N'americanexpress', N'374288469847791');

INSERT INTO paying_method
VALUES (61, N'americanexpress', N'374288765063895');

INSERT INTO paying_method
VALUES (61, N'visa', N'4041377668821270');

INSERT INTO paying_method
VALUES (61, N'visa', N'4041598940393');

INSERT INTO paying_method
VALUES (62, N'mastercard', N'5007666834724015');

INSERT INTO paying_method
VALUES (62, N'visa', N'4533440462170');

INSERT INTO paying_method
VALUES (63, N'visa', N'4017955974718825');

INSERT INTO paying_method
VALUES (63, N'visa', N'4041594651168');

INSERT INTO paying_method
VALUES (64, N'americanexpress', N'374283176092674');

INSERT INTO paying_method
VALUES (64, N'mastercard', N'5212925046011574');

INSERT INTO paying_method
VALUES (64, N'visa', N'4041371701392');

INSERT INTO paying_method
VALUES (64, N'visa', N'4041599052818');

INSERT INTO paying_method
VALUES (65, N'americanexpress', N'374622371228577');

INSERT INTO paying_method
VALUES (65, N'mastercard', N'5048373807383967');

INSERT INTO paying_method
VALUES (65, N'mastercard', N'5346611777968039');

INSERT INTO paying_method
VALUES (65, N'visa', N'4041595564964');

INSERT INTO paying_method
VALUES (66, N'mastercard', N'5007669241695265');

INSERT INTO paying_method
VALUES (66, N'mastercard', N'5108754149045678');

INSERT INTO paying_method
VALUES (66, N'mastercard', N'5108758823688190');

INSERT INTO paying_method
VALUES (66, N'visa', N'4017952080482123');

INSERT INTO paying_method
VALUES (66, N'visa', N'4041373993574270');

INSERT INTO paying_method
VALUES (67, N'mastercard', N'5002356625636587');

INSERT INTO paying_method
VALUES (67, N'visa', N'4041372222968');

INSERT INTO paying_method
VALUES (67, N'visa', N'4650902562574923');

INSERT INTO paying_method
VALUES (68, N'americanexpress', N'374622745218882');

INSERT INTO paying_method
VALUES (68, N'mastercard', N'5010128756065393');

INSERT INTO paying_method
VALUES (68, N'visa', N'4017958417648591');

INSERT INTO paying_method
VALUES (69, N'americanexpress', N'374808400163154');

INSERT INTO paying_method
VALUES (69, N'visa', N'4041591881529');

INSERT INTO paying_method
VALUES (69, N'visa', N'4041596547745');

INSERT INTO paying_method
VALUES (70, N'americanexpress', N'372301287460648');

INSERT INTO paying_method
VALUES (70, N'mastercard', N'5423552453321505');

INSERT INTO paying_method
VALUES (70, N'visa', N'4041591308853');

INSERT INTO paying_method
VALUES (70, N'visa', N'4041593548936');

INSERT INTO paying_method
VALUES (71, N'americanexpress', N'374622909666488');

INSERT INTO paying_method
VALUES (71, N'visa', N'4468774704592');

INSERT INTO paying_method
VALUES (72, N'americanexpress', N'372301875706584');

INSERT INTO paying_method
VALUES (72, N'mastercard', N'5465261741301704');

INSERT INTO paying_method
VALUES (72, N'visa', N'4403233492968');

INSERT INTO paying_method
VALUES (73, N'americanexpress', N'374288128364253');

INSERT INTO paying_method
VALUES (73, N'mastercard', N'5010122418681416');

INSERT INTO paying_method
VALUES (73, N'visa', N'4017951478156208');

INSERT INTO paying_method
VALUES (74, N'americanexpress', N'375508618940323');

INSERT INTO paying_method
VALUES (74, N'visa', N'4987299260756');

INSERT INTO paying_method
VALUES (75, N'mastercard', N'5007660515228875');

INSERT INTO paying_method
VALUES (75, N'mastercard', N'5297326070520986');

INSERT INTO paying_method
VALUES (76, N'americanexpress', N'374283723503066');

INSERT INTO paying_method
VALUES (76, N'mastercard', N'5007669864918978');

INSERT INTO paying_method
VALUES (77, N'americanexpress', N'377031112935275');

INSERT INTO paying_method
VALUES (77, N'mastercard', N'5010123732130619');

INSERT INTO paying_method
VALUES (78, N'americanexpress', N'372301191479528');

INSERT INTO paying_method
VALUES (78, N'americanexpress', N'372301647952086');

INSERT INTO paying_method
VALUES (78, N'mastercard', N'5392364178817032');

INSERT INTO paying_method
VALUES (78, N'mastercard', N'5432356014955879');

INSERT INTO paying_method
VALUES (79, N'americanexpress', N'370559598835921');

INSERT INTO paying_method
VALUES (79, N'mastercard', N'5010127854284914');

INSERT INTO paying_method
VALUES (79, N'mastercard', N'5048370486222144');

INSERT INTO paying_method
VALUES (79, N'visa', N'4017955703251');

INSERT INTO paying_method
VALUES (79, N'visa', N'4041594663445');

INSERT INTO paying_method
VALUES (80, N'americanexpress', N'372301210439602');

INSERT INTO paying_method
VALUES (80, N'americanexpress', N'372301305556419');

INSERT INTO paying_method
VALUES (80, N'visa', N'4017955136042197');

INSERT INTO paying_method
VALUES (81, N'americanexpress', N'372301335366268');

INSERT INTO paying_method
VALUES (81, N'americanexpress', N'374288900563072');

INSERT INTO paying_method
VALUES (81, N'visa', N'4017958294340833');

INSERT INTO paying_method
VALUES (82, N'americanexpress', N'337941594172982');

INSERT INTO paying_method
VALUES (82, N'americanexpress', N'375325329025330');

INSERT INTO paying_method
VALUES (82, N'mastercard', N'5100179554902874');

INSERT INTO paying_method
VALUES (83, N'americanexpress', N'337941860987592');

INSERT INTO paying_method
VALUES (83, N'americanexpress', N'374283030293617');

INSERT INTO paying_method
VALUES (83, N'visa', N'4378190661310');

INSERT INTO paying_method
VALUES (84, N'mastercard', N'5108756666032906');

INSERT INTO paying_method
VALUES (84, N'visa', N'4017951959303');

INSERT INTO paying_method
VALUES (85, N'americanexpress', N'374622684418824');

INSERT INTO paying_method
VALUES (85, N'mastercard', N'5100139512721592');

INSERT INTO paying_method
VALUES (85, N'visa', N'4041597040909101');

INSERT INTO paying_method
VALUES (86, N'mastercard', N'5100144335687566');

INSERT INTO paying_method
VALUES (86, N'mastercard', N'5226761958271912');

INSERT INTO paying_method
VALUES (86, N'visa', N'4017951110055');

INSERT INTO paying_method
VALUES (86, N'visa', N'4041598487476075');

INSERT INTO paying_method
VALUES (86, N'visa', N'4404190036785338');

INSERT INTO paying_method
VALUES (87, N'mastercard', N'5524286917474067');

INSERT INTO paying_method
VALUES (87, N'visa', N'4012971683926');

INSERT INTO paying_method
VALUES (88, N'americanexpress', N'374288323933910');

INSERT INTO paying_method
VALUES (88, N'visa', N'4933743726273');

INSERT INTO paying_method
VALUES (89, N'mastercard', N'5108759968934761');

INSERT INTO paying_method
VALUES (89, N'visa', N'4415272715547');

INSERT INTO paying_method
VALUES (90, N'americanexpress', N'337941904073102');

INSERT INTO paying_method
VALUES (90, N'visa', N'4017953529089891');

INSERT INTO paying_method
VALUES (91, N'mastercard', N'5010124301553025');

INSERT INTO paying_method
VALUES (91, N'mastercard', N'5100175132346485');

INSERT INTO paying_method
VALUES (91, N'mastercard', N'5108750552388787');

INSERT INTO paying_method
VALUES (92, N'americanexpress', N'374288974150426');

INSERT INTO paying_method
VALUES (92, N'visa', N'4041377399552863');

INSERT INTO paying_method
VALUES (92, N'visa', N'4349608611064');

INSERT INTO paying_method
VALUES (93, N'americanexpress', N'374288759377475');

INSERT INTO paying_method
VALUES (93, N'mastercard', N'5108754224913857');

INSERT INTO paying_method
VALUES (93, N'visa', N'4041373213896701');

INSERT INTO paying_method
VALUES (94, N'americanexpress', N'337941613018539');

INSERT INTO paying_method
VALUES (94, N'mastercard', N'5007669937043812');

INSERT INTO paying_method
VALUES (94, N'mastercard', N'5010129749432690');

INSERT INTO paying_method
VALUES (95, N'americanexpress', N'337941874667925');

INSERT INTO paying_method
VALUES (95, N'mastercard', N'5010125303696860');

INSERT INTO paying_method
VALUES (95, N'mastercard', N'5100173093147430');

INSERT INTO paying_method
VALUES (96, N'mastercard', N'5048379105422886');

INSERT INTO paying_method
VALUES (96, N'mastercard', N'5100137758870636');

INSERT INTO paying_method
VALUES (96, N'visa', N'4638983240857');

INSERT INTO paying_method
VALUES (97, N'americanexpress', N'372301481766071');

INSERT INTO paying_method
VALUES (97, N'mastercard', N'5297218400967799');

INSERT INTO paying_method
VALUES (98, N'mastercard', N'5100171676316216');

INSERT INTO paying_method
VALUES (98, N'visa', N'4041597598598');

INSERT INTO paying_method
VALUES (98, N'visa', N'4803610222468');

INSERT INTO paying_method
VALUES (99, N'americanexpress', N'374622892762856');

INSERT INTO paying_method
VALUES (99, N'mastercard', N'5010127465288486');

INSERT INTO paying_method
VALUES (99, N'mastercard', N'5299474788239610');

INSERT INTO paying_method
VALUES (100, N'americanexpress', N'376478370007456');

INSERT INTO paying_method
VALUES (100, N'visa', N'4041372919803');

INSERT INTO paying_method
VALUES (101, N'mastercard', N'5239405069561911');

INSERT INTO paying_method
VALUES (101, N'mastercard', N'5448562259662854');

INSERT INTO paying_method
VALUES (101, N'mastercard', N'5477903556039004');

INSERT INTO paying_method
VALUES (102, N'americanexpress', N'372301925758247');

INSERT INTO paying_method
VALUES (102, N'americanexpress', N'374283273519272');

INSERT INTO paying_method
VALUES (102, N'mastercard', N'5100171402832908');

INSERT INTO paying_method
VALUES (102, N'visa', N'4417701516306257');

INSERT INTO paying_method
VALUES (103, N'americanexpress', N'337941320218281');

INSERT INTO paying_method
VALUES (103, N'americanexpress', N'372099990067052');

INSERT INTO paying_method
VALUES (103, N'mastercard', N'5199430989152342');

INSERT INTO paying_method
VALUES (104, N'americanexpress', N'347288723679521');

INSERT INTO paying_method
VALUES (104, N'americanexpress', N'374288995645230');

INSERT INTO paying_method
VALUES (104, N'mastercard', N'5100148255010113');

INSERT INTO paying_method
VALUES (105, N'mastercard', N'5100140350172096');

INSERT INTO paying_method
VALUES (105, N'mastercard', N'5108756388672526');

INSERT INTO paying_method
VALUES (106, N'mastercard', N'5007661425114965');

INSERT INTO paying_method
VALUES (106, N'visa', N'4041370708443700');

INSERT INTO paying_method
VALUES (107, N'americanexpress', N'372301712557059');

INSERT INTO paying_method
VALUES (107, N'visa', N'4017955598172');

INSERT INTO paying_method
VALUES (107, N'visa', N'4041371627837');

INSERT INTO paying_method
VALUES (107, N'visa', N'4041376018575081');

INSERT INTO paying_method
VALUES (108, N'americanexpress', N'337941111070685');

INSERT INTO paying_method
VALUES (108, N'americanexpress', N'374622229605091');

INSERT INTO paying_method
VALUES (108, N'visa', N'4518815502988619');

INSERT INTO paying_method
VALUES (109, N'visa', N'4041377223412995');

INSERT INTO paying_method
VALUES (109, N'visa', N'4221641820101133');

INSERT INTO paying_method
VALUES (110, N'americanexpress', N'337941761033751');

INSERT INTO paying_method
VALUES (110, N'visa', N'4017951249044');

INSERT INTO paying_method
VALUES (110, N'visa', N'4041379103283884');

INSERT INTO paying_method
VALUES (111, N'americanexpress', N'374288876524231');

INSERT INTO paying_method
VALUES (111, N'mastercard', N'5323472589909134');

INSERT INTO paying_method
VALUES (111, N'visa', N'4041590022233228');

INSERT INTO paying_method
VALUES (112, N'mastercard', N'5327538855342295');

INSERT INTO paying_method
VALUES (112, N'visa', N'4041591610027');

INSERT INTO paying_method
VALUES (113, N'americanexpress', N'337941445464679');

INSERT INTO paying_method
VALUES (113, N'mastercard', N'5010124703872072');

INSERT INTO paying_method
VALUES (113, N'mastercard', N'5100138696396429');

INSERT INTO paying_method
VALUES (113, N'mastercard', N'5307949953282784');

INSERT INTO paying_method
VALUES (114, N'mastercard', N'5002355150810922');

INSERT INTO paying_method
VALUES (114, N'mastercard', N'5173757483365743');

INSERT INTO paying_method
VALUES (114, N'visa', N'4017954307104');

INSERT INTO paying_method
VALUES (114, N'visa', N'4884114069472');

INSERT INTO paying_method
VALUES (115, N'mastercard', N'5002354208854180');

INSERT INTO paying_method
VALUES (115, N'mastercard', N'5048370894163856');

INSERT INTO paying_method
VALUES (115, N'mastercard', N'5151632428604520');

INSERT INTO paying_method
VALUES (115, N'mastercard', N'5340774248462739');

INSERT INTO paying_method
VALUES (115, N'visa', N'4041372653204');

INSERT INTO paying_method
VALUES (116, N'americanexpress', N'374283843443565');

INSERT INTO paying_method
VALUES (116, N'americanexpress', N'374288176837093');

INSERT INTO paying_method
VALUES (116, N'visa', N'4041597467471');

INSERT INTO paying_method
VALUES (116, N'visa', N'4050815176566');

INSERT INTO paying_method
VALUES (117, N'mastercard', N'5108750861091817');

INSERT INTO paying_method
VALUES (117, N'visa', N'4017952005965');

INSERT INTO paying_method
VALUES (118, N'americanexpress', N'337941701209297');

INSERT INTO paying_method
VALUES (118, N'mastercard', N'5002350535461889');

INSERT INTO paying_method
VALUES (118, N'mastercard', N'5100136758910087');

INSERT INTO paying_method
VALUES (119, N'visa', N'4041379513278');

INSERT INTO paying_method
VALUES (119, N'visa', N'4041591588723206');

INSERT INTO paying_method
VALUES (120, N'mastercard', N'5010121699188455');

INSERT INTO paying_method
VALUES (120, N'mastercard', N'5100148565720831');

INSERT INTO paying_method
VALUES (120, N'visa', N'4743865664123171');

INSERT INTO paying_method
VALUES (120, N'visa', N'4935639225962684');

INSERT INTO paying_method
VALUES (121, N'mastercard', N'5108756535351594');

INSERT INTO paying_method
VALUES (121, N'mastercard', N'5108757099030079');

INSERT INTO paying_method
VALUES (121, N'visa', N'4017954321311');

INSERT INTO paying_method
VALUES (121, N'visa', N'4041592209760205');

INSERT INTO paying_method
VALUES (122, N'americanexpress', N'374622045119103');

INSERT INTO paying_method
VALUES (122, N'mastercard', N'5511886020204775');

INSERT INTO paying_method
VALUES (123, N'americanexpress', N'337941764022777');

INSERT INTO paying_method
VALUES (123, N'americanexpress', N'370224450450745');

INSERT INTO paying_method
VALUES (123, N'americanexpress', N'379114980496907');

INSERT INTO paying_method
VALUES (124, N'americanexpress', N'374283187078399');

INSERT INTO paying_method
VALUES (124, N'visa', N'4041375038157557');

INSERT INTO paying_method
VALUES (124, N'visa', N'4181472660144456');

INSERT INTO paying_method
VALUES (125, N'americanexpress', N'372301701588511');

INSERT INTO paying_method
VALUES (125, N'mastercard', N'5339738497110607');

INSERT INTO paying_method
VALUES (125, N'visa', N'4041598331171');

INSERT INTO paying_method
VALUES (126, N'mastercard', N'5148801617619617');

INSERT INTO paying_method
VALUES (126, N'visa', N'4017953129947');

INSERT INTO paying_method
VALUES (126, N'visa', N'4041591494174');

INSERT INTO paying_method
VALUES (126, N'visa', N'4471184951571');

INSERT INTO paying_method
VALUES (127, N'americanexpress', N'337941737587468');

INSERT INTO paying_method
VALUES (127, N'mastercard', N'5108750953613296');

INSERT INTO paying_method
VALUES (127, N'visa', N'4497769337662');

INSERT INTO paying_method
VALUES (128, N'americanexpress', N'373180556089588');

INSERT INTO paying_method
VALUES (128, N'mastercard', N'5220349619581600');

INSERT INTO paying_method
VALUES (128, N'visa', N'4017950037103800');

INSERT INTO paying_method
VALUES (128, N'visa', N'4017953831405496');

INSERT INTO paying_method
VALUES (129, N'americanexpress', N'374288716641096');

INSERT INTO paying_method
VALUES (129, N'americanexpress', N'377633091623283');

INSERT INTO paying_method
VALUES (129, N'mastercard', N'5002354077128328');

INSERT INTO paying_method
VALUES (129, N'mastercard', N'5243492497627963');

INSERT INTO paying_method
VALUES (129, N'mastercard', N'5248204176568763');

INSERT INTO paying_method
VALUES (129, N'visa', N'4041596421411224');

INSERT INTO paying_method
VALUES (130, N'americanexpress', N'374622647452191');

INSERT INTO paying_method
VALUES (130, N'visa', N'4041596419886247');

INSERT INTO paying_method
VALUES (131, N'mastercard', N'5252137516478918');

INSERT INTO paying_method
VALUES (131, N'visa', N'4017952351623215');

INSERT INTO paying_method
VALUES (131, N'visa', N'4907059514895');

INSERT INTO paying_method
VALUES (132, N'mastercard', N'5100141039593827');

INSERT INTO paying_method
VALUES (132, N'visa', N'4566605057369807');

INSERT INTO paying_method
VALUES (133, N'americanexpress', N'374283199362070');

INSERT INTO paying_method
VALUES (133, N'mastercard', N'5007669362364568');

INSERT INTO paying_method
VALUES (134, N'americanexpress', N'375213293351496');

INSERT INTO paying_method
VALUES (134, N'visa', N'4017956223663');

INSERT INTO paying_method
VALUES (135, N'mastercard', N'5100130242331976');

INSERT INTO paying_method
VALUES (135, N'mastercard', N'5100149910655466');

INSERT INTO paying_method
VALUES (136, N'americanexpress', N'372301443918190');

INSERT INTO paying_method
VALUES (136, N'mastercard', N'5100131436396643');

INSERT INTO paying_method
VALUES (136, N'mastercard', N'5100174988705084');

INSERT INTO paying_method
VALUES (136, N'mastercard', N'5535124618600556');

INSERT INTO paying_method
VALUES (137, N'mastercard', N'5100176915462945');

INSERT INTO paying_method
VALUES (137, N'mastercard', N'5304639570500568');

INSERT INTO paying_method
VALUES (137, N'visa', N'4017955027461548');

INSERT INTO paying_method
VALUES (138, N'americanexpress', N'337941203136394');

INSERT INTO paying_method
VALUES (138, N'americanexpress', N'374622229934335');

INSERT INTO paying_method
VALUES (138, N'visa', N'4041375075653310');

INSERT INTO paying_method
VALUES (139, N'americanexpress', N'374622354252677');

INSERT INTO paying_method
VALUES (139, N'mastercard', N'5010126093182392');

INSERT INTO paying_method
VALUES (139, N'visa', N'4017957349626501');

INSERT INTO paying_method
VALUES (140, N'mastercard', N'5007662808677339');

INSERT INTO paying_method
VALUES (140, N'mastercard', N'5253306551706371');

INSERT INTO paying_method
VALUES (140, N'mastercard', N'5591143453247969');

INSERT INTO paying_method
VALUES (140, N'visa', N'4139758044731');

INSERT INTO paying_method
VALUES (141, N'americanexpress', N'374622955412050');

INSERT INTO paying_method
VALUES (141, N'visa', N'4041374866946389');

INSERT INTO paying_method
VALUES (142, N'mastercard', N'5568861597066107');

INSERT INTO paying_method
VALUES (142, N'visa', N'4916036509183');

INSERT INTO paying_method
VALUES (143, N'americanexpress', N'337941449236651');

INSERT INTO paying_method
VALUES (143, N'americanexpress', N'374288898365936');

INSERT INTO paying_method
VALUES (143, N'visa', N'4017950406587');

INSERT INTO paying_method
VALUES (144, N'americanexpress', N'341522460396410');

INSERT INTO paying_method
VALUES (144, N'americanexpress', N'372301100110644');

INSERT INTO paying_method
VALUES (145, N'americanexpress', N'372715074094098');

INSERT INTO paying_method
VALUES (145, N'visa', N'4983252674105499');

INSERT INTO paying_method
VALUES (146, N'americanexpress', N'341654300768670');

INSERT INTO paying_method
VALUES (146, N'mastercard', N'5100140924074869');

INSERT INTO paying_method
VALUES (146, N'mastercard', N'5205286419180515');

INSERT INTO paying_method
VALUES (146, N'mastercard', N'5438416788836913');

INSERT INTO paying_method
VALUES (146, N'visa', N'4685304366184');

INSERT INTO paying_method
VALUES (147, N'americanexpress', N'337941445731564');

INSERT INTO paying_method
VALUES (147, N'americanexpress', N'374288299949445');

INSERT INTO paying_method
VALUES (147, N'visa', N'4041598103033789');

INSERT INTO paying_method
VALUES (148, N'americanexpress', N'341370037108128');

INSERT INTO paying_method
VALUES (148, N'americanexpress', N'374283603865452');

INSERT INTO paying_method
VALUES (148, N'mastercard', N'5100142799057862');

INSERT INTO paying_method
VALUES (149, N'americanexpress', N'372301576715512');

INSERT INTO paying_method
VALUES (149, N'mastercard', N'5100140365981390');

INSERT INTO paying_method
VALUES (149, N'mastercard', N'5337953342480632');

INSERT INTO paying_method
VALUES (150, N'mastercard', N'5465229900365356');

INSERT INTO paying_method
VALUES (150, N'visa', N'4017956973341');

INSERT INTO paying_method
VALUES (150, N'visa', N'4041377226352');

INSERT INTO paying_method
VALUES (150, N'visa', N'4041378665054840');

INSERT INTO paying_method
VALUES (151, N'mastercard', N'5258006255354222');

INSERT INTO paying_method
VALUES (151, N'visa', N'4017951235317960');

INSERT INTO paying_method
VALUES (151, N'visa', N'4017954883054');

INSERT INTO paying_method
VALUES (151, N'visa', N'4041590315221443');

INSERT INTO paying_method
VALUES (152, N'americanexpress', N'373326077027694');

INSERT INTO paying_method
VALUES (152, N'americanexpress', N'374283515212850');

INSERT INTO paying_method
VALUES (152, N'visa', N'4017952608404');

INSERT INTO paying_method
VALUES (153, N'americanexpress', N'372301823551975');

INSERT INTO paying_method
VALUES (153, N'mastercard', N'5100132365422350');

INSERT INTO paying_method
VALUES (153, N'mastercard', N'5108753315370530');

INSERT INTO paying_method
VALUES (153, N'mastercard', N'5460656898290292');

INSERT INTO paying_method
VALUES (154, N'americanexpress', N'344486121522623');

INSERT INTO paying_method
VALUES (154, N'mastercard', N'5100144088050566');

INSERT INTO paying_method
VALUES (154, N'mastercard', N'5338733825813031');

INSERT INTO paying_method
VALUES (154, N'visa', N'4041591995030');

INSERT INTO paying_method
VALUES (155, N'visa', N'4041595259682252');

INSERT INTO paying_method
VALUES (155, N'visa', N'4741916667392');

INSERT INTO paying_method
VALUES (156, N'americanexpress', N'374622384801527');

INSERT INTO paying_method
VALUES (156, N'visa', N'4013370955188');

INSERT INTO paying_method
VALUES (156, N'visa', N'4017953590949627');

INSERT INTO paying_method
VALUES (156, N'visa', N'4041596698080686');

INSERT INTO paying_method
VALUES (157, N'americanexpress', N'374288915229560');

INSERT INTO paying_method
VALUES (157, N'visa', N'4017951805305254');

INSERT INTO paying_method
VALUES (157, N'visa', N'4086885953930');

INSERT INTO paying_method
VALUES (158, N'americanexpress', N'349705934731179');

INSERT INTO paying_method
VALUES (158, N'mastercard', N'5010127301331128');

INSERT INTO paying_method
VALUES (158, N'mastercard', N'5267247219106964');

INSERT INTO paying_method
VALUES (159, N'americanexpress', N'337941047705545');

INSERT INTO paying_method
VALUES (159, N'americanexpress', N'374622995907184');

INSERT INTO paying_method
VALUES (159, N'mastercard', N'5010124294585513');

INSERT INTO paying_method
VALUES (159, N'mastercard', N'5100130125144918');

INSERT INTO paying_method
VALUES (159, N'visa', N'4041370083743');

INSERT INTO paying_method
VALUES (160, N'americanexpress', N'374288507552767');

INSERT INTO paying_method
VALUES (160, N'visa', N'4017958858698');

INSERT INTO paying_method
VALUES (161, N'americanexpress', N'337941122163883');

INSERT INTO paying_method
VALUES (161, N'mastercard', N'5491198415356770');

INSERT INTO paying_method
VALUES (161, N'visa', N'4041595701970');

INSERT INTO paying_method
VALUES (162, N'americanexpress', N'337941596578962');

INSERT INTO paying_method
VALUES (162, N'americanexpress', N'377992994487208');

INSERT INTO paying_method
VALUES (162, N'mastercard', N'5100145541645322');

INSERT INTO paying_method
VALUES (163, N'americanexpress', N'374288446745845');

INSERT INTO paying_method
VALUES (163, N'visa', N'4017958596446783');

INSERT INTO paying_method
VALUES (163, N'visa', N'4041377804382492');

INSERT INTO paying_method
VALUES (164, N'americanexpress', N'347516266796355');

INSERT INTO paying_method
VALUES (164, N'mastercard', N'5007666000302356');

INSERT INTO paying_method
VALUES (164, N'visa', N'4245747469293388');

INSERT INTO paying_method
VALUES (165, N'americanexpress', N'374283102408820');

INSERT INTO paying_method
VALUES (165, N'visa', N'4584677792095540');

INSERT INTO paying_method
VALUES (166, N'americanexpress', N'371221483281880');

INSERT INTO paying_method
VALUES (166, N'americanexpress', N'374622727017252');

INSERT INTO paying_method
VALUES (166, N'visa', N'4041596574499273');

INSERT INTO paying_method
VALUES (167, N'mastercard', N'5100173451400090');

INSERT INTO paying_method
VALUES (167, N'mastercard', N'5187191784606288');

INSERT INTO paying_method
VALUES (168, N'americanexpress', N'337941065370248');

INSERT INTO paying_method
VALUES (168, N'americanexpress', N'337941135337342');

INSERT INTO paying_method
VALUES (168, N'americanexpress', N'337941717686926');

INSERT INTO paying_method
VALUES (169, N'americanexpress', N'374622372745389');

INSERT INTO paying_method
VALUES (169, N'mastercard', N'5108750321662025');

INSERT INTO paying_method
VALUES (169, N'visa', N'4041377849587576');

INSERT INTO paying_method
VALUES (169, N'visa', N'4041599770369');

INSERT INTO paying_method
VALUES (170, N'americanexpress', N'374622198975889');

INSERT INTO paying_method
VALUES (170, N'mastercard', N'5007661685582901');

INSERT INTO paying_method
VALUES (170, N'visa', N'4568032101470077');

INSERT INTO paying_method
VALUES (171, N'mastercard', N'5174423751012173');

INSERT INTO paying_method
VALUES (171, N'mastercard', N'5253925471164500');

INSERT INTO paying_method
VALUES (171, N'visa', N'4001223429689010');

INSERT INTO paying_method
VALUES (172, N'mastercard', N'5002351976862122');

INSERT INTO paying_method
VALUES (172, N'mastercard', N'5002354044124467');

INSERT INTO paying_method
VALUES (172, N'mastercard', N'5301545491067939');

INSERT INTO paying_method
VALUES (172, N'mastercard', N'5311455631368825');

INSERT INTO paying_method
VALUES (173, N'americanexpress', N'374288211409700');

INSERT INTO paying_method
VALUES (173, N'mastercard', N'5448242475098122');

INSERT INTO paying_method
VALUES (173, N'visa', N'4017957932221');

INSERT INTO paying_method
VALUES (174, N'americanexpress', N'337941786470749');

INSERT INTO paying_method
VALUES (174, N'mastercard', N'5497401383664405');

INSERT INTO paying_method
VALUES (174, N'visa', N'4041373278942994');

INSERT INTO paying_method
VALUES (174, N'visa', N'4041595878182');

INSERT INTO paying_method
VALUES (175, N'mastercard', N'5100173360122124');

INSERT INTO paying_method
VALUES (175, N'visa', N'4041597527399');

INSERT INTO paying_method
VALUES (176, N'americanexpress', N'337941995550109');

INSERT INTO paying_method
VALUES (176, N'mastercard', N'5007665365719139');

INSERT INTO paying_method
VALUES (176, N'mastercard', N'5108757708701169');

INSERT INTO paying_method
VALUES (177, N'visa', N'4017958818174858');

INSERT INTO paying_method
VALUES (177, N'visa', N'4041376800264');

INSERT INTO paying_method
VALUES (177, N'visa', N'4041593280519254');

INSERT INTO paying_method
VALUES (178, N'mastercard', N'5275421836610811');

INSERT INTO paying_method
VALUES (178, N'mastercard', N'5544252816972797');

INSERT INTO paying_method
VALUES (178, N'visa', N'4041375820549524');

INSERT INTO paying_method
VALUES (179, N'mastercard', N'5010124233369078');

INSERT INTO paying_method
VALUES (179, N'visa', N'4041373075203954');

INSERT INTO paying_method
VALUES (180, N'americanexpress', N'337941799648166');

INSERT INTO paying_method
VALUES (180, N'americanexpress', N'374283038641668');

INSERT INTO paying_method
VALUES (181, N'mastercard', N'5176405337243008');

INSERT INTO paying_method
VALUES (181, N'visa', N'4710892392515');

INSERT INTO paying_method
VALUES (182, N'americanexpress', N'378565706292329');

INSERT INTO paying_method
VALUES (182, N'americanexpress', N'379054242213981');

INSERT INTO paying_method
VALUES (182, N'visa', N'4041378166328933');

INSERT INTO paying_method
VALUES (182, N'visa', N'4041598292100');

INSERT INTO paying_method
VALUES (183, N'americanexpress', N'374622982336413');

INSERT INTO paying_method
VALUES (183, N'mastercard', N'5367073209330102');

INSERT INTO paying_method
VALUES (183, N'mastercard', N'5564522249855693');

INSERT INTO paying_method
VALUES (183, N'visa', N'4041593044384698');

INSERT INTO paying_method
VALUES (184, N'americanexpress', N'337941500643316');

INSERT INTO paying_method
VALUES (184, N'americanexpress', N'372301254415211');

INSERT INTO paying_method
VALUES (184, N'visa', N'4041594980151851');

INSERT INTO paying_method
VALUES (185, N'mastercard', N'5007661319461308');

INSERT INTO paying_method
VALUES (185, N'mastercard', N'5228463135746530');

INSERT INTO paying_method
VALUES (186, N'americanexpress', N'337941883426040');

INSERT INTO paying_method
VALUES (186, N'americanexpress', N'343745318793862');

INSERT INTO paying_method
VALUES (186, N'americanexpress', N'372301955368149');

INSERT INTO paying_method
VALUES (186, N'visa', N'4017950826669');

INSERT INTO paying_method
VALUES (187, N'visa', N'4041374637612542');

INSERT INTO paying_method
VALUES (187, N'visa', N'4041376489408861');

INSERT INTO paying_method
VALUES (188, N'americanexpress', N'374288235330551');

INSERT INTO paying_method
VALUES (188, N'mastercard', N'5100175470945450');

INSERT INTO paying_method
VALUES (188, N'mastercard', N'5168632782616343');

INSERT INTO paying_method
VALUES (188, N'visa', N'4041374974392');

INSERT INTO paying_method
VALUES (189, N'americanexpress', N'374931340304371');

INSERT INTO paying_method
VALUES (189, N'visa', N'4041592983810192');

INSERT INTO paying_method
VALUES (190, N'americanexpress', N'341659818846785');

INSERT INTO paying_method
VALUES (190, N'mastercard', N'5452706570435259');

INSERT INTO paying_method
VALUES (191, N'americanexpress', N'372301300926336');

INSERT INTO paying_method
VALUES (191, N'mastercard', N'5100131728810731');

INSERT INTO paying_method
VALUES (191, N'visa', N'4041593453525');

INSERT INTO paying_method
VALUES (192, N'visa', N'4017955544377581');

INSERT INTO paying_method
VALUES (192, N'visa', N'4708757911985705');

INSERT INTO paying_method
VALUES (193, N'americanexpress', N'374283346296080');

INSERT INTO paying_method
VALUES (193, N'mastercard', N'5007662074203463');

INSERT INTO paying_method
VALUES (193, N'mastercard', N'5292781797307908');

INSERT INTO paying_method
VALUES (194, N'americanexpress', N'374622409539409');

INSERT INTO paying_method
VALUES (194, N'americanexpress', N'374622525613153');

INSERT INTO paying_method
VALUES (194, N'visa', N'4041590373455065');

INSERT INTO paying_method
VALUES (195, N'mastercard', N'5381742986963481');

INSERT INTO paying_method
VALUES (195, N'visa', N'4017955571797164');

INSERT INTO paying_method
VALUES (196, N'mastercard', N'5276501256997902');

INSERT INTO paying_method
VALUES (196, N'visa', N'4017958824079646');

INSERT INTO paying_method
VALUES (197, N'mastercard', N'5048378212541976');

INSERT INTO paying_method
VALUES (197, N'mastercard', N'5100172240131933');

INSERT INTO paying_method
VALUES (197, N'visa', N'4751578303665');

INSERT INTO paying_method
VALUES (198, N'americanexpress', N'337941267721321');

INSERT INTO paying_method
VALUES (198, N'americanexpress', N'374622663752698');

INSERT INTO paying_method
VALUES (198, N'americanexpress', N'377120865163241');

INSERT INTO paying_method
VALUES (198, N'visa', N'4017953381662');

INSERT INTO paying_method
VALUES (199, N'americanexpress', N'374622059962596');

INSERT INTO paying_method
VALUES (199, N'mastercard', N'5007667186984348');

INSERT INTO paying_method
VALUES (199, N'mastercard', N'5108758493223427');

INSERT INTO paying_method
VALUES (200, N'mastercard', N'5140371726426781');

INSERT INTO paying_method
VALUES (200, N'visa', N'4041374555833336');

INSERT INTO paying_method
VALUES (200, N'visa', N'4041376528774');

INSERT INTO paying_method
VALUES (201, N'mastercard', N'5100134729307228');

INSERT INTO paying_method
VALUES (201, N'mastercard', N'5298872485707360');

INSERT INTO paying_method
VALUES (202, N'americanexpress', N'341097969972227');

INSERT INTO paying_method
VALUES (202, N'americanexpress', N'344485632307458');

INSERT INTO paying_method
VALUES (202, N'americanexpress', N'374288992639665');

INSERT INTO paying_method
VALUES (202, N'visa', N'4041374140598');

INSERT INTO paying_method
VALUES (203, N'americanexpress', N'372301201965516');

INSERT INTO paying_method
VALUES (203, N'mastercard', N'5100171008761469');

INSERT INTO paying_method
VALUES (203, N'mastercard', N'5133758526084241');

INSERT INTO paying_method
VALUES (203, N'mastercard', N'5581161365784186');

INSERT INTO paying_method
VALUES (203, N'visa', N'4041596952671');

INSERT INTO paying_method
VALUES (204, N'mastercard', N'5010129869477582');

INSERT INTO paying_method
VALUES (204, N'mastercard', N'5048374058839145');

INSERT INTO paying_method
VALUES (204, N'mastercard', N'5531937074867862');

INSERT INTO paying_method
VALUES (204, N'visa', N'4237691475259');

INSERT INTO paying_method
VALUES (204, N'visa', N'4714711582417839');

INSERT INTO paying_method
VALUES (205, N'americanexpress', N'337941541458112');

INSERT INTO paying_method
VALUES (205, N'americanexpress', N'375321507407853');

INSERT INTO paying_method
VALUES (205, N'visa', N'4017953142916');

INSERT INTO paying_method
VALUES (206, N'americanexpress', N'374283787409606');

INSERT INTO paying_method
VALUES (206, N'visa', N'4041372472282');

INSERT INTO paying_method
VALUES (206, N'visa', N'4041596697072304');

INSERT INTO paying_method
VALUES (207, N'americanexpress', N'375818609084795');

INSERT INTO paying_method
VALUES (207, N'mastercard', N'5100131057521388');

INSERT INTO paying_method
VALUES (207, N'mastercard', N'5500340455591994');

INSERT INTO paying_method
VALUES (207, N'visa', N'4674058662676258');

INSERT INTO paying_method
VALUES (208, N'americanexpress', N'372301876908619');

INSERT INTO paying_method
VALUES (208, N'americanexpress', N'374622820779717');

INSERT INTO paying_method
VALUES (208, N'visa', N'4041375152865');

INSERT INTO paying_method
VALUES (208, N'visa', N'4041598324733324');

INSERT INTO paying_method
VALUES (209, N'visa', N'4041374156826');

INSERT INTO paying_method
VALUES (209, N'visa', N'4041375964160');

INSERT INTO paying_method
VALUES (210, N'mastercard', N'5107187070676032');

INSERT INTO paying_method
VALUES (210, N'mastercard', N'5340566150922449');

INSERT INTO paying_method
VALUES (210, N'visa', N'4041371238163');

INSERT INTO paying_method
VALUES (211, N'americanexpress', N'374283203621057');

INSERT INTO paying_method
VALUES (211, N'mastercard', N'5100177049195963');

INSERT INTO paying_method
VALUES (212, N'mastercard', N'5100136338881857');

INSERT INTO paying_method
VALUES (212, N'visa', N'4041374665134567');

INSERT INTO paying_method
VALUES (213, N'mastercard', N'5215716792320187');

INSERT INTO paying_method
VALUES (213, N'visa', N'4041379575648226');

INSERT INTO paying_method
VALUES (213, N'visa', N'4100182809220863');

INSERT INTO paying_method
VALUES (214, N'americanexpress', N'337941867023490');

INSERT INTO paying_method
VALUES (214, N'americanexpress', N'372301573374834');

INSERT INTO paying_method
VALUES (214, N'visa', N'4041590390610544');

INSERT INTO paying_method
VALUES (215, N'mastercard', N'5478345277155249');

INSERT INTO paying_method
VALUES (215, N'visa', N'4017950004663');

INSERT INTO paying_method
VALUES (216, N'americanexpress', N'373813106132025');

INSERT INTO paying_method
VALUES (216, N'mastercard', N'5100146603913848');

INSERT INTO paying_method
VALUES (217, N'mastercard', N'5271077704463222');

INSERT INTO paying_method
VALUES (217, N'visa', N'4041597167667995');

INSERT INTO paying_method
VALUES (218, N'mastercard', N'5048370934962556');

INSERT INTO paying_method
VALUES (218, N'mastercard', N'5310569130338591');

INSERT INTO paying_method
VALUES (218, N'visa', N'4973860844801359');

INSERT INTO paying_method
VALUES (219, N'mastercard', N'5100175843521335');

INSERT INTO paying_method
VALUES (219, N'visa', N'4041374348167');

INSERT INTO paying_method
VALUES (220, N'americanexpress', N'374762605724924');

INSERT INTO paying_method
VALUES (220, N'visa', N'4017950007586091');

INSERT INTO paying_method
VALUES (220, N'visa', N'4041590980005329');

INSERT INTO paying_method
VALUES (221, N'visa', N'4041592982749946');

INSERT INTO paying_method
VALUES (221, N'visa', N'4076334249756499');

INSERT INTO paying_method
VALUES (222, N'americanexpress', N'346296362037050');

INSERT INTO paying_method
VALUES (222, N'mastercard', N'5100135501356366');

INSERT INTO paying_method
VALUES (222, N'mastercard', N'5429258454126455');

INSERT INTO paying_method
VALUES (222, N'visa', N'4017954078077');

INSERT INTO paying_method
VALUES (222, N'visa', N'4017959421082207');

INSERT INTO paying_method
VALUES (222, N'visa', N'4890707293987694');

INSERT INTO paying_method
VALUES (223, N'americanexpress', N'374283787357318');

INSERT INTO paying_method
VALUES (223, N'mastercard', N'5174374445663394');

INSERT INTO paying_method
VALUES (223, N'visa', N'4041595697103');

INSERT INTO paying_method
VALUES (223, N'visa', N'4041599159027');

INSERT INTO paying_method
VALUES (224, N'americanexpress', N'348458413180382');

INSERT INTO paying_method
VALUES (224, N'americanexpress', N'374288350483870');

INSERT INTO paying_method
VALUES (224, N'mastercard', N'5489931275707185');

INSERT INTO paying_method
VALUES (225, N'americanexpress', N'378107478035873');

INSERT INTO paying_method
VALUES (225, N'mastercard', N'5010120333190042');

INSERT INTO paying_method
VALUES (226, N'visa', N'4017953664819391');

INSERT INTO paying_method
VALUES (226, N'visa', N'4017955561315340');

INSERT INTO paying_method
VALUES (226, N'visa', N'4017959167339');

INSERT INTO paying_method
VALUES (227, N'americanexpress', N'337941311106438');

INSERT INTO paying_method
VALUES (227, N'mastercard', N'5367477727886349');

INSERT INTO paying_method
VALUES (227, N'mastercard', N'5584585074675292');

INSERT INTO paying_method
VALUES (228, N'americanexpress', N'373980897864643');

INSERT INTO paying_method
VALUES (228, N'visa', N'4041370937906');

INSERT INTO paying_method
VALUES (228, N'visa', N'4933841639376046');

INSERT INTO paying_method
VALUES (229, N'mastercard', N'5010127795890779');

INSERT INTO paying_method
VALUES (229, N'visa', N'4041597706126');

INSERT INTO paying_method
VALUES (230, N'mastercard', N'5002352605246091');

INSERT INTO paying_method
VALUES (230, N'visa', N'4012101756329');

INSERT INTO paying_method
VALUES (231, N'americanexpress', N'372301211395548');

INSERT INTO paying_method
VALUES (231, N'mastercard', N'5048375502094724');

INSERT INTO paying_method
VALUES (231, N'mastercard', N'5437025652874057');

INSERT INTO paying_method
VALUES (232, N'americanexpress', N'374283648510840');

INSERT INTO paying_method
VALUES (232, N'americanexpress', N'374283870647740');

INSERT INTO paying_method
VALUES (232, N'americanexpress', N'374283958723504');

INSERT INTO paying_method
VALUES (232, N'mastercard', N'5100179093588820');

INSERT INTO paying_method
VALUES (232, N'mastercard', N'5388066836054678');

INSERT INTO paying_method
VALUES (233, N'americanexpress', N'374283675589295');

INSERT INTO paying_method
VALUES (233, N'visa', N'4298528274661');

INSERT INTO paying_method
VALUES (234, N'americanexpress', N'374622489523950');

INSERT INTO paying_method
VALUES (234, N'visa', N'4041599884228');

INSERT INTO paying_method
VALUES (235, N'americanexpress', N'370234906933087');

INSERT INTO paying_method
VALUES (235, N'mastercard', N'5007661593266092');

INSERT INTO paying_method
VALUES (236, N'americanexpress', N'372301513782633');

INSERT INTO paying_method
VALUES (236, N'americanexpress', N'374283263470569');

INSERT INTO paying_method
VALUES (237, N'mastercard', N'5100132627287831');

INSERT INTO paying_method
VALUES (237, N'mastercard', N'5206526512936522');

INSERT INTO paying_method
VALUES (237, N'visa', N'4041378759969838');

INSERT INTO paying_method
VALUES (238, N'americanexpress', N'337941531806452');

INSERT INTO paying_method
VALUES (238, N'americanexpress', N'374288248424177');

INSERT INTO paying_method
VALUES (238, N'mastercard', N'5108755910264265');

INSERT INTO paying_method
VALUES (239, N'americanexpress', N'374283811414101');

INSERT INTO paying_method
VALUES (239, N'americanexpress', N'375194867064618');

INSERT INTO paying_method
VALUES (239, N'mastercard', N'5100131738300210');

INSERT INTO paying_method
VALUES (240, N'americanexpress', N'374622810193721');

INSERT INTO paying_method
VALUES (240, N'mastercard', N'5007663822992852');

INSERT INTO paying_method
VALUES (240, N'visa', N'4041374303949');

INSERT INTO paying_method
VALUES (241, N'americanexpress', N'374288449666527');

INSERT INTO paying_method
VALUES (241, N'mastercard', N'5002355467940669');

INSERT INTO paying_method
VALUES (242, N'americanexpress', N'372773871839017');

INSERT INTO paying_method
VALUES (242, N'visa', N'4017955453113');

INSERT INTO paying_method
VALUES (243, N'mastercard', N'5337154141854107');

INSERT INTO paying_method
VALUES (243, N'visa', N'4041591548273557');

INSERT INTO paying_method
VALUES (244, N'mastercard', N'5010122849161590');

INSERT INTO paying_method
VALUES (244, N'mastercard', N'5010123309373832');

INSERT INTO paying_method
VALUES (244, N'mastercard', N'5100132854720934');

INSERT INTO paying_method
VALUES (245, N'americanexpress', N'379459567551420');

INSERT INTO paying_method
VALUES (245, N'mastercard', N'5002350079487563');

INSERT INTO paying_method
VALUES (245, N'visa', N'4017950395862450');

INSERT INTO paying_method
VALUES (246, N'americanexpress', N'378428420570118');

INSERT INTO paying_method
VALUES (246, N'mastercard', N'5130233287909732');

INSERT INTO paying_method
VALUES (246, N'visa', N'4041596169946');

INSERT INTO paying_method
VALUES (247, N'americanexpress', N'343790399753138');

INSERT INTO paying_method
VALUES (247, N'mastercard', N'5225127711579663');

INSERT INTO paying_method
VALUES (247, N'visa', N'4017959503780');

INSERT INTO paying_method
VALUES (248, N'americanexpress', N'374283009560319');

INSERT INTO paying_method
VALUES (248, N'americanexpress', N'374283892992256');

INSERT INTO paying_method
VALUES (248, N'mastercard', N'5048374328260080');

INSERT INTO paying_method
VALUES (248, N'visa', N'4017953597322133');

INSERT INTO paying_method
VALUES (248, N'visa', N'4851776707947');

INSERT INTO paying_method
VALUES (249, N'americanexpress', N'372420055424204');

INSERT INTO paying_method
VALUES (249, N'americanexpress', N'374622466969911');

INSERT INTO paying_method
VALUES (249, N'visa', N'4017950716864599');

INSERT INTO paying_method
VALUES (250, N'americanexpress', N'374288139600513');

INSERT INTO paying_method
VALUES (250, N'mastercard', N'5423505518280348');

INSERT INTO paying_method
VALUES (251, N'visa', N'4041378715809');

INSERT INTO paying_method
VALUES (251, N'visa', N'4041379213978399');

INSERT INTO paying_method
VALUES (251, N'visa', N'4041591428230');

INSERT INTO paying_method
VALUES (252, N'mastercard', N'5007661777211005');

INSERT INTO paying_method
VALUES (252, N'mastercard', N'5408373456985496');

INSERT INTO paying_method
VALUES (253, N'americanexpress', N'372301545377626');

INSERT INTO paying_method
VALUES (253, N'mastercard', N'5100176790144501');

INSERT INTO paying_method
VALUES (253, N'visa', N'4041596500272');

INSERT INTO paying_method
VALUES (254, N'mastercard', N'5048372021102468');

INSERT INTO paying_method
VALUES (254, N'visa', N'4207042590481524');

INSERT INTO paying_method
VALUES (255, N'americanexpress', N'374049984403456');

INSERT INTO paying_method
VALUES (255, N'mastercard', N'5176629094530543');

INSERT INTO paying_method
VALUES (255, N'visa', N'4017951199299311');

INSERT INTO paying_method
VALUES (256, N'americanexpress', N'379453794083331');

INSERT INTO paying_method
VALUES (256, N'mastercard', N'5002351008997813');

INSERT INTO paying_method
VALUES (256, N'mastercard', N'5010129118984891');

INSERT INTO paying_method
VALUES (256, N'mastercard', N'5428013309415905');

INSERT INTO paying_method
VALUES (257, N'americanexpress', N'372301733850053');

INSERT INTO paying_method
VALUES (257, N'americanexpress', N'374314115164298');

INSERT INTO paying_method
VALUES (257, N'mastercard', N'5430152350191480');

INSERT INTO paying_method
VALUES (257, N'visa', N'4041591195458261');

INSERT INTO paying_method
VALUES (258, N'americanexpress', N'343619838211285');

INSERT INTO paying_method
VALUES (258, N'americanexpress', N'374283731805560');

INSERT INTO paying_method
VALUES (258, N'mastercard', N'5100136838911642');

INSERT INTO paying_method
VALUES (259, N'americanexpress', N'372301060375575');

INSERT INTO paying_method
VALUES (259, N'mastercard', N'5349839090224643');

INSERT INTO paying_method
VALUES (260, N'americanexpress', N'374288723386735');

INSERT INTO paying_method
VALUES (260, N'mastercard', N'5048375195716245');

INSERT INTO paying_method
VALUES (260, N'visa', N'4017953676517');

INSERT INTO paying_method
VALUES (261, N'visa', N'4041373838994');

INSERT INTO paying_method
VALUES (261, N'visa', N'4808727584189');

INSERT INTO paying_method
VALUES (262, N'americanexpress', N'372659386643889');

INSERT INTO paying_method
VALUES (262, N'mastercard', N'5523123942831162');

INSERT INTO paying_method
VALUES (262, N'visa', N'4041376851997996');

INSERT INTO paying_method
VALUES (263, N'americanexpress', N'337941789269791');

INSERT INTO paying_method
VALUES (263, N'mastercard', N'5254695734265324');

INSERT INTO paying_method
VALUES (264, N'americanexpress', N'374288199478115');

INSERT INTO paying_method
VALUES (264, N'americanexpress', N'374622046239199');

INSERT INTO paying_method
VALUES (264, N'mastercard', N'5048371622095626');

INSERT INTO paying_method
VALUES (264, N'mastercard', N'5100146239313165');

INSERT INTO paying_method
VALUES (264, N'visa', N'4017955694258581');

INSERT INTO paying_method
VALUES (265, N'mastercard', N'5100179156457970');

INSERT INTO paying_method
VALUES (265, N'mastercard', N'5553272262379923');

INSERT INTO paying_method
VALUES (266, N'mastercard', N'5002357438510589');

INSERT INTO paying_method
VALUES (266, N'mastercard', N'5007666327842282');

INSERT INTO paying_method
VALUES (267, N'americanexpress', N'374288793936203');

INSERT INTO paying_method
VALUES (267, N'visa', N'4017955737128262');

INSERT INTO paying_method
VALUES (267, N'visa', N'4759891230576883');

INSERT INTO paying_method
VALUES (268, N'mastercard', N'5212071387664398');

INSERT INTO paying_method
VALUES (268, N'visa', N'4041597585454');

INSERT INTO paying_method
VALUES (268, N'visa', N'4911308981145');

INSERT INTO paying_method
VALUES (269, N'americanexpress', N'374193963300604');

INSERT INTO paying_method
VALUES (269, N'americanexpress', N'374283957592140');

INSERT INTO paying_method
VALUES (269, N'americanexpress', N'379982685974570');

INSERT INTO paying_method
VALUES (269, N'mastercard', N'5178328854070620');

INSERT INTO paying_method
VALUES (270, N'americanexpress', N'372301935508517');

INSERT INTO paying_method
VALUES (270, N'americanexpress', N'374283359349651');

INSERT INTO paying_method
VALUES (270, N'mastercard', N'5272410897190253');

INSERT INTO paying_method
VALUES (270, N'visa', N'4017959149618');

INSERT INTO paying_method
VALUES (271, N'americanexpress', N'372301178394922');

INSERT INTO paying_method
VALUES (271, N'mastercard', N'5108756123529957');

INSERT INTO paying_method
VALUES (271, N'visa', N'4041595476779592');

INSERT INTO paying_method
VALUES (271, N'visa', N'4041597566541551');

INSERT INTO paying_method
VALUES (271, N'visa', N'4422919051161');

INSERT INTO paying_method
VALUES (272, N'americanexpress', N'374283714034311');

INSERT INTO paying_method
VALUES (272, N'americanexpress', N'374288996362926');

INSERT INTO paying_method
VALUES (272, N'visa', N'4017958154315230');

INSERT INTO paying_method
VALUES (273, N'visa', N'4017951103497613');

INSERT INTO paying_method
VALUES (273, N'visa', N'4041596223966');

INSERT INTO paying_method
VALUES (274, N'americanexpress', N'372301242062331');

INSERT INTO paying_method
VALUES (274, N'mastercard', N'5100173854586222');

INSERT INTO paying_method
VALUES (275, N'americanexpress', N'337941074757005');

INSERT INTO paying_method
VALUES (275, N'americanexpress', N'374288479991761');

INSERT INTO paying_method
VALUES (275, N'mastercard', N'5123695840113805');

INSERT INTO paying_method
VALUES (275, N'visa', N'4041592625198');

INSERT INTO paying_method
VALUES (276, N'mastercard', N'5108758179453736');

INSERT INTO paying_method
VALUES (276, N'mastercard', N'5150752242919036');

INSERT INTO paying_method
VALUES (276, N'visa', N'4041597794137669');

INSERT INTO paying_method
VALUES (276, N'visa', N'4549399475930');

INSERT INTO paying_method
VALUES (277, N'americanexpress', N'337941732903660');

INSERT INTO paying_method
VALUES (277, N'americanexpress', N'374622063271588');

INSERT INTO paying_method
VALUES (277, N'mastercard', N'5048379219029122');

INSERT INTO paying_method
VALUES (278, N'americanexpress', N'374288501045776');

INSERT INTO paying_method
VALUES (278, N'mastercard', N'5010121680540367');

INSERT INTO paying_method
VALUES (279, N'americanexpress', N'374622745779750');

INSERT INTO paying_method
VALUES (279, N'mastercard', N'5100177278939404');

INSERT INTO paying_method
VALUES (279, N'visa', N'4041376999421');

INSERT INTO paying_method
VALUES (280, N'americanexpress', N'378084330457753');

INSERT INTO paying_method
VALUES (280, N'mastercard', N'5525792943361557');

INSERT INTO paying_method
VALUES (280, N'mastercard', N'5584056479125010');

INSERT INTO paying_method
VALUES (281, N'mastercard', N'5048371959120435');

INSERT INTO paying_method
VALUES (281, N'visa', N'4017951931112');

INSERT INTO paying_method
VALUES (281, N'visa', N'4041371358621504');

INSERT INTO paying_method
VALUES (282, N'americanexpress', N'337941455900497');

INSERT INTO paying_method
VALUES (282, N'mastercard', N'5111029859549531');

INSERT INTO paying_method
VALUES (282, N'visa', N'4041374406650137');

INSERT INTO paying_method
VALUES (282, N'visa', N'4969582200236');

INSERT INTO paying_method
VALUES (283, N'americanexpress', N'376142019429980');

INSERT INTO paying_method
VALUES (283, N'mastercard', N'5415056958565905');

INSERT INTO paying_method
VALUES (283, N'visa', N'4017956884593753');

INSERT INTO paying_method
VALUES (284, N'mastercard', N'5428983530766740');

INSERT INTO paying_method
VALUES (284, N'visa', N'4041376791523266');

INSERT INTO paying_method
VALUES (285, N'americanexpress', N'346433278097957');

INSERT INTO paying_method
VALUES (285, N'visa', N'4041599106325');

INSERT INTO paying_method
VALUES (286, N'americanexpress', N'372301923990966');

INSERT INTO paying_method
VALUES (286, N'mastercard', N'5100147775343798');

INSERT INTO paying_method
VALUES (287, N'visa', N'4041377223953');

INSERT INTO paying_method
VALUES (287, N'visa', N'4041592924294');

INSERT INTO paying_method
VALUES (287, N'visa', N'4041595159849');

INSERT INTO paying_method
VALUES (288, N'mastercard', N'5494177728088913');

INSERT INTO paying_method
VALUES (288, N'visa', N'4171917765152889');

INSERT INTO paying_method
VALUES (289, N'americanexpress', N'337941811705770');

INSERT INTO paying_method
VALUES (289, N'americanexpress', N'374622351284152');

INSERT INTO paying_method
VALUES (290, N'americanexpress', N'374283732539523');

INSERT INTO paying_method
VALUES (290, N'americanexpress', N'374622629354720');

INSERT INTO paying_method
VALUES (290, N'americanexpress', N'377577856086469');

INSERT INTO paying_method
VALUES (290, N'mastercard', N'5100134970155490');

INSERT INTO paying_method
VALUES (290, N'visa', N'4041594082026');

INSERT INTO paying_method
VALUES (291, N'americanexpress', N'372301790522868');

INSERT INTO paying_method
VALUES (291, N'americanexpress', N'374283623495777');

INSERT INTO paying_method
VALUES (291, N'visa', N'4017959251885');

INSERT INTO paying_method
VALUES (291, N'visa', N'4602126929867');

INSERT INTO paying_method
VALUES (292, N'americanexpress', N'372301622352575');

INSERT INTO paying_method
VALUES (292, N'mastercard', N'5108753010186124');

INSERT INTO paying_method
VALUES (292, N'visa', N'4270943926176104');

INSERT INTO paying_method
VALUES (293, N'americanexpress', N'374283858892870');

INSERT INTO paying_method
VALUES (293, N'mastercard', N'5108753487381984');

INSERT INTO paying_method
VALUES (294, N'americanexpress', N'337941956315401');

INSERT INTO paying_method
VALUES (294, N'americanexpress', N'372301302301827');

INSERT INTO paying_method
VALUES (294, N'visa', N'4041591004296258');

INSERT INTO paying_method
VALUES (295, N'americanexpress', N'374622259460755');

INSERT INTO paying_method
VALUES (295, N'mastercard', N'5401137743814497');

INSERT INTO paying_method
VALUES (295, N'visa', N'4352551505702173');

INSERT INTO paying_method
VALUES (296, N'americanexpress', N'374283600749311');

INSERT INTO paying_method
VALUES (296, N'mastercard', N'5370666987532008');

INSERT INTO paying_method
VALUES (296, N'visa', N'4041378545024');

INSERT INTO paying_method
VALUES (297, N'americanexpress', N'370399972801292');

INSERT INTO paying_method
VALUES (297, N'mastercard', N'5048378638896723');

INSERT INTO paying_method
VALUES (297, N'visa', N'4041591789485860');

INSERT INTO paying_method
VALUES (298, N'americanexpress', N'374288449908705');

INSERT INTO paying_method
VALUES (298, N'mastercard', N'5002352909749584');

INSERT INTO paying_method
VALUES (298, N'mastercard', N'5007661844320185');

INSERT INTO paying_method
VALUES (298, N'mastercard', N'5518479129328225');

INSERT INTO paying_method
VALUES (298, N'visa', N'4041597944870656');

INSERT INTO paying_method
VALUES (299, N'americanexpress', N'337941905064258');

INSERT INTO paying_method
VALUES (299, N'americanexpress', N'374283400418554');

INSERT INTO paying_method
VALUES (300, N'mastercard', N'5104769232593917');

INSERT INTO paying_method
VALUES (300, N'visa', N'4017958581571');

INSERT INTO paying_method
VALUES (300, N'visa', N'4041373038382853');

INSERT INTO paying_method
VALUES (301, N'americanexpress', N'374622335539846');

INSERT INTO paying_method
VALUES (301, N'mastercard', N'5002359068099479');

INSERT INTO paying_method
VALUES (301, N'visa', N'4041376053377');

INSERT INTO paying_method
VALUES (302, N'mastercard', N'5010120174100498');

INSERT INTO paying_method
VALUES (302, N'visa', N'4017957684285');

INSERT INTO paying_method
VALUES (303, N'mastercard', N'5343252271596993');

INSERT INTO paying_method
VALUES (303, N'visa', N'4041592799951');

INSERT INTO paying_method
VALUES (304, N'americanexpress', N'374283745958306');

INSERT INTO paying_method
VALUES (304, N'mastercard', N'5010121910962324');

INSERT INTO paying_method
VALUES (304, N'visa', N'4041378403341681');

INSERT INTO paying_method
VALUES (304, N'visa', N'4041599766913879');

INSERT INTO paying_method
VALUES (305, N'americanexpress', N'337941340423846');

INSERT INTO paying_method
VALUES (305, N'americanexpress', N'374283518383732');

INSERT INTO paying_method
VALUES (305, N'visa', N'4017950349788603');

INSERT INTO paying_method
VALUES (306, N'mastercard', N'5007667770882528');

INSERT INTO paying_method
VALUES (306, N'mastercard', N'5100177125094361');

INSERT INTO paying_method
VALUES (306, N'visa', N'4370578732614564');

INSERT INTO paying_method
VALUES (307, N'americanexpress', N'374897661212933');

INSERT INTO paying_method
VALUES (307, N'visa', N'4041371025586');

INSERT INTO paying_method
VALUES (308, N'mastercard', N'5100133045531214');

INSERT INTO paying_method
VALUES (308, N'mastercard', N'5100171028583646');

INSERT INTO paying_method
VALUES (308, N'mastercard', N'5100176056657667');

INSERT INTO paying_method
VALUES (308, N'visa', N'4041077911120666');

INSERT INTO paying_method
VALUES (309, N'mastercard', N'5100173528596417');

INSERT INTO paying_method
VALUES (309, N'visa', N'4699132114070');

INSERT INTO paying_method
VALUES (310, N'mastercard', N'5002359271260074');

INSERT INTO paying_method
VALUES (310, N'visa', N'4041371934809631');

INSERT INTO paying_method
VALUES (310, N'visa', N'4041591484092');

INSERT INTO paying_method
VALUES (311, N'mastercard', N'5502716137516400');

INSERT INTO paying_method
VALUES (311, N'visa', N'4403029383983');

INSERT INTO paying_method
VALUES (312, N'americanexpress', N'372301939391092');

INSERT INTO paying_method
VALUES (312, N'americanexpress', N'374622492458632');

INSERT INTO paying_method
VALUES (313, N'mastercard', N'5100172356204169');

INSERT INTO paying_method
VALUES (313, N'mastercard', N'5560009886788431');

INSERT INTO paying_method
VALUES (313, N'visa', N'4041370202798');

INSERT INTO paying_method
VALUES (313, N'visa', N'4041378084750');

INSERT INTO paying_method
VALUES (313, N'visa', N'4548407655236');

INSERT INTO paying_method
VALUES (314, N'americanexpress', N'374283786210211');

INSERT INTO paying_method
VALUES (314, N'mastercard', N'5100136303671960');

INSERT INTO paying_method
VALUES (314, N'mastercard', N'5464023205390560');

INSERT INTO paying_method
VALUES (314, N'visa', N'4041372207209');

INSERT INTO paying_method
VALUES (315, N'americanexpress', N'372301829944471');

INSERT INTO paying_method
VALUES (315, N'mastercard', N'5187763969203311');

INSERT INTO paying_method
VALUES (315, N'mastercard', N'5491516529329922');

INSERT INTO paying_method
VALUES (316, N'americanexpress', N'374622735410689');

INSERT INTO paying_method
VALUES (316, N'visa', N'4017955420041483');

INSERT INTO paying_method
VALUES (317, N'americanexpress', N'374622983345934');

INSERT INTO paying_method
VALUES (317, N'americanexpress', N'378061549895833');

INSERT INTO paying_method
VALUES (317, N'visa', N'4041597153519');

INSERT INTO paying_method
VALUES (318, N'americanexpress', N'337941487825977');

INSERT INTO paying_method
VALUES (318, N'americanexpress', N'370175741280871');

INSERT INTO paying_method
VALUES (318, N'americanexpress', N'374283681119079');

INSERT INTO paying_method
VALUES (318, N'mastercard', N'5007664143549405');

INSERT INTO paying_method
VALUES (318, N'mastercard', N'5048371367189600');

INSERT INTO paying_method
VALUES (318, N'mastercard', N'5533543416457137');

INSERT INTO paying_method
VALUES (318, N'visa', N'4017958556086');

INSERT INTO paying_method
VALUES (319, N'mastercard', N'5100141557610680');

INSERT INTO paying_method
VALUES (319, N'mastercard', N'5100175043807021');

INSERT INTO paying_method
VALUES (319, N'mastercard', N'5559601406431402');

INSERT INTO paying_method
VALUES (319, N'visa', N'4041599245099');

INSERT INTO paying_method
VALUES (320, N'americanexpress', N'372301347699870');

INSERT INTO paying_method
VALUES (320, N'mastercard', N'5002358747467529');

INSERT INTO paying_method
VALUES (320, N'mastercard', N'5007665830471134');

INSERT INTO paying_method
VALUES (320, N'visa', N'4521635998832922');

INSERT INTO paying_method
VALUES (321, N'americanexpress', N'374622931057003');

INSERT INTO paying_method
VALUES (321, N'americanexpress', N'374622954020722');

INSERT INTO paying_method
VALUES (321, N'mastercard', N'5048370318198868');

INSERT INTO paying_method
VALUES (321, N'mastercard', N'5048372882570647');

INSERT INTO paying_method
VALUES (321, N'mastercard', N'5108751092059573');

INSERT INTO paying_method
VALUES (322, N'americanexpress', N'374283073831679');

INSERT INTO paying_method
VALUES (322, N'mastercard', N'5108754731317360');

INSERT INTO paying_method
VALUES (322, N'visa', N'4041373777065024');

INSERT INTO paying_method
VALUES (322, N'visa', N'4041378360689');

INSERT INTO paying_method
VALUES (323, N'americanexpress', N'373693101797422');

INSERT INTO paying_method
VALUES (323, N'mastercard', N'5108757406880521');

INSERT INTO paying_method
VALUES (323, N'visa', N'4838642585383');

INSERT INTO paying_method
VALUES (324, N'mastercard', N'5010122928408326');

INSERT INTO paying_method
VALUES (324, N'visa', N'4041596980813');

INSERT INTO paying_method
VALUES (325, N'americanexpress', N'342634916910246');

INSERT INTO paying_method
VALUES (325, N'americanexpress', N'372301148097209');

INSERT INTO paying_method
VALUES (325, N'mastercard', N'5164789452526030');

INSERT INTO paying_method
VALUES (325, N'visa', N'4041593841263384');

INSERT INTO paying_method
VALUES (326, N'visa', N'4017952720746861');

INSERT INTO paying_method
VALUES (326, N'visa', N'4041594935235239');

INSERT INTO paying_method
VALUES (327, N'mastercard', N'5171187331426996');

INSERT INTO paying_method
VALUES (327, N'visa', N'4017956722680');

INSERT INTO paying_method
VALUES (327, N'visa', N'4017959299579');

INSERT INTO paying_method
VALUES (327, N'visa', N'4041373255181');

INSERT INTO paying_method
VALUES (327, N'visa', N'4041373813948');

INSERT INTO paying_method
VALUES (328, N'visa', N'4041590358525239');

INSERT INTO paying_method
VALUES (328, N'visa', N'4041599477419133');

INSERT INTO paying_method
VALUES (329, N'mastercard', N'5304404237216508');

INSERT INTO paying_method
VALUES (329, N'visa', N'4017954632568');

INSERT INTO paying_method
VALUES (329, N'visa', N'4017956573604');

INSERT INTO paying_method
VALUES (330, N'americanexpress', N'374283254727746');

INSERT INTO paying_method
VALUES (330, N'visa', N'4041591665124302');

INSERT INTO paying_method
VALUES (330, N'visa', N'4041597553471523');

INSERT INTO paying_method
VALUES (331, N'americanexpress', N'378198976641643');

INSERT INTO paying_method
VALUES (331, N'visa', N'4041372514091');

INSERT INTO paying_method
VALUES (331, N'visa', N'4041594500342899');

INSERT INTO paying_method
VALUES (332, N'mastercard', N'5369706304586825');

INSERT INTO paying_method
VALUES (332, N'mastercard', N'5394278407255947');

INSERT INTO paying_method
VALUES (332, N'visa', N'4041370679165225');

INSERT INTO paying_method
VALUES (333, N'americanexpress', N'374288928917680');

INSERT INTO paying_method
VALUES (333, N'visa', N'4041378367443457');

INSERT INTO paying_method
VALUES (334, N'americanexpress', N'374288137089321');

INSERT INTO paying_method
VALUES (334, N'mastercard', N'5002359898302093');

INSERT INTO paying_method
VALUES (334, N'mastercard', N'5413224181418688');

INSERT INTO paying_method
VALUES (335, N'americanexpress', N'337941505307321');

INSERT INTO paying_method
VALUES (335, N'americanexpress', N'340741183217551');

INSERT INTO paying_method
VALUES (335, N'mastercard', N'5048371601252917');

INSERT INTO paying_method
VALUES (336, N'americanexpress', N'374288048423445');

INSERT INTO paying_method
VALUES (336, N'mastercard', N'5163523860417826');

INSERT INTO paying_method
VALUES (337, N'americanexpress', N'372301306738941');

INSERT INTO paying_method
VALUES (337, N'mastercard', N'5002350156241032');

INSERT INTO paying_method
VALUES (338, N'americanexpress', N'374283024970733');

INSERT INTO paying_method
VALUES (338, N'visa', N'4041595937474130');

INSERT INTO paying_method
VALUES (338, N'visa', N'4899085142702');

INSERT INTO paying_method
VALUES (339, N'americanexpress', N'374283649249299');

INSERT INTO paying_method
VALUES (339, N'americanexpress', N'378720733563271');

INSERT INTO paying_method
VALUES (339, N'mastercard', N'5100171552048800');

INSERT INTO paying_method
VALUES (340, N'americanexpress', N'374288917385402');

INSERT INTO paying_method
VALUES (340, N'mastercard', N'5002350128142854');

INSERT INTO paying_method
VALUES (340, N'mastercard', N'5010127876075506');

INSERT INTO paying_method
VALUES (340, N'mastercard', N'5108759474644474');

INSERT INTO paying_method
VALUES (340, N'mastercard', N'5232032545906515');

INSERT INTO paying_method
VALUES (341, N'americanexpress', N'372301316368747');

INSERT INTO paying_method
VALUES (341, N'americanexpress', N'372301875744924');

INSERT INTO paying_method
VALUES (341, N'visa', N'4041370424704880');

INSERT INTO paying_method
VALUES (341, N'visa', N'4041374023257');

INSERT INTO paying_method
VALUES (342, N'americanexpress', N'372301645555725');

INSERT INTO paying_method
VALUES (342, N'americanexpress', N'374622683722739');

INSERT INTO paying_method
VALUES (342, N'mastercard', N'5472431413874780');

INSERT INTO paying_method
VALUES (342, N'visa', N'4480645992645');

INSERT INTO paying_method
VALUES (343, N'americanexpress', N'347659622811110');

INSERT INTO paying_method
VALUES (343, N'americanexpress', N'374622691492127');

INSERT INTO paying_method
VALUES (343, N'mastercard', N'5460526542512906');

INSERT INTO paying_method
VALUES (344, N'americanexpress', N'344859116558085');

INSERT INTO paying_method
VALUES (344, N'americanexpress', N'374622023019770');

INSERT INTO paying_method
VALUES (344, N'visa', N'4334893643527');

INSERT INTO paying_method
VALUES (345, N'americanexpress', N'372301168865295');

INSERT INTO paying_method
VALUES (345, N'americanexpress', N'374288170757735');

INSERT INTO paying_method
VALUES (345, N'visa', N'4041594743882');

INSERT INTO paying_method
VALUES (345, N'visa', N'4446128220570959');

INSERT INTO paying_method
VALUES (346, N'americanexpress', N'372301093275511');

INSERT INTO paying_method
VALUES (346, N'mastercard', N'5100173599394080');

INSERT INTO paying_method
VALUES (346, N'mastercard', N'5347400495218722');

INSERT INTO paying_method
VALUES (347, N'americanexpress', N'374283249636176');

INSERT INTO paying_method
VALUES (347, N'americanexpress', N'374283708896873');

INSERT INTO paying_method
VALUES (347, N'mastercard', N'5547616074734478');

INSERT INTO paying_method
VALUES (347, N'visa', N'4871443806807');

INSERT INTO paying_method
VALUES (348, N'americanexpress', N'337941410614902');

INSERT INTO paying_method
VALUES (348, N'americanexpress', N'340925313452184');

INSERT INTO paying_method
VALUES (349, N'americanexpress', N'344667377082269');

INSERT INTO paying_method
VALUES (349, N'americanexpress', N'372301215084148');

INSERT INTO paying_method
VALUES (349, N'mastercard', N'5100176912218555');

INSERT INTO paying_method
VALUES (349, N'mastercard', N'5264509831768379');

INSERT INTO paying_method
VALUES (350, N'americanexpress', N'374283902667237');

INSERT INTO paying_method
VALUES (350, N'mastercard', N'5010127434483002');

INSERT INTO paying_method
VALUES (350, N'visa', N'4017957463466676');

INSERT INTO paying_method
VALUES (351, N'mastercard', N'5048376002920079');

INSERT INTO paying_method
VALUES (351, N'visa', N'4017954226916');

INSERT INTO paying_method
VALUES (352, N'americanexpress', N'343499909540643');

INSERT INTO paying_method
VALUES (352, N'mastercard', N'5010128670199484');

INSERT INTO paying_method
VALUES (352, N'visa', N'4041599077320806');

INSERT INTO paying_method
VALUES (353, N'americanexpress', N'374288748478277');

INSERT INTO paying_method
VALUES (353, N'mastercard', N'5108756108814077');

INSERT INTO paying_method
VALUES (353, N'visa', N'4025283358441');

INSERT INTO paying_method
VALUES (354, N'americanexpress', N'349655832502141');

INSERT INTO paying_method
VALUES (354, N'visa', N'4017956686703');

INSERT INTO paying_method
VALUES (355, N'americanexpress', N'374622966033523');

INSERT INTO paying_method
VALUES (355, N'mastercard', N'5108752095332090');

INSERT INTO paying_method
VALUES (355, N'mastercard', N'5224433866723564');

INSERT INTO paying_method
VALUES (355, N'visa', N'4448270165431');

INSERT INTO paying_method
VALUES (356, N'americanexpress', N'372301687876534');

INSERT INTO paying_method
VALUES (356, N'americanexpress', N'377398125990096');

INSERT INTO paying_method
VALUES (356, N'mastercard', N'5110225772400908');

INSERT INTO paying_method
VALUES (356, N'visa', N'4017958258857');

INSERT INTO paying_method
VALUES (357, N'americanexpress', N'374283129616322');

INSERT INTO paying_method
VALUES (357, N'mastercard', N'5229963296729000');

INSERT INTO paying_method
VALUES (357, N'mastercard', N'5568270955895539');

INSERT INTO paying_method
VALUES (357, N'visa', N'4017958186478717');

INSERT INTO paying_method
VALUES (357, N'visa', N'4041379347958');

INSERT INTO paying_method
VALUES (358, N'mastercard', N'5100178493320164');

INSERT INTO paying_method
VALUES (358, N'visa', N'4041375316221');

INSERT INTO paying_method
VALUES (358, N'visa', N'4041378235444');

INSERT INTO paying_method
VALUES (359, N'americanexpress', N'374283505033019');

INSERT INTO paying_method
VALUES (359, N'mastercard', N'5100136320571128');

INSERT INTO paying_method
VALUES (359, N'mastercard', N'5214326948308978');

INSERT INTO paying_method
VALUES (360, N'americanexpress', N'372301978943787');

INSERT INTO paying_method
VALUES (360, N'mastercard', N'5100178984123580');

INSERT INTO paying_method
VALUES (360, N'mastercard', N'5108751729748143');

INSERT INTO paying_method
VALUES (360, N'visa', N'4041593177010706');

INSERT INTO paying_method
VALUES (361, N'americanexpress', N'372301616798064');

INSERT INTO paying_method
VALUES (361, N'visa', N'4041593564754460');

INSERT INTO paying_method
VALUES (361, N'visa', N'4432293584950');

INSERT INTO paying_method
VALUES (362, N'americanexpress', N'373736529963439');

INSERT INTO paying_method
VALUES (362, N'mastercard', N'5007664196881317');

INSERT INTO paying_method
VALUES (362, N'mastercard', N'5108754204484028');

INSERT INTO paying_method
VALUES (362, N'mastercard', N'5266795737227879');

INSERT INTO paying_method
VALUES (362, N'visa', N'4017956396294296');

INSERT INTO paying_method
VALUES (363, N'americanexpress', N'374283263271066');

INSERT INTO paying_method
VALUES (363, N'mastercard', N'5234720368312443');

INSERT INTO paying_method
VALUES (364, N'americanexpress', N'374288051063708');

INSERT INTO paying_method
VALUES (364, N'visa', N'4041371207712157');

INSERT INTO paying_method
VALUES (365, N'americanexpress', N'342054095415331');

INSERT INTO paying_method
VALUES (365, N'americanexpress', N'374288908093395');

INSERT INTO paying_method
VALUES (365, N'visa', N'4041373662360');

INSERT INTO paying_method
VALUES (366, N'americanexpress', N'374288301749650');

INSERT INTO paying_method
VALUES (366, N'mastercard', N'5195910585985546');

INSERT INTO paying_method
VALUES (366, N'visa', N'4041591256938227');

INSERT INTO paying_method
VALUES (367, N'mastercard', N'5100141065853418');

INSERT INTO paying_method
VALUES (367, N'mastercard', N'5418144363182461');

INSERT INTO paying_method
VALUES (368, N'americanexpress', N'370266481073665');

INSERT INTO paying_method
VALUES (368, N'americanexpress', N'374283346485725');

INSERT INTO paying_method
VALUES (368, N'americanexpress', N'374622203805303');

INSERT INTO paying_method
VALUES (368, N'mastercard', N'5100179179907829');

INSERT INTO paying_method
VALUES (369, N'mastercard', N'5114393661074048');

INSERT INTO paying_method
VALUES (369, N'visa', N'4041597748506795');

INSERT INTO paying_method
VALUES (370, N'americanexpress', N'374283875026841');

INSERT INTO paying_method
VALUES (370, N'mastercard', N'5002352182484198');

INSERT INTO paying_method
VALUES (370, N'visa', N'4041372652396');

INSERT INTO paying_method
VALUES (371, N'mastercard', N'5100136653533034');

INSERT INTO paying_method
VALUES (371, N'visa', N'4041371678343');

INSERT INTO paying_method
VALUES (371, N'visa', N'4041374517909265');

INSERT INTO paying_method
VALUES (372, N'mastercard', N'5401499030801987');

INSERT INTO paying_method
VALUES (372, N'visa', N'4345514695924270');

INSERT INTO paying_method
VALUES (373, N'americanexpress', N'374622414735604');

INSERT INTO paying_method
VALUES (373, N'mastercard', N'5010122239744807');

INSERT INTO paying_method
VALUES (373, N'visa', N'4041592747182');

INSERT INTO paying_method
VALUES (373, N'visa', N'4041597468628');

INSERT INTO paying_method
VALUES (374, N'americanexpress', N'372301464340290');

INSERT INTO paying_method
VALUES (374, N'mastercard', N'5553695683764861');

INSERT INTO paying_method
VALUES (375, N'americanexpress', N'372301891939573');

INSERT INTO paying_method
VALUES (375, N'visa', N'4041378085583');

INSERT INTO paying_method
VALUES (376, N'mastercard', N'5220247953551488');

INSERT INTO paying_method
VALUES (376, N'visa', N'4130792084940');

INSERT INTO paying_method
VALUES (377, N'americanexpress', N'374288646554245');

INSERT INTO paying_method
VALUES (377, N'visa', N'4041372142570171');

INSERT INTO paying_method
VALUES (377, N'visa', N'4325971453808802');

INSERT INTO paying_method
VALUES (378, N'mastercard', N'5100143547752671');

INSERT INTO paying_method
VALUES (378, N'mastercard', N'5167103085295376');

INSERT INTO paying_method
VALUES (379, N'americanexpress', N'372095375477981');

INSERT INTO paying_method
VALUES (379, N'mastercard', N'5287200340080273');

INSERT INTO paying_method
VALUES (379, N'visa', N'4017959894064');

INSERT INTO paying_method
VALUES (380, N'americanexpress', N'337941503900598');

INSERT INTO paying_method
VALUES (380, N'visa', N'4041374876662');

INSERT INTO paying_method
VALUES (380, N'visa', N'4617328889586');

INSERT INTO paying_method
VALUES (381, N'americanexpress', N'345687294390727');

INSERT INTO paying_method
VALUES (381, N'americanexpress', N'374283457459980');

INSERT INTO paying_method
VALUES (381, N'mastercard', N'5007666577836208');

INSERT INTO paying_method
VALUES (382, N'mastercard', N'5108755569810053');

INSERT INTO paying_method
VALUES (382, N'visa', N'4041590988240126');

INSERT INTO paying_method
VALUES (383, N'mastercard', N'5100170126454072');

INSERT INTO paying_method
VALUES (383, N'mastercard', N'5500498983265042');

INSERT INTO paying_method
VALUES (383, N'visa', N'4041596117652149');

INSERT INTO paying_method
VALUES (384, N'americanexpress', N'348967536562656');

INSERT INTO paying_method
VALUES (384, N'americanexpress', N'370658732720195');

INSERT INTO paying_method
VALUES (384, N'mastercard', N'5010122543624869');

INSERT INTO paying_method
VALUES (384, N'mastercard', N'5100170391982773');

INSERT INTO paying_method
VALUES (384, N'visa', N'4840032977952653');

INSERT INTO paying_method
VALUES (385, N'visa', N'4041373317488470');

INSERT INTO paying_method
VALUES (385, N'visa', N'4041377832944');

INSERT INTO paying_method
VALUES (386, N'americanexpress', N'337941961103560');

INSERT INTO paying_method
VALUES (386, N'mastercard', N'5247163754182028');

INSERT INTO paying_method
VALUES (387, N'mastercard', N'5152587130251995');

INSERT INTO paying_method
VALUES (387, N'visa', N'4041597335546');

INSERT INTO paying_method
VALUES (388, N'mastercard', N'5002351879614109');

INSERT INTO paying_method
VALUES (388, N'mastercard', N'5010128796402671');

INSERT INTO paying_method
VALUES (388, N'mastercard', N'5154899333705257');

INSERT INTO paying_method
VALUES (388, N'mastercard', N'5497072996233456');

INSERT INTO paying_method
VALUES (388, N'visa', N'4041599572306532');

INSERT INTO paying_method
VALUES (389, N'americanexpress', N'372301911128561');

INSERT INTO paying_method
VALUES (389, N'mastercard', N'5466881527667256');

INSERT INTO paying_method
VALUES (389, N'visa', N'4041599006897');

INSERT INTO paying_method
VALUES (390, N'americanexpress', N'374622117220565');

INSERT INTO paying_method
VALUES (390, N'mastercard', N'5048373393894724');

INSERT INTO paying_method
VALUES (390, N'visa', N'4017955046545');

INSERT INTO paying_method
VALUES (390, N'visa', N'4811675089102');

INSERT INTO paying_method
VALUES (391, N'americanexpress', N'374288424225794');

INSERT INTO paying_method
VALUES (391, N'mastercard', N'5100133167478517');

INSERT INTO paying_method
VALUES (392, N'americanexpress', N'372301226897546');

INSERT INTO paying_method
VALUES (392, N'mastercard', N'5164055615364630');

INSERT INTO paying_method
VALUES (392, N'visa', N'4041372050534');

INSERT INTO paying_method
VALUES (393, N'americanexpress', N'372301646665572');

INSERT INTO paying_method
VALUES (393, N'mastercard', N'5122155576862712');

INSERT INTO paying_method
VALUES (394, N'americanexpress', N'374288651863150');

INSERT INTO paying_method
VALUES (394, N'mastercard', N'5117672910011472');

INSERT INTO paying_method
VALUES (395, N'americanexpress', N'372301646114886');

INSERT INTO paying_method
VALUES (395, N'mastercard', N'5151150110134334');

INSERT INTO paying_method
VALUES (396, N'americanexpress', N'373250381605799');

INSERT INTO paying_method
VALUES (396, N'visa', N'4041371343617');

INSERT INTO paying_method
VALUES (396, N'visa', N'4620152637222325');

INSERT INTO paying_method
VALUES (397, N'americanexpress', N'337941969264612');

INSERT INTO paying_method
VALUES (397, N'americanexpress', N'337941998168693');

INSERT INTO paying_method
VALUES (397, N'visa', N'4041375840592');

INSERT INTO paying_method
VALUES (397, N'visa', N'4041597521269');

INSERT INTO paying_method
VALUES (398, N'mastercard', N'5458503096400618');

INSERT INTO paying_method
VALUES (398, N'mastercard', N'5590160424625801');

INSERT INTO paying_method
VALUES (398, N'visa', N'4011094381522640');

INSERT INTO paying_method
VALUES (398, N'visa', N'4017954195459');

INSERT INTO paying_method
VALUES (399, N'mastercard', N'5175429403670648');

INSERT INTO paying_method
VALUES (399, N'mastercard', N'5389461440102600');

INSERT INTO paying_method
VALUES (399, N'mastercard', N'5480991536573494');

INSERT INTO paying_method
VALUES (400, N'americanexpress', N'374622610313966');

INSERT INTO paying_method
VALUES (400, N'mastercard', N'5010129969917206');

INSERT INTO paying_method
VALUES (401, N'mastercard', N'5326102275947398');

INSERT INTO paying_method
VALUES (401, N'visa', N'4041592187777');

INSERT INTO paying_method
VALUES (402, N'americanexpress', N'374283241987247');

INSERT INTO paying_method
VALUES (402, N'mastercard', N'5007661459194206');

INSERT INTO paying_method
VALUES (402, N'mastercard', N'5100144928102833');

INSERT INTO paying_method
VALUES (403, N'americanexpress', N'372301773593688');

INSERT INTO paying_method
VALUES (403, N'visa', N'4154169700383');

INSERT INTO paying_method
VALUES (404, N'mastercard', N'5132165414844200');

INSERT INTO paying_method
VALUES (404, N'visa', N'4017957008402');

INSERT INTO paying_method
VALUES (404, N'visa', N'4041590327996263');

INSERT INTO paying_method
VALUES (404, N'visa', N'4072323321947385');

INSERT INTO paying_method
VALUES (405, N'mastercard', N'5048378407840951');

INSERT INTO paying_method
VALUES (405, N'visa', N'4515779051419');

INSERT INTO paying_method
VALUES (405, N'visa', N'4663108583635');

INSERT INTO paying_method
VALUES (406, N'mastercard', N'5010126052635208');

INSERT INTO paying_method
VALUES (406, N'mastercard', N'5048378358496407');

INSERT INTO paying_method
VALUES (406, N'mastercard', N'5100144480202906');

INSERT INTO paying_method
VALUES (406, N'mastercard', N'5108752959165438');

INSERT INTO paying_method
VALUES (406, N'mastercard', N'5258830382248654');

INSERT INTO paying_method
VALUES (406, N'visa', N'4898846708614089');

INSERT INTO paying_method
VALUES (407, N'americanexpress', N'372301136465723');

INSERT INTO paying_method
VALUES (407, N'americanexpress', N'374622689285186');

INSERT INTO paying_method
VALUES (407, N'visa', N'4041371872123979');

INSERT INTO paying_method
VALUES (407, N'visa', N'4041375873705049');

INSERT INTO paying_method
VALUES (408, N'americanexpress', N'343882037452494');

INSERT INTO paying_method
VALUES (408, N'mastercard', N'5007660837081465');

INSERT INTO paying_method
VALUES (408, N'visa', N'4041592773147');

INSERT INTO paying_method
VALUES (409, N'americanexpress', N'337941286851240');

INSERT INTO paying_method
VALUES (409, N'mastercard', N'5007663691212945');

INSERT INTO paying_method
VALUES (409, N'visa', N'4017952907197276');

INSERT INTO paying_method
VALUES (409, N'visa', N'4017959417924');

INSERT INTO paying_method
VALUES (410, N'americanexpress', N'374283036445260');

INSERT INTO paying_method
VALUES (410, N'americanexpress', N'374622739056124');

INSERT INTO paying_method
VALUES (411, N'americanexpress', N'347281911393526');

INSERT INTO paying_method
VALUES (411, N'americanexpress', N'374622519119829');

INSERT INTO paying_method
VALUES (412, N'americanexpress', N'374283977426691');

INSERT INTO paying_method
VALUES (412, N'mastercard', N'5048376770551882');

INSERT INTO paying_method
VALUES (412, N'visa', N'4017950171199');

INSERT INTO paying_method
VALUES (413, N'visa', N'4017955165164094');

INSERT INTO paying_method
VALUES (413, N'visa', N'4299743745688363');

INSERT INTO paying_method
VALUES (414, N'visa', N'4041377645627');

INSERT INTO paying_method
VALUES (414, N'visa', N'4558938733368772');

INSERT INTO paying_method
VALUES (415, N'mastercard', N'5010129522020092');

INSERT INTO paying_method
VALUES (415, N'mastercard', N'5100145875789860');

INSERT INTO paying_method
VALUES (415, N'mastercard', N'5316690014544452');

INSERT INTO paying_method
VALUES (416, N'americanexpress', N'372301307728693');

INSERT INTO paying_method
VALUES (416, N'mastercard', N'5426219241077214');

INSERT INTO paying_method
VALUES (416, N'visa', N'4041596510271');

INSERT INTO paying_method
VALUES (417, N'americanexpress', N'378405526311910');

INSERT INTO paying_method
VALUES (417, N'mastercard', N'5100146024136953');

INSERT INTO paying_method
VALUES (417, N'mastercard', N'5100148918188314');

INSERT INTO paying_method
VALUES (417, N'mastercard', N'5436160580607419');

INSERT INTO paying_method
VALUES (417, N'visa', N'4041370694036');

INSERT INTO paying_method
VALUES (418, N'americanexpress', N'374283680644234');

INSERT INTO paying_method
VALUES (418, N'mastercard', N'5457184215911933');

INSERT INTO paying_method
VALUES (418, N'visa', N'4041371118464757');

INSERT INTO paying_method
VALUES (419, N'mastercard', N'5100137479482471');

INSERT INTO paying_method
VALUES (419, N'mastercard', N'5231797823717195');

INSERT INTO paying_method
VALUES (419, N'visa', N'4041597448653');

INSERT INTO paying_method
VALUES (420, N'americanexpress', N'372301064853163');

INSERT INTO paying_method
VALUES (420, N'mastercard', N'5486289735173693');

INSERT INTO paying_method
VALUES (420, N'visa', N'4057181187596533');

INSERT INTO paying_method
VALUES (421, N'americanexpress', N'337941871928536');

INSERT INTO paying_method
VALUES (421, N'americanexpress', N'349870330760519');

INSERT INTO paying_method
VALUES (421, N'americanexpress', N'375160283604394');

INSERT INTO paying_method
VALUES (421, N'visa', N'4041596046220620');

INSERT INTO paying_method
VALUES (422, N'americanexpress', N'342636057270264');

INSERT INTO paying_method
VALUES (422, N'americanexpress', N'374283545571002');

INSERT INTO paying_method
VALUES (422, N'visa', N'4183793865346');

INSERT INTO paying_method
VALUES (423, N'americanexpress', N'337941866495228');

INSERT INTO paying_method
VALUES (423, N'americanexpress', N'374288567100846');

INSERT INTO paying_method
VALUES (423, N'visa', N'4041377990549508');

INSERT INTO paying_method
VALUES (424, N'americanexpress', N'374288945403961');

INSERT INTO paying_method
VALUES (424, N'mastercard', N'5100178009095276');

INSERT INTO paying_method
VALUES (424, N'visa', N'4041372472325477');

INSERT INTO paying_method
VALUES (425, N'mastercard', N'5002351334881855');

INSERT INTO paying_method
VALUES (425, N'mastercard', N'5521949784358563');

INSERT INTO paying_method
VALUES (425, N'visa', N'4017957294861');

INSERT INTO paying_method
VALUES (425, N'visa', N'4041376258486411');

INSERT INTO paying_method
VALUES (426, N'americanexpress', N'340854255663915');

INSERT INTO paying_method
VALUES (426, N'americanexpress', N'374283044356061');

INSERT INTO paying_method
VALUES (426, N'visa', N'4041378316772');

INSERT INTO paying_method
VALUES (427, N'americanexpress', N'337941228847348');

INSERT INTO paying_method
VALUES (427, N'visa', N'4157056337623');

INSERT INTO paying_method
VALUES (428, N'americanexpress', N'371696268074875');

INSERT INTO paying_method
VALUES (428, N'visa', N'4506120435377');

INSERT INTO paying_method
VALUES (429, N'mastercard', N'5010126789992872');

INSERT INTO paying_method
VALUES (429, N'mastercard', N'5048377546308045');

INSERT INTO paying_method
VALUES (429, N'visa', N'4041598923894');

INSERT INTO paying_method
VALUES (430, N'americanexpress', N'343119346650611');

INSERT INTO paying_method
VALUES (430, N'visa', N'4041594515975');

INSERT INTO paying_method
VALUES (430, N'visa', N'4098642119572000');

INSERT INTO paying_method
VALUES (430, N'visa', N'4519547780128977');

INSERT INTO paying_method
VALUES (431, N'americanexpress', N'374622667437528');

INSERT INTO paying_method
VALUES (431, N'visa', N'4041590734360137');

INSERT INTO paying_method
VALUES (432, N'mastercard', N'5010121414747056');

INSERT INTO paying_method
VALUES (432, N'mastercard', N'5048376317378542');

INSERT INTO paying_method
VALUES (432, N'mastercard', N'5100146810775931');

INSERT INTO paying_method
VALUES (433, N'mastercard', N'5007668768812147');

INSERT INTO paying_method
VALUES (433, N'mastercard', N'5477112118609474');

INSERT INTO paying_method
VALUES (433, N'mastercard', N'5561459369569296');

INSERT INTO paying_method
VALUES (434, N'mastercard', N'5108753401118769');

INSERT INTO paying_method
VALUES (434, N'visa', N'4041595112791845');

INSERT INTO paying_method
VALUES (434, N'visa', N'4914685425876');

INSERT INTO paying_method
VALUES (435, N'mastercard', N'5100138567907247');

INSERT INTO paying_method
VALUES (435, N'mastercard', N'5108755308217867');

INSERT INTO paying_method
VALUES (435, N'mastercard', N'5167755390283619');

INSERT INTO paying_method
VALUES (436, N'mastercard', N'5100134094408981');

INSERT INTO paying_method
VALUES (436, N'visa', N'4017954103511');

INSERT INTO paying_method
VALUES (437, N'americanexpress', N'374622231251959');

INSERT INTO paying_method
VALUES (437, N'mastercard', N'5100146793581496');

INSERT INTO paying_method
VALUES (437, N'mastercard', N'5108757381060545');

INSERT INTO paying_method
VALUES (438, N'mastercard', N'5007660472457491');

INSERT INTO paying_method
VALUES (438, N'mastercard', N'5048374908373105');

INSERT INTO paying_method
VALUES (438, N'mastercard', N'5207465402989177');

INSERT INTO paying_method
VALUES (439, N'visa', N'4017959005997564');

INSERT INTO paying_method
VALUES (439, N'visa', N'4041374182112807');

INSERT INTO paying_method
VALUES (440, N'americanexpress', N'372301043003153');

INSERT INTO paying_method
VALUES (440, N'mastercard', N'5399566036295606');

INSERT INTO paying_method
VALUES (440, N'visa', N'4041599027557911');

INSERT INTO paying_method
VALUES (441, N'americanexpress', N'337941003399473');

INSERT INTO paying_method
VALUES (441, N'americanexpress', N'374283790199418');

INSERT INTO paying_method
VALUES (442, N'americanexpress', N'347421080786122');

INSERT INTO paying_method
VALUES (442, N'mastercard', N'5191203328782998');

INSERT INTO paying_method
VALUES (442, N'mastercard', N'5275741739731624');

INSERT INTO paying_method
VALUES (443, N'americanexpress', N'337941719664483');

INSERT INTO paying_method
VALUES (443, N'americanexpress', N'374288946232294');

INSERT INTO paying_method
VALUES (443, N'visa', N'4017954679549726');

INSERT INTO paying_method
VALUES (444, N'americanexpress', N'337941818625153');

INSERT INTO paying_method
VALUES (444, N'americanexpress', N'374622832172141');

INSERT INTO paying_method
VALUES (444, N'mastercard', N'5521250998800908');

INSERT INTO paying_method
VALUES (445, N'mastercard', N'5048379985457002');

INSERT INTO paying_method
VALUES (445, N'mastercard', N'5100147556577754');

INSERT INTO paying_method
VALUES (445, N'mastercard', N'5582840124231006');

INSERT INTO paying_method
VALUES (445, N'visa', N'4128215708137776');

INSERT INTO paying_method
VALUES (446, N'americanexpress', N'374288011765566');

INSERT INTO paying_method
VALUES (446, N'americanexpress', N'374288891889114');

INSERT INTO paying_method
VALUES (446, N'americanexpress', N'378497056028048');

INSERT INTO paying_method
VALUES (446, N'visa', N'4041379075336');

INSERT INTO paying_method
VALUES (446, N'visa', N'4646309679112');

INSERT INTO paying_method
VALUES (447, N'americanexpress', N'374288587784892');

INSERT INTO paying_method
VALUES (447, N'americanexpress', N'374622136964938');

INSERT INTO paying_method
VALUES (447, N'mastercard', N'5108751878698966');

INSERT INTO paying_method
VALUES (448, N'americanexpress', N'337941739046638');

INSERT INTO paying_method
VALUES (448, N'americanexpress', N'374283432468478');

INSERT INTO paying_method
VALUES (448, N'mastercard', N'5100178183569559');

INSERT INTO paying_method
VALUES (448, N'mastercard', N'5475820285536880');

INSERT INTO paying_method
VALUES (448, N'visa', N'4041590314640254');

INSERT INTO paying_method
VALUES (449, N'americanexpress', N'348508362025572');

INSERT INTO paying_method
VALUES (449, N'americanexpress', N'372301539415978');

INSERT INTO paying_method
VALUES (449, N'visa', N'4017958063649976');

INSERT INTO paying_method
VALUES (450, N'americanexpress', N'344117575881732');

INSERT INTO paying_method
VALUES (450, N'americanexpress', N'374288243499042');

INSERT INTO paying_method
VALUES (450, N'americanexpress', N'374622574930029');

INSERT INTO paying_method
VALUES (450, N'mastercard', N'5100144230368791');

INSERT INTO paying_method
VALUES (450, N'mastercard', N'5100174424854660');

INSERT INTO paying_method
VALUES (450, N'mastercard', N'5328263412925438');

INSERT INTO paying_method
VALUES (451, N'americanexpress', N'370005533592870');

INSERT INTO paying_method
VALUES (451, N'mastercard', N'5231438393817319');

INSERT INTO paying_method
VALUES (451, N'visa', N'4041591775788');

INSERT INTO paying_method
VALUES (452, N'americanexpress', N'373392103019824');

INSERT INTO paying_method
VALUES (452, N'visa', N'4041374297497');

INSERT INTO paying_method
VALUES (453, N'americanexpress', N'341176692483783');

INSERT INTO paying_method
VALUES (453, N'mastercard', N'5574838079438626');

INSERT INTO paying_method
VALUES (453, N'mastercard', N'5587456763186115');

INSERT INTO paying_method
VALUES (454, N'americanexpress', N'372301155014782');

INSERT INTO paying_method
VALUES (454, N'mastercard', N'5010123599160170');

INSERT INTO paying_method
VALUES (454, N'mastercard', N'5048379493003884');

INSERT INTO paying_method
VALUES (454, N'mastercard', N'5306846500424987');

INSERT INTO paying_method
VALUES (454, N'visa', N'4017959248481947');

INSERT INTO paying_method
VALUES (454, N'visa', N'4041370493413');

INSERT INTO paying_method
VALUES (454, N'visa', N'4737859181828980');

INSERT INTO paying_method
VALUES (455, N'americanexpress', N'372301975966500');

INSERT INTO paying_method
VALUES (455, N'americanexpress', N'374283265649541');

INSERT INTO paying_method
VALUES (455, N'americanexpress', N'374622105672868');

INSERT INTO paying_method
VALUES (455, N'mastercard', N'5414555781632155');

INSERT INTO paying_method
VALUES (456, N'americanexpress', N'337941428891591');

INSERT INTO paying_method
VALUES (456, N'mastercard', N'5048372262659036');

INSERT INTO paying_method
VALUES (456, N'visa', N'4886229207004');

INSERT INTO paying_method
VALUES (457, N'americanexpress', N'337941722601993');

INSERT INTO paying_method
VALUES (457, N'americanexpress', N'374283277837514');

INSERT INTO paying_method
VALUES (457, N'americanexpress', N'374622903474285');

INSERT INTO paying_method
VALUES (457, N'mastercard', N'5108752706093255');

INSERT INTO paying_method
VALUES (458, N'americanexpress', N'337941212723554');

INSERT INTO paying_method
VALUES (458, N'americanexpress', N'337941281893098');

INSERT INTO paying_method
VALUES (459, N'mastercard', N'5108756717808023');

INSERT INTO paying_method
VALUES (459, N'mastercard', N'5335048160364133');

INSERT INTO paying_method
VALUES (460, N'americanexpress', N'374288846800000');

INSERT INTO paying_method
VALUES (460, N'mastercard', N'5425690484103944');

INSERT INTO paying_method
VALUES (461, N'americanexpress', N'373947729152216');

INSERT INTO paying_method
VALUES (461, N'mastercard', N'5271322780625470');

INSERT INTO paying_method
VALUES (462, N'americanexpress', N'372301630427609');

INSERT INTO paying_method
VALUES (462, N'mastercard', N'5108759267831742');

INSERT INTO paying_method
VALUES (462, N'visa', N'4824607077400');

INSERT INTO paying_method
VALUES (463, N'americanexpress', N'372301117911760');

INSERT INTO paying_method
VALUES (463, N'mastercard', N'5010129829182876');

INSERT INTO paying_method
VALUES (463, N'mastercard', N'5508020778639108');

INSERT INTO paying_method
VALUES (464, N'americanexpress', N'372301015035613');

INSERT INTO paying_method
VALUES (464, N'mastercard', N'5002353468761473');

INSERT INTO paying_method
VALUES (464, N'mastercard', N'5002353607321254');

INSERT INTO paying_method
VALUES (465, N'mastercard', N'5283981392591416');

INSERT INTO paying_method
VALUES (465, N'visa', N'4929633245952');

INSERT INTO paying_method
VALUES (466, N'americanexpress', N'337941929301785');

INSERT INTO paying_method
VALUES (466, N'americanexpress', N'374622128976940');

INSERT INTO paying_method
VALUES (466, N'mastercard', N'5100143783633254');

INSERT INTO paying_method
VALUES (466, N'visa', N'4041370122913');

INSERT INTO paying_method
VALUES (466, N'visa', N'4041599512234166');

INSERT INTO paying_method
VALUES (467, N'americanexpress', N'374283019964766');

INSERT INTO paying_method
VALUES (467, N'visa', N'4017952963007');

INSERT INTO paying_method
VALUES (467, N'visa', N'4041372944579');

INSERT INTO paying_method
VALUES (468, N'americanexpress', N'374283632923082');

INSERT INTO paying_method
VALUES (468, N'mastercard', N'5007669640005090');

INSERT INTO paying_method
VALUES (468, N'mastercard', N'5010122616911094');

INSERT INTO paying_method
VALUES (468, N'mastercard', N'5010127738330719');

INSERT INTO paying_method
VALUES (469, N'americanexpress', N'340649378717188');

INSERT INTO paying_method
VALUES (469, N'americanexpress', N'372301039315785');

INSERT INTO paying_method
VALUES (469, N'americanexpress', N'374283094264082');

INSERT INTO paying_method
VALUES (470, N'americanexpress', N'372301091100620');

INSERT INTO paying_method
VALUES (470, N'americanexpress', N'374283607598125');

INSERT INTO paying_method
VALUES (470, N'visa', N'4435047688466216');

INSERT INTO paying_method
VALUES (471, N'mastercard', N'5543653222154105');

INSERT INTO paying_method
VALUES (471, N'visa', N'4017958372435');

INSERT INTO paying_method
VALUES (472, N'americanexpress', N'349362641489624');

INSERT INTO paying_method
VALUES (472, N'americanexpress', N'374622986744265');

INSERT INTO paying_method
VALUES (472, N'mastercard', N'5100140600359485');

INSERT INTO paying_method
VALUES (473, N'mastercard', N'5259820687783819');

INSERT INTO paying_method
VALUES (473, N'visa', N'4017956380218400');

INSERT INTO paying_method
VALUES (473, N'visa', N'4041370830911368');

INSERT INTO paying_method
VALUES (473, N'visa', N'4041597792589');

INSERT INTO paying_method
VALUES (474, N'americanexpress', N'371426517136873');

INSERT INTO paying_method
VALUES (474, N'americanexpress', N'374283272754029');

INSERT INTO paying_method
VALUES (474, N'mastercard', N'5010128215034139');

INSERT INTO paying_method
VALUES (474, N'visa', N'4041598747780');

INSERT INTO paying_method
VALUES (475, N'americanexpress', N'340843244508208');

INSERT INTO paying_method
VALUES (475, N'visa', N'4017956449607338');

INSERT INTO paying_method
VALUES (475, N'visa', N'4041370494585');

INSERT INTO paying_method
VALUES (475, N'visa', N'4244237134341');

INSERT INTO paying_method
VALUES (476, N'mastercard', N'5108751969131604');

INSERT INTO paying_method
VALUES (476, N'visa', N'4311253921580669');

INSERT INTO paying_method
VALUES (477, N'americanexpress', N'374622742683427');

INSERT INTO paying_method
VALUES (477, N'americanexpress', N'379639848614317');

INSERT INTO paying_method
VALUES (477, N'visa', N'4041371427311');

INSERT INTO paying_method
VALUES (478, N'americanexpress', N'372301572273573');

INSERT INTO paying_method
VALUES (478, N'americanexpress', N'374283623525276');

INSERT INTO paying_method
VALUES (478, N'visa', N'4041378456068199');

INSERT INTO paying_method
VALUES (479, N'mastercard', N'5002350224405718');

INSERT INTO paying_method
VALUES (479, N'visa', N'4977109731609');

INSERT INTO paying_method
VALUES (480, N'americanexpress', N'372301533861094');

INSERT INTO paying_method
VALUES (480, N'americanexpress', N'374283630571479');

INSERT INTO paying_method
VALUES (480, N'visa', N'4041372000702825');

INSERT INTO paying_method
VALUES (481, N'americanexpress', N'374288894589471');

INSERT INTO paying_method
VALUES (481, N'americanexpress', N'374622181232298');

INSERT INTO paying_method
VALUES (481, N'mastercard', N'5002354907921140');

INSERT INTO paying_method
VALUES (481, N'visa', N'4041376823126');

INSERT INTO paying_method
VALUES (481, N'visa', N'4904594124449829');

INSERT INTO paying_method
VALUES (482, N'americanexpress', N'372301877704728');

INSERT INTO paying_method
VALUES (482, N'americanexpress', N'374622781186282');

INSERT INTO paying_method
VALUES (482, N'americanexpress', N'379399808591092');

INSERT INTO paying_method
VALUES (483, N'americanexpress', N'374288019746790');

INSERT INTO paying_method
VALUES (483, N'mastercard', N'5010121409975852');

INSERT INTO paying_method
VALUES (483, N'mastercard', N'5184683199242710');

INSERT INTO paying_method
VALUES (484, N'mastercard', N'5002350640399990');

INSERT INTO paying_method
VALUES (484, N'visa', N'4041376266445607');

INSERT INTO paying_method
VALUES (484, N'visa', N'4041596552892937');

INSERT INTO paying_method
VALUES (485, N'americanexpress', N'374283857106256');

INSERT INTO paying_method
VALUES (485, N'mastercard', N'5100173391144709');

INSERT INTO paying_method
VALUES (485, N'visa', N'4017950625111');

INSERT INTO paying_method
VALUES (486, N'americanexpress', N'337941602635988');

INSERT INTO paying_method
VALUES (486, N'americanexpress', N'374283191230051');

INSERT INTO paying_method
VALUES (486, N'visa', N'4041595331030025');

INSERT INTO paying_method
VALUES (487, N'americanexpress', N'337941817483406');

INSERT INTO paying_method
VALUES (487, N'visa', N'4041378853151713');

INSERT INTO paying_method
VALUES (487, N'visa', N'4639326437275');

INSERT INTO paying_method
VALUES (488, N'americanexpress', N'372301894248121');

INSERT INTO paying_method
VALUES (488, N'americanexpress', N'374622673439799');

INSERT INTO paying_method
VALUES (488, N'mastercard', N'5048377409354581');

INSERT INTO paying_method
VALUES (488, N'visa', N'4041379133408');

INSERT INTO paying_method
VALUES (489, N'mastercard', N'5048372496668308');

INSERT INTO paying_method
VALUES (489, N'mastercard', N'5100140292325513');

INSERT INTO paying_method
VALUES (489, N'visa', N'4017955924584988');

INSERT INTO paying_method
VALUES (490, N'americanexpress', N'337941376324884');

INSERT INTO paying_method
VALUES (490, N'americanexpress', N'374283397752031');

INSERT INTO paying_method
VALUES (490, N'americanexpress', N'374468437901066');

INSERT INTO paying_method
VALUES (490, N'mastercard', N'5010120510374740');

INSERT INTO paying_method
VALUES (490, N'visa', N'4041370675865125');

INSERT INTO paying_method
VALUES (491, N'mastercard', N'5002357655302900');

INSERT INTO paying_method
VALUES (491, N'mastercard', N'5010122506928851');

INSERT INTO paying_method
VALUES (491, N'visa', N'4041376352956558');

INSERT INTO paying_method
VALUES (492, N'americanexpress', N'372301938167667');

INSERT INTO paying_method
VALUES (492, N'americanexpress', N'374288373390318');

INSERT INTO paying_method
VALUES (493, N'americanexpress', N'374622501165384');

INSERT INTO paying_method
VALUES (493, N'mastercard', N'5007661058608820');

INSERT INTO paying_method
VALUES (493, N'mastercard', N'5108757336973131');

INSERT INTO paying_method
VALUES (494, N'mastercard', N'5100135926052756');

INSERT INTO paying_method
VALUES (494, N'visa', N'4041378758857760');

INSERT INTO paying_method
VALUES (495, N'americanexpress', N'370700025661908');

INSERT INTO paying_method
VALUES (495, N'mastercard', N'5002352840073078');

INSERT INTO paying_method
VALUES (495, N'mastercard', N'5100136674731757');

INSERT INTO paying_method
VALUES (495, N'visa', N'4017957705599508');

INSERT INTO paying_method
VALUES (496, N'mastercard', N'5397870468660119');

INSERT INTO paying_method
VALUES (496, N'visa', N'4041599169110503');

INSERT INTO paying_method
VALUES (497, N'visa', N'4017952151663403');

INSERT INTO paying_method
VALUES (497, N'visa', N'4041371750787');

INSERT INTO paying_method
VALUES (497, N'visa', N'4041374226363');

INSERT INTO paying_method
VALUES (498, N'mastercard', N'5410913524774426');

INSERT INTO paying_method
VALUES (498, N'mastercard', N'5541271573867910');

INSERT INTO paying_method
VALUES (499, N'visa', N'4041597423435963');

INSERT INTO paying_method
VALUES (499, N'visa', N'4687743969214');

INSERT INTO paying_method
VALUES (500, N'mastercard', N'5108753374499071');

INSERT INTO paying_method
VALUES (500, N'visa', N'4503608967878632');

INSERT INTO paying_method
VALUES (501, N'mastercard', N'5314018463815037');

INSERT INTO paying_method
VALUES (501, N'visa', N'4017959207478108');

INSERT INTO paying_method
VALUES (502, N'americanexpress', N'372301269901510');

INSERT INTO paying_method
VALUES (502, N'mastercard', N'5506992223782737');

INSERT INTO paying_method
VALUES (503, N'mastercard', N'5048372653959706');

INSERT INTO paying_method
VALUES (503, N'mastercard', N'5334603540515845');

INSERT INTO paying_method
VALUES (504, N'americanexpress', N'337941175923332');

INSERT INTO paying_method
VALUES (504, N'mastercard', N'5100177806065318');

INSERT INTO paying_method
VALUES (505, N'mastercard', N'5002351465089260');

INSERT INTO paying_method
VALUES (505, N'visa', N'4499472428782198');

INSERT INTO paying_method
VALUES (506, N'americanexpress', N'374622242696812');

INSERT INTO paying_method
VALUES (506, N'visa', N'4041370128761');

INSERT INTO paying_method
VALUES (507, N'americanexpress', N'347616401017558');

INSERT INTO paying_method
VALUES (507, N'visa', N'4041594749367335');

INSERT INTO paying_method
VALUES (508, N'visa', N'4041370118721190');

INSERT INTO paying_method
VALUES (508, N'visa', N'4041377899729');

INSERT INTO paying_method
VALUES (509, N'americanexpress', N'373641965148794');

INSERT INTO paying_method
VALUES (509, N'mastercard', N'5389744223253033');

INSERT INTO paying_method
VALUES (510, N'americanexpress', N'372301584388963');

INSERT INTO paying_method
VALUES (510, N'visa', N'4041370306615774');

INSERT INTO paying_method
VALUES (511, N'americanexpress', N'337941103505029');

INSERT INTO paying_method
VALUES (511, N'visa', N'4984712550771069');

INSERT INTO paying_method
VALUES (512, N'americanexpress', N'337941657712781');

INSERT INTO paying_method
VALUES (512, N'visa', N'4041595435008133');

INSERT INTO paying_method
VALUES (513, N'americanexpress', N'374622976750348');

INSERT INTO paying_method
VALUES (513, N'visa', N'4352009464845368');

INSERT INTO paying_method
VALUES (514, N'americanexpress', N'377723586651749');

INSERT INTO paying_method
VALUES (514, N'mastercard', N'5191839101998267');

INSERT INTO paying_method
VALUES (515, N'americanexpress', N'372301123482079');

INSERT INTO paying_method
VALUES (515, N'visa', N'4041599948421973');

INSERT INTO paying_method
VALUES (516, N'americanexpress', N'373793603162248');

INSERT INTO paying_method
VALUES (516, N'mastercard', N'5010127327043152');

INSERT INTO paying_method
VALUES (517, N'americanexpress', N'342825536270314');

INSERT INTO paying_method
VALUES (517, N'americanexpress', N'374288830864111');

INSERT INTO paying_method
VALUES (518, N'americanexpress', N'372301538351034');

INSERT INTO paying_method
VALUES (518, N'mastercard', N'5002354611753391');

INSERT INTO paying_method
VALUES (519, N'mastercard', N'5125849207345595');

INSERT INTO paying_method
VALUES (519, N'mastercard', N'5573940131622097');

INSERT INTO paying_method
VALUES (520, N'mastercard', N'5100139241950959');

INSERT INTO paying_method
VALUES (520, N'mastercard', N'5512406919014802');

INSERT INTO paying_method
VALUES (521, N'visa', N'4041373278571');

INSERT INTO paying_method
VALUES (521, N'visa', N'4041597585694');

INSERT INTO paying_method
VALUES (522, N'mastercard', N'5257836746028378');

INSERT INTO paying_method
VALUES (522, N'visa', N'4603513487682614');

INSERT INTO paying_method
VALUES (523, N'mastercard', N'5010121315074659');

INSERT INTO paying_method
VALUES (523, N'visa', N'4041597776384');

INSERT INTO paying_method
VALUES (524, N'americanexpress', N'374283013816806');

INSERT INTO paying_method
VALUES (524, N'americanexpress', N'374288992068360');

INSERT INTO paying_method
VALUES (525, N'mastercard', N'5307339471897299');

INSERT INTO paying_method
VALUES (525, N'visa', N'4041597168722609');

INSERT INTO paying_method
VALUES (526, N'americanexpress', N'374622648718558');

INSERT INTO paying_method
VALUES (526, N'visa', N'4017953442151877');

INSERT INTO paying_method
VALUES (527, N'americanexpress', N'374622324429785');

INSERT INTO paying_method
VALUES (527, N'mastercard', N'5002358395814709');

INSERT INTO paying_method
VALUES (528, N'americanexpress', N'372301881566972');

INSERT INTO paying_method
VALUES (528, N'americanexpress', N'374622969016533');

INSERT INTO paying_method
VALUES (529, N'americanexpress', N'374283286016563');

INSERT INTO paying_method
VALUES (529, N'visa', N'4041598631439805');

INSERT INTO paying_method
VALUES (530, N'americanexpress', N'372301125799405');

INSERT INTO paying_method
VALUES (530, N'visa', N'4017952488724');

INSERT INTO paying_method
VALUES (531, N'mastercard', N'5002350941553857');

INSERT INTO paying_method
VALUES (531, N'mastercard', N'5307301094936151');

INSERT INTO paying_method
VALUES (532, N'mastercard', N'5100177998526879');

INSERT INTO paying_method
VALUES (532, N'visa', N'4789286383126152');

INSERT INTO paying_method
VALUES (533, N'visa', N'4017953626661246');

INSERT INTO paying_method
VALUES (533, N'visa', N'4041597517762');

INSERT INTO paying_method
VALUES (534, N'visa', N'4041374478346184');

INSERT INTO paying_method
VALUES (534, N'visa', N'4041376890033845');

INSERT INTO paying_method
VALUES (535, N'visa', N'4170907992397');

INSERT INTO paying_method
VALUES (535, N'visa', N'4533693504600008');

INSERT INTO paying_method
VALUES (536, N'americanexpress', N'372301659591533');

INSERT INTO paying_method
VALUES (536, N'mastercard', N'5145747611030728');

INSERT INTO paying_method
VALUES (537, N'visa', N'4002486047865');

INSERT INTO paying_method
VALUES (537, N'visa', N'4041599860168081');

INSERT INTO paying_method
VALUES (538, N'mastercard', N'5100131785113110');

INSERT INTO paying_method
VALUES (538, N'visa', N'4017950143461');

INSERT INTO paying_method
VALUES (539, N'mastercard', N'5100138399292990');

INSERT INTO paying_method
VALUES (539, N'visa', N'4017950815945075');

INSERT INTO paying_method
VALUES (540, N'americanexpress', N'374288287819048');

INSERT INTO paying_method
VALUES (540, N'mastercard', N'5108755025755868');

INSERT INTO paying_method
VALUES (541, N'mastercard', N'5148862523592991');

INSERT INTO paying_method
VALUES (541, N'mastercard', N'5532058386091734');

INSERT INTO paying_method
VALUES (542, N'mastercard', N'5100135366678177');

INSERT INTO paying_method
VALUES (542, N'visa', N'4017955624707350');

INSERT INTO paying_method
VALUES (543, N'visa', N'4017951631231518');

INSERT INTO paying_method
VALUES (543, N'visa', N'4234647772348767');

INSERT INTO paying_method
VALUES (544, N'mastercard', N'5100173179094688');

INSERT INTO paying_method
VALUES (544, N'mastercard', N'5174366869324438');

INSERT INTO paying_method
VALUES (545, N'visa', N'4017957470447842');

INSERT INTO paying_method
VALUES (545, N'visa', N'4041590374752999');

INSERT INTO paying_method
VALUES (546, N'visa', N'4041374006430203');

INSERT INTO paying_method
VALUES (546, N'visa', N'4041595197775770');

INSERT INTO paying_method
VALUES (547, N'americanexpress', N'374273768065394');

INSERT INTO paying_method
VALUES (547, N'mastercard', N'5007665180134415');

INSERT INTO paying_method
VALUES (548, N'visa', N'4041377936224');

INSERT INTO paying_method
VALUES (548, N'visa', N'4041598894780');

INSERT INTO paying_method
VALUES (549, N'americanexpress', N'374283711124198');

INSERT INTO paying_method
VALUES (549, N'americanexpress', N'374622067465491');

INSERT INTO paying_method
VALUES (550, N'mastercard', N'5007660327893841');

INSERT INTO paying_method
VALUES (550, N'mastercard', N'5100143748686058');

INSERT INTO paying_method
VALUES (551, N'mastercard', N'5108757559170662');

INSERT INTO paying_method
VALUES (551, N'visa', N'4017959949389');

INSERT INTO paying_method
VALUES (552, N'americanexpress', N'379225885520110');

INSERT INTO paying_method
VALUES (552, N'mastercard', N'5002356826191317');

INSERT INTO paying_method
VALUES (553, N'americanexpress', N'340558164486520');

INSERT INTO paying_method
VALUES (553, N'mastercard', N'5595864134174639');

INSERT INTO paying_method
VALUES (554, N'mastercard', N'5007663840788019');

INSERT INTO paying_method
VALUES (554, N'mastercard', N'5048372064739358');

INSERT INTO paying_method
VALUES (555, N'americanexpress', N'337941121551625');

INSERT INTO paying_method
VALUES (555, N'mastercard', N'5007667714093141');

INSERT INTO paying_method
VALUES (556, N'americanexpress', N'348717109737080');

INSERT INTO paying_method
VALUES (556, N'americanexpress', N'374622326955944');

INSERT INTO paying_method
VALUES (557, N'americanexpress', N'373098697915026');

INSERT INTO paying_method
VALUES (557, N'mastercard', N'5108759682477840');

INSERT INTO paying_method
VALUES (558, N'mastercard', N'5100174457933894');

INSERT INTO paying_method
VALUES (558, N'visa', N'4017950378382864');

INSERT INTO paying_method
VALUES (559, N'americanexpress', N'349482059535310');

INSERT INTO paying_method
VALUES (559, N'mastercard', N'5515385543795936');

INSERT INTO paying_method
VALUES (560, N'mastercard', N'5010124380490982');

INSERT INTO paying_method
VALUES (560, N'visa', N'4180410961569162');

INSERT INTO paying_method
VALUES (561, N'visa', N'4041599972569');

INSERT INTO paying_method
VALUES (561, N'visa', N'4296813626987144');

INSERT INTO paying_method
VALUES (562, N'americanexpress', N'345756490369924');

INSERT INTO paying_method
VALUES (562, N'visa', N'4017955844261');

INSERT INTO paying_method
VALUES (563, N'visa', N'4017958026163');

INSERT INTO paying_method
VALUES (563, N'visa', N'4041593228281');

INSERT INTO paying_method
VALUES (564, N'mastercard', N'5110451775694954');

INSERT INTO paying_method
VALUES (564, N'visa', N'4111494167290');

INSERT INTO paying_method
VALUES (565, N'americanexpress', N'374622664548202');

INSERT INTO paying_method
VALUES (565, N'visa', N'4041378011407');

INSERT INTO paying_method
VALUES (566, N'mastercard', N'5048371044593828');

INSERT INTO paying_method
VALUES (566, N'visa', N'4041594791949');

INSERT INTO paying_method
VALUES (567, N'americanexpress', N'337941964684384');

INSERT INTO paying_method
VALUES (567, N'americanexpress', N'349384248609420');

INSERT INTO paying_method
VALUES (568, N'americanexpress', N'374288600511611');

INSERT INTO paying_method
VALUES (568, N'mastercard', N'5481688476632020');

INSERT INTO paying_method
VALUES (569, N'visa', N'4017958598690925');

INSERT INTO paying_method
VALUES (569, N'visa', N'4041379698084853');

INSERT INTO paying_method
VALUES (570, N'mastercard', N'5108757827290813');

INSERT INTO paying_method
VALUES (570, N'visa', N'4017959157173');

INSERT INTO paying_method
VALUES (571, N'americanexpress', N'342373054663750');

INSERT INTO paying_method
VALUES (571, N'mastercard', N'5108752288019843');

INSERT INTO paying_method
VALUES (572, N'americanexpress', N'374283708394101');

INSERT INTO paying_method
VALUES (572, N'mastercard', N'5141142306265744');

INSERT INTO paying_method
VALUES (573, N'americanexpress', N'374288832268782');

INSERT INTO paying_method
VALUES (573, N'americanexpress', N'378997795562348');

INSERT INTO paying_method
VALUES (574, N'mastercard', N'5325025780082834');

INSERT INTO paying_method
VALUES (574, N'visa', N'4017959728098');

INSERT INTO paying_method
VALUES (575, N'americanexpress', N'374288408510856');

INSERT INTO paying_method
VALUES (575, N'visa', N'4041597019397');

INSERT INTO paying_method
VALUES (576, N'mastercard', N'5464516775942926');

INSERT INTO paying_method
VALUES (576, N'visa', N'4017952014744366');

INSERT INTO paying_method
VALUES (577, N'americanexpress', N'372576330385393');

INSERT INTO paying_method
VALUES (577, N'mastercard', N'5265737290758883');

INSERT INTO paying_method
VALUES (578, N'visa', N'4017955024633');

INSERT INTO paying_method
VALUES (578, N'visa', N'4707768242084440');

INSERT INTO paying_method
VALUES (579, N'americanexpress', N'337941173818203');

INSERT INTO paying_method
VALUES (579, N'mastercard', N'5100149489859341');

INSERT INTO paying_method
VALUES (580, N'americanexpress', N'342414097447049');

INSERT INTO paying_method
VALUES (580, N'visa', N'4041374375285');

INSERT INTO paying_method
VALUES (581, N'americanexpress', N'374283092467109');

INSERT INTO paying_method
VALUES (581, N'mastercard', N'5100170029316006');

INSERT INTO paying_method
VALUES (582, N'americanexpress', N'379868676549473');

INSERT INTO paying_method
VALUES (582, N'mastercard', N'5010124048375716');

INSERT INTO paying_method
VALUES (583, N'americanexpress', N'372301117203903');

INSERT INTO paying_method
VALUES (583, N'americanexpress', N'372301298225550');

INSERT INTO paying_method
VALUES (584, N'americanexpress', N'372301648008201');

INSERT INTO paying_method
VALUES (584, N'americanexpress', N'373182085059942');

INSERT INTO paying_method
VALUES (585, N'visa', N'4171184085068531');

INSERT INTO paying_method
VALUES (585, N'visa', N'4666037360177918');

INSERT INTO paying_method
VALUES (586, N'mastercard', N'5002357970227402');

INSERT INTO paying_method
VALUES (586, N'mastercard', N'5327970839693933');

INSERT INTO paying_method
VALUES (587, N'mastercard', N'5100142868674431');

INSERT INTO paying_method
VALUES (587, N'mastercard', N'5592078058923177');

INSERT INTO paying_method
VALUES (588, N'americanexpress', N'337941089042179');

INSERT INTO paying_method
VALUES (588, N'visa', N'4081914391897');

INSERT INTO paying_method
VALUES (589, N'mastercard', N'5521850774452699');

INSERT INTO paying_method
VALUES (589, N'visa', N'4041595218876');

INSERT INTO paying_method
VALUES (590, N'americanexpress', N'373565366187988');

INSERT INTO paying_method
VALUES (590, N'visa', N'4041376335212');

INSERT INTO paying_method
VALUES (591, N'americanexpress', N'374283981674104');

INSERT INTO paying_method
VALUES (591, N'visa', N'4041379598766');

INSERT INTO paying_method
VALUES (592, N'mastercard', N'5533153029775535');

INSERT INTO paying_method
VALUES (592, N'visa', N'4499961058879647');

INSERT INTO paying_method
VALUES (593, N'mastercard', N'5279636971460963');

INSERT INTO paying_method
VALUES (593, N'visa', N'4041591212618');

INSERT INTO paying_method
VALUES (594, N'americanexpress', N'341589122152234');

INSERT INTO paying_method
VALUES (594, N'visa', N'4041594946188');

INSERT INTO paying_method
VALUES (595, N'visa', N'4017958861303982');

INSERT INTO paying_method
VALUES (595, N'visa', N'4277882801152');

INSERT INTO paying_method
VALUES (596, N'americanexpress', N'372301518988029');

INSERT INTO paying_method
VALUES (596, N'mastercard', N'5108757449952634');

INSERT INTO paying_method
VALUES (597, N'mastercard', N'5108755075081645');

INSERT INTO paying_method
VALUES (597, N'visa', N'4041592717571979');

INSERT INTO paying_method
VALUES (598, N'mastercard', N'5100144136929605');

INSERT INTO paying_method
VALUES (598, N'mastercard', N'5257072119755146');

INSERT INTO paying_method
VALUES (599, N'mastercard', N'5109851240360276');

INSERT INTO paying_method
VALUES (599, N'mastercard', N'5527165215673280');

INSERT INTO paying_method
VALUES (600, N'mastercard', N'5108752015949965');

INSERT INTO paying_method
VALUES (600, N'mastercard', N'5459978141780769');

INSERT INTO paying_method
VALUES (601, N'americanexpress', N'341225186038627');

INSERT INTO paying_method
VALUES (601, N'americanexpress', N'370669376993907');

INSERT INTO paying_method
VALUES (602, N'mastercard', N'5340037510051295');

INSERT INTO paying_method
VALUES (602, N'visa', N'4663041399734627');

INSERT INTO paying_method
VALUES (603, N'americanexpress', N'342324399021378');

INSERT INTO paying_method
VALUES (603, N'visa', N'4041595377094');

INSERT INTO paying_method
VALUES (604, N'visa', N'4017954102380');

INSERT INTO paying_method
VALUES (604, N'visa', N'4052246284910');

INSERT INTO paying_method
VALUES (605, N'americanexpress', N'374288318464285');

INSERT INTO paying_method
VALUES (605, N'mastercard', N'5127363537219759');

INSERT INTO paying_method
VALUES (606, N'mastercard', N'5010129549428674');

INSERT INTO paying_method
VALUES (606, N'visa', N'4041592202630173');

INSERT INTO paying_method
VALUES (607, N'mastercard', N'5100136886093087');

INSERT INTO paying_method
VALUES (607, N'visa', N'4412445557154086');

INSERT INTO paying_method
VALUES (608, N'mastercard', N'5108757836879648');

INSERT INTO paying_method
VALUES (608, N'mastercard', N'5274760337837733');

INSERT INTO paying_method
VALUES (609, N'mastercard', N'5241054041805123');

INSERT INTO paying_method
VALUES (609, N'visa', N'4153505225712665');

INSERT INTO paying_method
VALUES (610, N'visa', N'4041372959379');

INSERT INTO paying_method
VALUES (610, N'visa', N'4289953819047');

INSERT INTO paying_method
VALUES (611, N'visa', N'4041595206228');

INSERT INTO paying_method
VALUES (611, N'visa', N'4041598017769874');

INSERT INTO paying_method
VALUES (612, N'mastercard', N'5007668770850127');

INSERT INTO paying_method
VALUES (612, N'visa', N'4017958693426');

INSERT INTO paying_method
VALUES (613, N'americanexpress', N'344058360953676');

INSERT INTO paying_method
VALUES (613, N'visa', N'4017953320389');

INSERT INTO paying_method
VALUES (614, N'americanexpress', N'337941318143087');

INSERT INTO paying_method
VALUES (614, N'mastercard', N'5007661848099462');

INSERT INTO paying_method
VALUES (615, N'americanexpress', N'337941380313329');

INSERT INTO paying_method
VALUES (615, N'mastercard', N'5007665385412582');

INSERT INTO paying_method
VALUES (616, N'americanexpress', N'337941020071030');

INSERT INTO paying_method
VALUES (616, N'mastercard', N'5100178300749191');

INSERT INTO paying_method
VALUES (617, N'visa', N'4041372825451384');

INSERT INTO paying_method
VALUES (617, N'visa', N'4088219097566');

INSERT INTO paying_method
VALUES (618, N'mastercard', N'5010126495769853');

INSERT INTO paying_method
VALUES (618, N'mastercard', N'5561204907243297');

INSERT INTO paying_method
VALUES (619, N'mastercard', N'5002351634262715');

INSERT INTO paying_method
VALUES (619, N'visa', N'4017956050272');

INSERT INTO paying_method
VALUES (620, N'americanexpress', N'375666637543708');

INSERT INTO paying_method
VALUES (620, N'americanexpress', N'375831979406647');

INSERT INTO paying_method
VALUES (621, N'americanexpress', N'342781307803231');

INSERT INTO paying_method
VALUES (621, N'mastercard', N'5100170872025597');

INSERT INTO paying_method
VALUES (622, N'mastercard', N'5100132632801295');

INSERT INTO paying_method
VALUES (622, N'mastercard', N'5111282500676886');

INSERT INTO paying_method
VALUES (623, N'americanexpress', N'374283954432662');

INSERT INTO paying_method
VALUES (623, N'mastercard', N'5100140665093219');

INSERT INTO paying_method
VALUES (624, N'americanexpress', N'376829232268050');

INSERT INTO paying_method
VALUES (624, N'mastercard', N'5480981446426982');

INSERT INTO paying_method
VALUES (625, N'mastercard', N'5048374267540161');

INSERT INTO paying_method
VALUES (625, N'mastercard', N'5100139569251634');

INSERT INTO paying_method
VALUES (626, N'americanexpress', N'337941661244797');

INSERT INTO paying_method
VALUES (626, N'americanexpress', N'347309668862458');

INSERT INTO paying_method
VALUES (627, N'americanexpress', N'348830652781601');

INSERT INTO paying_method
VALUES (627, N'visa', N'4017950544866');

INSERT INTO paying_method
VALUES (628, N'americanexpress', N'374288561278549');

INSERT INTO paying_method
VALUES (628, N'visa', N'4752893491714');

INSERT INTO paying_method
VALUES (629, N'mastercard', N'5100138447310729');

INSERT INTO paying_method
VALUES (629, N'mastercard', N'5108751518975907');

INSERT INTO paying_method
VALUES (630, N'americanexpress', N'374622628326083');

INSERT INTO paying_method
VALUES (630, N'americanexpress', N'374622695526268');

INSERT INTO paying_method
VALUES (631, N'americanexpress', N'374111589283038');

INSERT INTO paying_method
VALUES (631, N'visa', N'4041599800201919');

INSERT INTO paying_method
VALUES (632, N'americanexpress', N'378429471380225');

INSERT INTO paying_method
VALUES (632, N'visa', N'4467611938953603');

INSERT INTO paying_method
VALUES (633, N'americanexpress', N'378724665122122');

INSERT INTO paying_method
VALUES (633, N'visa', N'4465405682999');

INSERT INTO paying_method
VALUES (634, N'mastercard', N'5100146998524358');

INSERT INTO paying_method
VALUES (634, N'visa', N'4041598136139082');

INSERT INTO paying_method
VALUES (635, N'mastercard', N'5007669270992443');

INSERT INTO paying_method
VALUES (635, N'visa', N'4540556246784');

INSERT INTO paying_method
VALUES (636, N'mastercard', N'5100146787045219');

INSERT INTO paying_method
VALUES (636, N'visa', N'4041593479711829');

INSERT INTO paying_method
VALUES (637, N'mastercard', N'5100138217984026');

INSERT INTO paying_method
VALUES (637, N'visa', N'4913967490879283');

INSERT INTO paying_method
VALUES (638, N'visa', N'4017959051210');

INSERT INTO paying_method
VALUES (638, N'visa', N'4041598670812383');

INSERT INTO paying_method
VALUES (639, N'mastercard', N'5010127380992857');

INSERT INTO paying_method
VALUES (639, N'mastercard', N'5501334992174652');

INSERT INTO paying_method
VALUES (640, N'visa', N'4017952206575875');

INSERT INTO paying_method
VALUES (640, N'visa', N'4017959294570304');

INSERT INTO paying_method
VALUES (641, N'americanexpress', N'374622539905058');

INSERT INTO paying_method
VALUES (641, N'mastercard', N'5522959256688388');

INSERT INTO paying_method
VALUES (642, N'americanexpress', N'374622770689429');

INSERT INTO paying_method
VALUES (642, N'visa', N'4017957007810843');

INSERT INTO paying_method
VALUES (643, N'mastercard', N'5002354667329583');

INSERT INTO paying_method
VALUES (643, N'visa', N'4041596489642868');

INSERT INTO paying_method
VALUES (644, N'visa', N'4041595283250027');

INSERT INTO paying_method
VALUES (644, N'visa', N'4821135462443');

INSERT INTO paying_method
VALUES (645, N'visa', N'4017957951980139');

INSERT INTO paying_method
VALUES (645, N'visa', N'4125298047429958');

INSERT INTO paying_method
VALUES (646, N'visa', N'4041371082298');

INSERT INTO paying_method
VALUES (646, N'visa', N'4041372218156');

INSERT INTO paying_method
VALUES (647, N'visa', N'4017957922826');

INSERT INTO paying_method
VALUES (647, N'visa', N'4017959490756');

INSERT INTO paying_method
VALUES (648, N'americanexpress', N'337941194727805');

INSERT INTO paying_method
VALUES (648, N'americanexpress', N'374283086162039');

INSERT INTO paying_method
VALUES (649, N'americanexpress', N'337941036554664');

INSERT INTO paying_method
VALUES (649, N'americanexpress', N'342225353878598');

INSERT INTO paying_method
VALUES (650, N'americanexpress', N'337941282498574');

INSERT INTO paying_method
VALUES (650, N'visa', N'4041597231827633');

INSERT INTO paying_method
VALUES (651, N'visa', N'4017959363409');

INSERT INTO paying_method
VALUES (651, N'visa', N'4041371400622880');

INSERT INTO paying_method
VALUES (652, N'americanexpress', N'347914516247131');

INSERT INTO paying_method
VALUES (652, N'visa', N'4472864439887');

INSERT INTO paying_method
VALUES (653, N'americanexpress', N'374622100381127');

INSERT INTO paying_method
VALUES (653, N'visa', N'4041372038061202');

INSERT INTO paying_method
VALUES (654, N'americanexpress', N'376026369781670');

INSERT INTO paying_method
VALUES (654, N'mastercard', N'5317098704608778');

INSERT INTO paying_method
VALUES (655, N'americanexpress', N'337941997624217');

INSERT INTO paying_method
VALUES (655, N'mastercard', N'5007669448577019');

INSERT INTO paying_method
VALUES (656, N'visa', N'4017959572546');

INSERT INTO paying_method
VALUES (656, N'visa', N'4041372715430928');

INSERT INTO paying_method
VALUES (657, N'americanexpress', N'349117215159643');

INSERT INTO paying_method
VALUES (657, N'americanexpress', N'374288236082813');

INSERT INTO paying_method
VALUES (658, N'americanexpress', N'372301431182544');

INSERT INTO paying_method
VALUES (658, N'visa', N'4456588990242');

INSERT INTO paying_method
VALUES (659, N'americanexpress', N'374283275179745');

INSERT INTO paying_method
VALUES (659, N'visa', N'4041598234490650');

INSERT INTO paying_method
VALUES (660, N'americanexpress', N'374288120587547');

INSERT INTO paying_method
VALUES (660, N'americanexpress', N'374288245175319');

INSERT INTO paying_method
VALUES (661, N'americanexpress', N'344466666144959');

INSERT INTO paying_method
VALUES (661, N'visa', N'4041370136624');

INSERT INTO paying_method
VALUES (662, N'americanexpress', N'348570791153698');

INSERT INTO paying_method
VALUES (662, N'mastercard', N'5100137411506163');

INSERT INTO paying_method
VALUES (663, N'mastercard', N'5210098684734162');

INSERT INTO paying_method
VALUES (663, N'visa', N'4017955349759322');

INSERT INTO paying_method
VALUES (664, N'americanexpress', N'372301050629411');

INSERT INTO paying_method
VALUES (664, N'visa', N'4017954916482');

INSERT INTO paying_method
VALUES (665, N'americanexpress', N'337941123392937');

INSERT INTO paying_method
VALUES (665, N'mastercard', N'5591032649745186');

INSERT INTO paying_method
VALUES (666, N'mastercard', N'5002351095109405');

INSERT INTO paying_method
VALUES (666, N'visa', N'4041597054495088');

INSERT INTO paying_method
VALUES (667, N'visa', N'4017957456612260');

INSERT INTO paying_method
VALUES (667, N'visa', N'4041596093536506');

INSERT INTO paying_method
VALUES (668, N'mastercard', N'5002351222142444');

INSERT INTO paying_method
VALUES (668, N'visa', N'4017958297320238');

INSERT INTO paying_method
VALUES (669, N'mastercard', N'5201759299245974');

INSERT INTO paying_method
VALUES (669, N'visa', N'4041371836315422');

INSERT INTO paying_method
VALUES (670, N'mastercard', N'5010127794626646');

INSERT INTO paying_method
VALUES (670, N'mastercard', N'5048370512956202');

INSERT INTO paying_method
VALUES (671, N'visa', N'4041376040770');

INSERT INTO paying_method
VALUES (671, N'visa', N'4041592763240925');

INSERT INTO paying_method
VALUES (672, N'americanexpress', N'374288366386109');

INSERT INTO paying_method
VALUES (672, N'visa', N'4041371043404902');

INSERT INTO paying_method
VALUES (673, N'americanexpress', N'337941529633215');

INSERT INTO paying_method
VALUES (673, N'visa', N'4070092613093818');

INSERT INTO paying_method
VALUES (674, N'americanexpress', N'374283265801589');

INSERT INTO paying_method
VALUES (674, N'mastercard', N'5007661516032910');

INSERT INTO paying_method
VALUES (675, N'americanexpress', N'337941704289817');

INSERT INTO paying_method
VALUES (675, N'visa', N'4041599814099630');

INSERT INTO paying_method
VALUES (676, N'americanexpress', N'372301391097666');

INSERT INTO paying_method
VALUES (676, N'visa', N'4017950545616');

INSERT INTO paying_method
VALUES (677, N'mastercard', N'5227165963806010');

INSERT INTO paying_method
VALUES (677, N'mastercard', N'5228425591032143');

INSERT INTO paying_method
VALUES (678, N'americanexpress', N'374622049787038');

INSERT INTO paying_method
VALUES (678, N'visa', N'4041592289605205');

INSERT INTO paying_method
VALUES (679, N'americanexpress', N'372301898394285');

INSERT INTO paying_method
VALUES (679, N'mastercard', N'5100146564232261');

INSERT INTO paying_method
VALUES (680, N'americanexpress', N'374283394479109');

INSERT INTO paying_method
VALUES (680, N'mastercard', N'5100175487482463');

INSERT INTO paying_method
VALUES (681, N'americanexpress', N'344133134359060');

INSERT INTO paying_method
VALUES (681, N'americanexpress', N'374283994202216');

INSERT INTO paying_method
VALUES (682, N'americanexpress', N'346250178488254');

INSERT INTO paying_method
VALUES (682, N'visa', N'4017958020018');

INSERT INTO paying_method
VALUES (683, N'americanexpress', N'374283051129716');

INSERT INTO paying_method
VALUES (683, N'mastercard', N'5002350647484563');

INSERT INTO paying_method
VALUES (684, N'americanexpress', N'374622183840395');

INSERT INTO paying_method
VALUES (684, N'mastercard', N'5369810621551882');

INSERT INTO paying_method
VALUES (685, N'mastercard', N'5108754072019104');

INSERT INTO paying_method
VALUES (685, N'mastercard', N'5290446019256869');

INSERT INTO paying_method
VALUES (686, N'mastercard', N'5002354579531854');

INSERT INTO paying_method
VALUES (686, N'visa', N'4041596604777367');

INSERT INTO paying_method
VALUES (687, N'mastercard', N'5002353227399615');

INSERT INTO paying_method
VALUES (687, N'visa', N'4017951584762');

INSERT INTO paying_method
VALUES (688, N'visa', N'4041596321349664');

INSERT INTO paying_method
VALUES (688, N'visa', N'4189474014531703');

INSERT INTO paying_method
VALUES (689, N'mastercard', N'5389273673729805');

INSERT INTO paying_method
VALUES (689, N'visa', N'4041376373338');

INSERT INTO paying_method
VALUES (690, N'americanexpress', N'341754535378129');

INSERT INTO paying_method
VALUES (690, N'mastercard', N'5365785256785167');

INSERT INTO paying_method
VALUES (691, N'americanexpress', N'370523642045648');

INSERT INTO paying_method
VALUES (691, N'visa', N'4041370558173');

INSERT INTO paying_method
VALUES (692, N'mastercard', N'5272942862743070');

INSERT INTO paying_method
VALUES (692, N'visa', N'4017954081766');

INSERT INTO paying_method
VALUES (693, N'americanexpress', N'374283904388576');

INSERT INTO paying_method
VALUES (693, N'mastercard', N'5100177798497347');

INSERT INTO paying_method
VALUES (694, N'visa', N'4041593451206');

INSERT INTO paying_method
VALUES (694, N'visa', N'4086932212967');

INSERT INTO paying_method
VALUES (695, N'mastercard', N'5108752366142509');

INSERT INTO paying_method
VALUES (695, N'visa', N'4191931106907998');

INSERT INTO paying_method
VALUES (696, N'americanexpress', N'370147725066519');

INSERT INTO paying_method
VALUES (696, N'visa', N'4749174111482');

INSERT INTO paying_method
VALUES (697, N'visa', N'4160154099409057');

INSERT INTO paying_method
VALUES (697, N'visa', N'4612421465780');

INSERT INTO paying_method
VALUES (698, N'americanexpress', N'374283894226539');

INSERT INTO paying_method
VALUES (698, N'mastercard', N'5100148542166686');

INSERT INTO paying_method
VALUES (699, N'americanexpress', N'372301706452861');

INSERT INTO paying_method
VALUES (699, N'visa', N'4041373122195716');

INSERT INTO paying_method
VALUES (700, N'mastercard', N'5100177675794006');

INSERT INTO paying_method
VALUES (700, N'visa', N'4041371789272');

INSERT INTO paying_method
VALUES (701, N'americanexpress', N'346593871539679');

INSERT INTO paying_method
VALUES (702, N'mastercard', N'5108758121102928');

INSERT INTO paying_method
VALUES (703, N'visa', N'4881504644350123');

INSERT INTO paying_method
VALUES (704, N'mastercard', N'5100141386490486');

INSERT INTO paying_method
VALUES (705, N'mastercard', N'5010129596655088');

INSERT INTO paying_method
VALUES (706, N'visa', N'4041594411761');

INSERT INTO paying_method
VALUES (707, N'americanexpress', N'374622469808405');

INSERT INTO paying_method
VALUES (708, N'visa', N'4618077484284017');

INSERT INTO paying_method
VALUES (709, N'visa', N'4461419107947232');

INSERT INTO paying_method
VALUES (710, N'mastercard', N'5518995796823172');

INSERT INTO paying_method
VALUES (711, N'americanexpress', N'372301837944273');

INSERT INTO paying_method
VALUES (712, N'mastercard', N'5385458436727402');

INSERT INTO paying_method
VALUES (713, N'mastercard', N'5002358791664682');

INSERT INTO paying_method
VALUES (714, N'visa', N'4041372799148');

INSERT INTO paying_method
VALUES (715, N'visa', N'4041599726295490');

INSERT INTO paying_method
VALUES (716, N'mastercard', N'5002350804730469');

INSERT INTO paying_method
VALUES (717, N'mastercard', N'5048373008061552');

INSERT INTO paying_method
VALUES (718, N'americanexpress', N'337941978409729');

INSERT INTO paying_method
VALUES (719, N'visa', N'4041374095918837');

INSERT INTO paying_method
VALUES (720, N'americanexpress', N'374622154621667');

INSERT INTO paying_method
VALUES (721, N'mastercard', N'5048371966884494');

INSERT INTO paying_method
VALUES (722, N'americanexpress', N'372708048601155');

INSERT INTO paying_method
VALUES (723, N'americanexpress', N'374283314957739');

INSERT INTO paying_method
VALUES (724, N'americanexpress', N'372301238096806');

INSERT INTO paying_method
VALUES (725, N'visa', N'4041372702282811');

INSERT INTO paying_method
VALUES (726, N'mastercard', N'5474642294414938');

INSERT INTO paying_method
VALUES (727, N'visa', N'4821060119281');

INSERT INTO paying_method
VALUES (728, N'visa', N'4041598845690755');

INSERT INTO paying_method
VALUES (729, N'mastercard', N'5100131618193438');

INSERT INTO paying_method
VALUES (730, N'visa', N'4552807305004');

INSERT INTO paying_method
VALUES (731, N'mastercard', N'5002356583492296');

INSERT INTO paying_method
VALUES (732, N'americanexpress', N'370634667397986');

INSERT INTO paying_method
VALUES (733, N'mastercard', N'5581253583663266');

INSERT INTO paying_method
VALUES (734, N'mastercard', N'5010125598522466');

INSERT INTO paying_method
VALUES (735, N'visa', N'4041375776976648');

INSERT INTO paying_method
VALUES (736, N'visa', N'4041373676261');

INSERT INTO paying_method
VALUES (737, N'americanexpress', N'374622924514457');

INSERT INTO paying_method
VALUES (738, N'mastercard', N'5002353726811557');

INSERT INTO paying_method
VALUES (739, N'mastercard', N'5343564145384376');

INSERT INTO paying_method
VALUES (740, N'visa', N'4017959631375');

INSERT INTO paying_method
VALUES (741, N'mastercard', N'5007668604146684');

INSERT INTO paying_method
VALUES (742, N'mastercard', N'5048373698890625');

INSERT INTO paying_method
VALUES (743, N'visa', N'4405166551652581');

INSERT INTO paying_method
VALUES (744, N'americanexpress', N'374288730271409');

INSERT INTO paying_method
VALUES (745, N'americanexpress', N'371590892112898');

INSERT INTO paying_method
VALUES (746, N'mastercard', N'5010124229095612');

INSERT INTO paying_method
VALUES (747, N'visa', N'4724007411227');

INSERT INTO paying_method
VALUES (748, N'americanexpress', N'374288281029305');

INSERT INTO paying_method
VALUES (749, N'visa', N'4017954446381');

INSERT INTO paying_method
VALUES (750, N'americanexpress', N'374288868202705');

INSERT INTO paying_method
VALUES (751, N'visa', N'4017957379183');

INSERT INTO paying_method
VALUES (752, N'americanexpress', N'374283374130185');

INSERT INTO paying_method
VALUES (753, N'mastercard', N'5100143574233520');

INSERT INTO paying_method
VALUES (754, N'mastercard', N'5515458857152745');

INSERT INTO paying_method
VALUES (755, N'mastercard', N'5007661724227096');

INSERT INTO paying_method
VALUES (756, N'mastercard', N'5545945661537891');

INSERT INTO paying_method
VALUES (757, N'americanexpress', N'374622610960089');

INSERT INTO paying_method
VALUES (758, N'americanexpress', N'374288307096999');

INSERT INTO paying_method
VALUES (759, N'americanexpress', N'345120808048177');

INSERT INTO paying_method
VALUES (760, N'mastercard', N'5340942487947310');

INSERT INTO paying_method
VALUES (761, N'americanexpress', N'374288641742589');

INSERT INTO paying_method
VALUES (762, N'visa', N'4017956573750896');

INSERT INTO paying_method
VALUES (763, N'americanexpress', N'340817917801991');

INSERT INTO paying_method
VALUES (764, N'mastercard', N'5503198083056898');

INSERT INTO paying_method
VALUES (765, N'mastercard', N'5524612820570875');

INSERT INTO paying_method
VALUES (766, N'visa', N'4451392016234111');

INSERT INTO paying_method
VALUES (767, N'americanexpress', N'375014106631086');

INSERT INTO paying_method
VALUES (768, N'visa', N'4041375870781241');

INSERT INTO paying_method
VALUES (769, N'americanexpress', N'373481906003109');

INSERT INTO paying_method
VALUES (770, N'visa', N'4041594780629700');

INSERT INTO paying_method
VALUES (771, N'americanexpress', N'379032902270467');

INSERT INTO paying_method
VALUES (772, N'visa', N'4817076745978');

INSERT INTO paying_method
VALUES (773, N'americanexpress', N'337941539025360');

INSERT INTO paying_method
VALUES (774, N'americanexpress', N'374622902217743');

INSERT INTO paying_method
VALUES (775, N'americanexpress', N'374283450069372');

INSERT INTO paying_method
VALUES (776, N'americanexpress', N'372301003331909');

INSERT INTO paying_method
VALUES (777, N'visa', N'4249015848889');

INSERT INTO paying_method
VALUES (778, N'mastercard', N'5513831539895588');

INSERT INTO paying_method
VALUES (779, N'mastercard', N'5100170097709009');

INSERT INTO paying_method
VALUES (780, N'americanexpress', N'341065535137138');

INSERT INTO paying_method
VALUES (781, N'visa', N'4017954034963');

INSERT INTO paying_method
VALUES (782, N'mastercard', N'5133406265878635');

INSERT INTO paying_method
VALUES (783, N'mastercard', N'5100175217802956');

INSERT INTO paying_method
VALUES (784, N'visa', N'4041379583716346');

INSERT INTO paying_method
VALUES (785, N'visa', N'4041590845822');

INSERT INTO paying_method
VALUES (786, N'americanexpress', N'374288839208088');

INSERT INTO paying_method
VALUES (787, N'mastercard', N'5100172018553813');

INSERT INTO paying_method
VALUES (788, N'mastercard', N'5100132717324247');

INSERT INTO paying_method
VALUES (789, N'americanexpress', N'344663634118327');

INSERT INTO paying_method
VALUES (790, N'visa', N'4044066520721');

INSERT INTO paying_method
VALUES (791, N'visa', N'4041373239797');

INSERT INTO paying_method
VALUES (792, N'americanexpress', N'374283192225340');

INSERT INTO paying_method
VALUES (793, N'mastercard', N'5100135096940806');

INSERT INTO paying_method
VALUES (794, N'americanexpress', N'374622688044428');

INSERT INTO paying_method
VALUES (795, N'mastercard', N'5100170547878487');

INSERT INTO paying_method
VALUES (796, N'visa', N'4038546585874');

INSERT INTO paying_method
VALUES (797, N'mastercard', N'5515426659299022');

INSERT INTO paying_method
VALUES (798, N'mastercard', N'5002351516310665');

INSERT INTO paying_method
VALUES (799, N'mastercard', N'5048376648532478');

INSERT INTO paying_method
VALUES (800, N'visa', N'4041379395858');

INSERT INTO paying_method
VALUES (801, N'americanexpress', N'374283962759304');

INSERT INTO paying_method
VALUES (802, N'americanexpress', N'372301930610904');

INSERT INTO paying_method
VALUES (803, N'americanexpress', N'342238733027034');

INSERT INTO paying_method
VALUES (804, N'visa', N'4017959688780428');

INSERT INTO paying_method
VALUES (805, N'visa', N'4041370835348376');

INSERT INTO paying_method
VALUES (806, N'visa', N'4041594709620004');

INSERT INTO paying_method
VALUES (807, N'visa', N'4041598654937');

INSERT INTO paying_method
VALUES (808, N'mastercard', N'5108752774749846');

INSERT INTO paying_method
VALUES (809, N'mastercard', N'5100171005797789');

INSERT INTO paying_method
VALUES (810, N'visa', N'4017954823625117');

INSERT INTO paying_method
VALUES (811, N'americanexpress', N'374288638073808');

INSERT INTO paying_method
VALUES (812, N'visa', N'4041371497371');

INSERT INTO paying_method
VALUES (813, N'mastercard', N'5048379628532377');

INSERT INTO paying_method
VALUES (814, N'americanexpress', N'370740220750619');

INSERT INTO paying_method
VALUES (815, N'mastercard', N'5100178637815806');

INSERT INTO paying_method
VALUES (816, N'americanexpress', N'337941896780888');

INSERT INTO paying_method
VALUES (817, N'americanexpress', N'342699736184504');

INSERT INTO paying_method
VALUES (818, N'mastercard', N'5356431905738536');

INSERT INTO paying_method
VALUES (819, N'visa', N'4339708186331');

INSERT INTO paying_method
VALUES (820, N'americanexpress', N'374622311644750');

INSERT INTO paying_method
VALUES (821, N'mastercard', N'5100175724258049');

INSERT INTO paying_method
VALUES (822, N'mastercard', N'5100133222112440');

INSERT INTO paying_method
VALUES (823, N'americanexpress', N'374283418868881');

INSERT INTO paying_method
VALUES (824, N'americanexpress', N'343872100370251');

INSERT INTO paying_method
VALUES (825, N'visa', N'4017952190721402');

INSERT INTO paying_method
VALUES (826, N'americanexpress', N'374288947682307');

INSERT INTO paying_method
VALUES (827, N'mastercard', N'5007664053676545');

INSERT INTO paying_method
VALUES (828, N'americanexpress', N'372301954416402');

INSERT INTO paying_method
VALUES (829, N'visa', N'4542133821626');

INSERT INTO paying_method
VALUES (830, N'mastercard', N'5002351776753281');

INSERT INTO paying_method
VALUES (831, N'visa', N'4231081729566847');

INSERT INTO paying_method
VALUES (832, N'mastercard', N'5597254053717204');

INSERT INTO paying_method
VALUES (833, N'visa', N'4041590614723');

INSERT INTO paying_method
VALUES (834, N'visa', N'4017957731078');

INSERT INTO paying_method
VALUES (835, N'mastercard', N'5519863291773699');

INSERT INTO paying_method
VALUES (836, N'visa', N'4017953436369303');

INSERT INTO paying_method
VALUES (837, N'americanexpress', N'343363106217712');

INSERT INTO paying_method
VALUES (838, N'americanexpress', N'337941917317942');

INSERT INTO paying_method
VALUES (839, N'americanexpress', N'374622891653320');

INSERT INTO paying_method
VALUES (840, N'americanexpress', N'374283164846297');

INSERT INTO paying_method
VALUES (841, N'americanexpress', N'374283291853893');

INSERT INTO paying_method
VALUES (842, N'americanexpress', N'378238494141153');

INSERT INTO paying_method
VALUES (843, N'mastercard', N'5567823126506301');

INSERT INTO paying_method
VALUES (844, N'americanexpress', N'347004730380627');

INSERT INTO paying_method
VALUES (845, N'mastercard', N'5100175262227786');

INSERT INTO paying_method
VALUES (846, N'visa', N'4041590770541');

INSERT INTO paying_method
VALUES (847, N'visa', N'4041592840374804');

INSERT INTO paying_method
VALUES (848, N'americanexpress', N'337941944550382');

INSERT INTO paying_method
VALUES (849, N'americanexpress', N'337941164870817');

INSERT INTO paying_method
VALUES (850, N'mastercard', N'5007666935438036');

INSERT INTO paying_method
VALUES (851, N'mastercard', N'5002354804521019');

INSERT INTO paying_method
VALUES (852, N'mastercard', N'5202214910080029');

INSERT INTO paying_method
VALUES (853, N'visa', N'4041375579142729');

INSERT INTO paying_method
VALUES (854, N'mastercard', N'5100179690195383');

INSERT INTO paying_method
VALUES (855, N'mastercard', N'5554210586311171');

INSERT INTO paying_method
VALUES (856, N'mastercard', N'5100131762968833');

INSERT INTO paying_method
VALUES (857, N'mastercard', N'5484506404538191');

INSERT INTO paying_method
VALUES (858, N'mastercard', N'5519838373672191');

INSERT INTO paying_method
VALUES (859, N'visa', N'4041591416698');

INSERT INTO paying_method
VALUES (860, N'mastercard', N'5358336183585012');

INSERT INTO paying_method
VALUES (861, N'americanexpress', N'337941586801622');

INSERT INTO paying_method
VALUES (862, N'visa', N'4017955529626952');

INSERT INTO paying_method
VALUES (863, N'americanexpress', N'372394982691179');

INSERT INTO paying_method
VALUES (864, N'americanexpress', N'372301664551266');

INSERT INTO paying_method
VALUES (865, N'visa', N'4874688426700420');

INSERT INTO paying_method
VALUES (866, N'mastercard', N'5002354539219871');

INSERT INTO paying_method
VALUES (867, N'visa', N'4892968861552421');

INSERT INTO paying_method
VALUES (868, N'mastercard', N'5100140234660910');

INSERT INTO paying_method
VALUES (869, N'mastercard', N'5331562147648388');

INSERT INTO paying_method
VALUES (870, N'mastercard', N'5002352684116298');

INSERT INTO paying_method
VALUES (871, N'visa', N'4041593370638');

INSERT INTO paying_method
VALUES (872, N'americanexpress', N'349209146796617');

INSERT INTO paying_method
VALUES (873, N'visa', N'4017954286001723');

INSERT INTO paying_method
VALUES (874, N'americanexpress', N'374283482287851');

INSERT INTO paying_method
VALUES (875, N'americanexpress', N'337941777456772');

INSERT INTO paying_method
VALUES (876, N'visa', N'4017957625210426');

INSERT INTO paying_method
VALUES (877, N'mastercard', N'5108755048064389');

INSERT INTO paying_method
VALUES (878, N'americanexpress', N'374283157852674');

INSERT INTO paying_method
VALUES (879, N'americanexpress', N'374288953877015');

INSERT INTO paying_method
VALUES (880, N'visa', N'4041598273363297');

INSERT INTO paying_method
VALUES (881, N'americanexpress', N'374622911105194');

INSERT INTO paying_method
VALUES (882, N'americanexpress', N'372301383479922');

INSERT INTO paying_method
VALUES (883, N'visa', N'4041599120201');

INSERT INTO paying_method
VALUES (884, N'visa', N'4017955271821074');

INSERT INTO paying_method
VALUES (885, N'visa', N'4017951557098362');

INSERT INTO paying_method
VALUES (886, N'mastercard', N'5048371242757126');

INSERT INTO paying_method
VALUES (887, N'americanexpress', N'374288652563387');

INSERT INTO paying_method
VALUES (888, N'mastercard', N'5100179032663965');

INSERT INTO paying_method
VALUES (889, N'mastercard', N'5100176773598566');

INSERT INTO paying_method
VALUES (890, N'visa', N'4041591599543');

INSERT INTO paying_method
VALUES (891, N'visa', N'4017958262693');

INSERT INTO paying_method
VALUES (892, N'americanexpress', N'337941040792888');

INSERT INTO paying_method
VALUES (893, N'mastercard', N'5100149565190959');

INSERT INTO paying_method
VALUES (894, N'visa', N'4510195015451696');

INSERT INTO paying_method
VALUES (895, N'americanexpress', N'374288946291787');

INSERT INTO paying_method
VALUES (896, N'visa', N'4041595472895');

INSERT INTO paying_method
VALUES (897, N'visa', N'4017956834909125');

INSERT INTO paying_method
VALUES (898, N'mastercard', N'5002351841037587');

INSERT INTO paying_method
VALUES (899, N'americanexpress', N'341553785169117');

INSERT INTO paying_method
VALUES (900, N'mastercard', N'5383221170734162');

INSERT INTO paying_method
VALUES (901, N'mastercard', N'5002356245746154');

INSERT INTO paying_method
VALUES (902, N'mastercard', N'5002359784371921');

INSERT INTO paying_method
VALUES (903, N'mastercard', N'5010125895974436');

INSERT INTO paying_method
VALUES (904, N'visa', N'4474177330893301');

INSERT INTO paying_method
VALUES (905, N'americanexpress', N'340045447708334');

INSERT INTO paying_method
VALUES (906, N'visa', N'4017952046209');

INSERT INTO paying_method
VALUES (907, N'visa', N'4017953896946350');

INSERT INTO paying_method
VALUES (908, N'americanexpress', N'374622132142554');

INSERT INTO paying_method
VALUES (909, N'mastercard', N'5128433682612527');

INSERT INTO paying_method
VALUES (910, N'mastercard', N'5108752885298022');

INSERT INTO paying_method
VALUES (911, N'mastercard', N'5007669070064732');

INSERT INTO paying_method
VALUES (912, N'visa', N'4041590037729251');

INSERT INTO paying_method
VALUES (913, N'visa', N'4041378490205');

INSERT INTO paying_method
VALUES (914, N'americanexpress', N'372301739216879');

INSERT INTO paying_method
VALUES (915, N'americanexpress', N'343614088730183');

INSERT INTO paying_method
VALUES (916, N'mastercard', N'5048371979672696');

INSERT INTO paying_method
VALUES (917, N'americanexpress', N'374622176771987');

INSERT INTO paying_method
VALUES (918, N'americanexpress', N'374622507229861');

INSERT INTO paying_method
VALUES (919, N'visa', N'4041378653596');

INSERT INTO paying_method
VALUES (920, N'mastercard', N'5549514626336223');

INSERT INTO paying_method
VALUES (921, N'mastercard', N'5002350751963519');

INSERT INTO paying_method
VALUES (922, N'americanexpress', N'349837441016248');

INSERT INTO paying_method
VALUES (923, N'americanexpress', N'374622790632094');

INSERT INTO paying_method
VALUES (924, N'americanexpress', N'374288185803433');

INSERT INTO paying_method
VALUES (925, N'americanexpress', N'376046907562432');

INSERT INTO paying_method
VALUES (926, N'americanexpress', N'374622933155383');

INSERT INTO paying_method
VALUES (927, N'mastercard', N'5100142329799629');

INSERT INTO paying_method
VALUES (928, N'americanexpress', N'373805234070309');

INSERT INTO paying_method
VALUES (929, N'mastercard', N'5010125757298080');

INSERT INTO paying_method
VALUES (930, N'visa', N'4041372214926178');

INSERT INTO paying_method
VALUES (931, N'visa', N'4883329958453');

INSERT INTO paying_method
VALUES (932, N'mastercard', N'5552858172340004');

INSERT INTO paying_method
VALUES (933, N'visa', N'4041377249303145');

INSERT INTO paying_method
VALUES (934, N'americanexpress', N'372301812793240');

INSERT INTO paying_method
VALUES (935, N'americanexpress', N'374283309066546');

INSERT INTO paying_method
VALUES (936, N'visa', N'4692577543194312');

INSERT INTO paying_method
VALUES (937, N'visa', N'4521942988454448');

INSERT INTO paying_method
VALUES (938, N'visa', N'4041597628835587');

INSERT INTO paying_method
VALUES (939, N'visa', N'4017955426036297');

INSERT INTO paying_method
VALUES (940, N'mastercard', N'5460813709760498');

INSERT INTO paying_method
VALUES (941, N'mastercard', N'5219604613266944');

INSERT INTO paying_method
VALUES (942, N'visa', N'4899101445196');

INSERT INTO paying_method
VALUES (943, N'americanexpress', N'374283695414730');

INSERT INTO paying_method
VALUES (944, N'americanexpress', N'372301000717225');

INSERT INTO paying_method
VALUES (945, N'mastercard', N'5518053608918283');

INSERT INTO paying_method
VALUES (946, N'visa', N'4017954534891800');

INSERT INTO paying_method
VALUES (947, N'visa', N'4041594223406');

INSERT INTO paying_method
VALUES (948, N'mastercard', N'5100175043226099');

INSERT INTO paying_method
VALUES (949, N'visa', N'4017954823373');

INSERT INTO paying_method
VALUES (950, N'visa', N'4041370831521');

INSERT INTO paying_method
VALUES (951, N'americanexpress', N'374288262459489');

INSERT INTO paying_method
VALUES (952, N'visa', N'4193892243907');

INSERT INTO paying_method
VALUES (953, N'mastercard', N'5010126128632866');

INSERT INTO paying_method
VALUES (954, N'visa', N'4041374334274');

INSERT INTO paying_method
VALUES (955, N'americanexpress', N'374622223570218');

INSERT INTO paying_method
VALUES (956, N'americanexpress', N'344064039192241');

INSERT INTO paying_method
VALUES (957, N'mastercard', N'5002359906912693');

INSERT INTO paying_method
VALUES (958, N'mastercard', N'5010121101955079');

INSERT INTO paying_method
VALUES (959, N'mastercard', N'5375106376335841');

INSERT INTO paying_method
VALUES (960, N'mastercard', N'5565109383363848');

INSERT INTO paying_method
VALUES (961, N'visa', N'4041594166340');

INSERT INTO paying_method
VALUES (962, N'mastercard', N'5100136156137929');

INSERT INTO paying_method
VALUES (963, N'mastercard', N'5309167245093608');

INSERT INTO paying_method
VALUES (964, N'visa', N'4479840422896558');

INSERT INTO paying_method
VALUES (965, N'mastercard', N'5130525910024452');

INSERT INTO paying_method
VALUES (966, N'visa', N'4041595639642');

INSERT INTO paying_method
VALUES (967, N'americanexpress', N'374288616084637');

INSERT INTO paying_method
VALUES (968, N'mastercard', N'5100176454793858');

INSERT INTO paying_method
VALUES (969, N'visa', N'4017957348519');

INSERT INTO paying_method
VALUES (970, N'americanexpress', N'373535155979499');

INSERT INTO paying_method
VALUES (971, N'mastercard', N'5100145948468906');

INSERT INTO paying_method
VALUES (972, N'visa', N'4041376993891982');

INSERT INTO paying_method
VALUES (973, N'americanexpress', N'374288459419403');

INSERT INTO paying_method
VALUES (974, N'visa', N'4135782077448200');

INSERT INTO paying_method
VALUES (975, N'mastercard', N'5100141709635767');

INSERT INTO paying_method
VALUES (976, N'mastercard', N'5442240237567968');

INSERT INTO paying_method
VALUES (977, N'visa', N'4041376327199425');

INSERT INTO paying_method
VALUES (978, N'mastercard', N'5100147382422266');

INSERT INTO paying_method
VALUES (979, N'americanexpress', N'345595240909187');

INSERT INTO paying_method
VALUES (980, N'mastercard', N'5002359379604132');

INSERT INTO paying_method
VALUES (981, N'americanexpress', N'370114098413819');

INSERT INTO paying_method
VALUES (982, N'visa', N'4697610680301476');

INSERT INTO paying_method
VALUES (983, N'mastercard', N'5352711165454799');

INSERT INTO paying_method
VALUES (984, N'visa', N'4041596490863883');

INSERT INTO paying_method
VALUES (985, N'mastercard', N'5010120967023915');

INSERT INTO paying_method
VALUES (986, N'mastercard', N'5002356940736963');

INSERT INTO paying_method
VALUES (987, N'visa', N'4041377070990');

INSERT INTO paying_method
VALUES (988, N'visa', N'4132048857126330');

INSERT INTO paying_method
VALUES (989, N'visa', N'4498912322239');

INSERT INTO paying_method
VALUES (990, N'mastercard', N'5002356568045416');

INSERT INTO paying_method
VALUES (991, N'visa', N'4041598286882077');

INSERT INTO paying_method
VALUES (992, N'mastercard', N'5143827862232595');

INSERT INTO paying_method
VALUES (993, N'visa', N'4017952272052');

INSERT INTO paying_method
VALUES (994, N'americanexpress', N'372519517581434');

INSERT INTO paying_method
VALUES (995, N'americanexpress', N'340962755995586');

INSERT INTO paying_method
VALUES (996, N'visa', N'4041371364084');

INSERT INTO paying_method
VALUES (997, N'mastercard', N'5548915556657796');

INSERT INTO paying_method
VALUES (998, N'mastercard', N'5048373128803784');

INSERT INTO paying_method
VALUES (999, N'mastercard', N'5010129458369679');

INSERT INTO paying_method
VALUES (1000, N'visa', N'4263048987085');


-- INSERT INTO session_details VALUES (1, 1, N'loss', CAST(12.85 AS Numeric(8, 2)));;

INSERT INTO session_details
VALUES (1, 2, N'loss', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (1, 3, N'loss', CAST(157.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (1, 4, N'gain', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (1, 5, N'gain', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (1, 6, N'gain', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (2, 1, N'loss', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (2, 2, N'gain', CAST(517.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (2, 3, N'gain', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (3, 1, N'loss', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (3, 2, N'loss', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (4, 1, N'loss', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (4, 2, N'gain', CAST(661.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (4, 3, N'loss', CAST(1024.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (4, 4, N'loss', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (4, 5, N'gain', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (4, 6, N'gain', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (4, 7, N'loss', CAST(343.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (4, 8, N'gain', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (4, 9, N'gain', CAST(684.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (5, 1, N'gain', CAST(661.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (5, 2, N'gain', CAST(73.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (5, 3, N'loss', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (5, 4, N'gain', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (6, 1, N'gain', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (6, 2, N'gain', CAST(838.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (6, 3, N'gain', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (6, 4, N'gain', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (6, 5, N'loss', CAST(424.04 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (6, 6, N'gain', CAST(549.33 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (6, 7, N'loss', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (6, 8, N'loss', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (6, 9, N'loss', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (6, 10, N'loss', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (7, 1, N'loss', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (7, 2, N'gain', CAST(167.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (7, 3, N'loss', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (8, 1, N'loss', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (8, 2, N'gain', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (8, 3, N'loss', CAST(684.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (8, 4, N'loss', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (9, 1, N'loss', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (10, 1, N'loss', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (10, 2, N'gain', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (10, 3, N'loss', CAST(343.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (10, 4, N'loss', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (10, 5, N'gain', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (10, 6, N'loss', CAST(549.33 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (10, 7, N'loss', CAST(199.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (10, 8, N'gain', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (10, 9, N'loss', CAST(549.33 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (10, 10, N'loss', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (11, 1, N'gain', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (11, 2, N'loss', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (11, 3, N'gain', CAST(199.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (11, 4, N'gain', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (12, 1, N'gain', CAST(992.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (12, 2, N'loss', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (12, 3, N'gain', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (12, 4, N'gain', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (12, 5, N'loss', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (12, 6, N'gain', CAST(1024.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (12, 7, N'gain', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (12, 8, N'gain', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (12, 9, N'gain', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (12, 10, N'loss', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (13, 1, N'gain', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (13, 2, N'gain', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (13, 3, N'loss', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (13, 4, N'loss', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (13, 5, N'gain', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (13, 6, N'gain', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (13, 7, N'loss', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (13, 8, N'gain', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (14, 1, N'loss', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (14, 2, N'loss', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (15, 1, N'gain', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (15, 2, N'loss', CAST(880.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (15, 3, N'loss', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (15, 4, N'gain', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (15, 5, N'loss', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (15, 6, N'gain', CAST(722.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (15, 7, N'gain', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (15, 8, N'loss', CAST(456.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (15, 9, N'loss', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (15, 10, N'gain', CAST(558.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (16, 1, N'loss', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (16, 2, N'loss', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (16, 3, N'loss', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (16, 4, N'gain', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (16, 5, N'loss', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (17, 1, N'gain', CAST(558.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (17, 2, N'loss', CAST(134.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (17, 3, N'loss', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (17, 4, N'loss', CAST(950.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (17, 5, N'gain', CAST(684.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (18, 1, N'loss', CAST(186.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (18, 2, N'loss', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (19, 1, N'gain', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (19, 2, N'gain', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (20, 1, N'gain', CAST(382.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (20, 2, N'loss', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (21, 1, N'loss', CAST(591.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (21, 2, N'loss', CAST(806.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (21, 3, N'loss', CAST(301.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (21, 4, N'loss', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (21, 5, N'loss', CAST(22.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (22, 1, N'gain', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (23, 1, N'gain', CAST(517.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (23, 2, N'gain', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (23, 3, N'loss', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (23, 4, N'gain', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (23, 5, N'gain', CAST(395.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (23, 6, N'loss', CAST(301.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (23, 7, N'loss', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (24, 1, N'loss', CAST(22.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (24, 2, N'gain', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (24, 3, N'gain', CAST(722.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (24, 4, N'gain', CAST(93.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (24, 5, N'gain', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (24, 6, N'gain', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (24, 7, N'gain', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (25, 1, N'loss', CAST(395.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (25, 2, N'gain', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (26, 1, N'gain', CAST(343.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (26, 2, N'loss', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (26, 3, N'loss', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (26, 4, N'gain', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (26, 5, N'gain', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (26, 6, N'loss', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (26, 7, N'gain', CAST(343.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (26, 8, N'gain', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (27, 1, N'gain', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (28, 1, N'loss', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (28, 2, N'gain', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (28, 3, N'loss', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (28, 4, N'loss', CAST(1034.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (28, 5, N'gain', CAST(950.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (28, 6, N'loss', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (29, 1, N'gain', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (30, 1, N'loss', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (30, 2, N'loss', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (30, 3, N'loss', CAST(806.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (30, 4, N'gain', CAST(713.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (30, 5, N'loss', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (30, 6, N'gain', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (30, 7, N'loss', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (30, 8, N'loss', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (30, 9, N'loss', CAST(526.84 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (31, 1, N'loss', CAST(134.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (31, 2, N'loss', CAST(218.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (32, 1, N'loss', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (32, 2, N'loss', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (32, 3, N'gain', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (32, 4, N'gain', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (32, 5, N'loss', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (32, 6, N'loss', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (32, 7, N'loss', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (32, 8, N'gain', CAST(73.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (32, 9, N'loss', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (33, 1, N'gain', CAST(591.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (33, 2, N'loss', CAST(806.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (33, 3, N'gain', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (33, 4, N'loss', CAST(526.84 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (33, 5, N'loss', CAST(661.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (33, 6, N'gain', CAST(1024.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (33, 7, N'loss', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (33, 8, N'gain', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (33, 9, N'loss', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (33, 10, N'loss', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (34, 1, N'gain', CAST(950.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (34, 2, N'gain', CAST(93.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (34, 3, N'gain', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (34, 4, N'loss', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (34, 5, N'loss', CAST(134.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (34, 6, N'gain', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (35, 1, N'loss', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (35, 2, N'gain', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (35, 3, N'loss', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (36, 1, N'loss', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (36, 2, N'gain', CAST(880.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (36, 3, N'loss', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (37, 1, N'loss', CAST(424.04 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (37, 2, N'gain', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (37, 3, N'loss', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (37, 4, N'gain', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (37, 5, N'loss', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (37, 6, N'loss', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (37, 7, N'gain', CAST(465.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (37, 8, N'loss', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (38, 1, N'loss', CAST(880.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (39, 1, N'loss', CAST(591.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (39, 2, N'gain', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (39, 3, N'loss', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (39, 4, N'loss', CAST(806.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (39, 5, N'gain', CAST(1024.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (39, 6, N'gain', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (40, 1, N'loss', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (40, 2, N'gain', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (40, 3, N'gain', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (40, 4, N'loss', CAST(1024.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (40, 5, N'gain', CAST(186.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (40, 6, N'loss', CAST(167.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (40, 7, N'loss', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (41, 1, N'gain', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (41, 2, N'loss', CAST(745.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (41, 3, N'loss', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (41, 4, N'loss', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (41, 5, N'loss', CAST(745.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (41, 6, N'loss', CAST(950.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (41, 7, N'loss', CAST(301.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (42, 1, N'loss', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (42, 2, N'loss', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (42, 3, N'gain', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (42, 4, N'loss', CAST(1034.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (42, 5, N'loss', CAST(591.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (43, 1, N'loss', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (43, 2, N'loss', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (43, 3, N'loss', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (43, 4, N'gain', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (43, 5, N'gain', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (43, 6, N'gain', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (43, 7, N'loss', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (43, 8, N'gain', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (43, 9, N'loss', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (43, 10, N'gain', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (44, 1, N'gain', CAST(992.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (44, 2, N'gain', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (44, 3, N'gain', CAST(186.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (44, 4, N'gain', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (44, 5, N'loss', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (44, 6, N'loss', CAST(93.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (44, 7, N'gain', CAST(825.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (44, 8, N'loss', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (44, 9, N'gain', CAST(517.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (44, 10, N'gain', CAST(661.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (45, 1, N'gain', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (45, 2, N'gain', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (45, 3, N'loss', CAST(465.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (45, 4, N'gain', CAST(950.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (45, 5, N'gain', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (45, 6, N'gain', CAST(186.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (45, 7, N'loss', CAST(134.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (46, 1, N'gain', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (46, 2, N'loss', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (46, 3, N'gain', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (46, 4, N'loss', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (47, 1, N'loss', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (47, 2, N'gain', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (47, 3, N'gain', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (47, 4, N'gain', CAST(218.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (47, 5, N'gain', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (47, 6, N'gain', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (48, 1, N'gain', CAST(722.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (48, 2, N'loss', CAST(93.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (48, 3, N'loss', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (48, 4, N'loss', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (48, 5, N'gain', CAST(218.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (48, 6, N'loss', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (48, 7, N'gain', CAST(652.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (48, 8, N'loss', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (48, 9, N'loss', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (48, 10, N'loss', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (49, 1, N'loss', CAST(992.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (49, 2, N'gain', CAST(456.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (49, 3, N'gain', CAST(465.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (49, 4, N'gain', CAST(167.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (49, 5, N'gain', CAST(1024.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (49, 6, N'gain', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (49, 7, N'gain', CAST(517.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (50, 1, N'loss', CAST(186.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (50, 2, N'loss', CAST(591.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (51, 1, N'gain', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (52, 1, N'loss', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (52, 2, N'gain', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (52, 3, N'loss', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (52, 4, N'gain', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (53, 1, N'gain', CAST(838.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (53, 2, N'gain', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (53, 3, N'gain', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (53, 4, N'gain', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (54, 1, N'gain', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (54, 2, N'loss', CAST(745.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (54, 3, N'loss', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (54, 4, N'loss', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (54, 5, N'loss', CAST(629.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (54, 6, N'gain', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (54, 7, N'loss', CAST(456.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (54, 8, N'gain', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (55, 1, N'gain', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (55, 2, N'gain', CAST(838.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (55, 3, N'gain', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (55, 4, N'loss', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (55, 5, N'loss', CAST(465.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (55, 6, N'loss', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (55, 7, N'gain', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (55, 8, N'gain', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (55, 9, N'loss', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (55, 10, N'gain', CAST(382.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (56, 1, N'gain', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (56, 2, N'loss', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (56, 3, N'gain', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (56, 4, N'gain', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (57, 1, N'gain', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (57, 2, N'gain', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (57, 3, N'gain', CAST(218.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (57, 4, N'loss', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (57, 5, N'loss', CAST(311.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (57, 6, N'loss', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (57, 7, N'loss', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (57, 8, N'gain', CAST(806.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (58, 1, N'loss', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (58, 2, N'loss', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (58, 3, N'gain', CAST(1024.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (58, 4, N'loss', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (58, 5, N'loss', CAST(745.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (58, 6, N'loss', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (58, 7, N'loss', CAST(517.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (58, 8, N'gain', CAST(73.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (58, 9, N'gain', CAST(591.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (58, 10, N'gain', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (59, 1, N'gain', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (60, 1, N'loss', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (61, 1, N'loss', CAST(558.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (61, 2, N'gain', CAST(722.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (61, 3, N'loss', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (61, 4, N'loss', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (61, 5, N'gain', CAST(199.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (61, 6, N'gain', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (61, 7, N'loss', CAST(652.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (61, 8, N'gain', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (62, 1, N'gain', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (62, 2, N'gain', CAST(684.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (62, 3, N'loss', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (62, 4, N'loss', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (62, 5, N'gain', CAST(218.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (62, 6, N'loss', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (62, 7, N'loss', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (62, 8, N'loss', CAST(558.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (63, 1, N'loss', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (63, 2, N'loss', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (63, 3, N'gain', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (63, 4, N'loss', CAST(301.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (63, 5, N'loss', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (63, 6, N'gain', CAST(199.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (63, 7, N'gain', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (64, 1, N'gain', CAST(456.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (64, 2, N'loss', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (64, 3, N'loss', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (64, 4, N'loss', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (64, 5, N'gain', CAST(754.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (64, 6, N'gain', CAST(992.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (64, 7, N'gain', CAST(343.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (64, 8, N'loss', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (64, 9, N'loss', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (65, 1, N'loss', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (65, 2, N'gain', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (65, 3, N'loss', CAST(629.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (65, 4, N'loss', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (66, 1, N'loss', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (66, 2, N'loss', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (66, 3, N'gain', CAST(591.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (66, 4, N'gain', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (66, 5, N'gain', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (66, 6, N'gain', CAST(199.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (66, 7, N'loss', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (67, 1, N'loss', CAST(456.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (67, 2, N'gain', CAST(941.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (67, 3, N'loss', CAST(713.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (67, 4, N'loss', CAST(22.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (67, 5, N'gain', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (67, 6, N'gain', CAST(1024.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (67, 7, N'gain', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (68, 1, N'loss', CAST(424.04 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (68, 2, N'loss', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (68, 3, N'loss', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (68, 4, N'gain', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (68, 5, N'loss', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (68, 6, N'loss', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (68, 7, N'loss', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (68, 8, N'gain', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (69, 1, N'gain', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (69, 2, N'loss', CAST(941.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (69, 3, N'loss', CAST(343.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (69, 4, N'loss', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (70, 1, N'loss', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (70, 2, N'gain', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (70, 3, N'gain', CAST(825.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (70, 4, N'gain', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (70, 5, N'gain', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (70, 6, N'loss', CAST(558.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (70, 7, N'loss', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (70, 8, N'loss', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (71, 1, N'loss', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (71, 2, N'gain', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (72, 1, N'loss', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (73, 1, N'loss', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (73, 2, N'gain', CAST(186.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (74, 1, N'gain', CAST(167.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (74, 2, N'loss', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (74, 3, N'gain', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (74, 4, N'loss', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (74, 5, N'loss', CAST(591.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (74, 6, N'gain', CAST(526.84 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (74, 7, N'loss', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (74, 8, N'loss', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (74, 9, N'loss', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (75, 1, N'gain', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (75, 2, N'gain', CAST(465.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (75, 3, N'loss', CAST(22.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (75, 4, N'gain', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (75, 5, N'gain', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (75, 6, N'loss', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (75, 7, N'loss', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (75, 8, N'gain', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (76, 1, N'gain', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (76, 2, N'loss', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (76, 3, N'gain', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (76, 4, N'gain', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (76, 5, N'gain', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (76, 6, N'loss', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (76, 7, N'gain', CAST(713.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (77, 1, N'gain', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (77, 2, N'loss', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (77, 3, N'gain', CAST(661.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (77, 4, N'gain', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (77, 5, N'gain', CAST(629.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (77, 6, N'gain', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (77, 7, N'loss', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (77, 8, N'gain', CAST(992.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (77, 9, N'loss', CAST(591.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (77, 10, N'gain', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (78, 1, N'gain', CAST(754.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (78, 2, N'loss', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (78, 3, N'loss', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (78, 4, N'gain', CAST(382.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (78, 5, N'gain', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (78, 6, N'gain', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (78, 7, N'gain', CAST(806.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (78, 8, N'gain', CAST(372.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (78, 9, N'gain', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (79, 1, N'gain', CAST(549.33 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (79, 2, N'gain', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (79, 3, N'gain', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (79, 4, N'loss', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (79, 5, N'loss', CAST(343.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (79, 6, N'loss', CAST(661.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (79, 7, N'loss', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (79, 8, N'loss', CAST(1034.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (79, 9, N'loss', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (79, 10, N'gain', CAST(157.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (80, 1, N'loss', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (80, 2, N'gain', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (80, 3, N'loss', CAST(526.84 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (80, 4, N'gain', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (80, 5, N'gain', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (81, 1, N'loss', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (81, 2, N'gain', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (81, 3, N'loss', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (81, 4, N'loss', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (81, 5, N'gain', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (81, 6, N'gain', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (81, 7, N'loss', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (82, 1, N'loss', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (82, 2, N'loss', CAST(838.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (82, 3, N'loss', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (82, 4, N'gain', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (82, 5, N'gain', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (82, 6, N'gain', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (82, 7, N'gain', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (83, 1, N'gain', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (83, 2, N'gain', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (83, 3, N'loss', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (83, 4, N'loss', CAST(186.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (83, 5, N'gain', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (83, 6, N'gain', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (84, 1, N'gain', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (84, 2, N'gain', CAST(372.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (84, 3, N'gain', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (84, 4, N'loss', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (84, 5, N'gain', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (85, 1, N'gain', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (85, 2, N'loss', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (85, 3, N'loss', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (85, 4, N'gain', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (85, 5, N'loss', CAST(941.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (85, 6, N'loss', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (85, 7, N'gain', CAST(1034.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (86, 1, N'gain', CAST(549.33 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (86, 2, N'loss', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (86, 3, N'loss', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (86, 4, N'gain', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (86, 5, N'loss', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (87, 1, N'loss', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (87, 2, N'gain', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (87, 3, N'loss', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (87, 4, N'gain', CAST(73.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (87, 5, N'gain', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (87, 6, N'loss', CAST(652.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (87, 7, N'loss', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (87, 8, N'loss', CAST(517.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (88, 1, N'gain', CAST(424.04 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (88, 2, N'loss', CAST(745.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (88, 3, N'loss', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (89, 1, N'gain', CAST(456.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (89, 2, N'gain', CAST(167.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (89, 3, N'loss', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (89, 4, N'gain', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (90, 1, N'loss', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (90, 2, N'gain', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (90, 3, N'loss', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (90, 4, N'gain', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (90, 5, N'loss', CAST(880.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (90, 6, N'loss', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (91, 1, N'loss', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (92, 1, N'loss', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (93, 1, N'gain', CAST(1024.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (93, 2, N'loss', CAST(343.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (93, 3, N'gain', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (93, 4, N'gain', CAST(838.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (93, 5, N'gain', CAST(157.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (93, 6, N'gain', CAST(218.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (94, 1, N'gain', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (94, 2, N'gain', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (94, 3, N'loss', CAST(343.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (94, 4, N'gain', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (94, 5, N'gain', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (94, 6, N'gain', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (94, 7, N'gain', CAST(186.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (94, 8, N'gain', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (94, 9, N'loss', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (95, 1, N'gain', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (95, 2, N'gain', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (95, 3, N'loss', CAST(838.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (95, 4, N'gain', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (95, 5, N'gain', CAST(157.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (95, 6, N'gain', CAST(22.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (95, 7, N'gain', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (95, 8, N'loss', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (96, 1, N'gain', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (96, 2, N'gain', CAST(157.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (96, 3, N'gain', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (97, 1, N'loss', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (97, 2, N'loss', CAST(157.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (97, 3, N'gain', CAST(661.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (97, 4, N'loss', CAST(372.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (97, 5, N'gain', CAST(558.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (98, 1, N'loss', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (98, 2, N'gain', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (98, 3, N'gain', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (98, 4, N'gain', CAST(558.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (98, 5, N'loss', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (98, 6, N'gain', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (99, 1, N'gain', CAST(558.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (99, 2, N'gain', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (99, 3, N'gain', CAST(93.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (100, 1, N'loss', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (100, 2, N'gain', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (100, 3, N'gain', CAST(652.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (101, 1, N'gain', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (101, 2, N'loss', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (101, 3, N'loss', CAST(992.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (101, 4, N'loss', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (101, 5, N'loss', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (101, 6, N'loss', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (101, 7, N'loss', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (101, 8, N'loss', CAST(745.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (101, 9, N'gain', CAST(558.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (101, 10, N'gain', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (102, 1, N'loss', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (103, 1, N'loss', CAST(684.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (103, 2, N'loss', CAST(754.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (103, 3, N'gain', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (103, 4, N'loss', CAST(73.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (103, 5, N'loss', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (103, 6, N'gain', CAST(838.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (104, 1, N'loss', CAST(157.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (104, 2, N'loss', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (104, 3, N'gain', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (104, 4, N'loss', CAST(167.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (105, 1, N'loss', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (105, 2, N'loss', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (105, 3, N'gain', CAST(343.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (105, 4, N'loss', CAST(311.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (105, 5, N'gain', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (105, 6, N'gain', CAST(754.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (106, 1, N'loss', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (106, 2, N'loss', CAST(526.84 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (106, 3, N'gain', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (106, 4, N'loss', CAST(199.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (106, 5, N'gain', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (106, 6, N'gain', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (106, 7, N'gain', CAST(745.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (106, 8, N'loss', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (106, 9, N'loss', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (107, 1, N'loss', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (107, 2, N'gain', CAST(806.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (107, 3, N'loss', CAST(218.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (107, 4, N'loss', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (107, 5, N'loss', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (107, 6, N'gain', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (107, 7, N'loss', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (107, 8, N'loss', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (107, 9, N'loss', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (108, 1, N'gain', CAST(424.04 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (108, 2, N'loss', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (108, 3, N'loss', CAST(372.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (108, 4, N'loss', CAST(167.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (109, 1, N'gain', CAST(722.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (109, 2, N'gain', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (109, 3, N'gain', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (109, 4, N'loss', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (109, 5, N'loss', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (109, 6, N'loss', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (109, 7, N'gain', CAST(73.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (109, 8, N'loss', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (109, 9, N'gain', CAST(157.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (109, 10, N'gain', CAST(157.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (110, 1, N'gain', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (110, 2, N'loss', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (110, 3, N'loss', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (110, 4, N'loss', CAST(1034.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (110, 5, N'loss', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (111, 1, N'gain', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (111, 2, N'gain', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (111, 3, N'gain', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (112, 1, N'gain', CAST(838.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (112, 2, N'loss', CAST(1034.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (112, 3, N'gain', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (112, 4, N'loss', CAST(838.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (112, 5, N'gain', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (112, 6, N'gain', CAST(372.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (112, 7, N'gain', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (112, 8, N'loss', CAST(395.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (113, 1, N'loss', CAST(880.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (113, 2, N'loss', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (113, 3, N'gain', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (113, 4, N'loss', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (113, 5, N'gain', CAST(992.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (114, 1, N'gain', CAST(167.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (114, 2, N'loss', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (114, 3, N'gain', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (114, 4, N'loss', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (114, 5, N'loss', CAST(754.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (115, 1, N'gain', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (115, 2, N'loss', CAST(941.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (116, 1, N'gain', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (116, 2, N'loss', CAST(652.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (116, 3, N'loss', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (116, 4, N'gain', CAST(93.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (116, 5, N'gain', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (116, 6, N'loss', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (116, 7, N'loss', CAST(465.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (116, 8, N'gain', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (116, 9, N'loss', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (117, 1, N'loss', CAST(22.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (118, 1, N'gain', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (118, 2, N'gain', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (118, 3, N'gain', CAST(73.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (118, 4, N'loss', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (118, 5, N'gain', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (118, 6, N'loss', CAST(1024.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (118, 7, N'gain', CAST(880.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (118, 8, N'loss', CAST(157.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (119, 1, N'gain', CAST(684.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (120, 1, N'gain', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (120, 2, N'gain', CAST(558.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (120, 3, N'gain', CAST(157.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (120, 4, N'loss', CAST(311.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (120, 5, N'loss', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (121, 1, N'gain', CAST(652.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (121, 2, N'gain', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (121, 3, N'loss', CAST(517.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (121, 4, N'gain', CAST(456.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (121, 5, N'gain', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (121, 6, N'loss', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (121, 7, N'gain', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (121, 8, N'gain', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (121, 9, N'gain', CAST(992.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (121, 10, N'loss', CAST(517.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (122, 1, N'gain', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (122, 2, N'loss', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (122, 3, N'loss', CAST(218.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (122, 4, N'gain', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (122, 5, N'loss', CAST(456.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (122, 6, N'loss', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (122, 7, N'gain', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (122, 8, N'gain', CAST(950.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (122, 9, N'gain', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (122, 10, N'loss', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (123, 1, N'gain', CAST(950.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (123, 2, N'gain', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (123, 3, N'loss', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (123, 4, N'loss', CAST(186.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (123, 5, N'gain', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (123, 6, N'gain', CAST(549.33 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (124, 1, N'gain', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (124, 2, N'loss', CAST(199.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (125, 1, N'loss', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (126, 1, N'gain', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (126, 2, N'loss', CAST(134.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (126, 3, N'gain', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (126, 4, N'gain', CAST(73.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (126, 5, N'gain', CAST(167.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (126, 6, N'loss', CAST(549.33 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (126, 7, N'gain', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (126, 8, N'loss', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (126, 9, N'gain', CAST(806.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (127, 1, N'gain', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (127, 2, N'gain', CAST(629.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (127, 3, N'gain', CAST(199.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (127, 4, N'loss', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (127, 5, N'gain', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (128, 1, N'loss', CAST(941.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (128, 2, N'loss', CAST(838.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (128, 3, N'loss', CAST(199.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (128, 4, N'loss', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (128, 5, N'gain', CAST(825.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (128, 6, N'loss', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (128, 7, N'loss', CAST(199.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (128, 8, N'loss', CAST(343.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (128, 9, N'gain', CAST(186.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (129, 1, N'loss', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (129, 2, N'gain', CAST(661.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (129, 3, N'loss', CAST(301.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (129, 4, N'loss', CAST(1024.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (130, 1, N'gain', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (130, 2, N'gain', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (130, 3, N'gain', CAST(754.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (130, 4, N'gain', CAST(22.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (130, 5, N'loss', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (130, 6, N'loss', CAST(825.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (131, 1, N'gain', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (132, 1, N'loss', CAST(629.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (132, 2, N'loss', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (132, 3, N'loss', CAST(73.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (132, 4, N'gain', CAST(950.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (132, 5, N'gain', CAST(218.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (132, 6, N'loss', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (132, 7, N'gain', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (132, 8, N'gain', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (133, 1, N'loss', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (133, 2, N'loss', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (133, 3, N'loss', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (133, 4, N'loss', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (133, 5, N'loss', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (133, 6, N'loss', CAST(722.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (133, 7, N'gain', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (133, 8, N'loss', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (134, 1, N'gain', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (134, 2, N'loss', CAST(754.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (134, 3, N'loss', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (134, 4, N'gain', CAST(838.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (134, 5, N'gain', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (134, 6, N'gain', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (134, 7, N'gain', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (134, 8, N'gain', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (135, 1, N'loss', CAST(167.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (135, 2, N'loss', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (136, 1, N'gain', CAST(1024.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (137, 1, N'gain', CAST(186.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (137, 2, N'gain', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (137, 3, N'loss', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (138, 1, N'gain', CAST(806.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (138, 2, N'loss', CAST(806.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (138, 3, N'loss', CAST(186.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (138, 4, N'gain', CAST(311.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (138, 5, N'loss', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (138, 6, N'gain', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (138, 7, N'loss', CAST(517.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (138, 8, N'loss', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (139, 1, N'loss', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (139, 2, N'gain', CAST(838.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (139, 3, N'gain', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (139, 4, N'loss', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (140, 1, N'loss', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (140, 2, N'loss', CAST(424.04 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (140, 3, N'gain', CAST(456.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (141, 1, N'gain', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (141, 2, N'gain', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (141, 3, N'loss', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (141, 4, N'gain', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (141, 5, N'gain', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (141, 6, N'gain', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (141, 7, N'loss', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (141, 8, N'gain', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (141, 9, N'loss', CAST(157.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (142, 1, N'loss', CAST(549.33 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (142, 2, N'loss', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (142, 3, N'loss', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (142, 4, N'loss', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (142, 5, N'gain', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (142, 6, N'loss', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (142, 7, N'loss', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (142, 8, N'gain', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (142, 9, N'loss', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (142, 10, N'gain', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (143, 1, N'loss', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (143, 2, N'gain', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (143, 3, N'gain', CAST(218.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (144, 1, N'loss', CAST(372.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (144, 2, N'loss', CAST(301.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (144, 3, N'gain', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (144, 4, N'loss', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (144, 5, N'gain', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (145, 1, N'loss', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (145, 2, N'gain', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (145, 3, N'gain', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (145, 4, N'loss', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (145, 5, N'loss', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (145, 6, N'loss', CAST(395.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (146, 1, N'loss', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (146, 2, N'gain', CAST(591.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (146, 3, N'loss', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (146, 4, N'loss', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (146, 5, N'loss', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (146, 6, N'gain', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (146, 7, N'gain', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (146, 8, N'gain', CAST(22.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (146, 9, N'gain', CAST(517.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (147, 1, N'gain', CAST(880.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (148, 1, N'gain', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (148, 2, N'gain', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (148, 3, N'loss', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (148, 4, N'gain', CAST(517.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (148, 5, N'loss', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (148, 6, N'loss', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (149, 1, N'gain', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (149, 2, N'gain', CAST(1034.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (149, 3, N'gain', CAST(301.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (149, 4, N'loss', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (149, 5, N'loss', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (149, 6, N'gain', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (150, 1, N'loss', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (150, 2, N'loss', CAST(652.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (150, 3, N'loss', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (150, 4, N'loss', CAST(73.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (150, 5, N'loss', CAST(684.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (151, 1, N'loss', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (151, 2, N'gain', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (151, 3, N'loss', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (151, 4, N'gain', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (151, 5, N'loss', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (151, 6, N'gain', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (151, 7, N'gain', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (152, 1, N'loss', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (152, 2, N'loss', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (152, 3, N'loss', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (152, 4, N'loss', CAST(157.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (153, 1, N'gain', CAST(199.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (153, 2, N'loss', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (153, 3, N'loss', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (153, 4, N'loss', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (153, 5, N'loss', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (153, 6, N'gain', CAST(992.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (153, 7, N'gain', CAST(465.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (153, 8, N'gain', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (153, 9, N'gain', CAST(684.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (154, 1, N'loss', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (154, 2, N'loss', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (155, 1, N'loss', CAST(517.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (155, 2, N'gain', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (155, 3, N'loss', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (155, 4, N'gain', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (156, 1, N'loss', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (156, 2, N'loss', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (156, 3, N'loss', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (156, 4, N'gain', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (156, 5, N'loss', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (156, 6, N'loss', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (156, 7, N'loss', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (157, 1, N'loss', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (157, 2, N'loss', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (157, 3, N'loss', CAST(629.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (157, 4, N'gain', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (158, 1, N'gain', CAST(838.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (158, 2, N'loss', CAST(372.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (158, 3, N'gain', CAST(652.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (158, 4, N'loss', CAST(372.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (158, 5, N'loss', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (158, 6, N'loss', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (158, 7, N'gain', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (159, 1, N'loss', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (159, 2, N'gain', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (159, 3, N'gain', CAST(456.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (160, 1, N'gain', CAST(684.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (160, 2, N'gain', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (160, 3, N'gain', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (160, 4, N'loss', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (160, 5, N'loss', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (160, 6, N'gain', CAST(157.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (160, 7, N'gain', CAST(684.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (160, 8, N'loss', CAST(343.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (160, 9, N'loss', CAST(517.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (160, 10, N'loss', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (161, 1, N'gain', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (161, 2, N'gain', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (161, 3, N'gain', CAST(825.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (161, 4, N'gain', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (162, 1, N'gain', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (162, 2, N'loss', CAST(395.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (162, 3, N'loss', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (162, 4, N'loss', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (162, 5, N'gain', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (162, 6, N'loss', CAST(745.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (162, 7, N'loss', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (163, 1, N'gain', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (164, 1, N'loss', CAST(186.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (164, 2, N'gain', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (164, 3, N'gain', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (164, 4, N'gain', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (164, 5, N'loss', CAST(526.84 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (164, 6, N'loss', CAST(950.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (164, 7, N'loss', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (164, 8, N'loss', CAST(661.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (164, 9, N'loss', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (164, 10, N'gain', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (165, 1, N'loss', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (165, 2, N'loss', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (165, 3, N'loss', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (166, 1, N'gain', CAST(218.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (166, 2, N'loss', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (166, 3, N'loss', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (166, 4, N'gain', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (167, 1, N'loss', CAST(1024.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (167, 2, N'gain', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (167, 3, N'gain', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (167, 4, N'loss', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (167, 5, N'gain', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (167, 6, N'gain', CAST(382.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (168, 1, N'loss', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (168, 2, N'gain', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (168, 3, N'gain', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (168, 4, N'gain', CAST(825.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (168, 5, N'loss', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (168, 6, N'gain', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (169, 1, N'loss', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (169, 2, N'loss', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (169, 3, N'gain', CAST(526.84 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (169, 4, N'gain', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (169, 5, N'loss', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (169, 6, N'gain', CAST(652.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (170, 1, N'gain', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (170, 2, N'loss', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (170, 3, N'loss', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (170, 4, N'loss', CAST(745.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (170, 5, N'loss', CAST(941.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (171, 1, N'gain', CAST(745.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (171, 2, N'loss', CAST(199.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (171, 3, N'gain', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (171, 4, N'loss', CAST(456.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (171, 5, N'loss', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (171, 6, N'gain', CAST(558.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (171, 7, N'loss', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (172, 1, N'gain', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (172, 2, N'loss', CAST(372.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (172, 3, N'loss', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (172, 4, N'loss', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (173, 1, N'loss', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (173, 2, N'gain', CAST(1024.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (173, 3, N'loss', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (173, 4, N'loss', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (173, 5, N'gain', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (173, 6, N'loss', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (173, 7, N'loss', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (174, 1, N'loss', CAST(1034.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (174, 2, N'gain', CAST(218.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (174, 3, N'gain', CAST(652.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (174, 4, N'loss', CAST(456.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (175, 1, N'loss', CAST(73.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (175, 2, N'gain', CAST(301.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (175, 3, N'gain', CAST(526.84 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (175, 4, N'loss', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (175, 5, N'gain', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (175, 6, N'loss', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (175, 7, N'loss', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (175, 8, N'loss', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (175, 9, N'loss', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (176, 1, N'gain', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (176, 2, N'loss', CAST(93.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (176, 3, N'gain', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (176, 4, N'loss', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (176, 5, N'gain', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (176, 6, N'loss', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (177, 1, N'gain', CAST(372.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (177, 2, N'gain', CAST(825.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (178, 1, N'gain', CAST(992.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (178, 2, N'loss', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (178, 3, N'loss', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (178, 4, N'loss', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (178, 5, N'gain', CAST(722.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (178, 6, N'loss', CAST(424.04 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (178, 7, N'gain', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (178, 8, N'loss', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (178, 9, N'gain', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (179, 1, N'loss', CAST(1024.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (180, 1, N'gain', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (180, 2, N'loss', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (180, 3, N'loss', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (180, 4, N'gain', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (181, 1, N'loss', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (181, 2, N'gain', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (181, 3, N'gain', CAST(825.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (181, 4, N'loss', CAST(661.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (182, 1, N'gain', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (182, 2, N'gain', CAST(1034.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (182, 3, N'gain', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (182, 4, N'loss', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (182, 5, N'loss', CAST(558.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (182, 6, N'gain', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (182, 7, N'loss', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (182, 8, N'loss', CAST(167.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (182, 9, N'gain', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (183, 1, N'gain', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (183, 2, N'gain', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (183, 3, N'loss', CAST(880.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (183, 4, N'loss', CAST(713.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (183, 5, N'loss', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (184, 1, N'loss', CAST(382.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (184, 2, N'loss', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (184, 3, N'gain', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (184, 4, N'loss', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (184, 5, N'loss', CAST(517.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (184, 6, N'loss', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (184, 7, N'gain', CAST(684.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (184, 8, N'loss', CAST(517.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (185, 1, N'loss', CAST(745.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (185, 2, N'gain', CAST(591.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (185, 3, N'loss', CAST(950.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (185, 4, N'gain', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (185, 5, N'gain', CAST(629.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (185, 6, N'loss', CAST(301.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (185, 7, N'gain', CAST(167.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (186, 1, N'loss', CAST(1034.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (186, 2, N'loss', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (186, 3, N'gain', CAST(456.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (187, 1, N'loss', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (187, 2, N'loss', CAST(806.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (187, 3, N'gain', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (187, 4, N'loss', CAST(395.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (187, 5, N'gain', CAST(950.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (187, 6, N'loss', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (187, 7, N'gain', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (187, 8, N'loss', CAST(1034.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (187, 9, N'loss', CAST(591.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (187, 10, N'loss', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (188, 1, N'gain', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (188, 2, N'gain', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (188, 3, N'loss', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (188, 4, N'loss', CAST(652.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (188, 5, N'loss', CAST(722.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (188, 6, N'gain', CAST(311.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (188, 7, N'gain', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (188, 8, N'loss', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (188, 9, N'loss', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (188, 10, N'loss', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (189, 1, N'gain', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (189, 2, N'gain', CAST(838.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (189, 3, N'loss', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (189, 4, N'loss', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (189, 5, N'gain', CAST(558.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (189, 6, N'loss', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (190, 1, N'gain', CAST(517.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (190, 2, N'loss', CAST(558.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (190, 3, N'loss', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (190, 4, N'loss', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (190, 5, N'loss', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (191, 1, N'gain', CAST(549.33 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (191, 2, N'loss', CAST(825.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (191, 3, N'loss', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (191, 4, N'loss', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (191, 5, N'gain', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (191, 6, N'loss', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (191, 7, N'loss', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (192, 1, N'gain', CAST(722.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (192, 2, N'gain', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (192, 3, N'loss', CAST(825.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (192, 4, N'loss', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (192, 5, N'gain', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (193, 1, N'loss', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (193, 2, N'loss', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (193, 3, N'loss', CAST(93.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (193, 4, N'loss', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (193, 5, N'gain', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (193, 6, N'gain', CAST(73.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (193, 7, N'loss', CAST(825.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (194, 1, N'gain', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (194, 2, N'gain', CAST(629.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (194, 3, N'gain', CAST(395.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (195, 1, N'gain', CAST(93.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (195, 2, N'gain', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (195, 3, N'loss', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (195, 4, N'gain', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (196, 1, N'gain', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (197, 1, N'gain', CAST(1024.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (197, 2, N'loss', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (197, 3, N'loss', CAST(93.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (197, 4, N'gain', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (197, 5, N'loss', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (197, 6, N'gain', CAST(157.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (198, 1, N'loss', CAST(301.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (198, 2, N'loss', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (198, 3, N'loss', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (198, 4, N'gain', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (198, 5, N'gain', CAST(395.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (198, 6, N'gain', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (198, 7, N'gain', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (198, 8, N'loss', CAST(806.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (198, 9, N'loss', CAST(1034.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (198, 10, N'loss', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (199, 1, N'loss', CAST(218.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (199, 2, N'loss', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (199, 3, N'loss', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (199, 4, N'gain', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (199, 5, N'loss', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (199, 6, N'loss', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (200, 1, N'loss', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (200, 2, N'loss', CAST(372.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (201, 1, N'gain', CAST(311.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (202, 1, N'gain', CAST(134.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (203, 1, N'gain', CAST(950.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (203, 2, N'gain', CAST(629.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (204, 1, N'loss', CAST(992.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (204, 2, N'loss', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (204, 3, N'gain', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (204, 4, N'loss', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (204, 5, N'gain', CAST(950.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (204, 6, N'gain', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (204, 7, N'gain', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (205, 1, N'gain', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (205, 2, N'loss', CAST(157.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (205, 3, N'gain', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (205, 4, N'gain', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (206, 1, N'loss', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (206, 2, N'gain', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (206, 3, N'gain', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (206, 4, N'loss', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (206, 5, N'loss', CAST(301.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (206, 6, N'loss', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (206, 7, N'gain', CAST(713.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (207, 1, N'gain', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (207, 2, N'loss', CAST(992.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (207, 3, N'gain', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (207, 4, N'gain', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (207, 5, N'loss', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (207, 6, N'gain', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (208, 1, N'loss', CAST(395.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (208, 2, N'loss', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (208, 3, N'gain', CAST(517.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (208, 4, N'loss', CAST(382.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (208, 5, N'loss', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (208, 6, N'gain', CAST(424.04 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (208, 7, N'loss', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (208, 8, N'loss', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (209, 1, N'gain', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (209, 2, N'gain', CAST(661.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (210, 1, N'loss', CAST(382.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (210, 2, N'gain', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (210, 3, N'loss', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (211, 1, N'gain', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (211, 2, N'gain', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (211, 3, N'loss', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (211, 4, N'loss', CAST(22.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (211, 5, N'gain', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (211, 6, N'gain', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (211, 7, N'gain', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (211, 8, N'gain', CAST(73.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (211, 9, N'gain', CAST(186.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (211, 10, N'loss', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (212, 1, N'loss', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (212, 2, N'gain', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (212, 3, N'gain', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (212, 4, N'gain', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (212, 5, N'gain', CAST(456.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (213, 1, N'loss', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (213, 2, N'gain', CAST(465.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (214, 1, N'loss', CAST(199.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (214, 2, N'gain', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (214, 3, N'loss', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (214, 4, N'loss', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (215, 1, N'gain', CAST(382.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (215, 2, N'loss', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (215, 3, N'loss', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (215, 4, N'gain', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (215, 5, N'loss', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (215, 6, N'gain', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (215, 7, N'loss', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (216, 1, N'loss', CAST(218.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (216, 2, N'loss', CAST(558.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (216, 3, N'gain', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (216, 4, N'gain', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (216, 5, N'gain', CAST(301.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (217, 1, N'loss', CAST(186.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (217, 2, N'loss', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (217, 3, N'gain', CAST(424.04 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (217, 4, N'loss', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (217, 5, N'loss', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (217, 6, N'gain', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (217, 7, N'gain', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (217, 8, N'loss', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (218, 1, N'loss', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (218, 2, N'loss', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (219, 1, N'loss', CAST(684.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (219, 2, N'gain', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (219, 3, N'loss', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (219, 4, N'loss', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (219, 5, N'gain', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (219, 6, N'loss', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (219, 7, N'gain', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (219, 8, N'loss', CAST(806.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (220, 1, N'loss', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (220, 2, N'gain', CAST(456.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (220, 3, N'loss', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (221, 1, N'gain', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (221, 2, N'loss', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (221, 3, N'loss', CAST(22.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (221, 4, N'gain', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (222, 1, N'loss', CAST(806.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (223, 1, N'loss', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (224, 1, N'loss', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (224, 2, N'gain', CAST(22.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (225, 1, N'gain', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (225, 2, N'gain', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (226, 1, N'loss', CAST(517.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (226, 2, N'loss', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (226, 3, N'gain', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (226, 4, N'loss', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (226, 5, N'gain', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (226, 6, N'loss', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (227, 1, N'loss', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (227, 2, N'loss', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (227, 3, N'gain', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (227, 4, N'gain', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (227, 5, N'gain', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (227, 6, N'loss', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (227, 7, N'loss', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (227, 8, N'gain', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (228, 1, N'gain', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (228, 2, N'gain', CAST(311.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (229, 1, N'gain', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (229, 2, N'gain', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (229, 3, N'loss', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (229, 4, N'gain', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (229, 5, N'loss', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (229, 6, N'loss', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (229, 7, N'loss', CAST(382.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (229, 8, N'loss', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (229, 9, N'loss', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (230, 1, N'loss', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (230, 2, N'gain', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (230, 3, N'loss', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (230, 4, N'gain', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (231, 1, N'loss', CAST(157.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (231, 2, N'loss', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (231, 3, N'gain', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (232, 1, N'gain', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (232, 2, N'gain', CAST(661.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (232, 3, N'loss', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (233, 1, N'gain', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (233, 2, N'loss', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (233, 3, N'gain', CAST(941.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (233, 4, N'gain', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (234, 1, N'loss', CAST(372.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (234, 2, N'gain', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (234, 3, N'gain', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (234, 4, N'gain', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (235, 1, N'loss', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (235, 2, N'loss', CAST(311.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (236, 1, N'gain', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (236, 2, N'loss', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (236, 3, N'loss', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (236, 4, N'gain', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (236, 5, N'loss', CAST(134.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (236, 6, N'gain', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (236, 7, N'loss', CAST(424.04 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (236, 8, N'gain', CAST(301.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (236, 9, N'loss', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (236, 10, N'loss', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (237, 1, N'loss', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (237, 2, N'loss', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (237, 3, N'gain', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (237, 4, N'loss', CAST(424.04 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (238, 1, N'gain', CAST(745.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (238, 2, N'loss', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (238, 3, N'gain', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (238, 4, N'loss', CAST(218.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (238, 5, N'loss', CAST(941.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (239, 1, N'loss', CAST(465.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (240, 1, N'gain', CAST(652.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (240, 2, N'loss', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (240, 3, N'gain', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (240, 4, N'gain', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (240, 5, N'loss', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (240, 6, N'gain', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (241, 1, N'gain', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (241, 2, N'loss', CAST(941.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (241, 3, N'gain', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (241, 4, N'gain', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (241, 5, N'loss', CAST(382.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (241, 6, N'loss', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (241, 7, N'gain', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (242, 1, N'gain', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (242, 2, N'gain', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (242, 3, N'loss', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (242, 4, N'gain', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (242, 5, N'loss', CAST(167.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (242, 6, N'gain', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (242, 7, N'gain', CAST(186.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (242, 8, N'gain', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (242, 9, N'gain', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (243, 1, N'gain', CAST(343.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (243, 2, N'gain', CAST(1034.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (243, 3, N'loss', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (243, 4, N'loss', CAST(1034.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (243, 5, N'loss', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (243, 6, N'loss', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (243, 7, N'loss', CAST(157.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (243, 8, N'gain', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (243, 9, N'loss', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (244, 1, N'gain', CAST(134.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (244, 2, N'loss', CAST(424.04 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (244, 3, N'gain', CAST(218.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (244, 4, N'loss', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (244, 5, N'gain', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (244, 6, N'gain', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (244, 7, N'gain', CAST(311.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (244, 8, N'gain', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (244, 9, N'loss', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (245, 1, N'loss', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (245, 2, N'loss', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (246, 1, N'loss', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (246, 2, N'gain', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (247, 1, N'gain', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (247, 2, N'loss', CAST(1024.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (247, 3, N'loss', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (247, 4, N'gain', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (247, 5, N'gain', CAST(941.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (247, 6, N'gain', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (247, 7, N'gain', CAST(382.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (247, 8, N'gain', CAST(838.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (248, 1, N'gain', CAST(992.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (248, 2, N'gain', CAST(372.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (248, 3, N'loss', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (248, 4, N'loss', CAST(22.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (248, 5, N'gain', CAST(167.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (248, 6, N'loss', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (249, 1, N'gain', CAST(591.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (250, 1, N'loss', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (250, 2, N'gain', CAST(806.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (250, 3, N'loss', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (250, 4, N'loss', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (251, 1, N'gain', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (251, 2, N'gain', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (251, 3, N'gain', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (251, 4, N'gain', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (251, 5, N'loss', CAST(343.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (251, 6, N'gain', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (251, 7, N'gain', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (251, 8, N'gain', CAST(372.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (251, 9, N'gain', CAST(806.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (251, 10, N'gain', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (252, 1, N'loss', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (252, 2, N'gain', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (252, 3, N'loss', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (252, 4, N'gain', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (252, 5, N'gain', CAST(629.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (252, 6, N'gain', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (253, 1, N'gain', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (253, 2, N'gain', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (253, 3, N'gain', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (253, 4, N'gain', CAST(311.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (254, 1, N'gain', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (254, 2, N'gain', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (254, 3, N'loss', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (254, 4, N'loss', CAST(722.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (254, 5, N'gain', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (254, 6, N'gain', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (255, 1, N'gain', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (255, 2, N'gain', CAST(941.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (255, 3, N'gain', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (255, 4, N'loss', CAST(526.84 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (255, 5, N'loss', CAST(199.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (255, 6, N'gain', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (255, 7, N'gain', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (255, 8, N'loss', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (255, 9, N'gain', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (255, 10, N'gain', CAST(134.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (256, 1, N'loss', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (256, 2, N'loss', CAST(218.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (257, 1, N'gain', CAST(992.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (257, 2, N'gain', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (257, 3, N'gain', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (257, 4, N'loss', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (257, 5, N'loss', CAST(186.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (257, 6, N'loss', CAST(301.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (257, 7, N'gain', CAST(465.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (257, 8, N'gain', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (258, 1, N'loss', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (258, 2, N'loss', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (258, 3, N'gain', CAST(167.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (258, 4, N'loss', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (258, 5, N'loss', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (258, 6, N'gain', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (258, 7, N'gain', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (259, 1, N'gain', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (259, 2, N'gain', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (259, 3, N'gain', CAST(652.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (259, 4, N'gain', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (260, 1, N'loss', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (260, 2, N'gain', CAST(343.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (260, 3, N'loss', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (261, 1, N'gain', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (261, 2, N'loss', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (261, 3, N'loss', CAST(1024.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (261, 4, N'loss', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (261, 5, N'loss', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (261, 6, N'gain', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (261, 7, N'gain', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (261, 8, N'loss', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (261, 9, N'loss', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (261, 10, N'gain', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (262, 1, N'loss', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (262, 2, N'loss', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (262, 3, N'gain', CAST(661.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (262, 4, N'loss', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (262, 5, N'gain', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (262, 6, N'gain', CAST(382.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (262, 7, N'loss', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (263, 1, N'gain', CAST(424.04 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (263, 2, N'loss', CAST(167.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (263, 3, N'gain', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (263, 4, N'loss', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (264, 1, N'loss', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (264, 2, N'loss', CAST(526.84 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (264, 3, N'gain', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (264, 4, N'gain', CAST(629.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (264, 5, N'gain', CAST(880.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (264, 6, N'gain', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (264, 7, N'loss', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (264, 8, N'gain', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (264, 9, N'loss', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (264, 10, N'loss', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (265, 1, N'gain', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (265, 2, N'loss', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (265, 3, N'gain', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (265, 4, N'loss', CAST(424.04 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (265, 5, N'loss', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (265, 6, N'loss', CAST(629.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (266, 1, N'loss', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (266, 2, N'loss', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (266, 3, N'gain', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (266, 4, N'gain', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (266, 5, N'loss', CAST(950.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (267, 1, N'gain', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (268, 1, N'loss', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (268, 2, N'gain', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (268, 3, N'loss', CAST(629.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (268, 4, N'loss', CAST(311.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (268, 5, N'gain', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (268, 6, N'gain', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (268, 7, N'gain', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (268, 8, N'gain', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (269, 1, N'gain', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (269, 2, N'gain', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (269, 3, N'gain', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (269, 4, N'gain', CAST(684.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (270, 1, N'loss', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (270, 2, N'loss', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (270, 3, N'loss', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (270, 4, N'loss', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (270, 5, N'gain', CAST(992.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (271, 1, N'gain', CAST(713.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (271, 2, N'gain', CAST(684.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (271, 3, N'gain', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (271, 4, N'gain', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (271, 5, N'gain', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (271, 6, N'gain', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (271, 7, N'loss', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (271, 8, N'loss', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (272, 1, N'loss', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (272, 2, N'gain', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (272, 3, N'loss', CAST(73.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (272, 4, N'gain', CAST(558.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (272, 5, N'gain', CAST(652.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (272, 6, N'gain', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (273, 1, N'loss', CAST(722.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (273, 2, N'gain', CAST(372.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (273, 3, N'gain', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (273, 4, N'gain', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (273, 5, N'loss', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (274, 1, N'gain', CAST(591.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (274, 2, N'gain', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (274, 3, N'gain', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (274, 4, N'gain', CAST(93.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (274, 5, N'loss', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (274, 6, N'loss', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (274, 7, N'gain', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (275, 1, N'loss', CAST(301.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (275, 2, N'loss', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (275, 3, N'gain', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (275, 4, N'gain', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (275, 5, N'loss', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (275, 6, N'loss', CAST(157.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (275, 7, N'loss', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (276, 1, N'loss', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (277, 1, N'gain', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (277, 2, N'gain', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (277, 3, N'gain', CAST(661.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (277, 4, N'gain', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (277, 5, N'gain', CAST(825.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (277, 6, N'loss', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (277, 7, N'gain', CAST(218.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (277, 8, N'loss', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (277, 9, N'gain', CAST(93.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (277, 10, N'gain', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (278, 1, N'gain', CAST(684.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (279, 1, N'loss', CAST(1024.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (279, 2, N'loss', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (279, 3, N'gain', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (279, 4, N'gain', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (279, 5, N'loss', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (279, 6, N'gain', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (279, 7, N'gain', CAST(591.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (280, 1, N'loss', CAST(157.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (280, 2, N'loss', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (280, 3, N'gain', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (280, 4, N'loss', CAST(713.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (280, 5, N'gain', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (280, 6, N'loss', CAST(218.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (281, 1, N'gain', CAST(591.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (281, 2, N'loss', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (281, 3, N'gain', CAST(992.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (281, 4, N'loss', CAST(372.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (281, 5, N'loss', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (281, 6, N'loss', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (281, 7, N'loss', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (282, 1, N'gain', CAST(825.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (282, 2, N'gain', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (282, 3, N'gain', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (282, 4, N'gain', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (282, 5, N'gain', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (282, 6, N'loss', CAST(526.84 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (282, 7, N'loss', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (283, 1, N'gain', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (283, 2, N'loss', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (283, 3, N'loss', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (283, 4, N'gain', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (283, 5, N'loss', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (283, 6, N'loss', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (284, 1, N'gain', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (284, 2, N'loss', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (284, 3, N'loss', CAST(199.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (284, 4, N'loss', CAST(713.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (284, 5, N'gain', CAST(1024.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (284, 6, N'gain', CAST(591.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (284, 7, N'gain', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (284, 8, N'loss', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (285, 1, N'gain', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (285, 2, N'gain', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (285, 3, N'gain', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (285, 4, N'gain', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (285, 5, N'loss', CAST(652.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (285, 6, N'loss', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (285, 7, N'gain', CAST(517.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (285, 8, N'gain', CAST(456.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (286, 1, N'gain', CAST(465.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (286, 2, N'loss', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (286, 3, N'gain', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (286, 4, N'gain', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (286, 5, N'loss', CAST(93.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (286, 6, N'gain', CAST(199.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (286, 7, N'loss', CAST(992.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (286, 8, N'loss', CAST(456.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (286, 9, N'loss', CAST(465.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (287, 1, N'loss', CAST(134.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (287, 2, N'gain', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (287, 3, N'loss', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (287, 4, N'loss', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (287, 5, N'loss', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (287, 6, N'gain', CAST(629.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (287, 7, N'gain', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (287, 8, N'loss', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (288, 1, N'loss', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (288, 2, N'gain', CAST(652.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (288, 3, N'loss', CAST(652.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (288, 4, N'gain', CAST(134.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (289, 1, N'gain', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (289, 2, N'gain', CAST(745.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (289, 3, N'gain', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (289, 4, N'gain', CAST(424.04 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (289, 5, N'gain', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (289, 6, N'gain', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (290, 1, N'gain', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (291, 1, N'gain', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (291, 2, N'gain', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (291, 3, N'loss', CAST(591.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (291, 4, N'gain', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (291, 5, N'gain', CAST(745.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (291, 6, N'loss', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (291, 7, N'gain', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (292, 1, N'loss', CAST(93.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (292, 2, N'gain', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (292, 3, N'gain', CAST(382.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (292, 4, N'loss', CAST(311.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (292, 5, N'gain', CAST(684.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (292, 6, N'gain', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (292, 7, N'loss', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (293, 1, N'loss', CAST(186.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (293, 2, N'gain', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (294, 1, N'loss', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (294, 2, N'gain', CAST(941.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (294, 3, N'gain', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (294, 4, N'gain', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (294, 5, N'gain', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (294, 6, N'loss', CAST(1034.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (294, 7, N'gain', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (294, 8, N'loss', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (294, 9, N'gain', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (294, 10, N'loss', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (295, 1, N'gain', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (296, 1, N'gain', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (296, 2, N'gain', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (296, 3, N'loss', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (296, 4, N'gain', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (296, 5, N'loss', CAST(157.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (296, 6, N'loss', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (296, 7, N'gain', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (297, 1, N'loss', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (297, 2, N'gain', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (297, 3, N'loss', CAST(73.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (297, 4, N'gain', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (298, 1, N'loss', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (298, 2, N'loss', CAST(880.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (298, 3, N'loss', CAST(713.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (298, 4, N'loss', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (298, 5, N'gain', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (298, 6, N'loss', CAST(186.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (298, 7, N'gain', CAST(157.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (298, 8, N'gain', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (298, 9, N'gain', CAST(880.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (298, 10, N'loss', CAST(1024.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (299, 1, N'loss', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (299, 2, N'gain', CAST(722.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (299, 3, N'loss', CAST(526.84 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (299, 4, N'gain', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (299, 5, N'gain', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (300, 1, N'loss', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (300, 2, N'loss', CAST(382.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (300, 3, N'gain', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (300, 4, N'loss', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (300, 5, N'loss', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (300, 6, N'loss', CAST(992.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (300, 7, N'gain', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (301, 1, N'gain', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (301, 2, N'gain', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (301, 3, N'gain', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (301, 4, N'gain', CAST(218.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (302, 1, N'loss', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (302, 2, N'loss', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (302, 3, N'loss', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (302, 4, N'loss', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (302, 5, N'loss', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (302, 6, N'loss', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (303, 1, N'gain', CAST(526.84 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (303, 2, N'gain', CAST(745.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (303, 3, N'loss', CAST(218.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (303, 4, N'loss', CAST(722.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (303, 5, N'gain', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (303, 6, N'gain', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (304, 1, N'gain', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (304, 2, N'gain', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (304, 3, N'loss', CAST(684.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (304, 4, N'loss', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (304, 5, N'loss', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (304, 6, N'gain', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (304, 7, N'loss', CAST(186.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (304, 8, N'loss', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (305, 1, N'loss', CAST(1034.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (305, 2, N'loss', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (305, 3, N'loss', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (305, 4, N'gain', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (305, 5, N'gain', CAST(806.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (305, 6, N'gain', CAST(806.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (306, 1, N'loss', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (306, 2, N'loss', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (306, 3, N'loss', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (306, 4, N'loss', CAST(745.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (306, 5, N'gain', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (306, 6, N'loss', CAST(549.33 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (306, 7, N'gain', CAST(684.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (306, 8, N'loss', CAST(73.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (306, 9, N'gain', CAST(629.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (307, 1, N'loss', CAST(157.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (307, 2, N'gain', CAST(382.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (307, 3, N'gain', CAST(880.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (308, 1, N'gain', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (308, 2, N'loss', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (308, 3, N'loss', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (308, 4, N'gain', CAST(73.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (309, 1, N'loss', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (310, 1, N'gain', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (310, 2, N'gain', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (310, 3, N'loss', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (310, 4, N'gain', CAST(372.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (310, 5, N'loss', CAST(343.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (311, 1, N'loss', CAST(134.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (311, 2, N'gain', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (311, 3, N'gain', CAST(745.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (311, 4, N'loss', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (311, 5, N'gain', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (311, 6, N'gain', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (312, 1, N'loss', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (312, 2, N'loss', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (313, 1, N'gain', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (314, 1, N'loss', CAST(992.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (314, 2, N'loss', CAST(167.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (314, 3, N'gain', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (314, 4, N'loss', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (314, 5, N'gain', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (314, 6, N'gain', CAST(526.84 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (314, 7, N'loss', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (315, 1, N'gain', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (315, 2, N'gain', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (315, 3, N'gain', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (315, 4, N'gain', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (315, 5, N'loss', CAST(311.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (315, 6, N'loss', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (315, 7, N'gain', CAST(950.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (315, 8, N'loss', CAST(465.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (316, 1, N'gain', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (316, 2, N'gain', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (316, 3, N'loss', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (317, 1, N'gain', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (317, 2, N'loss', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (317, 3, N'gain', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (317, 4, N'gain', CAST(301.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (317, 5, N'gain', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (317, 6, N'loss', CAST(661.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (318, 1, N'gain', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (318, 2, N'loss', CAST(652.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (318, 3, N'gain', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (318, 4, N'loss', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (318, 5, N'gain', CAST(73.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (318, 6, N'gain', CAST(825.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (319, 1, N'loss', CAST(311.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (319, 2, N'gain', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (319, 3, N'gain', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (320, 1, N'gain', CAST(713.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (320, 2, N'loss', CAST(722.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (320, 3, N'gain', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (320, 4, N'gain', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (320, 5, N'loss', CAST(73.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (320, 6, N'gain', CAST(199.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (320, 7, N'loss', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (320, 8, N'gain', CAST(301.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (320, 9, N'loss', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (320, 10, N'gain', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (321, 1, N'loss', CAST(591.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (322, 1, N'loss', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (322, 2, N'loss', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (322, 3, N'gain', CAST(157.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (322, 4, N'gain', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (322, 5, N'gain', CAST(73.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (322, 6, N'loss', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (322, 7, N'gain', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (323, 1, N'gain', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (323, 2, N'loss', CAST(684.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (323, 3, N'gain', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (324, 1, N'gain', CAST(992.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (324, 2, N'loss', CAST(465.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (324, 3, N'gain', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (324, 4, N'gain', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (324, 5, N'gain', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (324, 6, N'gain', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (324, 7, N'loss', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (324, 8, N'loss', CAST(1024.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (325, 1, N'loss', CAST(652.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (325, 2, N'loss', CAST(301.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (325, 3, N'loss', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (325, 4, N'loss', CAST(941.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (325, 5, N'loss', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (326, 1, N'gain', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (326, 2, N'gain', CAST(754.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (326, 3, N'loss', CAST(558.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (327, 1, N'gain', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (327, 2, N'gain', CAST(1034.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (327, 3, N'gain', CAST(157.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (327, 4, N'loss', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (327, 5, N'loss', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (327, 6, N'loss', CAST(93.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (327, 7, N'gain', CAST(343.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (327, 8, N'loss', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (328, 1, N'loss', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (328, 2, N'gain', CAST(343.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (328, 3, N'gain', CAST(1034.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (329, 1, N'loss', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (329, 2, N'gain', CAST(754.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (329, 3, N'loss', CAST(684.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (329, 4, N'loss', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (329, 5, N'loss', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (329, 6, N'loss', CAST(22.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (329, 7, N'gain', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (329, 8, N'gain', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (330, 1, N'loss', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (331, 1, N'loss', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (331, 2, N'gain', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (331, 3, N'loss', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (331, 4, N'gain', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (331, 5, N'gain', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (331, 6, N'loss', CAST(941.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (331, 7, N'gain', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (331, 8, N'gain', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (332, 1, N'loss', CAST(713.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (332, 2, N'loss', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (332, 3, N'gain', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (332, 4, N'loss', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (332, 5, N'loss', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (332, 6, N'gain', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (332, 7, N'gain', CAST(880.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (333, 1, N'loss', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (333, 2, N'gain', CAST(382.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (333, 3, N'loss', CAST(517.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (333, 4, N'gain', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (333, 5, N'loss', CAST(186.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (334, 1, N'loss', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (334, 2, N'gain', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (334, 3, N'loss', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (334, 4, N'loss', CAST(22.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (334, 5, N'gain', CAST(372.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (335, 1, N'loss', CAST(549.33 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (335, 2, N'loss', CAST(591.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (335, 3, N'gain', CAST(134.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (336, 1, N'loss', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (336, 2, N'gain', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (336, 3, N'loss', CAST(186.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (337, 1, N'gain', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (337, 2, N'loss', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (337, 3, N'gain', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (337, 4, N'gain', CAST(745.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (338, 1, N'gain', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (339, 1, N'loss', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (340, 1, N'loss', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (340, 2, N'gain', CAST(684.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (340, 3, N'gain', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (340, 4, N'gain', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (340, 5, N'loss', CAST(301.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (340, 6, N'gain', CAST(629.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (340, 7, N'loss', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (341, 1, N'gain', CAST(950.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (341, 2, N'gain', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (341, 3, N'gain', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (341, 4, N'loss', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (342, 1, N'gain', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (342, 2, N'gain', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (343, 1, N'loss', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (344, 1, N'gain', CAST(167.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (344, 2, N'loss', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (344, 3, N'gain', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (344, 4, N'gain', CAST(218.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (344, 5, N'gain', CAST(157.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (344, 6, N'loss', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (344, 7, N'loss', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (344, 8, N'loss', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (345, 1, N'gain', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (346, 1, N'gain', CAST(806.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (347, 1, N'gain', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (347, 2, N'gain', CAST(343.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (347, 3, N'gain', CAST(684.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (347, 4, N'loss', CAST(424.04 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (347, 5, N'loss', CAST(424.04 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (347, 6, N'loss', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (348, 1, N'loss', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (348, 2, N'loss', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (348, 3, N'loss', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (348, 4, N'loss', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (348, 5, N'loss', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (348, 6, N'loss', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (348, 7, N'gain', CAST(880.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (348, 8, N'gain', CAST(343.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (349, 1, N'loss', CAST(301.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (349, 2, N'gain', CAST(456.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (349, 3, N'loss', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (349, 4, N'loss', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (349, 5, N'gain', CAST(311.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (350, 1, N'gain', CAST(825.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (350, 2, N'loss', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (350, 3, N'loss', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (351, 1, N'gain', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (351, 2, N'loss', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (351, 3, N'gain', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (352, 1, N'gain', CAST(684.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (352, 2, N'loss', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (352, 3, N'gain', CAST(722.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (352, 4, N'loss', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (353, 1, N'loss', CAST(372.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (353, 2, N'gain', CAST(992.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (353, 3, N'loss', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (353, 4, N'loss', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (353, 5, N'loss', CAST(199.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (353, 6, N'loss', CAST(526.84 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (353, 7, N'gain', CAST(838.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (354, 1, N'gain', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (354, 2, N'gain', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (354, 3, N'gain', CAST(311.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (354, 4, N'loss', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (354, 5, N'loss', CAST(343.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (354, 6, N'loss', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (354, 7, N'gain', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (354, 8, N'loss', CAST(713.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (354, 9, N'loss', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (354, 10, N'loss', CAST(713.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (355, 1, N'loss', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (355, 2, N'loss', CAST(218.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (355, 3, N'gain', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (355, 4, N'gain', CAST(517.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (355, 5, N'loss', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (356, 1, N'gain', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (356, 2, N'gain', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (356, 3, N'loss', CAST(372.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (356, 4, N'loss', CAST(558.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (356, 5, N'loss', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (356, 6, N'loss', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (356, 7, N'loss', CAST(558.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (356, 8, N'gain', CAST(372.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (356, 9, N'loss', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (357, 1, N'gain', CAST(629.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (358, 1, N'gain', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (358, 2, N'gain', CAST(880.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (358, 3, N'loss', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (358, 4, N'loss', CAST(838.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (358, 5, N'gain', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (358, 6, N'gain', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (359, 1, N'loss', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (359, 2, N'loss', CAST(93.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (359, 3, N'gain', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (360, 1, N'loss', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (360, 2, N'loss', CAST(167.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (360, 3, N'loss', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (360, 4, N'gain', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (360, 5, N'loss', CAST(465.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (361, 1, N'gain', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (361, 2, N'loss', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (361, 3, N'loss', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (361, 4, N'gain', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (361, 5, N'loss', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (361, 6, N'gain', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (361, 7, N'gain', CAST(301.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (361, 8, N'gain', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (362, 1, N'loss', CAST(825.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (362, 2, N'gain', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (362, 3, N'loss', CAST(880.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (362, 4, N'loss', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (362, 5, N'loss', CAST(754.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (362, 6, N'loss', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (363, 1, N'loss', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (363, 2, N'gain', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (363, 3, N'gain', CAST(424.04 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (363, 4, N'gain', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (363, 5, N'gain', CAST(382.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (363, 6, N'loss', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (363, 7, N'loss', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (364, 1, N'gain', CAST(22.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (364, 2, N'loss', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (364, 3, N'gain', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (364, 4, N'gain', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (365, 1, N'loss', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (365, 2, N'loss', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (365, 3, N'gain', CAST(343.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (365, 4, N'gain', CAST(558.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (365, 5, N'gain', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (366, 1, N'gain', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (366, 2, N'loss', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (366, 3, N'loss', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (366, 4, N'loss', CAST(558.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (366, 5, N'loss', CAST(526.84 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (367, 1, N'gain', CAST(465.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (367, 2, N'gain', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (367, 3, N'loss', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (367, 4, N'gain', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (367, 5, N'gain', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (368, 1, N'loss', CAST(456.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (368, 2, N'loss', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (368, 3, N'gain', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (369, 1, N'loss', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (369, 2, N'loss', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (369, 3, N'gain', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (369, 4, N'loss', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (369, 5, N'gain', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (369, 6, N'loss', CAST(22.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (369, 7, N'gain', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (369, 8, N'loss', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (369, 9, N'loss', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (369, 10, N'gain', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (370, 1, N'gain', CAST(382.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (370, 2, N'gain', CAST(1034.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (370, 3, N'loss', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (370, 4, N'gain', CAST(395.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (370, 5, N'gain', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (370, 6, N'gain', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (370, 7, N'gain', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (370, 8, N'loss', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (370, 9, N'loss', CAST(950.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (370, 10, N'gain', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (371, 1, N'loss', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (371, 2, N'gain', CAST(880.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (371, 3, N'gain', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (371, 4, N'gain', CAST(558.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (371, 5, N'loss', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (371, 6, N'gain', CAST(517.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (371, 7, N'loss', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (371, 8, N'gain', CAST(186.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (371, 9, N'loss', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (371, 10, N'gain', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (372, 1, N'loss', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (372, 2, N'gain', CAST(992.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (372, 3, N'gain', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (372, 4, N'loss', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (373, 1, N'gain', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (373, 2, N'gain', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (374, 1, N'gain', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (374, 2, N'loss', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (374, 3, N'gain', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (374, 4, N'gain', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (374, 5, N'loss', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (374, 6, N'loss', CAST(838.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (374, 7, N'gain', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (374, 8, N'loss', CAST(992.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (374, 9, N'loss', CAST(186.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (374, 10, N'gain', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (375, 1, N'loss', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (375, 2, N'gain', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (375, 3, N'gain', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (375, 4, N'loss', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (375, 5, N'gain', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (376, 1, N'gain', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (376, 2, N'loss', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (376, 3, N'loss', CAST(992.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (376, 4, N'gain', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (377, 1, N'loss', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (377, 2, N'gain', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (377, 3, N'gain', CAST(311.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (377, 4, N'gain', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (377, 5, N'gain', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (377, 6, N'gain', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (377, 7, N'gain', CAST(424.04 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (377, 8, N'loss', CAST(629.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (377, 9, N'loss', CAST(825.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (378, 1, N'gain', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (378, 2, N'loss', CAST(167.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (378, 3, N'gain', CAST(526.84 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (378, 4, N'gain', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (378, 5, N'loss', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (379, 1, N'gain', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (380, 1, N'gain', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (380, 2, N'loss', CAST(395.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (380, 3, N'loss', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (380, 4, N'gain', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (380, 5, N'loss', CAST(372.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (380, 6, N'loss', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (380, 7, N'gain', CAST(591.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (381, 1, N'gain', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (381, 2, N'loss', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (381, 3, N'loss', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (381, 4, N'loss', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (381, 5, N'loss', CAST(880.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (381, 6, N'loss', CAST(950.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (381, 7, N'loss', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (381, 8, N'loss', CAST(301.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (381, 9, N'gain', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (382, 1, N'gain', CAST(684.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (382, 2, N'gain', CAST(456.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (382, 3, N'loss', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (382, 4, N'gain', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (382, 5, N'gain', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (382, 6, N'loss', CAST(880.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (382, 7, N'gain', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (382, 8, N'loss', CAST(1034.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (382, 9, N'gain', CAST(1034.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (382, 10, N'loss', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (383, 1, N'loss', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (383, 2, N'gain', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (383, 3, N'loss', CAST(950.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (384, 1, N'gain', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (385, 1, N'gain', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (385, 2, N'loss', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (385, 3, N'gain', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (385, 4, N'loss', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (385, 5, N'loss', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (385, 6, N'gain', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (385, 7, N'gain', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (385, 8, N'loss', CAST(713.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (385, 9, N'gain', CAST(992.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (385, 10, N'loss', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (386, 1, N'loss', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (386, 2, N'loss', CAST(218.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (386, 3, N'loss', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (386, 4, N'loss', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (386, 5, N'loss', CAST(661.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (386, 6, N'loss', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (386, 7, N'gain', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (386, 8, N'loss', CAST(186.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (387, 1, N'loss', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (387, 2, N'loss', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (387, 3, N'gain', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (387, 4, N'loss', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (387, 5, N'gain', CAST(218.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (387, 6, N'loss', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (387, 7, N'gain', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (388, 1, N'loss', CAST(465.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (388, 2, N'loss', CAST(134.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (389, 1, N'gain', CAST(992.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (390, 1, N'loss', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (390, 2, N'loss', CAST(186.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (390, 3, N'gain', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (390, 4, N'loss', CAST(382.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (390, 5, N'gain', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (391, 1, N'gain', CAST(343.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (391, 2, N'loss', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (391, 3, N'loss', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (391, 4, N'gain', CAST(825.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (392, 1, N'loss', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (392, 2, N'loss', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (392, 3, N'gain', CAST(722.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (392, 4, N'gain', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (392, 5, N'loss', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (393, 1, N'loss', CAST(941.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (393, 2, N'loss', CAST(134.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (393, 3, N'loss', CAST(1024.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (393, 4, N'gain', CAST(745.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (393, 5, N'gain', CAST(311.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (393, 6, N'gain', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (393, 7, N'loss', CAST(395.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (394, 1, N'gain', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (394, 2, N'gain', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (394, 3, N'loss', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (394, 4, N'gain', CAST(1034.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (394, 5, N'gain', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (394, 6, N'gain', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (394, 7, N'loss', CAST(806.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (394, 8, N'loss', CAST(186.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (394, 9, N'loss', CAST(722.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (394, 10, N'gain', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (395, 1, N'gain', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (395, 2, N'loss', CAST(713.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (395, 3, N'gain', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (395, 4, N'gain', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (395, 5, N'loss', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (395, 6, N'loss', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (395, 7, N'loss', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (395, 8, N'loss', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (396, 1, N'loss', CAST(218.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (396, 2, N'loss', CAST(157.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (396, 3, N'gain', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (396, 4, N'loss', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (396, 5, N'gain', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (396, 6, N'gain', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (396, 7, N'gain', CAST(73.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (396, 8, N'loss', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (396, 9, N'loss', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (396, 10, N'gain', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (397, 1, N'gain', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (397, 2, N'loss', CAST(186.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (397, 3, N'gain', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (397, 4, N'gain', CAST(134.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (397, 5, N'gain', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (398, 1, N'gain', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (398, 2, N'loss', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (398, 3, N'gain', CAST(395.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (398, 4, N'gain', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (398, 5, N'loss', CAST(311.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (398, 6, N'gain', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (398, 7, N'loss', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (398, 8, N'gain', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (398, 9, N'loss', CAST(301.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (399, 1, N'gain', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (399, 2, N'loss', CAST(186.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (399, 3, N'loss', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (400, 1, N'gain', CAST(157.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (401, 1, N'gain', CAST(661.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (401, 2, N'loss', CAST(754.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (401, 3, N'gain', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (401, 4, N'loss', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (401, 5, N'loss', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (401, 6, N'gain', CAST(992.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (401, 7, N'loss', CAST(713.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (401, 8, N'loss', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (402, 1, N'loss', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (402, 2, N'gain', CAST(722.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (403, 1, N'gain', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (403, 2, N'loss', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (403, 3, N'loss', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (403, 4, N'loss', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (403, 5, N'loss', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (403, 6, N'loss', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (403, 7, N'gain', CAST(722.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (403, 8, N'loss', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (403, 9, N'loss', CAST(652.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (404, 1, N'gain', CAST(1024.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (404, 2, N'loss', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (404, 3, N'gain', CAST(157.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (404, 4, N'loss', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (404, 5, N'gain', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (404, 6, N'gain', CAST(992.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (404, 7, N'loss', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (404, 8, N'gain', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (404, 9, N'loss', CAST(591.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (404, 10, N'loss', CAST(22.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (405, 1, N'loss', CAST(465.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (405, 2, N'gain', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (405, 3, N'loss', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (405, 4, N'loss', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (406, 1, N'gain', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (406, 2, N'loss', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (406, 3, N'loss', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (406, 4, N'loss', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (406, 5, N'loss', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (407, 1, N'gain', CAST(825.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (407, 2, N'gain', CAST(713.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (407, 3, N'gain', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (407, 4, N'gain', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (407, 5, N'gain', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (407, 6, N'gain', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (407, 7, N'gain', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (407, 8, N'loss', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (408, 1, N'loss', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (408, 2, N'gain', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (408, 3, N'loss', CAST(1034.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (408, 4, N'loss', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (408, 5, N'loss', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (408, 6, N'loss', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (408, 7, N'loss', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (408, 8, N'gain', CAST(880.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (409, 1, N'loss', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (409, 2, N'gain', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (409, 3, N'loss', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (409, 4, N'loss', CAST(950.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (409, 5, N'loss', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (409, 6, N'loss', CAST(722.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (409, 7, N'loss', CAST(301.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (409, 8, N'loss', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (409, 9, N'gain', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (409, 10, N'gain', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (410, 1, N'loss', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (410, 2, N'loss', CAST(343.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (410, 3, N'gain', CAST(661.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (410, 4, N'gain', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (410, 5, N'loss', CAST(134.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (410, 6, N'loss', CAST(372.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (410, 7, N'loss', CAST(186.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (410, 8, N'loss', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (410, 9, N'loss', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (411, 1, N'gain', CAST(134.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (411, 2, N'gain', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (412, 1, N'loss', CAST(806.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (412, 2, N'loss', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (412, 3, N'gain', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (412, 4, N'gain', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (412, 5, N'loss', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (412, 6, N'gain', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (412, 7, N'loss', CAST(93.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (412, 8, N'gain', CAST(825.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (412, 9, N'loss', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (412, 10, N'gain', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (413, 1, N'loss', CAST(157.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (413, 2, N'gain', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (413, 3, N'gain', CAST(517.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (413, 4, N'gain', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (413, 5, N'loss', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (413, 6, N'loss', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (414, 1, N'gain', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (414, 2, N'gain', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (415, 1, N'loss', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (415, 2, N'gain', CAST(713.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (415, 3, N'gain', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (415, 4, N'loss', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (415, 5, N'loss', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (415, 6, N'gain', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (415, 7, N'gain', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (415, 8, N'loss', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (416, 1, N'loss', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (416, 2, N'loss', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (416, 3, N'loss', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (416, 4, N'gain', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (416, 5, N'gain', CAST(549.33 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (416, 6, N'loss', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (416, 7, N'gain', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (416, 8, N'gain', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (417, 1, N'loss', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (417, 2, N'gain', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (417, 3, N'loss', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (417, 4, N'gain', CAST(73.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (417, 5, N'gain', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (418, 1, N'gain', CAST(22.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (418, 2, N'loss', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (418, 3, N'gain', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (419, 1, N'gain', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (419, 2, N'gain', CAST(941.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (419, 3, N'loss', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (419, 4, N'loss', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (419, 5, N'loss', CAST(134.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (419, 6, N'gain', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (419, 7, N'loss', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (419, 8, N'loss', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (419, 9, N'gain', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (420, 1, N'loss', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (420, 2, N'loss', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (420, 3, N'gain', CAST(517.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (420, 4, N'gain', CAST(722.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (420, 5, N'gain', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (420, 6, N'gain', CAST(73.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (420, 7, N'gain', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (420, 8, N'gain', CAST(950.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (420, 9, N'gain', CAST(880.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (421, 1, N'gain', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (422, 1, N'loss', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (422, 2, N'gain', CAST(806.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (422, 3, N'gain', CAST(343.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (422, 4, N'loss', CAST(311.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (422, 5, N'gain', CAST(1034.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (423, 1, N'gain', CAST(629.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (424, 1, N'loss', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (424, 2, N'gain', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (424, 3, N'loss', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (424, 4, N'loss', CAST(745.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (425, 1, N'gain', CAST(629.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (425, 2, N'loss', CAST(713.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (425, 3, N'gain', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (425, 4, N'gain', CAST(992.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (426, 1, N'gain', CAST(517.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (427, 1, N'loss', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (427, 2, N'gain', CAST(880.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (427, 3, N'gain', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (427, 4, N'gain', CAST(167.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (427, 5, N'gain', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (427, 6, N'loss', CAST(157.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (427, 7, N'loss', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (428, 1, N'loss', CAST(526.84 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (428, 2, N'loss', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (428, 3, N'loss', CAST(558.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (429, 1, N'gain', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (429, 2, N'gain', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (429, 3, N'loss', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (429, 4, N'gain', CAST(199.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (429, 5, N'gain', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (429, 6, N'loss', CAST(549.33 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (430, 1, N'loss', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (430, 2, N'loss', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (430, 3, N'gain', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (430, 4, N'loss', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (430, 5, N'loss', CAST(424.04 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (430, 6, N'loss', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (431, 1, N'gain', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (431, 2, N'loss', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (431, 3, N'loss', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (431, 4, N'loss', CAST(1024.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (431, 5, N'gain', CAST(343.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (431, 6, N'gain', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (431, 7, N'gain', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (432, 1, N'loss', CAST(395.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (432, 2, N'gain', CAST(301.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (432, 3, N'loss', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (432, 4, N'loss', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (432, 5, N'gain', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (433, 1, N'gain', CAST(73.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (433, 2, N'gain', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (433, 3, N'gain', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (433, 4, N'loss', CAST(591.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (433, 5, N'loss', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (434, 1, N'loss', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (434, 2, N'gain', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (434, 3, N'loss', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (434, 4, N'gain', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (434, 5, N'gain', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (434, 6, N'loss', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (434, 7, N'gain', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (434, 8, N'loss', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (434, 9, N'gain', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (435, 1, N'loss', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (436, 1, N'gain', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (437, 1, N'gain', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (437, 2, N'loss', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (437, 3, N'loss', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (437, 4, N'gain', CAST(134.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (437, 5, N'loss', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (437, 6, N'loss', CAST(199.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (437, 7, N'loss', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (437, 8, N'loss', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (437, 9, N'loss', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (437, 10, N'loss', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (438, 1, N'loss', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (438, 2, N'gain', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (438, 3, N'loss', CAST(424.04 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (438, 4, N'loss', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (439, 1, N'gain', CAST(661.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (439, 2, N'gain', CAST(311.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (439, 3, N'gain', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (439, 4, N'loss', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (439, 5, N'loss', CAST(167.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (439, 6, N'loss', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (439, 7, N'gain', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (439, 8, N'loss', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (440, 1, N'loss', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (440, 2, N'loss', CAST(806.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (440, 3, N'gain', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (440, 4, N'loss', CAST(218.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (440, 5, N'gain', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (441, 1, N'gain', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (441, 2, N'loss', CAST(754.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (441, 3, N'gain', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (441, 4, N'loss', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (441, 5, N'gain', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (441, 6, N'gain', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (441, 7, N'gain', CAST(880.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (441, 8, N'loss', CAST(950.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (441, 9, N'loss', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (441, 10, N'loss', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (442, 1, N'loss', CAST(591.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (442, 2, N'gain', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (442, 3, N'gain', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (442, 4, N'loss', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (442, 5, N'loss', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (442, 6, N'loss', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (442, 7, N'loss', CAST(1034.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (443, 1, N'gain', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (443, 2, N'loss', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (443, 3, N'gain', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (443, 4, N'gain', CAST(684.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (443, 5, N'loss', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (443, 6, N'gain', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (443, 7, N'loss', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (444, 1, N'gain', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (444, 2, N'gain', CAST(722.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (444, 3, N'gain', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (445, 1, N'loss', CAST(558.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (446, 1, N'loss', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (447, 1, N'loss', CAST(558.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (447, 2, N'loss', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (447, 3, N'gain', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (447, 4, N'gain', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (448, 1, N'loss', CAST(652.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (448, 2, N'loss', CAST(880.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (448, 3, N'loss', CAST(713.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (448, 4, N'gain', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (448, 5, N'gain', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (448, 6, N'loss', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (448, 7, N'loss', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (448, 8, N'gain', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (449, 1, N'gain', CAST(992.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (449, 2, N'loss', CAST(1034.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (449, 3, N'loss', CAST(549.33 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (449, 4, N'gain', CAST(186.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (449, 5, N'gain', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (449, 6, N'loss', CAST(93.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (449, 7, N'loss', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (449, 8, N'gain', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (449, 9, N'loss', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (450, 1, N'loss', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (450, 2, N'gain', CAST(218.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (450, 3, N'loss', CAST(134.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (450, 4, N'gain', CAST(22.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (450, 5, N'gain', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (450, 6, N'loss', CAST(73.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (450, 7, N'loss', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (450, 8, N'loss', CAST(880.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (451, 1, N'gain', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (451, 2, N'loss', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (451, 3, N'gain', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (451, 4, N'loss', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (451, 5, N'loss', CAST(372.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (451, 6, N'gain', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (451, 7, N'loss', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (451, 8, N'gain', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (452, 1, N'loss', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (452, 2, N'loss', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (452, 3, N'gain', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (452, 4, N'gain', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (453, 1, N'loss', CAST(73.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (454, 1, N'loss', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (454, 2, N'loss', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (454, 3, N'gain', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (454, 4, N'loss', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (454, 5, N'loss', CAST(661.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (454, 6, N'loss', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (454, 7, N'loss', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (454, 8, N'gain', CAST(311.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (454, 9, N'loss', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (454, 10, N'loss', CAST(199.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (455, 1, N'loss', CAST(754.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (455, 2, N'gain', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (455, 3, N'gain', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (455, 4, N'gain', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (455, 5, N'gain', CAST(424.04 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (455, 6, N'loss', CAST(218.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (455, 7, N'gain', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (455, 8, N'loss', CAST(517.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (456, 1, N'gain', CAST(754.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (456, 2, N'loss', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (456, 3, N'gain', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (456, 4, N'loss', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (456, 5, N'gain', CAST(722.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (456, 6, N'gain', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (456, 7, N'loss', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (456, 8, N'loss', CAST(526.84 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (457, 1, N'gain', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (458, 1, N'gain', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (458, 2, N'gain', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (458, 3, N'gain', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (459, 1, N'loss', CAST(652.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (459, 2, N'gain', CAST(526.84 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (460, 1, N'loss', CAST(301.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (460, 2, N'loss', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (460, 3, N'gain', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (460, 4, N'loss', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (460, 5, N'loss', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (460, 6, N'gain', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (460, 7, N'loss', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (460, 8, N'loss', CAST(754.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (460, 9, N'loss', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (461, 1, N'loss', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (461, 2, N'loss', CAST(722.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (461, 3, N'loss', CAST(167.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (461, 4, N'gain', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (461, 5, N'gain', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (461, 6, N'loss', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (461, 7, N'loss', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (461, 8, N'gain', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (461, 9, N'loss', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (462, 1, N'loss', CAST(301.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (462, 2, N'loss', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (462, 3, N'gain', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (462, 4, N'loss', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (462, 5, N'gain', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (462, 6, N'loss', CAST(754.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (462, 7, N'gain', CAST(301.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (462, 8, N'gain', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (463, 1, N'gain', CAST(22.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (463, 2, N'loss', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (463, 3, N'loss', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (463, 4, N'gain', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (463, 5, N'gain', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (463, 6, N'gain', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (463, 7, N'gain', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (463, 8, N'loss', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (463, 9, N'loss', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (464, 1, N'gain', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (465, 1, N'loss', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (465, 2, N'loss', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (465, 3, N'loss', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (465, 4, N'gain', CAST(950.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (465, 5, N'gain', CAST(382.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (465, 6, N'gain', CAST(684.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (466, 1, N'gain', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (466, 2, N'loss', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (466, 3, N'loss', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (466, 4, N'gain', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (466, 5, N'gain', CAST(754.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (466, 6, N'loss', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (466, 7, N'loss', CAST(93.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (467, 1, N'loss', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (467, 2, N'gain', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (468, 1, N'gain', CAST(722.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (468, 2, N'loss', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (468, 3, N'gain', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (468, 4, N'gain', CAST(22.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (468, 5, N'loss', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (468, 6, N'gain', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (469, 1, N'gain', CAST(684.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (469, 2, N'loss', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (469, 3, N'gain', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (469, 4, N'gain', CAST(558.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (469, 5, N'loss', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (469, 6, N'loss', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (470, 1, N'gain', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (470, 2, N'gain', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (470, 3, N'loss', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (470, 4, N'loss', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (470, 5, N'loss', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (470, 6, N'gain', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (470, 7, N'loss', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (470, 8, N'gain', CAST(526.84 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (471, 1, N'gain', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (471, 2, N'loss', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (471, 3, N'gain', CAST(941.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (471, 4, N'gain', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (471, 5, N'loss', CAST(311.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (472, 1, N'loss', CAST(950.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (472, 2, N'gain', CAST(22.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (472, 3, N'loss', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (472, 4, N'gain', CAST(992.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (472, 5, N'loss', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (472, 6, N'loss', CAST(838.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (473, 1, N'loss', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (473, 2, N'gain', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (473, 3, N'loss', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (473, 4, N'loss', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (474, 1, N'gain', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (474, 2, N'loss', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (475, 1, N'loss', CAST(713.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (475, 2, N'gain', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (475, 3, N'loss', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (475, 4, N'loss', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (476, 1, N'gain', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (477, 1, N'gain', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (477, 2, N'gain', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (477, 3, N'loss', CAST(395.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (477, 4, N'gain', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (477, 5, N'gain', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (478, 1, N'gain', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (478, 2, N'loss', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (478, 3, N'loss', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (478, 4, N'gain', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (478, 5, N'loss', CAST(722.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (478, 6, N'gain', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (478, 7, N'gain', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (478, 8, N'gain', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (478, 9, N'loss', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (479, 1, N'loss', CAST(186.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (479, 2, N'loss', CAST(372.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (479, 3, N'loss', CAST(1034.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (479, 4, N'gain', CAST(745.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (479, 5, N'gain', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (480, 1, N'loss', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (481, 1, N'gain', CAST(134.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (481, 2, N'gain', CAST(591.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (481, 3, N'loss', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (482, 1, N'gain', CAST(950.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (482, 2, N'loss', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (482, 3, N'loss', CAST(199.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (483, 1, N'loss', CAST(825.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (483, 2, N'gain', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (483, 3, N'loss', CAST(517.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (483, 4, N'loss', CAST(722.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (483, 5, N'gain', CAST(684.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (483, 6, N'gain', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (483, 7, N'gain', CAST(382.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (483, 8, N'loss', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (483, 9, N'loss', CAST(591.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (484, 1, N'gain', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (484, 2, N'loss', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (484, 3, N'gain', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (484, 4, N'gain', CAST(806.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (485, 1, N'gain', CAST(372.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (485, 2, N'gain', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (485, 3, N'loss', CAST(745.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (486, 1, N'gain', CAST(311.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (486, 2, N'gain', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (486, 3, N'gain', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (486, 4, N'loss', CAST(157.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (486, 5, N'loss', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (486, 6, N'gain', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (486, 7, N'gain', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (486, 8, N'gain', CAST(880.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (486, 9, N'loss', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (487, 1, N'loss', CAST(629.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (487, 2, N'loss', CAST(199.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (488, 1, N'gain', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (488, 2, N'loss', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (488, 3, N'loss', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (488, 4, N'loss', CAST(838.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (488, 5, N'loss', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (488, 6, N'loss', CAST(713.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (488, 7, N'gain', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (488, 8, N'loss', CAST(745.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (488, 9, N'loss', CAST(157.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (488, 10, N'loss', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (489, 1, N'gain', CAST(465.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (489, 2, N'loss', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (489, 3, N'gain', CAST(880.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (489, 4, N'loss', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (489, 5, N'loss', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (490, 1, N'gain', CAST(199.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (490, 2, N'gain', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (490, 3, N'gain', CAST(825.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (490, 4, N'loss', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (490, 5, N'gain', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (490, 6, N'loss', CAST(372.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (490, 7, N'gain', CAST(186.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (490, 8, N'gain', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (490, 9, N'gain', CAST(199.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (491, 1, N'loss', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (491, 2, N'loss', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (491, 3, N'loss', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (491, 4, N'loss', CAST(424.04 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (491, 5, N'loss', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (491, 6, N'gain', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (491, 7, N'gain', CAST(157.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (491, 8, N'loss', CAST(134.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (491, 9, N'gain', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (491, 10, N'loss', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (492, 1, N'gain', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (493, 1, N'gain', CAST(465.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (493, 2, N'loss', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (493, 3, N'loss', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (493, 4, N'loss', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (493, 5, N'gain', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (493, 6, N'gain', CAST(880.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (493, 7, N'loss', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (494, 1, N'gain', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (495, 1, N'loss', CAST(825.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (495, 2, N'loss', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (495, 3, N'loss', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (495, 4, N'loss', CAST(992.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (495, 5, N'loss', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (496, 1, N'loss', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (497, 1, N'gain', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (497, 2, N'gain', CAST(1034.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (497, 3, N'gain', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (497, 4, N'loss', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (498, 1, N'loss', CAST(558.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (498, 2, N'gain', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (498, 3, N'gain', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (499, 1, N'loss', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (499, 2, N'gain', CAST(1024.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (499, 3, N'loss', CAST(880.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (499, 4, N'loss', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (500, 1, N'loss', CAST(825.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (500, 2, N'gain', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (500, 3, N'gain', CAST(629.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (500, 4, N'gain', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (500, 5, N'gain', CAST(167.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (500, 6, N'loss', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (500, 7, N'gain', CAST(558.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (500, 8, N'loss', CAST(661.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (500, 9, N'loss', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (501, 1, N'loss', CAST(652.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (501, 2, N'loss', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (501, 3, N'loss', CAST(629.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (501, 4, N'gain', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (501, 5, N'loss', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (501, 6, N'loss', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (502, 1, N'loss', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (502, 2, N'gain', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (502, 3, N'gain', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (502, 4, N'gain', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (502, 5, N'loss', CAST(372.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (502, 6, N'gain', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (503, 1, N'loss', CAST(549.33 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (503, 2, N'gain', CAST(311.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (503, 3, N'gain', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (504, 1, N'gain', CAST(713.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (504, 2, N'gain', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (504, 3, N'loss', CAST(372.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (504, 4, N'gain', CAST(661.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (504, 5, N'loss', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (504, 6, N'gain', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (504, 7, N'gain', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (504, 8, N'gain', CAST(395.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (504, 9, N'loss', CAST(343.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (504, 10, N'gain', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (505, 1, N'gain', CAST(526.84 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (505, 2, N'loss', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (505, 3, N'gain', CAST(684.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (505, 4, N'gain', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (506, 1, N'loss', CAST(825.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (506, 2, N'gain', CAST(629.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (506, 3, N'loss', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (506, 4, N'loss', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (506, 5, N'loss', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (506, 6, N'gain', CAST(661.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (506, 7, N'gain', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (507, 1, N'loss', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (507, 2, N'gain', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (507, 3, N'gain', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (508, 1, N'loss', CAST(745.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (508, 2, N'loss', CAST(93.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (508, 3, N'gain', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (508, 4, N'loss', CAST(661.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (508, 5, N'gain', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (508, 6, N'loss', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (508, 7, N'loss', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (509, 1, N'gain', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (509, 2, N'loss', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (510, 1, N'gain', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (510, 2, N'gain', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (510, 3, N'loss', CAST(992.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (510, 4, N'gain', CAST(465.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (511, 1, N'loss', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (511, 2, N'gain', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (511, 3, N'gain', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (511, 4, N'gain', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (511, 5, N'gain', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (512, 1, N'loss', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (512, 2, N'loss', CAST(424.04 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (512, 3, N'gain', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (512, 4, N'loss', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (512, 5, N'gain', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (512, 6, N'gain', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (512, 7, N'gain', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (512, 8, N'loss', CAST(713.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (512, 9, N'gain', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (513, 1, N'gain', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (513, 2, N'gain', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (513, 3, N'loss', CAST(456.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (513, 4, N'loss', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (513, 5, N'gain', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (513, 6, N'gain', CAST(526.84 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (514, 1, N'loss', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (514, 2, N'loss', CAST(134.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (514, 3, N'gain', CAST(311.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (514, 4, N'gain', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (514, 5, N'gain', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (514, 6, N'loss', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (514, 7, N'gain', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (514, 8, N'loss', CAST(382.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (514, 9, N'gain', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (515, 1, N'gain', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (515, 2, N'loss', CAST(73.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (515, 3, N'gain', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (515, 4, N'loss', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (515, 5, N'gain', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (515, 6, N'gain', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (515, 7, N'gain', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (515, 8, N'gain', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (516, 1, N'loss', CAST(722.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (516, 2, N'loss', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (516, 3, N'loss', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (516, 4, N'gain', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (516, 5, N'gain', CAST(549.33 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (516, 6, N'loss', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (517, 1, N'loss', CAST(754.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (517, 2, N'gain', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (518, 1, N'gain', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (518, 2, N'loss', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (518, 3, N'loss', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (518, 4, N'gain', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (518, 5, N'loss', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (518, 6, N'gain', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (518, 7, N'loss', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (519, 1, N'loss', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (520, 1, N'gain', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (520, 2, N'loss', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (520, 3, N'loss', CAST(395.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (520, 4, N'loss', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (520, 5, N'loss', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (520, 6, N'loss', CAST(199.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (521, 1, N'loss', CAST(134.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (521, 2, N'loss', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (521, 3, N'gain', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (521, 4, N'loss', CAST(652.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (521, 5, N'loss', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (521, 6, N'loss', CAST(661.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (521, 7, N'loss', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (521, 8, N'loss', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (521, 9, N'loss', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (522, 1, N'gain', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (522, 2, N'gain', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (522, 3, N'loss', CAST(950.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (523, 1, N'loss', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (523, 2, N'gain', CAST(549.33 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (523, 3, N'loss', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (523, 4, N'loss', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (523, 5, N'loss', CAST(880.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (523, 6, N'loss', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (523, 7, N'gain', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (524, 1, N'gain', CAST(465.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (524, 2, N'loss', CAST(1024.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (524, 3, N'loss', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (524, 4, N'gain', CAST(517.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (524, 5, N'gain', CAST(382.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (524, 6, N'loss', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (524, 7, N'gain', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (524, 8, N'loss', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (524, 9, N'loss', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (524, 10, N'loss', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (525, 1, N'gain', CAST(93.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (526, 1, N'loss', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (526, 2, N'loss', CAST(93.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (526, 3, N'gain', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (526, 4, N'loss', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (527, 1, N'loss', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (527, 2, N'gain', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (527, 3, N'loss', CAST(526.84 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (527, 4, N'gain', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (527, 5, N'loss', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (527, 6, N'loss', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (527, 7, N'gain', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (527, 8, N'gain', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (528, 1, N'gain', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (528, 2, N'gain', CAST(186.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (528, 3, N'loss', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (528, 4, N'gain', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (528, 5, N'gain', CAST(301.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (529, 1, N'gain', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (529, 2, N'gain', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (529, 3, N'gain', CAST(199.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (529, 4, N'gain', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (530, 1, N'loss', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (530, 2, N'loss', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (530, 3, N'loss', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (530, 4, N'loss', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (530, 5, N'gain', CAST(382.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (530, 6, N'gain', CAST(880.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (531, 1, N'gain', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (531, 2, N'gain', CAST(301.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (531, 3, N'gain', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (531, 4, N'gain', CAST(456.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (531, 5, N'gain', CAST(134.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (531, 6, N'loss', CAST(424.04 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (531, 7, N'loss', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (531, 8, N'gain', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (531, 9, N'loss', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (532, 1, N'loss', CAST(629.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (532, 2, N'loss', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (532, 3, N'gain', CAST(199.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (532, 4, N'gain', CAST(549.33 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (532, 5, N'gain', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (532, 6, N'loss', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (532, 7, N'gain', CAST(93.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (533, 1, N'gain', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (533, 2, N'loss', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (533, 3, N'gain', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (534, 1, N'loss', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (534, 2, N'gain', CAST(992.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (534, 3, N'gain', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (534, 4, N'loss', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (534, 5, N'loss', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (534, 6, N'gain', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (534, 7, N'gain', CAST(517.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (534, 8, N'gain', CAST(465.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (534, 9, N'loss', CAST(941.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (535, 1, N'loss', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (535, 2, N'loss', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (535, 3, N'loss', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (535, 4, N'loss', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (535, 5, N'loss', CAST(992.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (535, 6, N'gain', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (535, 7, N'gain', CAST(134.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (535, 8, N'gain', CAST(745.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (535, 9, N'loss', CAST(199.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (536, 1, N'gain', CAST(661.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (536, 2, N'gain', CAST(218.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (536, 3, N'loss', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (536, 4, N'gain', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (536, 5, N'loss', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (536, 6, N'gain', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (537, 1, N'gain', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (537, 2, N'gain', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (537, 3, N'loss', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (537, 4, N'gain', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (537, 5, N'gain', CAST(806.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (537, 6, N'gain', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (537, 7, N'gain', CAST(591.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (537, 8, N'gain', CAST(311.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (537, 9, N'loss', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (538, 1, N'gain', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (538, 2, N'loss', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (538, 3, N'loss', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (538, 4, N'gain', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (538, 5, N'gain', CAST(167.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (539, 1, N'gain', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (539, 2, N'loss', CAST(941.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (539, 3, N'gain', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (539, 4, N'gain', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (539, 5, N'loss', CAST(382.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (539, 6, N'loss', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (539, 7, N'gain', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (539, 8, N'loss', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (539, 9, N'gain', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (540, 1, N'loss', CAST(992.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (540, 2, N'gain', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (540, 3, N'gain', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (540, 4, N'gain', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (540, 5, N'loss', CAST(806.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (540, 6, N'gain', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (540, 7, N'gain', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (540, 8, N'gain', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (540, 9, N'loss', CAST(825.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (541, 1, N'loss', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (542, 1, N'gain', CAST(517.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (542, 2, N'loss', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (543, 1, N'gain', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (543, 2, N'loss', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (543, 3, N'loss', CAST(134.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (543, 4, N'loss', CAST(424.04 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (544, 1, N'loss', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (544, 2, N'loss', CAST(713.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (544, 3, N'gain', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (544, 4, N'gain', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (544, 5, N'loss', CAST(186.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (544, 6, N'loss', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (544, 7, N'loss', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (545, 1, N'gain', CAST(722.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (545, 2, N'loss', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (545, 3, N'loss', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (545, 4, N'loss', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (545, 5, N'gain', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (545, 6, N'loss', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (545, 7, N'loss', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (545, 8, N'gain', CAST(526.84 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (546, 1, N'loss', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (547, 1, N'gain', CAST(806.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (547, 2, N'gain', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (547, 3, N'gain', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (547, 4, N'gain', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (548, 1, N'gain', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (548, 2, N'gain', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (548, 3, N'loss', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (548, 4, N'gain', CAST(992.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (548, 5, N'loss', CAST(684.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (548, 6, N'gain', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (548, 7, N'loss', CAST(311.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (548, 8, N'gain', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (548, 9, N'gain', CAST(880.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (549, 1, N'loss', CAST(372.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (550, 1, N'gain', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (550, 2, N'loss', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (550, 3, N'loss', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (550, 4, N'loss', CAST(684.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (550, 5, N'gain', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (550, 6, N'loss', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (550, 7, N'loss', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (551, 1, N'loss', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (551, 2, N'loss', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (552, 1, N'gain', CAST(992.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (552, 2, N'loss', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (552, 3, N'gain', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (552, 4, N'loss', CAST(549.33 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (552, 5, N'gain', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (552, 6, N'loss', CAST(713.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (552, 7, N'gain', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (552, 8, N'loss', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (552, 9, N'loss', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (552, 10, N'loss', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (553, 1, N'loss', CAST(311.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (553, 2, N'loss', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (553, 3, N'loss', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (553, 4, N'gain', CAST(549.33 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (554, 1, N'gain', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (554, 2, N'gain', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (554, 3, N'loss', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (555, 1, N'gain', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (555, 2, N'gain', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (556, 1, N'gain', CAST(591.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (556, 2, N'loss', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (556, 3, N'loss', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (557, 1, N'gain', CAST(722.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (557, 2, N'gain', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (557, 3, N'loss', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (558, 1, N'gain', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (558, 2, N'gain', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (558, 3, N'gain', CAST(526.84 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (558, 4, N'loss', CAST(167.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (558, 5, N'loss', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (558, 6, N'gain', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (558, 7, N'gain', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (558, 8, N'loss', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (558, 9, N'gain', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (559, 1, N'gain', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (559, 2, N'loss', CAST(745.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (559, 3, N'gain', CAST(343.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (560, 1, N'gain', CAST(745.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (560, 2, N'gain', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (560, 3, N'loss', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (560, 4, N'loss', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (561, 1, N'loss', CAST(722.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (561, 2, N'loss', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (561, 3, N'loss', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (561, 4, N'loss', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (562, 1, N'gain', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (562, 2, N'loss', CAST(382.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (562, 3, N'gain', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (562, 4, N'gain', CAST(424.04 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (562, 5, N'gain', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (562, 6, N'gain', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (562, 7, N'loss', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (562, 8, N'gain', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (562, 9, N'gain', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (562, 10, N'loss', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (563, 1, N'loss', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (563, 2, N'loss', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (563, 3, N'loss', CAST(372.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (563, 4, N'loss', CAST(838.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (563, 5, N'loss', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (563, 6, N'gain', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (563, 7, N'loss', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (563, 8, N'loss', CAST(950.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (563, 9, N'gain', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (563, 10, N'loss', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (564, 1, N'gain', CAST(838.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (564, 2, N'loss', CAST(745.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (564, 3, N'gain', CAST(825.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (564, 4, N'gain', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (564, 5, N'gain', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (564, 6, N'gain', CAST(745.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (565, 1, N'loss', CAST(549.33 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (565, 2, N'gain', CAST(456.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (566, 1, N'loss', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (566, 2, N'gain', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (566, 3, N'loss', CAST(1034.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (566, 4, N'gain', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (566, 5, N'gain', CAST(549.33 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (566, 6, N'gain', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (566, 7, N'gain', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (566, 8, N'loss', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (566, 9, N'gain', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (567, 1, N'gain', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (567, 2, N'loss', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (567, 3, N'loss', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (567, 4, N'gain', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (567, 5, N'loss', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (567, 6, N'gain', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (568, 1, N'loss', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (568, 2, N'gain', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (568, 3, N'gain', CAST(93.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (568, 4, N'gain', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (568, 5, N'loss', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (568, 6, N'loss', CAST(754.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (568, 7, N'gain', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (568, 8, N'gain', CAST(456.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (569, 1, N'gain', CAST(652.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (569, 2, N'loss', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (570, 1, N'loss', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (570, 2, N'gain', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (570, 3, N'gain', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (570, 4, N'loss', CAST(167.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (570, 5, N'loss', CAST(629.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (570, 6, N'loss', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (570, 7, N'loss', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (571, 1, N'gain', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (571, 2, N'loss', CAST(526.84 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (571, 3, N'loss', CAST(526.84 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (571, 4, N'loss', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (571, 5, N'gain', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (571, 6, N'gain', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (572, 1, N'loss', CAST(22.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (572, 2, N'gain', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (572, 3, N'loss', CAST(838.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (572, 4, N'loss', CAST(372.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (572, 5, N'gain', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (572, 6, N'gain', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (572, 7, N'loss', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (572, 8, N'gain', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (573, 1, N'loss', CAST(157.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (573, 2, N'loss', CAST(713.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (573, 3, N'loss', CAST(465.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (573, 4, N'gain', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (573, 5, N'gain', CAST(157.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (573, 6, N'gain', CAST(526.84 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (573, 7, N'loss', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (573, 8, N'loss', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (574, 1, N'loss', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (574, 2, N'loss', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (575, 1, N'gain', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (576, 1, N'loss', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (576, 2, N'loss', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (577, 1, N'gain', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (577, 2, N'gain', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (577, 3, N'gain', CAST(382.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (577, 4, N'loss', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (578, 1, N'gain', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (578, 2, N'loss', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (578, 3, N'gain', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (578, 4, N'loss', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (578, 5, N'loss', CAST(456.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (578, 6, N'loss', CAST(73.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (578, 7, N'gain', CAST(549.33 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (578, 8, N'loss', CAST(591.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (578, 9, N'loss', CAST(199.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (578, 10, N'gain', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (579, 1, N'gain', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (579, 2, N'gain', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (579, 3, N'gain', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (579, 4, N'gain', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (580, 1, N'gain', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (580, 2, N'gain', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (580, 3, N'loss', CAST(456.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (581, 1, N'gain', CAST(1034.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (581, 2, N'loss', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (581, 3, N'gain', CAST(93.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (581, 4, N'loss', CAST(549.33 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (581, 5, N'loss', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (581, 6, N'gain', CAST(73.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (581, 7, N'loss', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (581, 8, N'loss', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (582, 1, N'gain', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (582, 2, N'loss', CAST(199.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (582, 3, N'loss', CAST(825.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (583, 1, N'gain', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (584, 1, N'gain', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (584, 2, N'loss', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (584, 3, N'loss', CAST(549.33 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (584, 4, N'loss', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (584, 5, N'loss', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (584, 6, N'gain', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (584, 7, N'gain', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (584, 8, N'loss', CAST(713.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (584, 9, N'gain', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (584, 10, N'loss', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (585, 1, N'loss', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (585, 2, N'gain', CAST(134.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (585, 3, N'gain', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (585, 4, N'loss', CAST(456.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (585, 5, N'loss', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (585, 6, N'gain', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (585, 7, N'loss', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (585, 8, N'loss', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (585, 9, N'loss', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (585, 10, N'loss', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (586, 1, N'loss', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (586, 2, N'loss', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (586, 3, N'gain', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (586, 4, N'loss', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (586, 5, N'gain', CAST(22.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (587, 1, N'gain', CAST(395.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (587, 2, N'loss', CAST(526.84 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (587, 3, N'gain', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (587, 4, N'gain', CAST(661.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (587, 5, N'gain', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (588, 1, N'loss', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (588, 2, N'loss', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (589, 1, N'gain', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (589, 2, N'gain', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (589, 3, N'loss', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (589, 4, N'gain', CAST(343.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (589, 5, N'loss', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (589, 6, N'gain', CAST(652.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (589, 7, N'loss', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (590, 1, N'gain', CAST(395.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (590, 2, N'gain', CAST(343.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (590, 3, N'loss', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (590, 4, N'loss', CAST(395.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (590, 5, N'loss', CAST(465.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (590, 6, N'loss', CAST(992.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (591, 1, N'loss', CAST(73.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (591, 2, N'loss', CAST(372.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (591, 3, N'gain', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (591, 4, N'gain', CAST(301.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (591, 5, N'loss', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (591, 6, N'gain', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (591, 7, N'loss', CAST(880.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (591, 8, N'gain', CAST(754.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (591, 9, N'gain', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (591, 10, N'gain', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (592, 1, N'gain', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (592, 2, N'loss', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (592, 3, N'loss', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (593, 1, N'loss', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (593, 2, N'loss', CAST(424.04 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (593, 3, N'loss', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (594, 1, N'loss', CAST(591.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (595, 1, N'loss', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (595, 2, N'gain', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (595, 3, N'gain', CAST(395.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (595, 4, N'loss', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (595, 5, N'gain', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (596, 1, N'loss', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (596, 2, N'loss', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (597, 1, N'loss', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (597, 2, N'gain', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (597, 3, N'gain', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (597, 4, N'loss', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (597, 5, N'loss', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (598, 1, N'gain', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (598, 2, N'loss', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (598, 3, N'gain', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (598, 4, N'loss', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (598, 5, N'loss', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (598, 6, N'loss', CAST(134.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (598, 7, N'gain', CAST(661.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (598, 8, N'loss', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (599, 1, N'loss', CAST(950.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (599, 2, N'loss', CAST(526.84 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (599, 3, N'loss', CAST(22.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (599, 4, N'gain', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (599, 5, N'loss', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (599, 6, N'gain', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (600, 1, N'gain', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (600, 2, N'gain', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (600, 3, N'gain', CAST(343.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (600, 4, N'loss', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (600, 5, N'gain', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (600, 6, N'gain', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (601, 1, N'loss', CAST(186.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (601, 2, N'gain', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (601, 3, N'gain', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (601, 4, N'loss', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (602, 1, N'loss', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (602, 2, N'loss', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (602, 3, N'gain', CAST(684.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (602, 4, N'gain', CAST(218.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (602, 5, N'loss', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (603, 1, N'gain', CAST(661.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (603, 2, N'gain', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (603, 3, N'gain', CAST(838.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (603, 4, N'loss', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (603, 5, N'loss', CAST(838.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (603, 6, N'gain', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (603, 7, N'gain', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (603, 8, N'gain', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (603, 9, N'loss', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (604, 1, N'loss', CAST(838.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (604, 2, N'loss', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (604, 3, N'loss', CAST(22.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (604, 4, N'gain', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (604, 5, N'loss', CAST(745.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (604, 6, N'loss', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (604, 7, N'loss', CAST(661.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (604, 8, N'loss', CAST(558.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (604, 9, N'loss', CAST(950.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (604, 10, N'gain', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (605, 1, N'loss', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (605, 2, N'loss', CAST(465.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (605, 3, N'loss', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (605, 4, N'loss', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (606, 1, N'gain', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (606, 2, N'gain', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (606, 3, N'loss', CAST(73.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (606, 4, N'gain', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (607, 1, N'loss', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (607, 2, N'gain', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (607, 3, N'gain', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (607, 4, N'loss', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (607, 5, N'loss', CAST(199.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (607, 6, N'loss', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (607, 7, N'loss', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (607, 8, N'gain', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (608, 1, N'gain', CAST(1024.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (608, 2, N'loss', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (608, 3, N'gain', CAST(382.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (609, 1, N'loss', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (609, 2, N'loss', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (609, 3, N'gain', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (609, 4, N'gain', CAST(311.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (610, 1, N'loss', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (610, 2, N'loss', CAST(526.84 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (610, 3, N'loss', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (610, 4, N'gain', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (610, 5, N'loss', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (611, 1, N'gain', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (611, 2, N'gain', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (611, 3, N'gain', CAST(343.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (611, 4, N'loss', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (611, 5, N'loss', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (611, 6, N'gain', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (612, 1, N'gain', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (612, 2, N'loss', CAST(382.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (612, 3, N'gain', CAST(745.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (612, 4, N'gain', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (612, 5, N'gain', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (612, 6, N'gain', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (613, 1, N'loss', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (613, 2, N'gain', CAST(713.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (613, 3, N'gain', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (613, 4, N'gain', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (613, 5, N'loss', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (613, 6, N'loss', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (613, 7, N'gain', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (613, 8, N'loss', CAST(199.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (613, 9, N'gain', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (613, 10, N'loss', CAST(526.84 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (614, 1, N'gain', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (614, 2, N'gain', CAST(134.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (614, 3, N'gain', CAST(343.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (614, 4, N'gain', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (615, 1, N'loss', CAST(1034.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (615, 2, N'gain', CAST(186.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (615, 3, N'loss', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (615, 4, N'loss', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (615, 5, N'loss', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (615, 6, N'gain', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (615, 7, N'loss', CAST(652.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (615, 8, N'loss', CAST(713.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (615, 9, N'gain', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (615, 10, N'gain', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (616, 1, N'loss', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (616, 2, N'gain', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (616, 3, N'loss', CAST(661.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (616, 4, N'loss', CAST(825.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (616, 5, N'gain', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (616, 6, N'gain', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (617, 1, N'gain', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (617, 2, N'loss', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (617, 3, N'gain', CAST(311.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (617, 4, N'gain', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (617, 5, N'gain', CAST(591.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (617, 6, N'gain', CAST(684.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (617, 7, N'gain', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (617, 8, N'gain', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (618, 1, N'gain', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (618, 2, N'gain', CAST(456.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (618, 3, N'loss', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (618, 4, N'gain', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (619, 1, N'gain', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (620, 1, N'loss', CAST(157.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (620, 2, N'gain', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (620, 3, N'gain', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (620, 4, N'loss', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (620, 5, N'loss', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (620, 6, N'loss', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (620, 7, N'gain', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (620, 8, N'gain', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (620, 9, N'gain', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (621, 1, N'loss', CAST(652.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (622, 1, N'gain', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (622, 2, N'loss', CAST(301.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (622, 3, N'loss', CAST(382.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (623, 1, N'gain', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (623, 2, N'gain', CAST(199.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (623, 3, N'gain', CAST(382.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (624, 1, N'loss', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (624, 2, N'gain', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (624, 3, N'gain', CAST(395.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (624, 4, N'loss', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (624, 5, N'loss', CAST(825.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (624, 6, N'gain', CAST(517.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (624, 7, N'gain', CAST(301.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (624, 8, N'loss', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (624, 9, N'gain', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (625, 1, N'gain', CAST(591.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (625, 2, N'loss', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (625, 3, N'gain', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (625, 4, N'loss', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (626, 1, N'loss', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (626, 2, N'loss', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (626, 3, N'loss', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (627, 1, N'loss', CAST(661.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (628, 1, N'gain', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (629, 1, N'gain', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (629, 2, N'gain', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (629, 3, N'gain', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (629, 4, N'loss', CAST(343.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (629, 5, N'loss', CAST(301.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (629, 6, N'gain', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (630, 1, N'gain', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (630, 2, N'gain', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (630, 3, N'gain', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (630, 4, N'gain', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (630, 5, N'loss', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (630, 6, N'gain', CAST(382.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (630, 7, N'loss', CAST(722.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (631, 1, N'gain', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (631, 2, N'gain', CAST(558.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (631, 3, N'loss', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (631, 4, N'loss', CAST(558.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (632, 1, N'gain', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (632, 2, N'loss', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (633, 1, N'loss', CAST(199.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (633, 2, N'loss', CAST(941.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (634, 1, N'loss', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (634, 2, N'loss', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (634, 3, N'gain', CAST(372.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (634, 4, N'gain', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (634, 5, N'gain', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (634, 6, N'gain', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (634, 7, N'gain', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (635, 1, N'gain', CAST(311.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (635, 2, N'loss', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (635, 3, N'gain', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (635, 4, N'loss', CAST(880.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (635, 5, N'gain', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (635, 6, N'loss', CAST(311.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (635, 7, N'loss', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (636, 1, N'loss', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (636, 2, N'gain', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (636, 3, N'loss', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (636, 4, N'loss', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (637, 1, N'loss', CAST(629.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (638, 1, N'loss', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (638, 2, N'loss', CAST(218.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (638, 3, N'loss', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (638, 4, N'gain', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (638, 5, N'gain', CAST(1024.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (639, 1, N'loss', CAST(93.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (639, 2, N'loss', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (639, 3, N'gain', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (639, 4, N'gain', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (639, 5, N'loss', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (639, 6, N'gain', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (639, 7, N'gain', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (639, 8, N'gain', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (639, 9, N'gain', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (640, 1, N'loss', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (640, 2, N'loss', CAST(301.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (640, 3, N'loss', CAST(754.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (640, 4, N'gain', CAST(157.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (640, 5, N'gain', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (641, 1, N'loss', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (641, 2, N'loss', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (641, 3, N'gain', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (641, 4, N'loss', CAST(311.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (642, 1, N'gain', CAST(343.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (642, 2, N'gain', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (642, 3, N'loss', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (642, 4, N'gain', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (643, 1, N'loss', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (643, 2, N'gain', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (643, 3, N'loss', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (643, 4, N'gain', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (643, 5, N'gain', CAST(684.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (643, 6, N'gain', CAST(745.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (643, 7, N'gain', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (643, 8, N'loss', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (644, 1, N'loss', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (644, 2, N'gain', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (644, 3, N'gain', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (644, 4, N'loss', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (644, 5, N'gain', CAST(311.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (644, 6, N'gain', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (644, 7, N'gain', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (644, 8, N'gain', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (644, 9, N'loss', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (644, 10, N'loss', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (645, 1, N'gain', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (645, 2, N'loss', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (645, 3, N'loss', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (645, 4, N'loss', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (645, 5, N'loss', CAST(395.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (645, 6, N'gain', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (645, 7, N'gain', CAST(526.84 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (646, 1, N'loss', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (646, 2, N'gain', CAST(93.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (646, 3, N'loss', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (646, 4, N'loss', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (646, 5, N'loss', CAST(652.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (646, 6, N'loss', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (647, 1, N'gain', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (647, 2, N'loss', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (647, 3, N'loss', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (647, 4, N'gain', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (647, 5, N'loss', CAST(684.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (647, 6, N'gain', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (647, 7, N'gain', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (647, 8, N'loss', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (648, 1, N'gain', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (648, 2, N'gain', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (648, 3, N'loss', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (648, 4, N'loss', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (648, 5, N'loss', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (648, 6, N'loss', CAST(838.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (648, 7, N'gain', CAST(1024.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (648, 8, N'loss', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (649, 1, N'gain', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (649, 2, N'gain', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (649, 3, N'loss', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (649, 4, N'gain', CAST(382.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (649, 5, N'loss', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (649, 6, N'gain', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (650, 1, N'gain', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (650, 2, N'loss', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (650, 3, N'loss', CAST(713.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (650, 4, N'loss', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (650, 5, N'loss', CAST(456.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (650, 6, N'loss', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (651, 1, N'loss', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (651, 2, N'loss', CAST(591.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (651, 3, N'gain', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (651, 4, N'gain', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (652, 1, N'loss', CAST(629.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (652, 2, N'loss', CAST(424.04 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (652, 3, N'loss', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (653, 1, N'loss', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (653, 2, N'gain', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (653, 3, N'gain', CAST(424.04 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (653, 4, N'loss', CAST(591.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (653, 5, N'gain', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (653, 6, N'gain', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (654, 1, N'loss', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (654, 2, N'gain', CAST(134.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (654, 3, N'gain', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (654, 4, N'gain', CAST(652.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (654, 5, N'loss', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (654, 6, N'gain', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (654, 7, N'gain', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (655, 1, N'gain', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (655, 2, N'gain', CAST(941.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (655, 3, N'loss', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (655, 4, N'gain', CAST(301.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (656, 1, N'gain', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (657, 1, N'gain', CAST(941.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (657, 2, N'loss', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (657, 3, N'gain', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (657, 4, N'gain', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (657, 5, N'gain', CAST(1024.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (657, 6, N'gain', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (657, 7, N'gain', CAST(526.84 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (657, 8, N'loss', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (658, 1, N'gain', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (658, 2, N'loss', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (658, 3, N'gain', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (658, 4, N'gain', CAST(558.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (658, 5, N'loss', CAST(134.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (658, 6, N'gain', CAST(395.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (658, 7, N'gain', CAST(992.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (658, 8, N'loss', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (659, 1, N'gain', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (659, 2, N'gain', CAST(343.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (659, 3, N'gain', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (659, 4, N'gain', CAST(73.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (659, 5, N'gain', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (659, 6, N'gain', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (659, 7, N'loss', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (659, 8, N'gain', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (659, 9, N'gain', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (660, 1, N'gain', CAST(591.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (660, 2, N'loss', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (660, 3, N'loss', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (660, 4, N'loss', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (660, 5, N'gain', CAST(992.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (660, 6, N'loss', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (661, 1, N'loss', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (661, 2, N'loss', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (661, 3, N'loss', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (661, 4, N'gain', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (661, 5, N'gain', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (661, 6, N'loss', CAST(372.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (661, 7, N'gain', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (662, 1, N'loss', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (662, 2, N'gain', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (662, 3, N'gain', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (662, 4, N'gain', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (662, 5, N'gain', CAST(93.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (662, 6, N'gain', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (662, 7, N'gain', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (662, 8, N'gain', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (662, 9, N'loss', CAST(713.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (662, 10, N'gain', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (663, 1, N'gain', CAST(199.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (663, 2, N'gain', CAST(199.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (663, 3, N'loss', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (663, 4, N'gain', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (663, 5, N'loss', CAST(838.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (664, 1, N'loss', CAST(424.04 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (664, 2, N'gain', CAST(301.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (665, 1, N'loss', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (665, 2, N'loss', CAST(745.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (665, 3, N'loss', CAST(838.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (665, 4, N'loss', CAST(684.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (665, 5, N'gain', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (665, 6, N'loss', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (665, 7, N'gain', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (665, 8, N'gain', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (665, 9, N'gain', CAST(684.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (666, 1, N'loss', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (666, 2, N'loss', CAST(456.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (666, 3, N'gain', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (666, 4, N'loss', CAST(713.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (666, 5, N'gain', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (666, 6, N'loss', CAST(157.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (666, 7, N'gain', CAST(382.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (667, 1, N'gain', CAST(745.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (667, 2, N'gain', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (667, 3, N'loss', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (667, 4, N'loss', CAST(591.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (667, 5, N'gain', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (667, 6, N'loss', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (667, 7, N'gain', CAST(22.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (667, 8, N'gain', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (667, 9, N'loss', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (668, 1, N'gain', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (668, 2, N'loss', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (668, 3, N'loss', CAST(424.04 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (668, 4, N'gain', CAST(1024.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (669, 1, N'gain', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (669, 2, N'loss', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (670, 1, N'gain', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (670, 2, N'loss', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (670, 3, N'loss', CAST(93.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (670, 4, N'gain', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (670, 5, N'gain', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (670, 6, N'loss', CAST(1024.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (670, 7, N'gain', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (670, 8, N'loss', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (670, 9, N'gain', CAST(93.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (671, 1, N'loss', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (672, 1, N'gain', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (672, 2, N'gain', CAST(517.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (672, 3, N'gain', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (672, 4, N'loss', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (672, 5, N'loss', CAST(549.33 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (673, 1, N'loss', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (673, 2, N'gain', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (673, 3, N'gain', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (673, 4, N'loss', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (673, 5, N'gain', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (673, 6, N'loss', CAST(652.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (674, 1, N'loss', CAST(838.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (674, 2, N'loss', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (674, 3, N'loss', CAST(880.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (674, 4, N'gain', CAST(880.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (674, 5, N'loss', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (674, 6, N'loss', CAST(549.33 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (674, 7, N'gain', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (674, 8, N'gain', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (675, 1, N'loss', CAST(806.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (676, 1, N'gain', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (676, 2, N'gain', CAST(93.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (676, 3, N'loss', CAST(73.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (676, 4, N'gain', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (676, 5, N'gain', CAST(549.33 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (676, 6, N'gain', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (676, 7, N'loss', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (676, 8, N'gain', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (677, 1, N'loss', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (678, 1, N'gain', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (678, 2, N'loss', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (678, 3, N'loss', CAST(134.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (678, 4, N'loss', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (678, 5, N'gain', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (678, 6, N'loss', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (678, 7, N'gain', CAST(167.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (679, 1, N'gain', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (679, 2, N'gain', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (679, 3, N'loss', CAST(456.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (679, 4, N'gain', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (679, 5, N'loss', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (679, 6, N'loss', CAST(684.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (679, 7, N'gain', CAST(825.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (679, 8, N'loss', CAST(713.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (679, 9, N'gain', CAST(745.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (680, 1, N'loss', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (680, 2, N'gain', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (681, 1, N'gain', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (681, 2, N'gain', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (681, 3, N'gain', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (681, 4, N'gain', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (681, 5, N'gain', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (681, 6, N'gain', CAST(722.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (681, 7, N'loss', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (681, 8, N'gain', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (681, 9, N'loss', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (681, 10, N'gain', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (682, 1, N'gain', CAST(950.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (682, 2, N'loss', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (682, 3, N'loss', CAST(301.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (682, 4, N'gain', CAST(992.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (682, 5, N'gain', CAST(1034.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (683, 1, N'loss', CAST(395.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (684, 1, N'loss', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (684, 2, N'loss', CAST(806.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (684, 3, N'loss', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (684, 4, N'gain', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (684, 5, N'gain', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (684, 6, N'gain', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (684, 7, N'gain', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (684, 8, N'loss', CAST(134.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (684, 9, N'loss', CAST(382.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (685, 1, N'loss', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (685, 2, N'gain', CAST(22.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (685, 3, N'loss', CAST(745.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (685, 4, N'gain', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (685, 5, N'loss', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (685, 6, N'gain', CAST(806.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (685, 7, N'gain', CAST(754.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (685, 8, N'gain', CAST(465.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (685, 9, N'gain', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (686, 1, N'loss', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (687, 1, N'loss', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (687, 2, N'gain', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (688, 1, N'loss', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (688, 2, N'loss', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (688, 3, N'loss', CAST(950.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (688, 4, N'gain', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (688, 5, N'loss', CAST(722.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (688, 6, N'loss', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (688, 7, N'loss', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (688, 8, N'loss', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (688, 9, N'gain', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (689, 1, N'gain', CAST(591.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (689, 2, N'loss', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (689, 3, N'loss', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (689, 4, N'loss', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (689, 5, N'gain', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (689, 6, N'gain', CAST(372.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (689, 7, N'loss', CAST(517.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (689, 8, N'gain', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (690, 1, N'gain', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (691, 1, N'gain', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (691, 2, N'loss', CAST(456.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (691, 3, N'gain', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (691, 4, N'loss', CAST(629.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (691, 5, N'loss', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (692, 1, N'loss', CAST(517.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (692, 2, N'loss', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (692, 3, N'gain', CAST(73.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (692, 4, N'loss', CAST(22.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (692, 5, N'gain', CAST(186.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (692, 6, N'loss', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (692, 7, N'loss', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (692, 8, N'loss', CAST(549.33 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (692, 9, N'gain', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (693, 1, N'gain', CAST(652.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (693, 2, N'gain', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (693, 3, N'gain', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (694, 1, N'loss', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (694, 2, N'gain', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (694, 3, N'loss', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (694, 4, N'loss', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (694, 5, N'loss', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (694, 6, N'loss', CAST(93.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (694, 7, N'gain', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (695, 1, N'gain', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (695, 2, N'loss', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (695, 3, N'gain', CAST(558.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (695, 4, N'gain', CAST(186.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (696, 1, N'loss', CAST(558.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (696, 2, N'gain', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (696, 3, N'gain', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (696, 4, N'loss', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (697, 1, N'loss', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (697, 2, N'loss', CAST(157.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (697, 3, N'loss', CAST(549.33 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (697, 4, N'gain', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (697, 5, N'loss', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (697, 6, N'gain', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (697, 7, N'gain', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (698, 1, N'loss', CAST(825.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (698, 2, N'loss', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (698, 3, N'gain', CAST(754.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (698, 4, N'gain', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (698, 5, N'gain', CAST(526.84 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (699, 1, N'loss', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (699, 2, N'gain', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (699, 3, N'gain', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (699, 4, N'gain', CAST(22.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (699, 5, N'loss', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (699, 6, N'loss', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (699, 7, N'gain', CAST(558.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (699, 8, N'gain', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (699, 9, N'loss', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (699, 10, N'gain', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (700, 1, N'gain', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (700, 2, N'gain', CAST(992.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (700, 3, N'gain', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (701, 1, N'loss', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (701, 2, N'loss', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (702, 1, N'loss', CAST(301.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (702, 2, N'loss', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (702, 3, N'gain', CAST(825.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (702, 4, N'gain', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (702, 5, N'gain', CAST(713.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (702, 6, N'loss', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (703, 1, N'gain', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (703, 2, N'loss', CAST(382.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (703, 3, N'gain', CAST(424.04 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (703, 4, N'gain', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (703, 5, N'loss', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (703, 6, N'loss', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (703, 7, N'gain', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (703, 8, N'gain', CAST(629.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (704, 1, N'gain', CAST(558.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (704, 2, N'loss', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (704, 3, N'gain', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (704, 4, N'gain', CAST(558.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (704, 5, N'gain', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (704, 6, N'loss', CAST(167.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (704, 7, N'gain', CAST(218.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (704, 8, N'loss', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (704, 9, N'gain', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (705, 1, N'loss', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (705, 2, N'loss', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (705, 3, N'loss', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (705, 4, N'gain', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (705, 5, N'gain', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (706, 1, N'loss', CAST(806.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (706, 2, N'loss', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (706, 3, N'gain', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (706, 4, N'loss', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (706, 5, N'loss', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (706, 6, N'loss', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (707, 1, N'loss', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (707, 2, N'gain', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (707, 3, N'loss', CAST(1034.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (707, 4, N'gain', CAST(825.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (707, 5, N'loss', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (707, 6, N'gain', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (707, 7, N'gain', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (708, 1, N'loss', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (708, 2, N'loss', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (708, 3, N'loss', CAST(661.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (708, 4, N'loss', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (708, 5, N'loss', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (708, 6, N'gain', CAST(825.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (708, 7, N'gain', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (708, 8, N'gain', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (708, 9, N'gain', CAST(134.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (709, 1, N'gain', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (709, 2, N'gain', CAST(424.04 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (709, 3, N'gain', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (709, 4, N'loss', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (709, 5, N'gain', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (709, 6, N'loss', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (709, 7, N'loss', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (709, 8, N'gain', CAST(93.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (709, 9, N'loss', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (709, 10, N'loss', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (710, 1, N'gain', CAST(199.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (710, 2, N'gain', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (710, 3, N'loss', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (711, 1, N'loss', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (711, 2, N'gain', CAST(838.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (711, 3, N'gain', CAST(301.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (711, 4, N'loss', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (711, 5, N'loss', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (711, 6, N'gain', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (711, 7, N'gain', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (712, 1, N'gain', CAST(395.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (712, 2, N'loss', CAST(167.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (712, 3, N'gain', CAST(343.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (712, 4, N'loss', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (712, 5, N'loss', CAST(199.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (712, 6, N'gain', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (712, 7, N'gain', CAST(465.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (712, 8, N'loss', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (712, 9, N'gain', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (713, 1, N'gain', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (713, 2, N'loss', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (713, 3, N'gain', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (713, 4, N'gain', CAST(652.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (713, 5, N'loss', CAST(311.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (713, 6, N'gain', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (713, 7, N'gain', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (714, 1, N'loss', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (714, 2, N'loss', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (714, 3, N'gain', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (714, 4, N'gain', CAST(950.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (714, 5, N'loss', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (714, 6, N'loss', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (714, 7, N'gain', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (714, 8, N'gain', CAST(558.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (715, 1, N'gain', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (716, 1, N'loss', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (716, 2, N'loss', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (716, 3, N'loss', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (716, 4, N'loss', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (717, 1, N'gain', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (717, 2, N'gain', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (717, 3, N'gain', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (717, 4, N'gain', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (717, 5, N'loss', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (718, 1, N'loss', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (718, 2, N'gain', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (718, 3, N'loss', CAST(343.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (718, 4, N'loss', CAST(838.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (718, 5, N'loss', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (718, 6, N'gain', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (719, 1, N'gain', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (719, 2, N'loss', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (720, 1, N'loss', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (720, 2, N'loss', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (720, 3, N'loss', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (720, 4, N'gain', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (720, 5, N'loss', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (721, 1, N'loss', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (721, 2, N'gain', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (721, 3, N'loss', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (721, 4, N'loss', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (721, 5, N'gain', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (721, 6, N'loss', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (721, 7, N'gain', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (721, 8, N'gain', CAST(186.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (721, 9, N'loss', CAST(806.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (721, 10, N'gain', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (722, 1, N'loss', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (722, 2, N'loss', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (722, 3, N'loss', CAST(591.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (722, 4, N'gain', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (722, 5, N'loss', CAST(343.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (722, 6, N'gain', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (722, 7, N'gain', CAST(661.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (722, 8, N'gain', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (722, 9, N'gain', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (722, 10, N'loss', CAST(343.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (723, 1, N'loss', CAST(382.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (723, 2, N'loss', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (723, 3, N'gain', CAST(950.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (723, 4, N'gain', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (723, 5, N'gain', CAST(134.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (723, 6, N'gain', CAST(754.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (723, 7, N'gain', CAST(465.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (723, 8, N'loss', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (723, 9, N'loss', CAST(941.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (723, 10, N'gain', CAST(754.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (724, 1, N'gain', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (724, 2, N'loss', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (724, 3, N'gain', CAST(838.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (724, 4, N'gain', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (724, 5, N'gain', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (724, 6, N'loss', CAST(517.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (724, 7, N'loss', CAST(549.33 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (724, 8, N'gain', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (725, 1, N'gain', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (726, 1, N'gain', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (726, 2, N'gain', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (726, 3, N'loss', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (726, 4, N'gain', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (727, 1, N'loss', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (727, 2, N'loss', CAST(22.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (727, 3, N'gain', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (727, 4, N'gain', CAST(591.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (728, 1, N'loss', CAST(1034.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (728, 2, N'gain', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (728, 3, N'gain', CAST(199.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (728, 4, N'loss', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (728, 5, N'gain', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (728, 6, N'gain', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (728, 7, N'gain', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (728, 8, N'loss', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (728, 9, N'gain', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (729, 1, N'loss', CAST(311.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (729, 2, N'gain', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (729, 3, N'gain', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (729, 4, N'loss', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (729, 5, N'gain', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (729, 6, N'loss', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (729, 7, N'loss', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (729, 8, N'gain', CAST(395.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (729, 9, N'loss', CAST(713.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (730, 1, N'gain', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (730, 2, N'gain', CAST(382.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (730, 3, N'loss', CAST(745.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (730, 4, N'gain', CAST(395.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (730, 5, N'loss', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (730, 6, N'loss', CAST(465.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (730, 7, N'gain', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (730, 8, N'gain', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (730, 9, N'loss', CAST(22.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (730, 10, N'gain', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (731, 1, N'gain', CAST(941.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (731, 2, N'gain', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (731, 3, N'loss', CAST(661.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (731, 4, N'gain', CAST(311.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (731, 5, N'gain', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (732, 1, N'gain', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (732, 2, N'gain', CAST(629.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (733, 1, N'gain', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (733, 2, N'loss', CAST(372.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (734, 1, N'gain', CAST(558.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (734, 2, N'loss', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (734, 3, N'loss', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (734, 4, N'gain', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (734, 5, N'gain', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (734, 6, N'gain', CAST(167.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (735, 1, N'loss', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (735, 2, N'loss', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (735, 3, N'gain', CAST(880.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (735, 4, N'gain', CAST(941.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (735, 5, N'gain', CAST(395.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (735, 6, N'loss', CAST(301.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (735, 7, N'gain', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (735, 8, N'loss', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (735, 9, N'loss', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (736, 1, N'loss', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (736, 2, N'gain', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (736, 3, N'loss', CAST(372.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (736, 4, N'loss', CAST(424.04 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (736, 5, N'gain', CAST(157.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (737, 1, N'gain', CAST(157.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (737, 2, N'gain', CAST(1024.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (738, 1, N'loss', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (738, 2, N'gain', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (738, 3, N'gain', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (738, 4, N'gain', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (738, 5, N'loss', CAST(591.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (738, 6, N'loss', CAST(343.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (738, 7, N'loss', CAST(311.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (738, 8, N'loss', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (738, 9, N'loss', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (739, 1, N'loss', CAST(372.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (739, 2, N'loss', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (739, 3, N'loss', CAST(661.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (739, 4, N'loss', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (739, 5, N'loss', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (739, 6, N'loss', CAST(1034.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (739, 7, N'gain', CAST(838.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (739, 8, N'loss', CAST(661.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (739, 9, N'gain', CAST(754.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (739, 10, N'gain', CAST(1034.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (740, 1, N'loss', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (740, 2, N'gain', CAST(167.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (740, 3, N'gain', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (741, 1, N'gain', CAST(93.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (741, 2, N'loss', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (741, 3, N'gain', CAST(1024.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (741, 4, N'loss', CAST(199.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (741, 5, N'gain', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (741, 6, N'gain', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (741, 7, N'loss', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (741, 8, N'loss', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (741, 9, N'gain', CAST(382.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (741, 10, N'gain', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (742, 1, N'gain', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (742, 2, N'loss', CAST(517.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (742, 3, N'loss', CAST(218.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (742, 4, N'loss', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (742, 5, N'loss', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (742, 6, N'loss', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (742, 7, N'loss', CAST(199.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (742, 8, N'gain', CAST(167.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (742, 9, N'loss', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (743, 1, N'gain', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (743, 2, N'gain', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (743, 3, N'loss', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (743, 4, N'loss', CAST(395.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (743, 5, N'loss', CAST(382.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (743, 6, N'loss', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (743, 7, N'gain', CAST(395.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (743, 8, N'loss', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (743, 9, N'gain', CAST(825.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (743, 10, N'gain', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (744, 1, N'loss', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (744, 2, N'loss', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (744, 3, N'gain', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (744, 4, N'gain', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (744, 5, N'loss', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (745, 1, N'loss', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (745, 2, N'gain', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (745, 3, N'loss', CAST(93.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (745, 4, N'loss', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (746, 1, N'loss', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (747, 1, N'gain', CAST(93.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (747, 2, N'loss', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (747, 3, N'gain', CAST(456.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (748, 1, N'loss', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (748, 2, N'loss', CAST(629.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (748, 3, N'gain', CAST(167.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (748, 4, N'loss', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (748, 5, N'gain', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (749, 1, N'loss', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (749, 2, N'gain', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (749, 3, N'gain', CAST(93.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (749, 4, N'gain', CAST(1034.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (749, 5, N'gain', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (749, 6, N'loss', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (749, 7, N'gain', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (749, 8, N'gain', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (749, 9, N'loss', CAST(517.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (750, 1, N'loss', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (750, 2, N'gain', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (750, 3, N'gain', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (750, 4, N'loss', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (750, 5, N'loss', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (750, 6, N'gain', CAST(343.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (750, 7, N'loss', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (750, 8, N'loss', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (751, 1, N'loss', CAST(745.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (751, 2, N'gain', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (751, 3, N'gain', CAST(806.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (751, 4, N'gain', CAST(382.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (751, 5, N'loss', CAST(517.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (751, 6, N'gain', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (751, 7, N'gain', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (752, 1, N'loss', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (752, 2, N'loss', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (752, 3, N'loss', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (752, 4, N'gain', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (752, 5, N'gain', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (752, 6, N'loss', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (752, 7, N'loss', CAST(395.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (752, 8, N'gain', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (752, 9, N'gain', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (752, 10, N'loss', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (753, 1, N'loss', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (753, 2, N'loss', CAST(992.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (753, 3, N'gain', CAST(199.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (753, 4, N'loss', CAST(745.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (753, 5, N'gain', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (753, 6, N'loss', CAST(549.33 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (753, 7, N'loss', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (753, 8, N'gain', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (753, 9, N'loss', CAST(754.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (753, 10, N'gain', CAST(424.04 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (754, 1, N'loss', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (754, 2, N'loss', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (755, 1, N'loss', CAST(838.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (755, 2, N'gain', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (755, 3, N'gain', CAST(591.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (755, 4, N'loss', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (756, 1, N'gain', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (756, 2, N'loss', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (756, 3, N'gain', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (756, 4, N'loss', CAST(713.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (757, 1, N'gain', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (757, 2, N'loss', CAST(558.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (757, 3, N'loss', CAST(167.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (757, 4, N'loss', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (757, 5, N'loss', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (757, 6, N'gain', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (757, 7, N'gain', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (757, 8, N'gain', CAST(950.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (758, 1, N'gain', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (758, 2, N'loss', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (759, 1, N'gain', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (759, 2, N'gain', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (760, 1, N'loss', CAST(218.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (760, 2, N'gain', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (760, 3, N'loss', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (760, 4, N'loss', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (760, 5, N'loss', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (760, 6, N'loss', CAST(167.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (760, 7, N'loss', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (760, 8, N'loss', CAST(167.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (760, 9, N'gain', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (760, 10, N'gain', CAST(517.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (761, 1, N'gain', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (762, 1, N'loss', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (763, 1, N'loss', CAST(684.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (763, 2, N'gain', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (764, 1, N'loss', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (764, 2, N'loss', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (764, 3, N'loss', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (764, 4, N'gain', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (764, 5, N'loss', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (764, 6, N'loss', CAST(754.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (765, 1, N'loss', CAST(591.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (765, 2, N'loss', CAST(395.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (765, 3, N'gain', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (765, 4, N'loss', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (766, 1, N'gain', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (766, 2, N'gain', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (766, 3, N'loss', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (766, 4, N'loss', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (766, 5, N'gain', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (766, 6, N'loss', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (766, 7, N'gain', CAST(661.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (766, 8, N'loss', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (766, 9, N'gain', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (767, 1, N'gain', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (767, 2, N'gain', CAST(652.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (767, 3, N'loss', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (767, 4, N'loss', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (767, 5, N'loss', CAST(382.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (767, 6, N'loss', CAST(713.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (767, 7, N'gain', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (767, 8, N'loss', CAST(1034.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (768, 1, N'gain', CAST(456.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (768, 2, N'loss', CAST(167.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (768, 3, N'gain', CAST(73.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (768, 4, N'gain', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (768, 5, N'loss', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (768, 6, N'gain', CAST(372.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (768, 7, N'gain', CAST(157.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (769, 1, N'gain', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (769, 2, N'gain', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (769, 3, N'loss', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (769, 4, N'gain', CAST(456.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (769, 5, N'loss', CAST(684.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (769, 6, N'gain', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (769, 7, N'loss', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (770, 1, N'loss', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (770, 2, N'gain', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (770, 3, N'gain', CAST(880.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (770, 4, N'gain', CAST(1024.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (770, 5, N'gain', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (771, 1, N'loss', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (771, 2, N'loss', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (771, 3, N'gain', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (771, 4, N'loss', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (771, 5, N'gain', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (771, 6, N'gain', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (771, 7, N'loss', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (771, 8, N'gain', CAST(1034.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (772, 1, N'loss', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (772, 2, N'loss', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (772, 3, N'loss', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (772, 4, N'gain', CAST(1034.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (772, 5, N'loss', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (772, 6, N'loss', CAST(629.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (772, 7, N'gain', CAST(825.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (772, 8, N'gain', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (773, 1, N'gain', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (773, 2, N'gain', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (773, 3, N'gain', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (773, 4, N'loss', CAST(199.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (773, 5, N'gain', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (774, 1, N'gain', CAST(838.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (774, 2, N'gain', CAST(950.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (774, 3, N'loss', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (774, 4, N'loss', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (774, 5, N'gain', CAST(73.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (774, 6, N'gain', CAST(167.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (775, 1, N'gain', CAST(684.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (775, 2, N'loss', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (776, 1, N'gain', CAST(311.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (776, 2, N'loss', CAST(825.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (777, 1, N'gain', CAST(629.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (777, 2, N'gain', CAST(186.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (777, 3, N'gain', CAST(591.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (777, 4, N'gain', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (777, 5, N'loss', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (777, 6, N'loss', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (777, 7, N'gain', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (777, 8, N'loss', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (778, 1, N'gain', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (778, 2, N'gain', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (778, 3, N'loss', CAST(652.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (778, 4, N'gain', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (778, 5, N'loss', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (779, 1, N'loss', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (779, 2, N'gain', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (779, 3, N'loss', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (779, 4, N'gain', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (779, 5, N'loss', CAST(825.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (779, 6, N'gain', CAST(652.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (780, 1, N'gain', CAST(382.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (780, 2, N'gain', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (780, 3, N'gain', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (780, 4, N'gain', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (780, 5, N'loss', CAST(549.33 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (780, 6, N'gain', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (780, 7, N'gain', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (780, 8, N'loss', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (780, 9, N'gain', CAST(157.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (781, 1, N'gain', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (781, 2, N'loss', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (781, 3, N'loss', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (781, 4, N'gain', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (781, 5, N'loss', CAST(722.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (781, 6, N'gain', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (781, 7, N'loss', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (781, 8, N'gain', CAST(311.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (782, 1, N'gain', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (782, 2, N'gain', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (782, 3, N'gain', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (782, 4, N'gain', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (782, 5, N'loss', CAST(880.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (782, 6, N'gain', CAST(825.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (782, 7, N'loss', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (782, 8, N'loss', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (783, 1, N'loss', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (783, 2, N'loss', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (783, 3, N'loss', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (783, 4, N'loss', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (783, 5, N'gain', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (783, 6, N'loss', CAST(713.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (783, 7, N'loss', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (783, 8, N'gain', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (783, 9, N'gain', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (784, 1, N'gain', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (784, 2, N'loss', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (784, 3, N'loss', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (784, 4, N'loss', CAST(465.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (785, 1, N'loss', CAST(372.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (786, 1, N'gain', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (786, 2, N'loss', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (787, 1, N'gain', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (787, 2, N'gain', CAST(806.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (787, 3, N'gain', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (787, 4, N'loss', CAST(745.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (787, 5, N'loss', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (787, 6, N'loss', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (787, 7, N'gain', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (788, 1, N'loss', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (789, 1, N'loss', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (789, 2, N'gain', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (789, 3, N'loss', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (789, 4, N'gain', CAST(199.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (789, 5, N'gain', CAST(806.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (789, 6, N'loss', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (789, 7, N'loss', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (789, 8, N'loss', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (789, 9, N'gain', CAST(684.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (790, 1, N'loss', CAST(825.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (790, 2, N'gain', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (790, 3, N'gain', CAST(661.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (790, 4, N'loss', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (791, 1, N'gain', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (791, 2, N'gain', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (791, 3, N'loss', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (791, 4, N'loss', CAST(93.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (791, 5, N'gain', CAST(722.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (791, 6, N'loss', CAST(526.84 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (791, 7, N'loss', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (791, 8, N'loss', CAST(722.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (791, 9, N'loss', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (791, 10, N'loss', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (792, 1, N'loss', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (792, 2, N'loss', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (792, 3, N'loss', CAST(343.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (792, 4, N'loss', CAST(880.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (792, 5, N'gain', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (792, 6, N'loss', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (792, 7, N'loss', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (792, 8, N'gain', CAST(526.84 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (793, 1, N'gain', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (793, 2, N'gain', CAST(558.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (793, 3, N'loss', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (793, 4, N'gain', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (793, 5, N'loss', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (794, 1, N'loss', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (794, 2, N'loss', CAST(199.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (794, 3, N'loss', CAST(722.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (794, 4, N'gain', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (794, 5, N'loss', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (794, 6, N'gain', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (795, 1, N'gain', CAST(713.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (795, 2, N'gain', CAST(684.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (795, 3, N'loss', CAST(218.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (795, 4, N'gain', CAST(311.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (795, 5, N'gain', CAST(465.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (795, 6, N'loss', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (795, 7, N'loss', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (796, 1, N'loss', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (796, 2, N'loss', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (796, 3, N'loss', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (796, 4, N'gain', CAST(558.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (796, 5, N'loss', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (796, 6, N'gain', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (796, 7, N'loss', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (796, 8, N'loss', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (796, 9, N'loss', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (797, 1, N'loss', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (797, 2, N'gain', CAST(526.84 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (797, 3, N'gain', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (797, 4, N'gain', CAST(558.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (797, 5, N'gain', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (797, 6, N'loss', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (797, 7, N'gain', CAST(301.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (797, 8, N'loss', CAST(526.84 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (797, 9, N'gain', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (797, 10, N'loss', CAST(93.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (798, 1, N'loss', CAST(93.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (798, 2, N'gain', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (799, 1, N'gain', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (799, 2, N'gain', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (799, 3, N'gain', CAST(1024.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (800, 1, N'loss', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (800, 2, N'gain', CAST(343.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (800, 3, N'gain', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (800, 4, N'loss', CAST(186.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (800, 5, N'gain', CAST(301.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (800, 6, N'gain', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (800, 7, N'gain', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (801, 1, N'loss', CAST(424.04 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (801, 2, N'loss', CAST(806.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (801, 3, N'loss', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (801, 4, N'gain', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (801, 5, N'gain', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (801, 6, N'gain', CAST(806.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (801, 7, N'loss', CAST(549.33 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (801, 8, N'loss', CAST(838.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (801, 9, N'gain', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (802, 1, N'gain', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (802, 2, N'gain', CAST(745.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (802, 3, N'gain', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (802, 4, N'loss', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (802, 5, N'gain', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (802, 6, N'gain', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (802, 7, N'loss', CAST(941.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (803, 1, N'loss', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (803, 2, N'gain', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (803, 3, N'loss', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (803, 4, N'loss', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (803, 5, N'gain', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (804, 1, N'gain', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (805, 1, N'gain', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (805, 2, N'loss', CAST(301.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (805, 3, N'gain', CAST(941.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (805, 4, N'loss', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (806, 1, N'loss', CAST(343.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (806, 2, N'gain', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (806, 3, N'gain', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (807, 1, N'loss', CAST(157.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (807, 2, N'loss', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (807, 3, N'loss', CAST(343.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (807, 4, N'loss', CAST(549.33 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (807, 5, N'loss', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (807, 6, N'loss', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (807, 7, N'loss', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (808, 1, N'loss', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (808, 2, N'gain', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (808, 3, N'loss', CAST(652.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (808, 4, N'gain', CAST(558.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (808, 5, N'gain', CAST(73.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (808, 6, N'gain', CAST(1034.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (808, 7, N'loss', CAST(517.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (808, 8, N'gain', CAST(186.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (808, 9, N'gain', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (809, 1, N'loss', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (809, 2, N'gain', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (809, 3, N'gain', CAST(465.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (809, 4, N'gain', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (809, 5, N'gain', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (809, 6, N'loss', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (809, 7, N'loss', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (809, 8, N'loss', CAST(93.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (809, 9, N'loss', CAST(652.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (810, 1, N'gain', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (810, 2, N'gain', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (810, 3, N'loss', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (810, 4, N'loss', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (810, 5, N'loss', CAST(134.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (810, 6, N'gain', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (810, 7, N'loss', CAST(199.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (810, 8, N'gain', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (810, 9, N'gain', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (810, 10, N'loss', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (811, 1, N'gain', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (812, 1, N'gain', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (812, 2, N'gain', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (812, 3, N'loss', CAST(93.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (812, 4, N'loss', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (812, 5, N'loss', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (813, 1, N'loss', CAST(950.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (813, 2, N'loss', CAST(661.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (813, 3, N'gain', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (813, 4, N'gain', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (813, 5, N'gain', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (813, 6, N'gain', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (813, 7, N'loss', CAST(343.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (813, 8, N'loss', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (814, 1, N'loss', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (814, 2, N'loss', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (815, 1, N'gain', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (815, 2, N'gain', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (815, 3, N'loss', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (815, 4, N'loss', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (815, 5, N'loss', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (815, 6, N'gain', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (815, 7, N'gain', CAST(456.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (816, 1, N'gain', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (816, 2, N'loss', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (816, 3, N'gain', CAST(1034.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (816, 4, N'loss', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (816, 5, N'gain', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (817, 1, N'gain', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (817, 2, N'gain', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (817, 3, N'loss', CAST(424.04 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (818, 1, N'gain', CAST(424.04 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (818, 2, N'gain', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (818, 3, N'loss', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (819, 1, N'loss', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (819, 2, N'gain', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (819, 3, N'gain', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (819, 4, N'loss', CAST(992.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (819, 5, N'gain', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (820, 1, N'gain', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (820, 2, N'loss', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (820, 3, N'loss', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (821, 1, N'gain', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (821, 2, N'loss', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (821, 3, N'loss', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (821, 4, N'loss', CAST(591.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (821, 5, N'gain', CAST(806.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (821, 6, N'gain', CAST(880.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (821, 7, N'gain', CAST(1024.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (822, 1, N'loss', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (822, 2, N'gain', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (822, 3, N'loss', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (822, 4, N'loss', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (822, 5, N'gain', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (823, 1, N'loss', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (823, 2, N'gain', CAST(825.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (823, 3, N'loss', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (823, 4, N'loss', CAST(456.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (824, 1, N'loss', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (824, 2, N'gain', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (824, 3, N'loss', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (824, 4, N'loss', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (824, 5, N'gain', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (824, 6, N'loss', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (824, 7, N'loss', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (824, 8, N'loss', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (824, 9, N'loss', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (825, 1, N'loss', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (825, 2, N'gain', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (825, 3, N'loss', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (825, 4, N'loss', CAST(73.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (825, 5, N'loss', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (826, 1, N'loss', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (826, 2, N'loss', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (826, 3, N'gain', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (826, 4, N'loss', CAST(301.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (826, 5, N'gain', CAST(745.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (826, 6, N'loss', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (827, 1, N'gain', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (827, 2, N'gain', CAST(1034.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (827, 3, N'gain', CAST(629.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (828, 1, N'loss', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (828, 2, N'gain', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (828, 3, N'gain', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (828, 4, N'loss', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (828, 5, N'loss', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (828, 6, N'gain', CAST(382.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (828, 7, N'loss', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (828, 8, N'gain', CAST(73.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (828, 9, N'gain', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (828, 10, N'loss', CAST(526.84 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (829, 1, N'loss', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (830, 1, N'gain', CAST(992.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (830, 2, N'gain', CAST(950.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (830, 3, N'gain', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (830, 4, N'loss', CAST(301.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (830, 5, N'loss', CAST(167.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (830, 6, N'loss', CAST(838.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (830, 7, N'loss', CAST(661.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (831, 1, N'loss', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (832, 1, N'gain', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (832, 2, N'loss', CAST(558.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (832, 3, N'gain', CAST(992.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (832, 4, N'loss', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (832, 5, N'gain', CAST(167.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (832, 6, N'gain', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (832, 7, N'gain', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (832, 8, N'gain', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (832, 9, N'loss', CAST(456.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (833, 1, N'gain', CAST(372.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (833, 2, N'loss', CAST(825.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (833, 3, N'loss', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (833, 4, N'loss', CAST(941.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (834, 1, N'loss', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (834, 2, N'loss', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (834, 3, N'gain', CAST(167.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (834, 4, N'loss', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (834, 5, N'gain', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (834, 6, N'gain', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (835, 1, N'gain', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (835, 2, N'loss', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (835, 3, N'gain', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (835, 4, N'loss', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (835, 5, N'gain', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (835, 6, N'loss', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (835, 7, N'gain', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (836, 1, N'gain', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (836, 2, N'loss', CAST(992.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (836, 3, N'gain', CAST(558.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (836, 4, N'loss', CAST(93.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (836, 5, N'gain', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (836, 6, N'loss', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (837, 1, N'loss', CAST(591.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (837, 2, N'gain', CAST(722.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (838, 1, N'loss', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (838, 2, N'loss', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (838, 3, N'loss', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (838, 4, N'gain', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (838, 5, N'gain', CAST(950.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (838, 6, N'loss', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (838, 7, N'gain', CAST(549.33 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (838, 8, N'loss', CAST(311.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (838, 9, N'gain', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (839, 1, N'gain', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (840, 1, N'gain', CAST(880.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (840, 2, N'loss', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (841, 1, N'gain', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (841, 2, N'gain', CAST(661.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (841, 3, N'loss', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (841, 4, N'loss', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (841, 5, N'gain', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (841, 6, N'gain', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (841, 7, N'loss', CAST(950.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (841, 8, N'gain', CAST(591.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (842, 1, N'gain', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (843, 1, N'gain', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (843, 2, N'gain', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (843, 3, N'loss', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (843, 4, N'gain', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (844, 1, N'gain', CAST(1024.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (844, 2, N'gain', CAST(218.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (844, 3, N'loss', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (844, 4, N'gain', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (844, 5, N'loss', CAST(806.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (844, 6, N'loss', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (844, 7, N'loss', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (844, 8, N'loss', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (844, 9, N'loss', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (845, 1, N'loss', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (846, 1, N'loss', CAST(713.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (846, 2, N'loss', CAST(526.84 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (846, 3, N'gain', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (846, 4, N'loss', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (846, 5, N'loss', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (846, 6, N'gain', CAST(1034.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (846, 7, N'gain', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (847, 1, N'gain', CAST(591.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (847, 2, N'loss', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (848, 1, N'gain', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (848, 2, N'loss', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (848, 3, N'loss', CAST(343.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (848, 4, N'loss', CAST(722.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (848, 5, N'gain', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (848, 6, N'gain', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (848, 7, N'gain', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (848, 8, N'gain', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (849, 1, N'gain', CAST(157.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (849, 2, N'loss', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (849, 3, N'gain', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (849, 4, N'loss', CAST(722.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (849, 5, N'loss', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (849, 6, N'loss', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (850, 1, N'gain', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (850, 2, N'loss', CAST(1024.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (850, 3, N'gain', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (850, 4, N'loss', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (851, 1, N'loss', CAST(186.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (851, 2, N'gain', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (851, 3, N'gain', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (851, 4, N'gain', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (851, 5, N'gain', CAST(549.33 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (851, 6, N'loss', CAST(167.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (851, 7, N'loss', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (851, 8, N'loss', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (851, 9, N'loss', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (851, 10, N'loss', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (852, 1, N'loss', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (852, 2, N'loss', CAST(722.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (853, 1, N'gain', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (853, 2, N'loss', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (853, 3, N'loss', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (854, 1, N'gain', CAST(806.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (854, 2, N'gain', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (854, 3, N'gain', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (854, 4, N'gain', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (854, 5, N'loss', CAST(880.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (854, 6, N'loss', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (854, 7, N'gain', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (854, 8, N'gain', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (854, 9, N'gain', CAST(157.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (855, 1, N'gain', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (855, 2, N'loss', CAST(517.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (855, 3, N'gain', CAST(558.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (856, 1, N'gain', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (856, 2, N'loss', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (856, 3, N'gain', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (856, 4, N'gain', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (856, 5, N'loss', CAST(395.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (856, 6, N'loss', CAST(22.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (857, 1, N'gain', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (857, 2, N'gain', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (857, 3, N'gain', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (857, 4, N'gain', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (857, 5, N'gain', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (857, 6, N'loss', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (858, 1, N'loss', CAST(754.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (858, 2, N'gain', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (859, 1, N'gain', CAST(629.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (859, 2, N'loss', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (859, 3, N'gain', CAST(722.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (859, 4, N'gain', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (859, 5, N'gain', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (859, 6, N'gain', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (860, 1, N'loss', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (860, 2, N'gain', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (861, 1, N'gain', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (861, 2, N'loss', CAST(652.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (861, 3, N'loss', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (861, 4, N'loss', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (861, 5, N'loss', CAST(73.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (861, 6, N'loss', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (861, 7, N'gain', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (861, 8, N'gain', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (862, 1, N'gain', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (862, 2, N'loss', CAST(745.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (862, 3, N'gain', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (862, 4, N'gain', CAST(661.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (863, 1, N'loss', CAST(825.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (863, 2, N'loss', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (863, 3, N'gain', CAST(549.33 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (863, 4, N'loss', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (863, 5, N'loss', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (863, 6, N'gain', CAST(134.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (863, 7, N'loss', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (864, 1, N'loss', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (865, 1, N'gain', CAST(395.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (865, 2, N'gain', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (865, 3, N'gain', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (865, 4, N'loss', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (865, 5, N'gain', CAST(806.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (865, 6, N'loss', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (865, 7, N'loss', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (865, 8, N'gain', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (866, 1, N'gain', CAST(311.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (866, 2, N'gain', CAST(343.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (866, 3, N'loss', CAST(167.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (866, 4, N'gain', CAST(465.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (866, 5, N'loss', CAST(825.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (867, 1, N'gain', CAST(652.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (868, 1, N'gain', CAST(629.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (868, 2, N'gain', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (868, 3, N'loss', CAST(838.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (868, 4, N'gain', CAST(456.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (868, 5, N'loss', CAST(713.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (868, 6, N'gain', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (868, 7, N'gain', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (869, 1, N'loss', CAST(549.33 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (869, 2, N'loss', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (869, 3, N'gain', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (869, 4, N'loss', CAST(517.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (869, 5, N'loss', CAST(157.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (870, 1, N'loss', CAST(950.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (870, 2, N'gain', CAST(722.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (870, 3, N'loss', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (870, 4, N'gain', CAST(218.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (870, 5, N'gain', CAST(22.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (870, 6, N'loss', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (871, 1, N'loss', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (871, 2, N'loss', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (871, 3, N'loss', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (872, 1, N'gain', CAST(157.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (873, 1, N'gain', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (873, 2, N'loss', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (873, 3, N'loss', CAST(465.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (873, 4, N'gain', CAST(992.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (873, 5, N'gain', CAST(1034.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (874, 1, N'loss', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (874, 2, N'gain', CAST(186.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (874, 3, N'loss', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (875, 1, N'loss', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (875, 2, N'loss', CAST(382.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (875, 3, N'gain', CAST(558.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (875, 4, N'loss', CAST(722.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (875, 5, N'gain', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (875, 6, N'gain', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (876, 1, N'gain', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (876, 2, N'gain', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (876, 3, N'loss', CAST(186.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (877, 1, N'gain', CAST(186.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (877, 2, N'gain', CAST(591.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (877, 3, N'gain', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (877, 4, N'gain', CAST(134.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (877, 5, N'loss', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (877, 6, N'gain', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (877, 7, N'loss', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (877, 8, N'gain', CAST(134.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (877, 9, N'loss', CAST(950.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (878, 1, N'gain', CAST(526.84 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (878, 2, N'loss', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (878, 3, N'gain', CAST(880.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (878, 4, N'loss', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (878, 5, N'gain', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (878, 6, N'loss', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (878, 7, N'loss', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (879, 1, N'loss', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (879, 2, N'loss', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (879, 3, N'loss', CAST(838.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (880, 1, N'gain', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (880, 2, N'loss', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (880, 3, N'loss', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (880, 4, N'loss', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (880, 5, N'gain', CAST(661.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (880, 6, N'gain', CAST(93.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (880, 7, N'loss', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (880, 8, N'loss', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (881, 1, N'loss', CAST(167.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (882, 1, N'loss', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (882, 2, N'loss', CAST(754.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (882, 3, N'gain', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (882, 4, N'loss', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (882, 5, N'gain', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (882, 6, N'gain', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (882, 7, N'gain', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (882, 8, N'loss', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (882, 9, N'gain', CAST(218.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (883, 1, N'gain', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (883, 2, N'loss', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (883, 3, N'loss', CAST(745.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (883, 4, N'loss', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (883, 5, N'gain', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (883, 6, N'gain', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (883, 7, N'loss', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (883, 8, N'gain', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (883, 9, N'gain', CAST(456.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (883, 10, N'loss', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (884, 1, N'gain', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (884, 2, N'gain', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (884, 3, N'gain', CAST(549.33 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (884, 4, N'loss', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (884, 5, N'gain', CAST(517.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (884, 6, N'gain', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (884, 7, N'gain', CAST(343.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (884, 8, N'gain', CAST(549.33 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (884, 9, N'gain', CAST(825.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (884, 10, N'loss', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (885, 1, N'loss', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (886, 1, N'loss', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (886, 2, N'loss', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (886, 3, N'loss', CAST(382.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (887, 1, N'loss', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (887, 2, N'loss', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (887, 3, N'gain', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (887, 4, N'gain', CAST(754.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (887, 5, N'loss', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (887, 6, N'loss', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (888, 1, N'loss', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (888, 2, N'loss', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (888, 3, N'gain', CAST(395.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (888, 4, N'gain', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (888, 5, N'loss', CAST(22.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (889, 1, N'loss', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (889, 2, N'loss', CAST(134.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (889, 3, N'loss', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (889, 4, N'loss', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (889, 5, N'loss', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (889, 6, N'gain', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (889, 7, N'gain', CAST(745.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (889, 8, N'gain', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (889, 9, N'loss', CAST(465.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (889, 10, N'gain', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (890, 1, N'loss', CAST(1024.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (890, 2, N'gain', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (890, 3, N'gain', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (891, 1, N'loss', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (891, 2, N'loss', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (891, 3, N'loss', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (891, 4, N'loss', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (891, 5, N'gain', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (891, 6, N'gain', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (891, 7, N'gain', CAST(661.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (891, 8, N'gain', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (891, 9, N'loss', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (892, 1, N'gain', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (892, 2, N'loss', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (892, 3, N'loss', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (892, 4, N'loss', CAST(629.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (892, 5, N'gain', CAST(629.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (892, 6, N'gain', CAST(745.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (892, 7, N'gain', CAST(134.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (892, 8, N'loss', CAST(456.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (892, 9, N'loss', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (893, 1, N'loss', CAST(93.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (893, 2, N'loss', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (893, 3, N'gain', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (893, 4, N'loss', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (893, 5, N'loss', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (894, 1, N'loss', CAST(73.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (894, 2, N'loss', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (894, 3, N'gain', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (894, 4, N'gain', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (894, 5, N'gain', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (894, 6, N'gain', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (894, 7, N'loss', CAST(652.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (895, 1, N'loss', CAST(722.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (895, 2, N'loss', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (895, 3, N'gain', CAST(73.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (895, 4, N'loss', CAST(73.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (895, 5, N'gain', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (896, 1, N'loss', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (896, 2, N'gain', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (897, 1, N'loss', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (898, 1, N'loss', CAST(372.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (898, 2, N'gain', CAST(722.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (898, 3, N'loss', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (898, 4, N'gain', CAST(526.84 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (898, 5, N'loss', CAST(713.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (898, 6, N'loss', CAST(684.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (898, 7, N'loss', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (898, 8, N'loss', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (898, 9, N'loss', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (899, 1, N'loss', CAST(684.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (899, 2, N'loss', CAST(825.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (899, 3, N'loss', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (899, 4, N'loss', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (899, 5, N'gain', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (900, 1, N'loss', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (900, 2, N'loss', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (900, 3, N'loss', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (900, 4, N'loss', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (900, 5, N'gain', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (900, 6, N'loss', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (900, 7, N'gain', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (900, 8, N'loss', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (901, 1, N'loss', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (901, 2, N'gain', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (901, 3, N'loss', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (901, 4, N'loss', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (901, 5, N'gain', CAST(661.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (901, 6, N'loss', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (901, 7, N'loss', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (902, 1, N'gain', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (902, 2, N'gain', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (902, 3, N'gain', CAST(134.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (902, 4, N'gain', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (903, 1, N'loss', CAST(745.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (903, 2, N'gain', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (903, 3, N'gain', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (903, 4, N'loss', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (903, 5, N'gain', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (904, 1, N'loss', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (904, 2, N'loss', CAST(591.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (904, 3, N'gain', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (904, 4, N'loss', CAST(838.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (904, 5, N'gain', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (904, 6, N'gain', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (904, 7, N'loss', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (904, 8, N'loss', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (904, 9, N'loss', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (905, 1, N'gain', CAST(558.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (905, 2, N'loss', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (906, 1, N'loss', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (906, 2, N'loss', CAST(157.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (906, 3, N'loss', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (906, 4, N'loss', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (906, 5, N'loss', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (906, 6, N'loss', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (906, 7, N'loss', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (906, 8, N'gain', CAST(157.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (906, 9, N'gain', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (907, 1, N'gain', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (907, 2, N'gain', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (907, 3, N'loss', CAST(186.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (908, 1, N'gain', CAST(526.84 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (908, 2, N'gain', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (908, 3, N'gain', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (908, 4, N'gain', CAST(424.04 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (908, 5, N'gain', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (908, 6, N'loss', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (908, 7, N'gain', CAST(880.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (908, 8, N'gain', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (908, 9, N'loss', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (909, 1, N'gain', CAST(456.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (909, 2, N'gain', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (909, 3, N'loss', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (909, 4, N'loss', CAST(652.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (909, 5, N'gain', CAST(549.33 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (909, 6, N'gain', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (909, 7, N'gain', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (909, 8, N'loss', CAST(134.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (909, 9, N'gain', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (909, 10, N'gain', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (910, 1, N'loss', CAST(199.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (910, 2, N'gain', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (910, 3, N'loss', CAST(549.33 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (910, 4, N'gain', CAST(218.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (910, 5, N'loss', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (910, 6, N'loss', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (910, 7, N'gain', CAST(745.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (910, 8, N'gain', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (910, 9, N'gain', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (910, 10, N'loss', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (911, 1, N'gain', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (911, 2, N'loss', CAST(167.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (911, 3, N'loss', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (911, 4, N'gain', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (911, 5, N'loss', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (911, 6, N'gain', CAST(73.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (912, 1, N'gain', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (912, 2, N'gain', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (912, 3, N'loss', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (912, 4, N'loss', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (912, 5, N'gain', CAST(806.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (912, 6, N'gain', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (913, 1, N'gain', CAST(134.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (913, 2, N'loss', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (913, 3, N'loss', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (913, 4, N'gain', CAST(1024.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (913, 5, N'gain', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (914, 1, N'loss', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (914, 2, N'loss', CAST(1034.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (914, 3, N'loss', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (914, 4, N'gain', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (914, 5, N'gain', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (914, 6, N'gain', CAST(186.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (914, 7, N'gain', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (914, 8, N'loss', CAST(880.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (914, 9, N'gain', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (914, 10, N'gain', CAST(558.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (915, 1, N'gain', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (915, 2, N'gain', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (915, 3, N'gain', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (915, 4, N'loss', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (915, 5, N'gain', CAST(684.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (916, 1, N'gain', CAST(992.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (916, 2, N'loss', CAST(134.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (916, 3, N'gain', CAST(825.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (916, 4, N'gain', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (916, 5, N'gain', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (916, 6, N'loss', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (916, 7, N'gain', CAST(424.04 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (916, 8, N'gain', CAST(301.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (916, 9, N'loss', CAST(1024.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (916, 10, N'loss', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (917, 1, N'gain', CAST(591.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (917, 2, N'loss', CAST(424.04 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (917, 3, N'loss', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (917, 4, N'gain', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (917, 5, N'loss', CAST(526.84 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (917, 6, N'loss', CAST(941.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (917, 7, N'loss', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (917, 8, N'gain', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (917, 9, N'gain', CAST(652.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (918, 1, N'gain', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (918, 2, N'gain', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (918, 3, N'gain', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (918, 4, N'gain', CAST(591.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (918, 5, N'gain', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (918, 6, N'gain', CAST(465.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (918, 7, N'loss', CAST(22.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (919, 1, N'loss', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (919, 2, N'gain', CAST(1024.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (920, 1, N'loss', CAST(22.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (920, 2, N'gain', CAST(199.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (920, 3, N'loss', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (920, 4, N'gain', CAST(1024.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (920, 5, N'loss', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (920, 6, N'gain', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (920, 7, N'gain', CAST(661.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (920, 8, N'loss', CAST(684.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (920, 9, N'loss', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (920, 10, N'loss', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (921, 1, N'gain', CAST(186.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (921, 2, N'loss', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (921, 3, N'loss', CAST(395.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (921, 4, N'gain', CAST(838.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (921, 5, N'gain', CAST(167.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (921, 6, N'gain', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (921, 7, N'loss', CAST(992.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (922, 1, N'loss', CAST(825.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (922, 2, N'gain', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (922, 3, N'gain', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (922, 4, N'gain', CAST(549.33 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (922, 5, N'gain', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (923, 1, N'loss', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (923, 2, N'gain', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (923, 3, N'gain', CAST(950.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (923, 4, N'loss', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (923, 5, N'gain', CAST(941.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (923, 6, N'gain', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (923, 7, N'gain', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (923, 8, N'gain', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (923, 9, N'loss', CAST(661.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (923, 10, N'loss', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (924, 1, N'gain', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (924, 2, N'gain', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (924, 3, N'gain', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (924, 4, N'gain', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (925, 1, N'loss', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (925, 2, N'gain', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (925, 3, N'loss', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (925, 4, N'gain', CAST(465.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (926, 1, N'gain', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (926, 2, N'loss', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (926, 3, N'gain', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (926, 4, N'loss', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (926, 5, N'loss', CAST(713.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (926, 6, N'gain', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (926, 7, N'loss', CAST(157.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (926, 8, N'gain', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (926, 9, N'gain', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (926, 10, N'loss', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (927, 1, N'gain', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (927, 2, N'gain', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (927, 3, N'gain', CAST(311.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (927, 4, N'loss', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (927, 5, N'gain', CAST(395.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (927, 6, N'loss', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (927, 7, N'loss', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (927, 8, N'gain', CAST(199.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (928, 1, N'loss', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (928, 2, N'gain', CAST(745.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (928, 3, N'loss', CAST(652.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (928, 4, N'gain', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (928, 5, N'gain', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (928, 6, N'gain', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (929, 1, N'gain', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (929, 2, N'loss', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (929, 3, N'gain', CAST(167.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (929, 4, N'loss', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (929, 5, N'loss', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (930, 1, N'loss', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (930, 2, N'loss', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (930, 3, N'loss', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (930, 4, N'loss', CAST(713.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (930, 5, N'gain', CAST(713.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (930, 6, N'gain', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (930, 7, N'loss', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (930, 8, N'gain', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (930, 9, N'gain', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (931, 1, N'loss', CAST(382.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (932, 1, N'loss', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (932, 2, N'loss', CAST(722.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (932, 3, N'gain', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (932, 4, N'loss', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (932, 5, N'gain', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (932, 6, N'gain', CAST(950.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (932, 7, N'loss', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (932, 8, N'gain', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (933, 1, N'loss', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (933, 2, N'loss', CAST(1024.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (933, 3, N'loss', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (933, 4, N'loss', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (933, 5, N'loss', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (933, 6, N'loss', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (933, 7, N'loss', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (934, 1, N'gain', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (935, 1, N'gain', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (935, 2, N'gain', CAST(424.04 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (935, 3, N'gain', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (935, 4, N'loss', CAST(838.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (935, 5, N'gain', CAST(754.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (935, 6, N'gain', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (935, 7, N'gain', CAST(73.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (935, 8, N'gain', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (935, 9, N'loss', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (936, 1, N'gain', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (936, 2, N'gain', CAST(661.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (936, 3, N'gain', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (937, 1, N'loss', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (937, 2, N'gain', CAST(722.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (937, 3, N'gain', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (937, 4, N'gain', CAST(382.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (937, 5, N'loss', CAST(880.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (937, 6, N'gain', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (938, 1, N'loss', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (938, 2, N'loss', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (938, 3, N'gain', CAST(311.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (938, 4, N'loss', CAST(73.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (938, 5, N'loss', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (938, 6, N'gain', CAST(880.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (939, 1, N'gain', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (939, 2, N'loss', CAST(186.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (939, 3, N'gain', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (940, 1, N'gain', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (940, 2, N'gain', CAST(838.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (940, 3, N'gain', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (940, 4, N'gain', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (940, 5, N'gain', CAST(600.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (940, 6, N'loss', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (940, 7, N'loss', CAST(950.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (941, 1, N'loss', CAST(395.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (941, 2, N'loss', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (941, 3, N'gain', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (941, 4, N'loss', CAST(382.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (941, 5, N'loss', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (941, 6, N'gain', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (941, 7, N'loss', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (942, 1, N'loss', CAST(311.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (942, 2, N'gain', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (942, 3, N'loss', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (942, 4, N'gain', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (942, 5, N'gain', CAST(838.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (943, 1, N'gain', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (943, 2, N'gain', CAST(372.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (943, 3, N'loss', CAST(167.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (944, 1, N'loss', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (944, 2, N'loss', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (944, 3, N'loss', CAST(806.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (944, 4, N'gain', CAST(456.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (944, 5, N'loss', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (944, 6, N'gain', CAST(134.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (944, 7, N'loss', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (944, 8, N'gain', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (944, 9, N'loss', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (944, 10, N'loss', CAST(713.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (945, 1, N'loss', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (945, 2, N'gain', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (945, 3, N'gain', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (945, 4, N'loss', CAST(382.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (945, 5, N'gain', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (945, 6, N'gain', CAST(652.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (946, 1, N'gain', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (946, 2, N'loss', CAST(93.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (946, 3, N'loss', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (946, 4, N'gain', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (946, 5, N'loss', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (946, 6, N'gain', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (946, 7, N'gain', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (946, 8, N'gain', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (946, 9, N'loss', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (946, 10, N'loss', CAST(73.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (947, 1, N'loss', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (947, 2, N'loss', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (947, 3, N'loss', CAST(517.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (947, 4, N'loss', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (947, 5, N'loss', CAST(424.04 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (947, 6, N'loss', CAST(629.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (947, 7, N'gain', CAST(806.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (947, 8, N'loss', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (948, 1, N'gain', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (948, 2, N'loss', CAST(465.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (948, 3, N'loss', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (949, 1, N'loss', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (949, 2, N'loss', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (949, 3, N'gain', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (949, 4, N'loss', CAST(838.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (949, 5, N'loss', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (949, 6, N'gain', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (950, 1, N'loss', CAST(372.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (950, 2, N'loss', CAST(661.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (950, 3, N'gain', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (950, 4, N'gain', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (950, 5, N'loss', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (950, 6, N'gain', CAST(754.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (950, 7, N'loss', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (950, 8, N'loss', CAST(722.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (950, 9, N'gain', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (950, 10, N'loss', CAST(1024.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (951, 1, N'gain', CAST(950.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (952, 1, N'gain', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (952, 2, N'gain', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (952, 3, N'loss', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (952, 4, N'loss', CAST(629.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (952, 5, N'gain', CAST(880.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (952, 6, N'gain', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (952, 7, N'gain', CAST(629.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (952, 8, N'loss', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (953, 1, N'gain', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (954, 1, N'loss', CAST(838.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (955, 1, N'gain', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (955, 2, N'gain', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (955, 3, N'gain', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (955, 4, N'gain', CAST(424.04 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (955, 5, N'loss', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (955, 6, N'loss', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (955, 7, N'loss', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (955, 8, N'loss', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (956, 1, N'loss', CAST(558.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (956, 2, N'gain', CAST(301.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (956, 3, N'gain', CAST(745.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (956, 4, N'loss', CAST(825.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (956, 5, N'gain', CAST(857.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (956, 6, N'loss', CAST(54.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (956, 7, N'loss', CAST(424.04 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (956, 8, N'gain', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (956, 9, N'loss', CAST(713.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (957, 1, N'loss', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (957, 2, N'gain', CAST(880.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (958, 1, N'gain', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (958, 2, N'gain', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (958, 3, N'gain', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (958, 4, N'gain', CAST(517.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (959, 1, N'loss', CAST(838.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (959, 2, N'gain', CAST(941.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (959, 3, N'loss', CAST(372.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (959, 4, N'gain', CAST(526.84 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (959, 5, N'loss', CAST(1024.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (959, 6, N'loss', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (960, 1, N'gain', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (960, 2, N'gain', CAST(825.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (960, 3, N'gain', CAST(73.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (960, 4, N'loss', CAST(558.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (960, 5, N'loss', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (960, 6, N'gain', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (961, 1, N'gain', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (961, 2, N'gain', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (961, 3, N'gain', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (961, 4, N'loss', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (961, 5, N'gain', CAST(301.97 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (961, 6, N'loss', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (961, 7, N'loss', CAST(745.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (961, 8, N'gain', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (961, 9, N'gain', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (962, 1, N'loss', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (962, 2, N'gain', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (962, 3, N'gain', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (962, 4, N'loss', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (962, 5, N'loss', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (962, 6, N'loss', CAST(880.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (962, 7, N'loss', CAST(950.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (962, 8, N'gain', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (963, 1, N'loss', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (963, 2, N'loss', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (963, 3, N'gain', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (963, 4, N'loss', CAST(382.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (963, 5, N'loss', CAST(1034.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (963, 6, N'loss', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (963, 7, N'gain', CAST(1034.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (963, 8, N'gain', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (964, 1, N'loss', CAST(629.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (964, 2, N'gain', CAST(526.84 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (964, 3, N'loss', CAST(1002.28 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (964, 4, N'loss', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (964, 5, N'gain', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (964, 6, N'loss', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (964, 7, N'loss', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (964, 8, N'loss', CAST(661.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (964, 9, N'loss', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (965, 1, N'loss', CAST(629.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (965, 2, N'loss', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (965, 3, N'gain', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (966, 1, N'gain', CAST(931.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (966, 2, N'loss', CAST(279.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (966, 3, N'gain', CAST(93.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (966, 4, N'loss', CAST(22.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (966, 5, N'loss', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (966, 6, N'loss', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (967, 1, N'gain', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (967, 2, N'loss', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (968, 1, N'gain', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (969, 1, N'loss', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (969, 2, N'gain', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (969, 3, N'gain', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (969, 4, N'gain', CAST(652.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (969, 5, N'loss', CAST(424.04 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (969, 6, N'gain', CAST(992.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (970, 1, N'gain', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (971, 1, N'gain', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (972, 1, N'gain', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (972, 2, N'gain', CAST(517.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (972, 3, N'gain', CAST(395.13 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (972, 4, N'loss', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (972, 5, N'loss', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (973, 1, N'gain', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (973, 2, N'gain', CAST(754.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (973, 3, N'loss', CAST(22.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (974, 1, N'loss', CAST(218.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (974, 2, N'gain', CAST(867.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (974, 3, N'loss', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (974, 4, N'gain', CAST(507.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (974, 5, N'loss', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (974, 6, N'gain', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (975, 1, N'loss', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (975, 2, N'gain', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (975, 3, N'gain', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (975, 4, N'gain', CAST(764.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (975, 5, N'gain', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (975, 6, N'loss', CAST(1024.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (975, 7, N'loss', CAST(465.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (976, 1, N'gain', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (977, 1, N'loss', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (977, 2, N'gain', CAST(526.84 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (977, 3, N'gain', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (977, 4, N'gain', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (977, 5, N'gain', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (977, 6, N'loss', CAST(218.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (977, 7, N'loss', CAST(260.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (977, 8, N'loss', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (977, 9, N'loss', CAST(722.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (977, 10, N'loss', CAST(186.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (978, 1, N'loss', CAST(722.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (978, 2, N'loss', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (978, 3, N'gain', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (979, 1, N'loss', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (980, 1, N'gain', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (980, 2, N'loss', CAST(796.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (981, 1, N'loss', CAST(825.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (982, 1, N'loss', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (982, 2, N'gain', CAST(671.40 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (982, 3, N'loss', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (982, 4, N'loss', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (982, 5, N'loss', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (982, 6, N'loss', CAST(838.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (983, 1, N'gain', CAST(620.00 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (983, 2, N'loss', CAST(330.88 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (983, 3, N'gain', CAST(343.73 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (983, 4, N'loss', CAST(250.57 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (983, 5, N'gain', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (983, 6, N'loss', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (984, 1, N'loss', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (984, 2, N'gain', CAST(199.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (985, 1, N'gain', CAST(735.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (985, 2, N'loss', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (985, 3, N'loss', CAST(899.48 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (985, 4, N'gain', CAST(167.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (985, 5, N'loss', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (985, 6, N'gain', CAST(93.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (985, 7, N'gain', CAST(722.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (986, 1, N'gain', CAST(539.69 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (987, 1, N'loss', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (987, 2, N'loss', CAST(629.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (987, 3, N'loss', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (987, 4, N'gain', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (987, 5, N'loss', CAST(372.64 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (987, 6, N'gain', CAST(517.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (987, 7, N'gain', CAST(642.49 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (987, 8, N'gain', CAST(64.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (987, 9, N'gain', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (987, 10, N'loss', CAST(960.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (988, 1, N'gain', CAST(497.93 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (988, 2, N'gain', CAST(684.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (988, 3, N'gain', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (988, 4, N'loss', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (988, 5, N'gain', CAST(838.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (988, 6, N'loss', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (988, 7, N'gain', CAST(289.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (988, 8, N'gain', CAST(568.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (989, 1, N'gain', CAST(485.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (989, 2, N'gain', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (989, 3, N'gain', CAST(311.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (990, 1, N'loss', CAST(610.36 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (990, 2, N'loss', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (990, 3, N'loss', CAST(970.16 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (990, 4, N'gain', CAST(591.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (991, 1, N'gain', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (991, 2, N'gain', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (991, 3, N'gain', CAST(115.65 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (992, 1, N'loss', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (992, 2, N'gain', CAST(424.04 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (992, 3, N'gain', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (992, 4, N'gain', CAST(465.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (992, 5, N'gain', CAST(144.56 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (992, 6, N'loss', CAST(176.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (992, 7, N'loss', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (992, 8, N'loss', CAST(41.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (993, 1, N'loss', CAST(465.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (993, 2, N'loss', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (993, 3, N'gain', CAST(838.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (993, 4, N'loss', CAST(983.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (993, 5, N'gain', CAST(787.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (994, 1, N'loss', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (994, 2, N'loss', CAST(228.08 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (994, 3, N'gain', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (994, 4, N'gain', CAST(237.72 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (994, 5, N'gain', CAST(134.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (994, 6, N'gain', CAST(208.81 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (994, 7, N'loss', CAST(909.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (994, 8, N'loss', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (994, 9, N'loss', CAST(167.05 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (994, 10, N'gain', CAST(754.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (995, 1, N'loss', CAST(880.21 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (995, 2, N'gain', CAST(353.37 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (995, 3, N'loss', CAST(848.09 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (995, 4, N'gain', CAST(218.45 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (995, 5, N'loss', CAST(83.52 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (995, 6, N'loss', CAST(134.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (995, 7, N'gain', CAST(414.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (996, 1, N'gain', CAST(517.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (996, 2, N'gain', CAST(1011.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (996, 3, N'loss', CAST(106.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (996, 4, N'loss', CAST(32.12 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (996, 5, N'gain', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (996, 6, N'gain', CAST(134.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (996, 7, N'loss', CAST(404.77 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (996, 8, N'gain', CAST(918.76 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (996, 9, N'loss', CAST(12.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (996, 10, N'gain', CAST(465.80 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (997, 1, N'gain', CAST(311.61 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (997, 2, N'gain', CAST(889.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (997, 3, N'loss', CAST(321.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (997, 4, N'loss', CAST(475.44 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (998, 1, N'gain', CAST(433.68 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (998, 2, N'loss', CAST(456.17 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (998, 3, N'gain', CAST(526.84 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (998, 4, N'loss', CAST(363.01 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (998, 5, N'gain', CAST(806.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (998, 6, N'loss', CAST(684.25 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (998, 7, N'loss', CAST(424.04 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (998, 8, N'loss', CAST(693.89 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (998, 9, N'gain', CAST(703.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (998, 10, N'loss', CAST(825.60 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (999, 1, N'gain', CAST(186.32 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (999, 2, N'loss', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (999, 3, N'loss', CAST(1034.41 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (999, 4, N'loss', CAST(578.24 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (999, 5, N'loss', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (999, 6, N'loss', CAST(754.92 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (1000, 1, N'loss', CAST(774.20 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (1000, 2, N'loss', CAST(549.33 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (1000, 3, N'loss', CAST(446.53 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (1000, 4, N'loss', CAST(815.96 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (1000, 5, N'loss', CAST(269.85 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (1000, 6, N'gain', CAST(125.29 AS Numeric(8, 2)));

INSERT INTO session_details
VALUES (1000, 7, N'loss', CAST(115.65 AS Numeric(8, 2)));


ALTER TABLE session_details
    ADD CONSTRAINT session_id_fk FOREIGN KEY (session_id) REFERENCES game_sessions (session_id);

ALTER TABLE game_sessions
    ADD CONSTRAINT player_id_fk FOREIGN KEY (player_id) REFERENCES players (player_id);

ALTER TABLE game_sessions
    ADD CONSTRAINT game_id_fk FOREIGN KEY (game_id) REFERENCES games (id);

ALTER TABLE paying_method
    ADD CONSTRAINT player_id_fk FOREIGN KEY (player_id) REFERENCES players (player_id);