-----------------------------------
-- Script to build the "publishare" database 25/07/2024
-----------------------------------
DROP DATABASE IF EXISTS publishare;

CREATE DATABASE publishare;

-- Table: article_types
CREATE TABLE article_types (
    art_type_id INT NOT NULL,
    art_type_desc VARCHAR(50),
    CONSTRAINT art_type_idkp PRIMARY KEY (art_type_id)
);

-- Table: articles
CREATE TABLE articles (
    article_id INT NOT NULL,
    author_id INT,
    author VARCHAR(50) NOT NULL,
    title VARCHAR(150) NOT NULL,
    publication_date DATE,
    article_type_id INT,
    CONSTRAINT article_id_pk PRIMARY KEY (article_id)
);

-- Table: authors
CREATE TABLE authors (
    author_id INT NOT NULL,
    author VARCHAR(50) NOT NULL,
    CONSTRAINT author_id_pk PRIMARY KEY (author_id)
);

-- Table: categories
CREATE TABLE categories (
    category_id INT NOT NULL,
    category_name VARCHAR(25),
    CONSTRAINT category_id_pk PRIMARY KEY (category_id)
);

-- Table: products
CREATE TABLE products (
    product_id INT NOT NULL,
    product_name VARCHAR(50),
    category_id INT,
    CONSTRAINT product_id_pk PRIMARY KEY (product_id)
);

-- Table: traffic
CREATE TABLE traffic (
    article_id INT NOT NULL,
    traffic_day DATE NOT NULL,
    product_id INT NOT NULL,
    article_views INT,
    product_views INT,
    CONSTRAINT trf_pk PRIMARY KEY (article_id, traffic_day, product_id)
);


INSERT INTO article_types
VALUES (50, N'Clinical Case Studies');
INSERT INTO article_types
VALUES (51, N'Opinion');
INSERT INTO article_types
VALUES (52, N'Feature Writing');
INSERT INTO article_types
VALUES (53, N'Investigative');
INSERT INTO article_types
VALUES (54, N'News');  

INSERT INTO articles
VALUES (1758401, 2143132495, N'Conor Dewey', N'Python for Data Science: 8 Concepts You May Have Fortten',
        CAST(N'2020-12-23' AS Date), 52);

INSERT INTO articles
VALUES (14346851, 465017920, N'AirbnbEng',
        N'Architecting a Machine Learning System for Risk – Airbnb Engineering & Data Science – Medium',
        CAST(N'2020-12-30' AS Date), 50);

INSERT INTO articles
VALUES (43333548, 691606480, N'James JD Sutton', N'What is “Q” from a laymen... – Coinmonks – Medium',
        CAST(N'2020-12-31' AS Date), 50);

INSERT INTO articles
VALUES (48848508, 406835970, N'Xiaohan Zeng',
        N'I interviewed at five top companies in Silicon Valley in five days, and luckily t five job offers',
        CAST(N'2020-12-05' AS Date), 53);

INSERT INTO articles
VALUES (48848527, 406835970, N'Xiaohan Zeng',
        N'I interviewed at five top companies in Silicon Valley in five days, and luckily t five job offers',
        CAST(N'2020-12-29' AS Date), 52);

INSERT INTO articles
VALUES (69032455, 7699453, N'samim', N'Generating Stories about Images – samim – Medium', CAST(N'2020-12-17' AS Date),
        50)      ;

INSERT INTO articles
VALUES (71296753, 1692801866, N'Matt Harvey',
        N'Continuous video classification with TensorFlow, Inception and Recurrent Nets', CAST(N'2020-12-28' AS Date),
        51)  ;

INSERT INTO articles
VALUES (85146138, 2065779397, N'James Loy', N'How to build your own Neural Network from scratch in Python',
        CAST(N'2020-12-18' AS Date), 51);

INSERT INTO articles
VALUES (85534120, 1136633781, N'Oleksandr Savsunenko', N'The New Neural Internet is Coming – Hacker Noon',
        CAST(N'2020-12-15' AS Date), 51);

INSERT INTO articles
VALUES (87742145, 738680371, N'Chris Kalahiki',
        N'Beethoven, Picasso, and Artificial Intelligence – Towards Data Science', CAST(N'2020-12-21' AS Date), 50);

INSERT INTO articles
VALUES (92637530, 1172114140, N'Pinterest Engineering',
        N'Building the interests platform – Pinterest Engineering – Medium', CAST(N'2020-12-13' AS Date), 53);

INSERT INTO articles
VALUES (93392877, 1295941743, N'Matt O''Leary', N'I Let IBM’s Robot Chef Tell Me What to Cook for a Week',
        CAST(N'2020-12-07' AS Date), 51);

INSERT INTO articles
VALUES (93392882, 1295941743, N'Matt O''Leary', N'I Let IBM’s Robot Chef Tell Me What to Cook for a Week',
        CAST(N'2020-12-30' AS Date), 50);

INSERT INTO articles
VALUES (98716279, 1934453923, N'Gabriel Aldamiz...',
        N'How we grew from 0 to 4 million women on our fashion app, with a vertical machine learning approach',
        CAST(N'2020-12-09' AS Date), 53);

INSERT INTO articles
VALUES (103243217, 1231018153, N'Arthur Juliani',
        N'Simple Reinforcement Learning with Tensorflow Part 4: Deep Q-Networks and Beyond',
        CAST(N'2020-12-25' AS Date), 51);

INSERT INTO articles
VALUES (104814927, 1093813538, N'Dhruv Parthasarathy',
        N'Write an AI to win at Pong from scratch with Reinforcement Learning', CAST(N'2020-12-25' AS Date), 53);

INSERT INTO articles
VALUES (125419229, 1199699418, N'Tim Anglade',
        N'How HBO’s Silicon Valley built “Not Hotdog” with mobile TensorFlow, Keras & React Native',
        CAST(N'2020-12-05' AS Date), 53);

INSERT INTO articles
VALUES (125419237, 1199699418, N'Tim Anglade',
        N'How HBO’s Silicon Valley built “Not Hotdog” with mobile TensorFlow, Keras & React Native',
        CAST(N'2020-12-29' AS Date), 50);

INSERT INTO articles
VALUES (125419320, 1199699418, N'Tim Anglade',
        N'How HBO’s Silicon Valley built “Not Hotdog” with mobile TensorFlow, Keras & React Native',
        CAST(N'2020-12-31' AS Date), 50);

INSERT INTO articles
VALUES (127855906, 695884725, N'Sebastian Heinz',
        N'A simple deep learning model for stock price prediction using TensorFlow', CAST(N'2020-12-16' AS Date), 50);

INSERT INTO articles
VALUES (127855958, 695884725, N'Sebastian Heinz',
        N'A simple deep learning model for stock price prediction using TensorFlow', CAST(N'2020-12-24' AS Date), 52);

INSERT INTO articles
VALUES (127856012, 695884725, N'Sebastian Heinz',
        N'A simple deep learning model for stock price prediction using TensorFlow', CAST(N'2020-12-20' AS Date), 52);

INSERT INTO articles
VALUES (130882181, 2080667140, N'Emmanuel Ameisen', N'Reinforcement Learning from scratch – Insight Data',
        CAST(N'2020-12-05' AS Date), 50);

INSERT INTO articles
VALUES (130882192, 2080667140, N'Emmanuel Ameisen', N'Reinforcement Learning from scratch – Insight Data',
        CAST(N'2020-12-27' AS Date), 53);

INSERT INTO articles
VALUES (130882227, 2080667140, N'Emmanuel Ameisen', N'Reinforcement Learning from scratch – Insight Data',
        CAST(N'2020-12-14' AS Date), 51);

INSERT INTO articles
VALUES (134214939, 1075839964, N'Gil Fewster', N'The mind-blowing AI announcement from ogle that you probably missed.',
        CAST(N'2020-12-13' AS Date), 52);

INSERT INTO articles
VALUES (134214946, 1075839964, N'Gil Fewster', N'The mind-blowing AI announcement from ogle that you probably missed.',
        CAST(N'2020-12-18' AS Date), 51);

INSERT INTO articles
VALUES (134214996, 1075839964, N'Gil Fewster', N'The mind-blowing AI announcement from ogle that you probably missed.',
        CAST(N'2020-12-22' AS Date), 52);

INSERT INTO articles
VALUES (134215007, 1075839964, N'Gil Fewster', N'The mind-blowing AI announcement from ogle that you probably missed.',
        CAST(N'2020-12-18' AS Date), 53);

INSERT INTO articles
VALUES (153279736, 2143132495, N'Conor Dewey', N'The Big List of DS/ML Interview Resources – Towards Data Science',
        CAST(N'2020-12-11' AS Date), 50);

INSERT INTO articles
VALUES (153279758, 2143132495, N'Conor Dewey', N'The Big List of DS/ML Interview Resources – Towards Data Science',
        CAST(N'2020-12-06' AS Date), 53);

INSERT INTO articles
VALUES (155161879, 1848303235, N'Andrej Karpathy', N'Yes you should understand backprop – Andrej Karpathy – Medium',
        CAST(N'2020-12-21' AS Date), 52);

INSERT INTO articles
VALUES (155161911, 1848303235, N'Andrej Karpathy', N'Yes you should understand backprop – Andrej Karpathy – Medium',
        CAST(N'2020-12-30' AS Date), 51);

INSERT INTO articles
VALUES (155161963, 1848303235, N'Andrej Karpathy', N'Yes you should understand backprop – Andrej Karpathy – Medium',
        CAST(N'2020-12-26' AS Date), 52);

INSERT INTO articles
VALUES (155161969, 1848303235, N'Andrej Karpathy', N'Yes you should understand backprop – Andrej Karpathy – Medium',
        CAST(N'2020-12-21' AS Date), 50);

INSERT INTO articles
VALUES (174711769, 91829157, N'SAGAR SHARMA', N'Activation Functions: Neural Networks – Towards Data Science',
        CAST(N'2020-12-25' AS Date), 51);

INSERT INTO articles
VALUES (181052958, 1231018153, N'Arthur Juliani',
        N'Simple Reinforcement Learning with Tensorflow Part 0: Q-Learning with Tables and Neural Networks',
        CAST(N'2020-12-20' AS Date), 51);

INSERT INTO articles
VALUES (181052997, 1231018153, N'Arthur Juliani',
        N'Simple Reinforcement Learning with Tensorflow Part 0: Q-Learning with Tables and Neural Networks',
        CAST(N'2020-12-16' AS Date), 53);

INSERT INTO articles
VALUES (181052998, 1231018153, N'Arthur Juliani',
        N'Simple Reinforcement Learning with Tensorflow Part 0: Q-Learning with Tables and Neural Networks',
        CAST(N'2020-12-11' AS Date), 50);

INSERT INTO articles
VALUES (181053039, 1231018153, N'Arthur Juliani',
        N'Simple Reinforcement Learning with Tensorflow Part 0: Q-Learning with Tables and Neural Networks',
        CAST(N'2020-12-22' AS Date), 53);

INSERT INTO articles
VALUES (181053061, 1231018153, N'Arthur Juliani',
        N'Simple Reinforcement Learning with Tensorflow Part 0: Q-Learning with Tables and Neural Networks',
        CAST(N'2020-12-31' AS Date), 53);

INSERT INTO articles
VALUES (181053078, 1231018153, N'Arthur Juliani',
        N'Simple Reinforcement Learning with Tensorflow Part 0: Q-Learning with Tables and Neural Networks',
        CAST(N'2020-12-14' AS Date), 51);

INSERT INTO articles
VALUES (191035036, 814661378, N'Yingjie Miao ',
        N'From word2vec to doc2vec: an approach driven by Chinese restaurant process', CAST(N'2020-12-23' AS Date), 52);

INSERT INTO articles
VALUES (191035113, 814661378, N'Yingjie Miao ',
        N'From word2vec to doc2vec: an approach driven by Chinese restaurant process', CAST(N'2020-12-21' AS Date), 52);

INSERT INTO articles
VALUES (191928987, 1094341462, N'Adam Geitgey',
        N'Machine Learning is Fun! Part 3: Deep Learning and Convolutional Neural Networks',
        CAST(N'2020-12-22' AS Date), 52);

INSERT INTO articles
VALUES (194648842, 348545013, N'Stefan Kojouharov',
        N'Cheat Sheets for AI, Neural Networks, Machine Learning, Deep Learning & Big Data',
        CAST(N'2020-12-09' AS Date), 51);

INSERT INTO articles
VALUES (194648850, 348545013, N'Stefan Kojouharov',
        N'Cheat Sheets for AI, Neural Networks, Machine Learning, Deep Learning & Big Data',
        CAST(N'2020-12-10' AS Date), 51);

INSERT INTO articles
VALUES (194648911, 348545013, N'Stefan Kojouharov',
        N'Cheat Sheets for AI, Neural Networks, Machine Learning, Deep Learning & Big Data',
        CAST(N'2020-12-07' AS Date), 53);

INSERT INTO articles
VALUES (194648935, 348545013, N'Stefan Kojouharov',
        N'Cheat Sheets for AI, Neural Networks, Machine Learning, Deep Learning & Big Data',
        CAST(N'2020-12-27' AS Date), 52);

INSERT INTO articles
VALUES (202762743, 433307581, N'Oliver Lindberg',
        N'Interview with ogle’s Alfred Spector on voice search, hybrid intelligence and more',
        CAST(N'2020-12-20' AS Date), 50);

INSERT INTO articles
VALUES (202762755, 433307581, N'Oliver Lindberg',
        N'Interview with ogle’s Alfred Spector on voice search, hybrid intelligence and more',
        CAST(N'2020-12-12' AS Date), 50);

INSERT INTO articles
VALUES (208565270, 666196057, N'iDanScott', N'C# Plays Bejeweled Blitz – iDanScott – Medium',
        CAST(N'2020-12-17' AS Date), 50);

INSERT INTO articles
VALUES (228615244, 1971005137, N'Robbie Tilton', N'Emotional Computing – Robbie Tilton – Medium',
        CAST(N'2020-12-17' AS Date), 52);

INSERT INTO articles
VALUES (228615282, 1971005137, N'Robbie Tilton', N'Emotional Computing – Robbie Tilton – Medium',
        CAST(N'2020-12-15' AS Date), 53);

INSERT INTO articles
VALUES (241321978, 117268208, N'Dominik Felix', N'How to Create a Chatbot Without Coding a Single Line',
        CAST(N'2020-12-22' AS Date), 50);

INSERT INTO articles
VALUES (250083968, 149033346, N'Christopher Wolf Nordlinger',
        N'The Internet of Things and the Operating Room of the Future', CAST(N'2020-12-29' AS Date), 50);

INSERT INTO articles
VALUES (291471789, 10566473, N'Oxford University', N'The future of work – Oxford University – Medium',
        CAST(N'2020-12-09' AS Date), 50);

INSERT INTO articles
VALUES (314574337, 990889188, N'Kelvin Li', N'The Complex language used in Back Propagation – Kelvin Li – Medium',
        CAST(N'2020-12-26' AS Date), 52);

INSERT INTO articles
VALUES (319732203, 944630623, N'James Le', N'How to do Semantic Segmentation using Deep learning',
        CAST(N'2020-12-11' AS Date), 52);

INSERT INTO articles
VALUES (337649693, 1127815496, N'Jae Duk Seo',
        N'Principal Component Analysis Network in Tensorflow with Interactive Code', CAST(N'2020-12-05' AS Date), 50);

INSERT INTO articles
VALUES (356353822, 593484406, N'Milo Spencer-Harper',
        N'Video of a neural network learning – Deep Learning 101 – Medium', CAST(N'2020-12-22' AS Date), 51);

INSERT INTO articles
VALUES (363576091, 297231896, N'Erick Muzart Fonseca dos Santos',
        N'O Grupo de Estudo em Deep Learning de Brasília está planejando o próximo ciclo de encontros do...',
        CAST(N'2020-12-07' AS Date), 51);

INSERT INTO articles
VALUES (374382155, 1094341462, N'Adam Geitgey',
        N'Machine Learning is Fun Part 5: Language Translation with Deep Learning and the Magic of Sequences',
        CAST(N'2020-12-23' AS Date), 51);

INSERT INTO articles
VALUES (374382265, 1094341462, N'Adam Geitgey',
        N'Machine Learning is Fun Part 5: Language Translation with Deep Learning and the Magic of Sequences',
        CAST(N'2020-12-14' AS Date), 51);

INSERT INTO articles
VALUES (385879182, 267756326, N'Nityesh Agarwal', N'“WTH does a neural network even learn??” — a newcomer’s dilemma',
        CAST(N'2020-12-30' AS Date), 53);

INSERT INTO articles
VALUES (386559097, 1155542304, N'Slav Ivanov', N'37 Reasons why your Neural Network is not working – Slav',
        CAST(N'2020-12-23' AS Date), 50);

INSERT INTO articles
VALUES (386559160, 1155542304, N'Slav Ivanov', N'37 Reasons why your Neural Network is not working – Slav',
        CAST(N'2020-12-24' AS Date), 51);

INSERT INTO articles
VALUES (386559181, 1155542304, N'Slav Ivanov', N'37 Reasons why your Neural Network is not working – Slav',
        CAST(N'2020-12-17' AS Date), 52);

INSERT INTO articles
VALUES (405647741, 1443241146, N'Roland Trimmel', N'Will All Musicians Become Robots? – Roland Trimmel – Medium',
        CAST(N'2020-12-19' AS Date), 52);

INSERT INTO articles
VALUES (422021896, 1050466039, N'Avinash Sharma V', N'Understanding Activation Functions in Neural Networks',
        CAST(N'2020-12-06' AS Date), 50);

INSERT INTO articles
VALUES (422022014, 1050466039, N'Avinash Sharma V', N'Understanding Activation Functions in Neural Networks',
        CAST(N'2020-12-11' AS Date), 52);

INSERT INTO articles
VALUES (431118188, 1709836667, N'WiseWolf Fund',
        N'GAME-CHANGING TRENDS TO LOOK OUT FOR WITH AI – WiseWolf Fund – Medium', CAST(N'2020-12-12' AS Date), 50);

INSERT INTO articles
VALUES (434824575, 962536070, N'Vivek Yadav',
        N'An augmentation based deep neural network approach to learn human driving behavior',
        CAST(N'2020-12-19' AS Date), 51);

INSERT INTO articles
VALUES (435814721, 1011173466, N'Ben Brown', N'Start automating your business tasks with Slack – Howdy',
        CAST(N'2020-12-26' AS Date), 51);

INSERT INTO articles
VALUES (441243464, 1582544044, N'Sirui Li', N'The evolution: a simple illustration – LeeThree on UX – Medium',
        CAST(N'2020-12-07' AS Date), 51);

INSERT INTO articles
VALUES (449200331, 910202250, N'Matt Fogel', N'The 7 Best Data Science and Machine Learning Podcasts',
        CAST(N'2020-12-28' AS Date), 53);

INSERT INTO articles
VALUES (463418477, 1428978597, N'Scott Santens',
        N'Deep Learning Is ing to Teach Us All the Lesson of Our Lives: Jobs Are for Machines',
        CAST(N'2020-12-09' AS Date), 51);

INSERT INTO articles
VALUES (467523017, 1325591911, N'Dr Ben Medlock',
        N'Why Turing’s legacy demands a smarter keyboard – Dr Ben Medlock – Medium', CAST(N'2020-12-29' AS Date), 53);

INSERT INTO articles
VALUES (470414781, 1408102737, N'Lance Ulanoff', N'Did ogle Duplex just pass the Turing Test? – Lance Ulanoff – Medium',
        CAST(N'2020-12-25' AS Date), 51);

INSERT INTO articles
VALUES (470414826, 1408102737, N'Lance Ulanoff', N'Did ogle Duplex just pass the Turing Test? – Lance Ulanoff – Medium',
        CAST(N'2020-12-24' AS Date), 51);

INSERT INTO articles
VALUES (473667571, 1992116538, N'Frank Diana', N'Digital Transformation of Business and Society – Frank Diana – Medium',
        CAST(N'2020-12-07' AS Date), 50);

INSERT INTO articles
VALUES (476200182, 1298457806, N'Karl N.', N'Taking Keras to the Zoo – Gab41', CAST(N'2020-12-06' AS Date), 53);

INSERT INTO articles
VALUES (479453446, 873075646, N'Sophia Ciocca', N'How Does Spotify Know You So Well? – Member Feature Stories – Medium',
        CAST(N'2020-12-29' AS Date), 50);

INSERT INTO articles
VALUES (479453482, 873075646, N'Sophia Ciocca', N'How Does Spotify Know You So Well? – Member Feature Stories – Medium',
        CAST(N'2020-12-26' AS Date), 50);

INSERT INTO articles
VALUES (535441554, 593484406, N'Milo Spencer-Harper',
        N'Thanks so much for your response Jared. Really glad you enjoyed reading it.', CAST(N'2020-12-11' AS Date), 51);

INSERT INTO articles
VALUES (568191501, 1410733533, N'Greg Gascon',
        N'How Invisible Interfaces are ing to transform the way we interact with computers',
        CAST(N'2020-12-24' AS Date), 53);

INSERT INTO articles
VALUES (571381413, 593484406, N'Milo Spencer-Harper', N'How to build a multi-layered neural network in Python',
        CAST(N'2020-12-09' AS Date), 51);

INSERT INTO articles
VALUES (571381421, 593484406, N'Milo Spencer-Harper', N'How to build a multi-layered neural network in Python',
        CAST(N'2020-12-16' AS Date), 50);

INSERT INTO articles
VALUES (571381428, 593484406, N'Milo Spencer-Harper', N'How to build a multi-layered neural network in Python',
        CAST(N'2020-12-14' AS Date), 53);

INSERT INTO articles
VALUES (589760921, 1164378828, N'Denny Vrandečić',
        N'AI is coming, and it will be boring – Denny Vrandečić – Medium', CAST(N'2020-12-09' AS Date), 53);

INSERT INTO articles
VALUES (594135345, 969264847, N'Leon Zhou', N'The Best Words – Towards Data Science', CAST(N'2020-12-06' AS Date), 52);

INSERT INTO articles
VALUES (607793168, 1968985881, N'Netflix Technology Blog',
        N'Artwork Personalization at Netflix – Netflix TechBlog – Medium', CAST(N'2020-12-27' AS Date), 50);

INSERT INTO articles
VALUES (609969940, 1254272387, N'Christopher Nguyen', N'Alrithms of the Mind – Deep Learning 101 – Medium',
        CAST(N'2020-12-15' AS Date), 50);

INSERT INTO articles
VALUES (612398208, 1391258515, N'Illia Polosukhin', N'TensorFlow Tutorial— Part 1 – Illia Polosukhin – Medium',
        CAST(N'2020-12-13' AS Date), 53);

INSERT INTO articles
VALUES (624468271, 627524346, N'Wildcat2030',
        N'Becoming a Cyborg should be taken gently: Of Modern Bio-Paleo-Machines — Cyborlogy',
        CAST(N'2020-12-30' AS Date), 52);

INSERT INTO articles
VALUES (626440076, 1206850751, N'Diana Filippova',
        N'De la coopération entre les hommes et les machines, pour une approche pair-à-pair de l’intelligence...',
        CAST(N'2020-12-23' AS Date), 53);

INSERT INTO articles
VALUES (632051805, 385029366, N'Erik Hallström', N'How to build a Recurrent Neural Network in TensorFlow (1/7)',
        CAST(N'2020-12-21' AS Date), 50);

INSERT INTO articles
VALUES (638887870, 39367556, N'François Chollet', N'What worries me about AI – François Chollet – Medium',
        CAST(N'2020-12-07' AS Date), 53);

INSERT INTO articles
VALUES (639281677, 480394405, N'Eugenio Culurciello', N'Neural Network Architectures – Towards Data Science',
        CAST(N'2020-12-24' AS Date), 53);

INSERT INTO articles
VALUES (642386769, 1004016570, N'Aman Dalmia',
        N'What I learned from interviewing at multiple AI companies and start-ups', CAST(N'2020-12-09' AS Date), 50);

INSERT INTO articles
VALUES (642386775, 1004016570, N'Aman Dalmia',
        N'What I learned from interviewing at multiple AI companies and start-ups', CAST(N'2020-12-08' AS Date), 52);

INSERT INTO articles
VALUES (642386778, 1004016570, N'Aman Dalmia',
        N'What I learned from interviewing at multiple AI companies and start-ups', CAST(N'2020-12-17' AS Date), 50);

INSERT INTO articles
VALUES (645420194, 1373386413, N'Daniel Simmons',
        N'You can build a neural network in JavaScript even if you don’t really understand neural networks',
        CAST(N'2020-12-26' AS Date), 51);

INSERT INTO articles
VALUES (645420278, 1373386413, N'Daniel Simmons',
        N'You can build a neural network in JavaScript even if you don’t really understand neural networks',
        CAST(N'2020-12-19' AS Date), 51);

INSERT INTO articles
VALUES (646131868, 1134807044, N'Ahmed El Deeb',
        N'The Unreasonable Effectiveness of Random Forests – Rants on Machine Learning – Medium',
        CAST(N'2020-12-27' AS Date), 52);

INSERT INTO articles
VALUES (646912358, 313432, N'Josh', N'Everything You Need to Know About Artificial Neural Networks',
        CAST(N'2020-12-11' AS Date), 52);

INSERT INTO articles
VALUES (648635603, 447774080, N'Maryna Hlaiboroda', N'ИИ-психопат и ИИ-обманщик – Hey Machine Learning',
        CAST(N'2020-12-10' AS Date), 53);

INSERT INTO articles
VALUES (656418756, 1978646464, N'Abhishek Parbhakar', N'Must know Information Theory concepts in Deep Learning (AI)',
        CAST(N'2020-12-17' AS Date), 52);

INSERT INTO articles
VALUES (656418772, 1978646464, N'Abhishek Parbhakar', N'Must know Information Theory concepts in Deep Learning (AI)',
        CAST(N'2020-12-27' AS Date), 53);

INSERT INTO articles
VALUES (656418803, 1978646464, N'Abhishek Parbhakar', N'Must know Information Theory concepts in Deep Learning (AI)',
        CAST(N'2020-12-13' AS Date), 52);

INSERT INTO articles
VALUES (675071955, 348545013, N'Stefan Kojouharov',
        N'Ultimate Guide to Leveraging NLP & Machine Learning for your Chatbot', CAST(N'2020-12-29' AS Date), 53);

INSERT INTO articles
VALUES (691354531, 1682532741, N'Gaurav Kaila', N'How to easily automate Drone-based monitoring using Deep Learning',
        CAST(N'2020-12-09' AS Date), 50);

INSERT INTO articles
VALUES (727861626, 1986246046, N'paulson',
        N'What Could Happen If We Did Things Right: An Interview With Kim Stanley Robinson, Author Of Aurora',
        CAST(N'2020-12-29' AS Date), 52);

INSERT INTO articles
VALUES (730661949, 1128830969, N'Sam Drozdov', N'An intro to Machine Learning for designers – UX Collective',
        CAST(N'2020-12-14' AS Date), 52);

INSERT INTO articles
VALUES (730661954, 1128830969, N'Sam Drozdov', N'An intro to Machine Learning for designers – UX Collective',
        CAST(N'2020-12-31' AS Date), 51);

INSERT INTO articles
VALUES (750892984, 25071, N'gk_', N'Text Classification using Neural Networks – Machine Learnings',
        CAST(N'2020-12-25' AS Date), 52);

INSERT INTO articles
VALUES (753955616, 1123831527, N'Justin Lee',
        N'Chatbots were the next big thing: what happened? – The Startup – Medium', CAST(N'2020-12-19' AS Date), 53);

INSERT INTO articles
VALUES (753955626, 1123831527, N'Justin Lee',
        N'Chatbots were the next big thing: what happened? – The Startup – Medium', CAST(N'2020-12-26' AS Date), 52);

INSERT INTO articles
VALUES (753955674, 1123831527, N'Justin Lee',
        N'Chatbots were the next big thing: what happened? – The Startup – Medium', CAST(N'2020-12-20' AS Date), 51);

INSERT INTO articles
VALUES (758461201, 379687253, N'Chintan Trivedi', N'Using Deep Q-Learning in FIFA 18 to perfect the art of free-kicks',
        CAST(N'2020-12-22' AS Date), 52);

INSERT INTO articles
VALUES (768951755, 907179030, N'Joe Johnston',
        N'How I tracked my house movements using iBeacons. – Universal Mind – Medium', CAST(N'2020-12-14' AS Date), 50);

INSERT INTO articles
VALUES (774394013, 815932916, N'Dr. GP Pulipaka',
        N'3 Ways to Apply Latent Semantic Analysis on Large-Corpus Text on macOS Terminal, JupyterLab, and...',
        CAST(N'2020-12-25' AS Date), 51);

INSERT INTO articles
VALUES (774394064, 815932916, N'Dr. GP Pulipaka',
        N'3 Ways to Apply Latent Semantic Analysis on Large-Corpus Text on macOS Terminal, JupyterLab, and...',
        CAST(N'2020-12-23' AS Date), 52);

INSERT INTO articles
VALUES (774394094, 815932916, N'Dr. GP Pulipaka',
        N'3 Ways to Apply Latent Semantic Analysis on Large-Corpus Text on macOS Terminal, JupyterLab, and...',
        CAST(N'2020-12-14' AS Date), 52);

INSERT INTO articles
VALUES (784518455, 2080667140, N'Emmanuel Ameisen', N'How to solve 90% of NLP problems: a step-by-step guide',
        CAST(N'2020-12-25' AS Date), 50);

INSERT INTO articles
VALUES (791421737, 2119070167, N'Vishal Maini', N'Machine Learning for Humans, Part 2.1: Supervised Learning',
        CAST(N'2020-12-09' AS Date), 52);

INSERT INTO articles
VALUES (796863247, 1848303235, N'Andrej Karpathy', N'Software 2.0 – Andrej Karpathy – Medium',
        CAST(N'2020-12-30' AS Date), 53);

INSERT INTO articles
VALUES (799747284, 958745093, N'Eventbrite', N'Multi-Index Locality Sensitive Hashing for Fun and Profit',
        CAST(N'2020-12-09' AS Date), 51);

INSERT INTO articles
VALUES (831146073, 911600496, N'Scott Smith', N'Your Temporary Instant Disposable Dreamhouse for the Weekend',
        CAST(N'2020-12-15' AS Date), 51);

INSERT INTO articles
VALUES (833946749, 988576225, N'Espen Waldal', N'How Artificial Intelligence can improve online news',
        CAST(N'2020-12-17' AS Date), 51);

INSERT INTO articles
VALUES (835128280, 480394405, N'Eugenio Culurciello', N'The fall of RNN / LSTM – Towards Data Science',
        CAST(N'2020-12-21' AS Date), 52);

INSERT INTO articles
VALUES (835128315, 480394405, N'Eugenio Culurciello', N'The fall of RNN / LSTM – Towards Data Science',
        CAST(N'2020-12-18' AS Date), 51);

INSERT INTO articles
VALUES (850232864, 1129582104, N'Greg Fish', N'why do we want to build a fully fledged a.g.i.? – [ weird things ]',
        CAST(N'2020-12-29' AS Date), 52);

INSERT INTO articles
VALUES (853885023, 1141253394, N'Per Harald Borgen', N'Machine Learning in a Year – Learning New Stuff – Medium',
        CAST(N'2020-12-06' AS Date), 52);

INSERT INTO articles
VALUES (873886520, 593484406, N'Milo Spencer-Harper', N'How to create a mind: The secret of human thought revealed',
        CAST(N'2020-12-09' AS Date), 53);

INSERT INTO articles
VALUES (884424913, 1353387503, N'Mybridge', N'30 Amazing Python Projects for the Past Year (v.2018)',
        CAST(N'2020-12-10' AS Date), 50);

INSERT INTO articles
VALUES (896327908, 264592811, N'Devin Soni', N'Spiking Neural Networks, the Next Generation of Machine Learning',
        CAST(N'2020-12-07' AS Date), 51);

INSERT INTO articles
VALUES (902527885, 985489596, N'Logan Spears', N'Coursera vs Udacity for Machine Learning – Hacker Noon',
        CAST(N'2020-12-17' AS Date), 51);

INSERT INTO articles
VALUES (904548534, 1031335260, N'Christophe Bourguignat',
        N'6 Tricks I Learned From The OTTO Kaggle Challenge – Christophe Bourguignat – Medium',
        CAST(N'2020-12-19' AS Date), 52);

INSERT INTO articles
VALUES (905034529, 1141253394, N'Per Harald Borgen',
        N'Learning How To Code Neural Networks – Learning New Stuff – Medium', CAST(N'2020-12-28' AS Date), 50);

INSERT INTO articles
VALUES (911006639, 911341283, N'Matt Wiese', N'Digital Companionship – Matt Wiese – Medium',
        CAST(N'2020-12-19' AS Date), 50);

INSERT INTO articles
VALUES (916299759, 1353387503, N'Mybridge', N'30 Amazing Machine Learning Projects for the Past Year (v.2018)',
        CAST(N'2020-12-29' AS Date), 51);

INSERT INTO articles
VALUES (933436434, 1992116538, N'Frank Diana', N'The Evolving Role of Business Analytics – Frank Diana – Medium',
        CAST(N'2020-12-17' AS Date), 52);

INSERT INTO articles
VALUES (934557786, 657355830, N'Gabriel Jiménez', N'Chatbots, could we talk? – AIMA: AI Marketing Magazine – Medium',
        CAST(N'2020-12-24' AS Date), 51);

INSERT INTO articles
VALUES (987032531, 2119070167, N'Vishal Maini',
        N'A Beginner’s Guide to AI/ML 🤖👶 – Machine Learning for Humans – Medium', CAST(N'2020-12-15' AS Date), 51);

INSERT INTO articles
VALUES (987032533, 2119070167, N'Vishal Maini',
        N'A Beginner’s Guide to AI/ML 🤖👶 – Machine Learning for Humans – Medium', CAST(N'2020-12-26' AS Date), 52);

INSERT INTO articles
VALUES (987032553, 2119070167, N'Vishal Maini',
        N'A Beginner’s Guide to AI/ML 🤖👶 – Machine Learning for Humans – Medium', CAST(N'2020-12-17' AS Date), 50);

INSERT INTO articles
VALUES (991687733, 409890388, N'Sarthak Jain', N'How to easily Detect Objects with Deep Learning on Raspberry Pi',
        CAST(N'2020-12-19' AS Date), 52);

INSERT INTO articles
VALUES (991687737, 409890388, N'Sarthak Jain', N'How to easily Detect Objects with Deep Learning on Raspberry Pi',
        CAST(N'2020-12-09' AS Date), 50);

INSERT INTO articles
VALUES (991687765, 409890388, N'Sarthak Jain', N'How to easily Detect Objects with Deep Learning on Raspberry Pi',
        CAST(N'2020-12-26' AS Date), 51);

INSERT INTO articles
VALUES (991687767, 409890388, N'Sarthak Jain', N'How to easily Detect Objects with Deep Learning on Raspberry Pi',
        CAST(N'2020-12-18' AS Date), 52);

INSERT INTO articles
VALUES (991687768, 409890388, N'Sarthak Jain', N'How to easily Detect Objects with Deep Learning on Raspberry Pi',
        CAST(N'2020-12-16' AS Date), 51);

INSERT INTO articles
VALUES (992100994, 1129582104, N'Greg Fish', N'looking for a ghost in the machine – [ weird things ]',
        CAST(N'2020-12-24' AS Date), 53);

INSERT INTO articles
VALUES (1009826987, 1233333580, N'savedroid ICO', N'#SNEAKPEEK The savedroid crypto saving app — Part #1: Your wish',
        CAST(N'2020-12-12' AS Date), 52);

INSERT INTO articles
VALUES (1015284765, 1098191566, N'George Seif', N'The 5 Clustering Alrithms Data Scientists Need to Know',
        CAST(N'2020-12-12' AS Date), 51);

INSERT INTO articles
VALUES (1019167369, 1231018153, N'Arthur Juliani',
        N'Simple Reinforcement Learning with Tensorflow Part 8: Asynchronous Actor-Critic Agents (A3C)',
        CAST(N'2020-12-21' AS Date), 50);

INSERT INTO articles
VALUES (1019167426, 1231018153, N'Arthur Juliani',
        N'Simple Reinforcement Learning with Tensorflow Part 8: Asynchronous Actor-Critic Agents (A3C)',
        CAST(N'2020-12-11' AS Date), 52);

INSERT INTO articles
VALUES (1019167436, 1231018153, N'Arthur Juliani',
        N'Simple Reinforcement Learning with Tensorflow Part 8: Asynchronous Actor-Critic Agents (A3C)',
        CAST(N'2020-12-19' AS Date), 53);

INSERT INTO articles
VALUES (1020795724, 1437155931, N'Irhum Shafkat', N'Intuitively Understanding Convolutions for Deep Learning',
        CAST(N'2020-12-09' AS Date), 52);

INSERT INTO articles
VALUES (1020795750, 1437155931, N'Irhum Shafkat', N'Intuitively Understanding Convolutions for Deep Learning',
        CAST(N'2020-12-08' AS Date), 50);

INSERT INTO articles
VALUES (1020795757, 1437155931, N'Irhum Shafkat', N'Intuitively Understanding Convolutions for Deep Learning',
        CAST(N'2020-12-16' AS Date), 50);

INSERT INTO articles
VALUES (1024850325, 2033376057, N'Nick Bourdakos', N'Understanding Capsule Networks — AI’s Alluring New Architecture',
        CAST(N'2020-12-09' AS Date), 50);

INSERT INTO articles
VALUES (1030835679, 1437883132, N'Jerry Chen', N'The New Moats – Greylock Perspectives', CAST(N'2020-12-14' AS Date),
        50);

INSERT INTO articles
VALUES (1046197785, 404820944, N'Paul Christiano', N'Formalizing indirect normativity – AI Alignment',
        CAST(N'2020-12-18' AS Date), 51);

INSERT INTO articles
VALUES (1046197846, 404820944, N'Paul Christiano', N'Formalizing indirect normativity – AI Alignment',
        CAST(N'2020-12-22' AS Date), 51);

INSERT INTO articles
VALUES (1052989964, 2065360192, N'Maciej Lipiec', N'The Future of Digital Banking – K2 Product Design – Medium',
        CAST(N'2020-12-09' AS Date), 50);

INSERT INTO articles
VALUES (1058786214, 1900642900, N'nafrondel', N'You requested someone with a degree in this? *Holds up hand*',
        CAST(N'2020-12-13' AS Date), 51);

INSERT INTO articles
VALUES (1061832583, 1391258515, N'Illia Polosukhin', N'Tensorflow Tutorial — Part 2 – Illia Polosukhin – Medium',
        CAST(N'2020-12-30' AS Date), 53);

INSERT INTO articles
VALUES (1077504210, 1367249884, N'Emil Wallner',
        N'How you can train an AI to convert your design mockups into HTML and CSS', CAST(N'2020-12-20' AS Date), 52);

INSERT INTO articles
VALUES (1081886992, 1155542304, N'Slav Ivanov', N'Picking a GPU for Deep Learning – Slav', CAST(N'2020-12-10' AS Date),
        52);

INSERT INTO articles
VALUES (1081886999, 1155542304, N'Slav Ivanov', N'Picking a GPU for Deep Learning – Slav', CAST(N'2020-12-18' AS Date),
        52)   ;

INSERT INTO articles
VALUES (1095985601, 532499517, N'Sophia Arakelyan', N'From Ballerina to AI Researcher: Part I – buZZrobot',
        CAST(N'2020-12-17' AS Date), 50);

INSERT INTO articles
VALUES (1095985654, 532499517, N'Sophia Arakelyan', N'From Ballerina to AI Researcher: Part I – buZZrobot',
        CAST(N'2020-12-06' AS Date), 51);

INSERT INTO articles
VALUES (1098695305, 1062683760, N'Christian Hernandez', N'Into the Age of Context – Crossing the Pond – Medium',
        CAST(N'2020-12-29' AS Date), 52);

INSERT INTO articles
VALUES (1110651540, 1968985881, N'Netflix Technology Blog',
        N'System Architectures for Personalization and Recommendation', CAST(N'2020-12-28' AS Date), 52);

INSERT INTO articles
VALUES (1113366432, 482319326, N'Tyler Elliot Bettilyon', N'Are Programmers Headed Toward Another Bursting Bubble?',
        CAST(N'2020-12-31' AS Date), 52);

INSERT INTO articles
VALUES (1113366467, 482319326, N'Tyler Elliot Bettilyon', N'Are Programmers Headed Toward Another Bursting Bubble?',
        CAST(N'2020-12-06' AS Date), 50);

INSERT INTO articles
VALUES (1122103191, 515724438, N'Chris Dixon', N'Eleven Reasons To Be Excited About The Future of Technology',
        CAST(N'2020-12-11' AS Date), 53);

INSERT INTO articles
VALUES (1131584185, 1678533677, N'David Foster', N'How to build your own AlphaZero AI using Python and Keras',
        CAST(N'2020-12-12' AS Date), 53);

INSERT INTO articles
VALUES (1131584299, 1678533677, N'David Foster', N'How to build your own AlphaZero AI using Python and Keras',
        CAST(N'2020-12-13' AS Date), 51);

INSERT INTO articles
VALUES (1132511551, 504956430, N'Michael Solana', N'Artificial Intelligence Is Humanity''s Rorschach Test',
        CAST(N'2020-12-19' AS Date), 53);

INSERT INTO articles
VALUES (1134707844, 1441488766, N'Shi Yan', N'Understanding LSTM and its diagrams – ML Review – Medium',
        CAST(N'2020-12-14' AS Date), 52);

INSERT INTO articles
VALUES (1137826657, 1149651735, N'Geoff Nesnow', N'73 Mind-Blowing Implications of a Driverless Future',
        CAST(N'2020-12-21' AS Date), 51);

INSERT INTO articles
VALUES (1149001062, 1204033006, N'Amine Aoullay', N'How to use Noise to your advantage ? – Towards Data Science',
        CAST(N'2020-12-24' AS Date), 50);

INSERT INTO articles
VALUES (1149001128, 1204033006, N'Amine Aoullay', N'How to use Noise to your advantage ? – Towards Data Science',
        CAST(N'2020-12-11' AS Date), 52);

INSERT INTO articles
VALUES (1158161672, 1870001121, N'Francesco Gadaleta', N'Gradient descent vs coordinate descent – Hacker Noon',
        CAST(N'2020-12-28' AS Date), 50);

INSERT INTO articles
VALUES (1163144421, 1413814793, N'Peter Sweeney', N'Siri’s Descendants: How intelligent assistants will evolve',
        CAST(N'2020-12-05' AS Date), 52);

INSERT INTO articles
VALUES (1176472462, 1093813538, N'Dhruv Parthasarathy',
        N'A Brief History of CNNs in Image Segmentation: From R-CNN to Mask R-CNN', CAST(N'2020-12-25' AS Date), 50);

INSERT INTO articles
VALUES (1176472493, 1093813538, N'Dhruv Parthasarathy',
        N'A Brief History of CNNs in Image Segmentation: From R-CNN to Mask R-CNN', CAST(N'2020-12-06' AS Date), 50);

INSERT INTO articles
VALUES (1176472519, 1093813538, N'Dhruv Parthasarathy',
        N'A Brief History of CNNs in Image Segmentation: From R-CNN to Mask R-CNN', CAST(N'2020-12-24' AS Date), 51);

INSERT INTO articles
VALUES (1176472569, 1093813538, N'Dhruv Parthasarathy',
        N'A Brief History of CNNs in Image Segmentation: From R-CNN to Mask R-CNN', CAST(N'2020-12-12' AS Date), 52);

INSERT INTO articles
VALUES (1176472592, 1093813538, N'Dhruv Parthasarathy',
        N'A Brief History of CNNs in Image Segmentation: From R-CNN to Mask R-CNN', CAST(N'2020-12-11' AS Date), 52);

INSERT INTO articles
VALUES (1189895666, 1134807044, N'Ahmed El Deeb', N'What to do with “small” data? – Rants on Machine Learning – Medium',
        CAST(N'2020-12-11' AS Date), 51);

INSERT INTO articles
VALUES (1196033777, 1123831527, N'Justin Lee',
        N'The beginner’s guide to conversational commerce – The Startup – Medium', CAST(N'2020-12-10' AS Date), 50);

INSERT INTO articles
VALUES (1211800623, 1100773823, N'Ross odwin',
        N'Adventures in Narrated Reality – Artists and Machine Intelligence – Medium', CAST(N'2020-12-07' AS Date), 50);

INSERT INTO articles
VALUES (1218725897, 610333415, N'Thaddeus Howze', N'Of Comets and ds in the Making – Thaddeus Howze – Medium',
        CAST(N'2020-12-31' AS Date), 53);

INSERT INTO articles
VALUES (1222538626, 1112840599, N'Waleed Abdulla',
        N'Traffic Sign Recognition with TensorFlow – Waleed Abdulla – Medium', CAST(N'2020-12-21' AS Date), 53);

INSERT INTO articles
VALUES (1244558425, 1968985881, N'Netflix Technology Blog', N'Netflix Recommendations: Beyond the 5 stars (Part 1)',
        CAST(N'2020-12-22' AS Date), 51);

INSERT INTO articles
VALUES (1244558564, 1968985881, N'Netflix Technology Blog', N'Netflix Recommendations: Beyond the 5 stars (Part 2)',
        CAST(N'2020-12-12' AS Date), 53);

INSERT INTO articles
VALUES (1269262929, 1192372736, N'Aman Agarwal', N'Explained Simply: How an AI program mastered the ancient game of ',
        CAST(N'2020-12-08' AS Date), 50);

INSERT INTO articles
VALUES (1269263091, 1192372736, N'Aman Agarwal', N'Explained Simply: How an AI program mastered the ancient game of ',
        CAST(N'2020-12-06' AS Date), 52);

INSERT INTO articles
VALUES (1277808606, 480394405, N'Eugenio Culurciello',
        N'Artificial Intelligence, AI in 2018 and beyond – Towards Data Science', CAST(N'2020-12-18' AS Date), 51);

INSERT INTO articles
VALUES (1292305347, 348343581, N'Chris Jagers', N'Explaining the Wolfram Language – Chris Jagers – Medium',
        CAST(N'2020-12-06' AS Date), 50);

INSERT INTO articles
VALUES (1308631983, 1789387471, N'Arik Sosman', N'Facebook M — The Anti-Turing Test – Arik’s Blog',
        CAST(N'2020-12-09' AS Date), 51);

INSERT INTO articles
VALUES (1319180678, 1978646464, N'Abhishek Parbhakar', N'Why Data Scientists love Gaussian? – Towards Data Science',
        CAST(N'2020-12-18' AS Date), 52);

INSERT INTO articles
VALUES (1350742729, 173425771, N'Daniel Rothmann', N'Human-Like Machine Hearing With AI (1/3) – Towards Data Science',
        CAST(N'2020-12-25' AS Date), 53);

INSERT INTO articles
VALUES (1353762168, 896232703, N'Favio Vázquez', N'A “weird” introduction to Deep Learning – Towards Data Science',
        CAST(N'2020-12-30' AS Date), 53);

INSERT INTO articles
VALUES (1360064976, 1177161884, N'Bharath Raj',
        N'Data Augmentation | How to use Deep Learning when you have Limited Data — Part 2',
        CAST(N'2020-12-24' AS Date), 52);

INSERT INTO articles
VALUES (1363013636, 1689898376, N'Tony Aubé', N'No UI is the New UI – The Startup – Medium',
        CAST(N'2020-12-29' AS Date), 50);

INSERT INTO articles
VALUES (1363699874, 1919172714, N'Nadav Gur',
        N'Why Natural Search is Awesome and How We t Here – The Vanguard – Medium', CAST(N'2020-12-12' AS Date), 51);

INSERT INTO articles
VALUES (1366044173, 1129582104, N'Greg Fish', N'why you just can’t black box an a.i. – [ weird things ]',
        CAST(N'2020-12-09' AS Date), 50);

INSERT INTO articles
VALUES (1372167748, 2119577372, N'Keval Patel',
        N'Turn your Raspberry Pi into homemade ogle Home – Becoming Human: Artificial Intelligence Magazine',
        CAST(N'2020-12-10' AS Date), 53);

INSERT INTO articles
VALUES (1378647427, 1129582104, N'Greg Fish', N'the technical trouble with humanoid robots – [ weird things ]',
        CAST(N'2020-12-23' AS Date), 50);

INSERT INTO articles
VALUES (1390598074, 1472505024, N'Eduard Tyantov', N'Deep Learning Achievements Over the Past Year – Stats and Bots',
        CAST(N'2020-12-19' AS Date), 53);

INSERT INTO articles
VALUES (1395562399, 64555575, N'James Faghmous ', N'New to Machine Learning? Avoid these three mistakes',
        CAST(N'2020-12-05' AS Date), 50);

INSERT INTO articles
VALUES (1395562402, 64555575, N'James Faghmous ', N'New to Machine Learning? Avoid these three mistakes',
        CAST(N'2020-12-14' AS Date), 51);

INSERT INTO articles
VALUES (1400195123, 1094341462, N'Adam Geitgey',
        N'Machine Learning is Fun Part 6: How to do Speech Recognition with Deep Learning', CAST(N'2020-12-24' AS Date),
        52)     ;

INSERT INTO articles
VALUES (1400195182, 1094341462, N'Adam Geitgey',
        N'Machine Learning is Fun Part 6: How to do Speech Recognition with Deep Learning', CAST(N'2020-12-11' AS Date),
        50)      ;

INSERT INTO articles
VALUES (1401578618, 91142757, N'Venture Scanner', N'The State of Artificial Intelligence in Six Visuals',
        CAST(N'2020-12-21' AS Date), 51);

INSERT INTO articles
VALUES (1410409964, 2086673402, N'Berit Anderson',
        N'The Rise of the Weaponized AI Propaganda Machine – Scout: Science Fiction + Journalism – Medium',
        CAST(N'2020-12-10' AS Date), 53);

INSERT INTO articles
VALUES (1410409983, 2086673402, N'Berit Anderson',
        N'The Rise of the Weaponized AI Propaganda Machine – Scout: Science Fiction + Journalism – Medium',
        CAST(N'2020-12-07' AS Date), 52);

INSERT INTO articles
VALUES (1419821449, 963271985, N'William Koehrsen', N'Automated Feature Engineering in Python – Towards Data Science',
        CAST(N'2020-12-15' AS Date), 53);

INSERT INTO articles
VALUES (1427149431, 2041643666, N'Rand Hindi', N'How Artificial Intelligence Will Make Technology Disappear',
        CAST(N'2020-12-24' AS Date), 52);

INSERT INTO articles
VALUES (1427541403, 7699453, N'samim', N'Obama-RNN — Machine generated political speeches. – samim – Medium',
        CAST(N'2020-12-19' AS Date), 52);

INSERT INTO articles
VALUES (1429747774, 459048979, N'Joel Leeman',
        N'I think I’m slowly turning into a cyborg – Becoming Human: Artificial Intelligence Magazine',
        CAST(N'2020-12-30' AS Date), 51);

INSERT INTO articles
VALUES (1439901796, 124995535, N'Hrishikesh Huillkar', N'Traveling santa Problem — An incompetent alrist’s attempt',
        CAST(N'2020-12-11' AS Date), 53);

INSERT INTO articles
VALUES (1449004140, 259182789, N'Blaise Aguera y Arcas',
        N'Do alrithms reveal sexual orientation or just expose our stereotypes?', CAST(N'2020-12-07' AS Date), 52);

INSERT INTO articles
VALUES (1449004145, 259182789, N'Blaise Aguera y Arcas',
        N'Do alrithms reveal sexual orientation or just expose our stereotypes?', CAST(N'2020-12-18' AS Date), 52);

INSERT INTO articles
VALUES (1449004173, 259182789, N'Blaise Aguera y Arcas',
        N'Do alrithms reveal sexual orientation or just expose our stereotypes?', CAST(N'2020-12-07' AS Date), 51);

INSERT INTO articles
VALUES (1449004181, 259182789, N'Blaise Aguera y Arcas',
        N'Do alrithms reveal sexual orientation or just expose our stereotypes?', CAST(N'2020-12-12' AS Date), 52);

INSERT INTO articles
VALUES (1453528079, 767109811, N'Tim O''Reilly', N'The WTF Economy – From the WTF? Economy to the Next Economy',
        CAST(N'2020-12-25' AS Date), 51);

INSERT INTO articles
VALUES (1455888763, 2119574795, N'Tal Perry', N'Deep Learning the Stock Market – Tal Perry – Medium',
        CAST(N'2020-12-28' AS Date), 53);

INSERT INTO articles
VALUES (1455888776, 2119574795, N'Tal Perry', N'Deep Learning the Stock Market – Tal Perry – Medium',
        CAST(N'2020-12-29' AS Date), 52);

INSERT INTO articles
VALUES (1455888790, 2119574795, N'Tal Perry', N'Deep Learning the Stock Market – Tal Perry – Medium',
        CAST(N'2020-12-12' AS Date), 52);

INSERT INTO articles
VALUES (1458640433, 1161294328, N'Jorge Camacho', N'‘Her’ is our space odyssey. – Jorge Camacho – Medium',
        CAST(N'2020-12-25' AS Date), 53);

INSERT INTO articles
VALUES (1459643304, 1218085424, N'Kyle McDonald', N'Comparing Artificial Artists – Kyle McDonald – Medium',
        CAST(N'2020-12-05' AS Date), 52);

INSERT INTO articles
VALUES (1473150576, 2085434300, N'Rohan Kapur',
        N'Rohan & Lenny #1: Neural Networks & The Backpropagation Alrithm, Explained', CAST(N'2020-12-30' AS Date), 52);

INSERT INTO articles
VALUES (1495955632, 1155542304, N'Slav Ivanov', N'The $1700 great Deep Learning box: Assembly, setup and benchmarks',
        CAST(N'2020-12-23' AS Date), 53);

INSERT INTO articles
VALUES (1495955635, 1155542304, N'Slav Ivanov', N'The $1700 great Deep Learning box: Assembly, setup and benchmarks',
        CAST(N'2020-12-17' AS Date), 52);

INSERT INTO articles
VALUES (1495955644, 1155542304, N'Slav Ivanov', N'The $1700 great Deep Learning box: Assembly, setup and benchmarks',
        CAST(N'2020-12-11' AS Date), 51);

INSERT INTO articles
VALUES (1495955656, 1155542304, N'Slav Ivanov', N'The $1700 great Deep Learning box: Assembly, setup and benchmarks',
        CAST(N'2020-12-31' AS Date), 53);

INSERT INTO articles
VALUES (1495955746, 1155542304, N'Slav Ivanov', N'The $1700 great Deep Learning box: Assembly, setup and benchmarks',
        CAST(N'2020-12-23' AS Date), 52);

INSERT INTO articles
VALUES (1521981149, 1979407010, N'Nieves Ábalos', N'Semántica desde información desestructurada – BEEVA Labs',
        CAST(N'2020-12-27' AS Date), 53);

INSERT INTO articles
VALUES (1528174687, 944630623, N'James Le', N'A Tour of The Top 10 Alrithms for Machine Learning Newbies',
        CAST(N'2020-12-25' AS Date), 52);

INSERT INTO articles
VALUES (1530371678, 1086214436, N'Nathan Benaich', N'Investing in Artificial Intelligence – Nathan Benaich – Medium',
        CAST(N'2020-12-13' AS Date), 53);

INSERT INTO articles
VALUES (1533575899, 72727275, N'Jeff Smith', N'Modeling Madly – Data Engineering – Medium', CAST(N'2020-12-17' AS Date),
        53);

INSERT INTO articles
VALUES (1534005671, 39367556, N'François Chollet',
        N'The impossibility of intelligence explosion – François Chollet – Medium', CAST(N'2020-12-23' AS Date), 50);

INSERT INTO articles
VALUES (1543443089, 1263139514, N'Gary Marcus', N'In defense of skepticism about deep learning – Gary Marcus – Medium',
        CAST(N'2020-12-06' AS Date), 51);

INSERT INTO articles
VALUES (1543443131, 1263139514, N'Gary Marcus', N'In defense of skepticism about deep learning – Gary Marcus – Medium',
        CAST(N'2020-12-09' AS Date), 53);

INSERT INTO articles
VALUES (1555480501, 1027562939, N'Tanay Jaipuria',
        N'Self-driving cars and the Trolley problem – Tanay Jaipuria – Medium', CAST(N'2020-12-13' AS Date), 50);

INSERT INTO articles
VALUES (1567168555, 501881, N'x.ai', N'I scheduled 1,019 meetings in 2012 — and that doesn’t count reschedules — x.ai',
        CAST(N'2020-12-14' AS Date), 50);

INSERT INTO articles
VALUES (1583902018, 959614014, N'Carlos E. Perez', N'Surprise! Neurons are Now More Complex than We Thought!!',
        CAST(N'2020-12-28' AS Date), 53);

INSERT INTO articles
VALUES (1596616116, 313432, N'Josh', N'9 Reasons Why Now is the Time for Artificial Intelligence',
        CAST(N'2020-12-28' AS Date), 52);

INSERT INTO articles
VALUES (1629370179, 1870647942, N'Nikhil Dandekar', N'What makes a od data scientist/engineer? – Towards Data Science',
        CAST(N'2020-12-30' AS Date), 52);

INSERT INTO articles
VALUES (1641490653, 247707701, N'Brandon Morelli', N'Artificial Intelligence Top 10 Articles — June 2018',
        CAST(N'2020-12-24' AS Date), 53);

INSERT INTO articles
VALUES (1643027411, 1912841722, N'Jonathan Balaban', N'Deep Learning Tips and Tricks – Towards Data Science',
        CAST(N'2020-12-22' AS Date), 50);

INSERT INTO articles
VALUES (1648158270, 1170599096, N'Camron dbout', N'TensorFlow in a Nutshell — Part Three: All the Models',
        CAST(N'2020-12-25' AS Date), 52);

INSERT INTO articles
VALUES (1656068643, 1968985881, N'Netflix Technology Blog', N'Distributed Neural Networks with GPUs in the AWS Cloud',
        CAST(N'2020-12-27' AS Date), 50);

INSERT INTO articles
VALUES (1669638632, 1692801866, N'Matt Harvey',
        N'Continuous online video classification with TensorFlow, Inception and a Raspberry Pi',
        CAST(N'2020-12-30' AS Date), 52);

INSERT INTO articles
VALUES (1681180523, 1285170135, N'Mark Johnson', N'How I Launched Six Side Projects in 2017 – Hacker Noon',
        CAST(N'2020-12-14' AS Date), 51);

INSERT INTO articles
VALUES (1698927825, 1135533253, N'Eric Elliott', N'How to Build a Neuron: Exploring AI in JavaScript Pt 1',
        CAST(N'2020-12-08' AS Date), 52);

INSERT INTO articles
VALUES (1700043673, 1127815496, N'Jae Duk Seo',
        N'Multi-Stream RNN, Concat RNN, Internal Conv RNN, Lag 2 RNN in Tensorflow', CAST(N'2020-12-26' AS Date), 53);

INSERT INTO articles
VALUES (1728624531, 1084486520, N'Jim Fleming', N'Highway Networks with TensorFlow – Jim Fleming – Medium',
        CAST(N'2020-12-18' AS Date), 50);

INSERT INTO articles
VALUES (1737476026, 1154827999, N'Gaurav Oberoi', N'Exploring DeepFakes – Hacker Noon', CAST(N'2020-12-12' AS Date), 50);

INSERT INTO articles
VALUES (1747473918, 1531914397, N'Max Pechyonkin',
        N'Stochastic Weight Averaging — a New Way to Get State of the Art Results in Deep Learning',
        CAST(N'2020-12-27' AS Date), 50);

INSERT INTO articles
VALUES (1769366116, 388458395, N'Leigh Alexander', N'The Future We Wanted – Leigh Alexander – Medium',
        CAST(N'2020-12-20' AS Date), 52);

INSERT INTO articles
VALUES (1782327052, 1695516234, N'Arvind N',
        N'Thoughts after taking the Deeplearning.ai courses – Towards Data Science', CAST(N'2020-12-31' AS Date), 51);

INSERT INTO articles
VALUES (1782327077, 1695516234, N'Arvind N',
        N'Thoughts after taking the Deeplearning.ai courses – Towards Data Science', CAST(N'2020-12-21' AS Date), 52);

INSERT INTO articles
VALUES (1782327100, 1695516234, N'Arvind N',
        N'Thoughts after taking the Deeplearning.ai courses – Towards Data Science', CAST(N'2020-12-15' AS Date), 53);

INSERT INTO articles
VALUES (1801232976, 1248891827, N'Gant Laborde', N'Machine Learning: how to  from Zero to Hero – freeCodeCamp',
        CAST(N'2020-12-09' AS Date), 53);

INSERT INTO articles
VALUES (1801232983, 1248891827, N'Gant Laborde', N'Machine Learning: how to  from Zero to Hero – freeCodeCamp',
        CAST(N'2020-12-10' AS Date), 53);

INSERT INTO articles
VALUES (1801233013, 1248891827, N'Gant Laborde', N'Machine Learning: how to  from Zero to Hero – freeCodeCamp',
        CAST(N'2020-12-28' AS Date), 53);

INSERT INTO articles
VALUES (1808913725, 929116310, N'Kai Stinchcombe',
        N'Blockchain is not only crappy technology but a bad vision for the future', CAST(N'2020-12-13' AS Date), 51);

INSERT INTO articles
VALUES (1808913753, 929116310, N'Kai Stinchcombe',
        N'Blockchain is not only crappy technology but a bad vision for the future', CAST(N'2020-12-12' AS Date), 50);

INSERT INTO articles
VALUES (1810186111, 1141253394, N'Per Harald Borgen', N'Machine Learning in a Week – Learning New Stuff – Medium',
        CAST(N'2020-12-14' AS Date), 50);

INSERT INTO articles
VALUES (1815641353, 1094341462, N'Adam Geitgey', N'Machine Learning is Fun! – Adam Geitgey – Medium',
        CAST(N'2020-12-26' AS Date), 51);

INSERT INTO articles
VALUES (1815641355, 1094341462, N'Adam Geitgey', N'Machine Learning is Fun! – Adam Geitgey – Medium',
        CAST(N'2020-12-19' AS Date), 51);

INSERT INTO articles
VALUES (1839052469, 465017920, N'AirbnbEng', N'How Airbnb uses Machine Learning to Detect Host Preferences',
        CAST(N'2020-12-07' AS Date), 51);

INSERT INTO articles
VALUES (1844963514, 655329807, N'Datafiniti',
        N'Classifying Websites with Neural Networks – Knowledge from Data: The Datafiniti Blog',
        CAST(N'2020-12-21' AS Date), 53);

INSERT INTO articles
VALUES (1844963568, 655329807, N'Datafiniti',
        N'Classifying Websites with Neural Networks – Knowledge from Data: The Datafiniti Blog',
        CAST(N'2020-12-21' AS Date), 53);

INSERT INTO articles
VALUES (1844963613, 655329807, N'Datafiniti',
        N'Classifying Websites with Neural Networks – Knowledge from Data: The Datafiniti Blog',
        CAST(N'2020-12-17' AS Date), 50);

INSERT INTO articles
VALUES (1864892845, 884352598, N'Alexandr Honchar',
        N'Neural networks for alrithmic trading. Simple time series forecasting', CAST(N'2020-12-21' AS Date), 50);

INSERT INTO articles
VALUES (1876626667, 1956766894, N'Neelabh Pant',
        N'A Guide For Time Series Prediction Using Recurrent Neural Networks (LSTMs)', CAST(N'2020-12-17' AS Date), 53);

INSERT INTO articles
VALUES (1882428081, 341655952, N'James Cooper', N'Announcing Poncho the WeatherBot – Render-from-betaworks',
        CAST(N'2020-12-06' AS Date), 53);

INSERT INTO articles
VALUES (1892612663, 339519, N'Theo',
        N'Is there a future for innovation ? – Becoming Human: Artificial Intelligence Magazine',
        CAST(N'2020-12-17' AS Date), 50);

INSERT INTO articles
VALUES (1892612705, 339519, N'Theo',
        N'Is there a future for innovation ? – Becoming Human: Artificial Intelligence Magazine',
        CAST(N'2020-12-16' AS Date), 51);

INSERT INTO articles
VALUES (1906720798, 1080917759, N'Carlos Beltran', N'A Rock Album For AI – Carlos Beltran – Medium',
        CAST(N'2020-12-05' AS Date), 52);

INSERT INTO articles
VALUES (1912450422, 1147409921, N'Bargava', N'How to learn Deep Learning in 6 months – Towards Data Science',
        CAST(N'2020-12-15' AS Date), 51);

INSERT INTO articles
VALUES (1932705390, 1172114140, N'Pinterest Engineering',
        N'Building a smarter home feed – Pinterest Engineering – Medium', CAST(N'2020-12-21' AS Date), 52);

INSERT INTO articles
VALUES (1935374799, 1094341462, N'Adam Geitgey',
        N'Machine Learning is Fun! Part 4: Modern Face Recognition with Deep Learning', CAST(N'2020-12-12' AS Date), 52);

INSERT INTO articles
VALUES (1935374801, 1094341462, N'Adam Geitgey',
        N'Machine Learning is Fun! Part 4: Modern Face Recognition with Deep Learning', CAST(N'2020-12-13' AS Date), 51);

INSERT INTO articles
VALUES (1935374837, 1094341462, N'Adam Geitgey',
        N'Machine Learning is Fun! Part 4: Modern Face Recognition with Deep Learning', CAST(N'2020-12-18' AS Date), 51);

INSERT INTO articles
VALUES (1938846590, 1436653201, N'Matt Schlicht', N'The Complete Beginner’s Guide To Chatbots – Chatbots Magazine',
        CAST(N'2020-12-18' AS Date), 51);

INSERT INTO articles
VALUES (1948991223, 23868090, N'Simon Greenman', N'Who Is ing To Make Money In AI? Part I – Towards Data Science',
        CAST(N'2020-12-21' AS Date), 53);

INSERT INTO articles
VALUES (1948991273, 23868090, N'Simon Greenman', N'Who Is ing To Make Money In AI? Part I – Towards Data Science',
        CAST(N'2020-12-19' AS Date), 52);

INSERT INTO articles
VALUES (1959962789, 1094341462, N'Adam Geitgey', N'Machine Learning is Fun! Part 2 – Adam Geitgey – Medium',
        CAST(N'2020-12-15' AS Date), 51);

INSERT INTO articles
VALUES (1959962832, 1094341462, N'Adam Geitgey', N'Machine Learning is Fun! Part 2 – Adam Geitgey – Medium',
        CAST(N'2020-12-26' AS Date), 51);

INSERT INTO articles
VALUES (1959962851, 1094341462, N'Adam Geitgey', N'Machine Learning is Fun! Part 2 – Adam Geitgey – Medium',
        CAST(N'2020-12-08' AS Date), 51);

INSERT INTO articles
VALUES (1959962888, 1094341462, N'Adam Geitgey', N'Machine Learning is Fun! Part 2 – Adam Geitgey – Medium',
        CAST(N'2020-12-15' AS Date), 53);

INSERT INTO articles
VALUES (1963452046, 1671846909, N'Shivon Zilis', N'The Current State of Machine Intelligence – Shivon Zilis – Medium',
        CAST(N'2020-12-05' AS Date), 50);

INSERT INTO articles
VALUES (1963452100, 1671846909, N'Shivon Zilis', N'The Current State of Machine Intelligence – Shivon Zilis – Medium',
        CAST(N'2020-12-14' AS Date), 53);

INSERT INTO articles
VALUES (1979570502, 1866203114, N'Derrick Harris', N'Baidu explains how it’s mastering Mandarin with deep learning',
        CAST(N'2020-12-25' AS Date), 52);

INSERT INTO articles
VALUES (1980428807, 593484406, N'Milo Spencer-Harper',
        N'How to build a simple neural network in 9 lines of Python code', CAST(N'2020-12-06' AS Date), 51);

INSERT INTO articles
VALUES (1980428892, 593484406, N'Milo Spencer-Harper',
        N'How to build a simple neural network in 9 lines of Python code', CAST(N'2020-12-10' AS Date), 52);

INSERT INTO articles
VALUES (1987147763, 675749451, N'Pandorabots', N'Using OOB Tags in AIML: Part I – pandorabots-blog – Medium',
        CAST(N'2020-12-29' AS Date), 53);

INSERT INTO articles
VALUES (1988992929, 1223560387, N'E.C. McCarthy', N'Reflections of “Her” – E.C. McCarthy – Medium',
        CAST(N'2020-12-24' AS Date), 51);

INSERT INTO articles
VALUES (2000220741, 1362786644, N'Seth Weidman', N'The 3 Tricks That Made Alpha Zero Work – Hacker Noon',
        CAST(N'2020-12-27' AS Date), 51);

INSERT INTO articles
VALUES (2016567563, 1748731366, N'Maruti Techlabs',
        N'What Are The Best Intelligent Chatbots or AI Chatbots Available Online?', CAST(N'2020-12-06' AS Date), 50);

INSERT INTO articles
VALUES (2026077602, 733204267, N'Tommy Thompson', N'Why AI Research Loves Pac-Man – Tommy Thompson – Medium',
        CAST(N'2020-12-17' AS Date), 53);

INSERT INTO articles
VALUES (2026077622, 733204267, N'Tommy Thompson', N'Why AI Research Loves Pac-Man – Tommy Thompson – Medium',
        CAST(N'2020-12-14' AS Date), 53);

INSERT INTO articles
VALUES (2036584318, 529064947, N'Michael Jordan', N'Artificial Intelligence — The Revolution Hasn’t Happened Yet',
        CAST(N'2020-12-27' AS Date), 53);

INSERT INTO articles
VALUES (2036584334, 529064947, N'Michael Jordan', N'Artificial Intelligence — The Revolution Hasn’t Happened Yet',
        CAST(N'2020-12-22' AS Date), 52);

INSERT INTO articles
VALUES (2036584350, 529064947, N'Michael Jordan', N'Artificial Intelligence — The Revolution Hasn’t Happened Yet',
        CAST(N'2020-12-19' AS Date), 50);

INSERT INTO articles
VALUES (2039102564, 1350259391, N'David Venturi',
        N'Every single Machine Learning course on the internet, ranked by your reviews', CAST(N'2020-12-27' AS Date),
        50)     ;

INSERT INTO articles
VALUES (2039102576, 1350259391, N'David Venturi',
        N'Every single Machine Learning course on the internet, ranked by your reviews', CAST(N'2020-12-09' AS Date),
        53);

INSERT INTO articles
VALUES (2039102608, 1350259391, N'David Venturi',
        N'Every single Machine Learning course on the internet, ranked by your reviews', CAST(N'2020-12-26' AS Date),
        53)   ;

INSERT INTO articles
VALUES (2039102632, 1350259391, N'David Venturi',
        N'Every single Machine Learning course on the internet, ranked by your reviews', CAST(N'2020-12-21' AS Date),
        50)          ;

INSERT INTO articles
VALUES (2059479002, 1539219108, N'Wolf Garbe', N'1000x Faster Spelling Correction alrithm (2012) – Wolf Garbe – Medium',
        CAST(N'2020-12-23' AS Date), 53);

INSERT INTO articles
VALUES (2063220928, 1531914397, N'Max Pechyonkin', N'Understanding Hinton’s Capsule Networks. Part I: Intuition.',
        CAST(N'2020-12-24' AS Date), 52);

INSERT INTO articles
VALUES (2063221018, 1531914397, N'Max Pechyonkin', N'Understanding Hinton’s Capsule Networks. Part I: Intuition.',
        CAST(N'2020-12-23' AS Date), 51);

INSERT INTO articles
VALUES (2063221039, 1531914397, N'Max Pechyonkin', N'Understanding Hinton’s Capsule Networks. Part I: Intuition.',
        CAST(N'2020-12-15' AS Date), 50);

INSERT INTO articles
VALUES (2106071474, 1366992461, N'Wallarm', N'TensorFlow Dataset API for increasing training speed of neural networks',
        CAST(N'2020-12-30' AS Date), 52);

INSERT INTO articles
VALUES (2113457483, 1520810688, N'Akash Shende', N'Color Based Object Segmentation – Akash Shende – Medium',
        CAST(N'2020-12-24' AS Date), 50);

INSERT INTO articles
VALUES (2116603813, 2124850748, N'John Wittenauer',
        N'Machine Learning Exercises In Python, Part 1 – John Wittenauer – Medium', CAST(N'2020-12-25' AS Date), 51);

INSERT INTO articles
VALUES (2120923561, 1084486520, N'Jim Fleming', N'Loading a TensorFlow graph with the C++ API – Jim Fleming – Medium',
        CAST(N'2020-12-13' AS Date), 53);

INSERT INTO articles
VALUES (2125477867, 2065538553, N'Nikolai Savas',
        N'CrAIg: Using Neural Networks to learn Mario – Nikolai Savas – Medium', CAST(N'2020-12-29' AS Date), 52);

INSERT INTO articles
VALUES (2141054898, 809770256, N'Louis Rosenfeld', N'Everyday IA – Louis Rosenfeld – Medium',
        CAST(N'2020-12-25' AS Date), 52);

INSERT INTO articles
VALUES (2145932947, 2085453378, N'Eran Kampf', N'Data Mining — Handling Missing Values the Database – DeveloperZen',
        CAST(N'2020-12-10' AS Date), 53);
INSERT into authors VALUES (25071, N'gk_');

INSERT into authors VALUES (313432, N'Josh');

INSERT into authors VALUES (339519, N'Theo');

INSERT into authors VALUES (501881, N'x.ai');

INSERT into authors VALUES (7699453, N'samim');

INSERT into authors VALUES (10566473, N'Oxford University');

INSERT into authors VALUES (23868090, N'Simon Greenman');

INSERT into authors VALUES (39367556, N'François Chollet');

INSERT into authors VALUES (64555575, N'James Faghmous ');

INSERT into authors VALUES (72727275, N'Jeff Smith');

INSERT into authors VALUES (91142757, N'Venture Scanner');

INSERT into authors VALUES (91829157, N'SAGAR SHARMA');

INSERT into authors VALUES (117268208, N'Dominik Felix');

INSERT into authors VALUES (124995535, N'Hrishikesh Huillkar');

INSERT into authors VALUES (149033346, N'Christopher Wolf Nordlinger');

INSERT into authors VALUES (173425771, N'Daniel Rothmann');

INSERT into authors VALUES (247707701, N'Brandon Morelli');

INSERT into authors VALUES (259182789, N'Blaise Aguera y Arcas');

INSERT into authors VALUES (264592811, N'Devin Soni');

INSERT into authors VALUES (267756326, N'Nityesh Agarwal');

INSERT into authors VALUES (297231896, N'Erick Muzart Fonseca dos Santos');

INSERT into authors VALUES (341655952, N'James Cooper');

INSERT into authors VALUES (348343581, N'Chris Jagers');

INSERT into authors VALUES (348545013, N'Stefan Kojouharov');

INSERT into authors VALUES (379687253, N'Chintan Trivedi');

INSERT into authors VALUES (385029366, N'Erik Hallström');

INSERT into authors VALUES (388458395, N'Leigh Alexander');

INSERT into authors VALUES (404820944, N'Paul Christiano');

INSERT into authors VALUES (406835970, N'Xiaohan Zeng');

INSERT into authors VALUES (409890388, N'Sarthak Jain');

INSERT into authors VALUES (433307581, N'Oliver Lindberg');

INSERT into authors VALUES (447774080, N'Maryna Hlaiboroda');

INSERT into authors VALUES (459048979, N'Joel Leeman');

INSERT into authors VALUES (465017920, N'AirbnbEng');

INSERT into authors VALUES (480394405, N'Eugenio Culurciello');

INSERT into authors VALUES (482319326, N'Tyler Elliot Bettilyon');

INSERT into authors VALUES (504956430, N'Michael Solana');

INSERT into authors VALUES (515724438, N'Chris Dixon');

INSERT into authors VALUES (529064947, N'Michael Jordan');

INSERT into authors VALUES (532499517, N'Sophia Arakelyan');

INSERT into authors VALUES (593484406, N'Milo Spencer-Harper');

INSERT into authors VALUES (610333415, N'Thaddeus Howze');

INSERT into authors VALUES (627524346, N'Wildcat2030');

INSERT into authors VALUES (655329807, N'Datafiniti');

INSERT into authors VALUES (657355830, N'Gabriel Jiménez');

INSERT into authors VALUES (666196057, N'iDanScott');

INSERT into authors VALUES (675749451, N'Pandorabots');

INSERT into authors VALUES (691606480, N'James JD Sutton');

INSERT into authors VALUES (695884725, N'Sebastian Heinz');

INSERT into authors VALUES (733204267, N'Tommy Thompson');

INSERT into authors VALUES (738680371, N'Chris Kalahiki');

INSERT into authors VALUES (767109811, N'Tim O''Reilly');

INSERT into authors VALUES (809770256, N'Louis Rosenfeld');

INSERT into authors VALUES (814661378, N'Yingjie Miao ');

INSERT into authors VALUES (815932916, N'Dr. GP Pulipaka');

INSERT into authors VALUES (873075646, N'Sophia Ciocca');

INSERT into authors VALUES (884352598, N'Alexandr Honchar');

INSERT into authors VALUES (896232703, N'Favio Vázquez');

INSERT into authors VALUES (907179030, N'Joe Johnston');

INSERT into authors VALUES (910202250, N'Matt Fogel');

INSERT into authors VALUES (911341283, N'Matt Wiese');

INSERT into authors VALUES (911600496, N'Scott Smith');

INSERT into authors VALUES (929116310, N'Kai Stinchcombe');

INSERT into authors VALUES (944630623, N'James Le');

INSERT into authors VALUES (958745093, N'Eventbrite');

INSERT into authors VALUES (959614014, N'Carlos E. Perez');

INSERT into authors VALUES (962536070, N'Vivek Yadav');

INSERT into authors VALUES (963271985, N'William Koehrsen');

INSERT into authors VALUES (969264847, N'Leon Zhou');

INSERT into authors VALUES (985489596, N'Logan Spears');

INSERT into authors VALUES (988576225, N'Espen Waldal');

INSERT into authors VALUES (990889188, N'Kelvin Li');

INSERT into authors VALUES (1004016570, N'Aman Dalmia');

INSERT into authors VALUES (1011173466, N'Ben Brown');

INSERT into authors VALUES (1027562939, N'Tanay Jaipuria');

INSERT into authors VALUES (1031335260, N'Christophe Bourguignat');

INSERT into authors VALUES (1050466039, N'Avinash Sharma V');

INSERT into authors VALUES (1062683760, N'Christian Hernandez');

INSERT into authors VALUES (1075839964, N'Gil Fewster');

INSERT into authors VALUES (1080917759, N'Carlos Beltran');

INSERT into authors VALUES (1084486520, N'Jim Fleming');

INSERT into authors VALUES (1086214436, N'Nathan Benaich');

INSERT into authors VALUES (1093813538, N'Dhruv Parthasarathy');

INSERT into authors VALUES (1094341462, N'Adam Geitgey');

INSERT into authors VALUES (1098191566, N'George Seif');

INSERT into authors VALUES (1100773823, N'Ross odwin');

INSERT into authors VALUES (1112840599, N'Waleed Abdulla');

INSERT into authors VALUES (1123831527, N'Justin Lee');

INSERT into authors VALUES (1127815496, N'Jae Duk Seo');

INSERT into authors VALUES (1128830969, N'Sam Drozdov');

INSERT into authors VALUES (1129582104, N'Greg Fish');

INSERT into authors VALUES (1134807044, N'Ahmed El Deeb');

INSERT into authors VALUES (1135533253, N'Eric Elliott');

INSERT into authors VALUES (1136633781, N'Oleksandr Savsunenko');

INSERT into authors VALUES (1141253394, N'Per Harald Borgen');

INSERT into authors VALUES (1147409921, N'Bargava');

INSERT into authors VALUES (1149651735, N'Geoff Nesnow');

INSERT into authors VALUES (1154827999, N'Gaurav Oberoi');

INSERT into authors VALUES (1155542304, N'Slav Ivanov');

INSERT into authors VALUES (1161294328, N'Jorge Camacho');

INSERT into authors VALUES (1164378828, N'Denny Vrandečić');

INSERT into authors VALUES (1170599096, N'Camron dbout');

INSERT into authors VALUES (1172114140, N'Pinterest Engineering');

INSERT into authors VALUES (1177161884, N'Bharath Raj');

INSERT into authors VALUES (1192372736, N'Aman Agarwal');

INSERT into authors VALUES (1199699418, N'Tim Anglade');

INSERT into authors VALUES (1204033006, N'Amine Aoullay');

INSERT into authors VALUES (1206850751, N'Diana Filippova');

INSERT into authors VALUES (1218085424, N'Kyle McDonald');

INSERT into authors VALUES (1223560387, N'E.C. McCarthy');

INSERT into authors VALUES (1231018153, N'Arthur Juliani');

INSERT into authors VALUES (1233333580, N'savedroid ICO');

INSERT into authors VALUES (1248891827, N'Gant Laborde');

INSERT into authors VALUES (1254272387, N'Christopher Nguyen');

INSERT into authors VALUES (1263139514, N'Gary Marcus');

INSERT into authors VALUES (1285170135, N'Mark Johnson');

INSERT into authors VALUES (1295087001, N'Elle O''Brien');

INSERT into authors VALUES (1295941743, N'Matt O''Leary');

INSERT into authors VALUES (1298457806, N'Karl N.');

INSERT into authors VALUES (1325591911, N'Dr Ben Medlock');

INSERT into authors VALUES (1350259391, N'David Venturi');

INSERT into authors VALUES (1353387503, N'Mybridge');

INSERT into authors VALUES (1362786644, N'Seth Weidman');

INSERT into authors VALUES (1366992461, N'Wallarm');

INSERT into authors VALUES (1367249884, N'Emil Wallner');

INSERT into authors VALUES (1373386413, N'Daniel Simmons');

INSERT into authors VALUES (1391258515, N'Illia Polosukhin');

INSERT into authors VALUES (1408102737, N'Lance Ulanoff');

INSERT into authors VALUES (1410733533, N'Greg Gascon');

INSERT into authors VALUES (1413814793, N'Peter Sweeney');

INSERT into authors VALUES (1428978597, N'Scott Santens');

INSERT into authors VALUES (1436653201, N'Matt Schlicht');

INSERT into authors VALUES (1437155931, N'Irhum Shafkat');

INSERT into authors VALUES (1437883132, N'Jerry Chen');

INSERT into authors VALUES (1441488766, N'Shi Yan');

INSERT into authors VALUES (1443241146, N'Roland Trimmel');

INSERT into authors VALUES (1472505024, N'Eduard Tyantov');

INSERT into authors VALUES (1520810688, N'Akash Shende');

INSERT into authors VALUES (1531914397, N'Max Pechyonkin');

INSERT into authors VALUES (1539219108, N'Wolf Garbe');

INSERT into authors VALUES (1582544044, N'Sirui Li');

INSERT into authors VALUES (1671846909, N'Shivon Zilis');

INSERT into authors VALUES (1678533677, N'David Foster');

INSERT into authors VALUES (1682532741, N'Gaurav Kaila');

INSERT into authors VALUES (1689898376, N'Tony Aubé');

INSERT into authors VALUES (1692801866, N'Matt Harvey');

INSERT into authors VALUES (1695516234, N'Arvind N');

INSERT into authors VALUES (1709836667, N'WiseWolf Fund');

INSERT into authors VALUES (1748731366, N'Maruti Techlabs');

INSERT into authors VALUES (1789387471, N'Arik Sosman');

INSERT into authors VALUES (1848303235, N'Andrej Karpathy');

INSERT into authors VALUES (1866203114, N'Derrick Harris');

INSERT into authors VALUES (1870001121, N'Francesco Gadaleta');

INSERT into authors VALUES (1870647942, N'Nikhil Dandekar');

INSERT into authors VALUES (1900642900, N'nafrondel');

INSERT into authors VALUES (1912841722, N'Jonathan Balaban');

INSERT into authors VALUES (1919172714, N'Nadav Gur');

INSERT into authors VALUES (1934453923, N'Gabriel Aldamiz...');

INSERT into authors VALUES (1956766894, N'Neelabh Pant');

INSERT into authors VALUES (1968985881, N'Netflix Technology Blog');

INSERT into authors VALUES (1971005137, N'Robbie Tilton');

INSERT into authors VALUES (1978646464, N'Abhishek Parbhakar');

INSERT into authors VALUES (1979407010, N'Nieves Ábalos');

INSERT into authors VALUES (1986246046, N'paulson');

INSERT into authors VALUES (1992116538, N'Frank Diana');

INSERT into authors VALUES (2033376057, N'Nick Bourdakos');

INSERT into authors VALUES (2041643666, N'Rand Hindi');

INSERT into authors VALUES (2065360192, N'Maciej Lipiec');

INSERT into authors VALUES (2065538553, N'Nikolai Savas');

INSERT into authors VALUES (2065779397, N'James Loy');

INSERT into authors VALUES (2080667140, N'Emmanuel Ameisen');

INSERT into authors VALUES (2085434300, N'Rohan Kapur');

INSERT into authors VALUES (2085453378, N'Eran Kampf');

INSERT into authors VALUES (2086673402, N'Berit Anderson');

INSERT into authors VALUES (2119070167, N'Vishal Maini');

INSERT into authors VALUES (2119574795, N'Tal Perry');

INSERT into authors VALUES (2119577372, N'Keval Patel');

INSERT into authors VALUES (2124850748, N'John Wittenauer');

INSERT into authors VALUES (2143132495, N'Conor Dewey');
INSERT INTO categories
VALUES (1, N'Finance');
INSERT INTO categories
VALUES (2, N'Technology');
INSERT INTO categories
VALUES (3, N'Transportation');
INSERT INTO categories
VALUES (4, N'Energy');

INSERT into products VALUES (870, N'Toughjoyfax 7426', 4);

INSERT into products VALUES (7098, N'It 8525', 2);

INSERT into products VALUES (21441, N'Opela 8941', 1);

INSERT into products VALUES (24170, N'Duobam 7158', 3);

INSERT into products VALUES (34157, N'Fintone 5776', 3);

INSERT into products VALUES (35277, N'Konklab 1222', 1);

INSERT into products VALUES (42130, N'Redhold 1802', 2);

INSERT into products VALUES (42322, N'Stringtough 5939', 4);

INSERT into products VALUES (43415, N'Domainer 7850', 4);

INSERT into products VALUES (45837, N'Overhold 9583', 2);

INSERT into products VALUES (46211, N'Andalax 2331', 3);

INSERT into products VALUES (48845, N'Solarbreeze 4394', 1);

INSERT into products VALUES (51085, N'Ronstring 7634', 3);

INSERT into products VALUES (51862, N'Quo Lux 2332', 1);

INSERT into products VALUES (62058, N'Tin 668', 2);

INSERT into products VALUES (63263, N'Gembucket 8838', 1);

INSERT into products VALUES (64761, N'Stringtough 9518', 2);

INSERT into products VALUES (66410, N'Veribet 2029', 1);

INSERT into products VALUES (75843, N'Zamit 3848', 4);

INSERT into products VALUES (76774, N'Asoka 163', 3);

INSERT into products VALUES (86448, N'Fintone 7623', 1);

INSERT into products VALUES (89585, N'Subin 1919', 1);

INSERT into products VALUES (94525, N'Daltfresh 3660', 4);

INSERT into products VALUES (94967, N'Veribet 5546', 4);

INSERT into products VALUES (96313, N'Cardify 5637', 2);

INSERT into products VALUES (100327, N'Flexidy 7129', 1);

INSERT into products VALUES (103199, N'Keylex 2579', 2);

INSERT into products VALUES (113119, N'Lotlux 8372', 2);

INSERT into products VALUES (119407, N'Bitchip 4955', 1);

INSERT into products VALUES (123742, N'Asoka 990', 3);

INSERT into products VALUES (144221, N'Prodder 2003', 2);

INSERT into products VALUES (155652, N'Tempsoft 9906', 4);

INSERT into products VALUES (158204, N'Bigtax 4653', 2);

INSERT into products VALUES (167070, N'Sonsing 9396', 3);

INSERT into products VALUES (176325, N'Biodex 1779', 3);

INSERT into products VALUES (179899, N'Biodex 3472', 2);

INSERT into products VALUES (185245, N'Sonair 1890', 2);

INSERT into products VALUES (185246, N'Prodder 364', 1);

INSERT into products VALUES (190934, N'Regrant 6496', 2);

INSERT into products VALUES (191271, N'Duobam 8463', 3);

INSERT into products VALUES (200716, N'Andalax 9505', 3);

INSERT into products VALUES (208818, N'Matsoft 7047', 4);

INSERT into products VALUES (213319, N'Rank 6497', 2);

INSERT into products VALUES (215153, N'Lotlux 1490', 1);

INSERT into products VALUES (215643, N'Job 834', 2);

INSERT into products VALUES (218329, N'Solarbreeze 4410', 2);

INSERT into products VALUES (222266, N'Mat Lam Tam 7288', 2);

INSERT into products VALUES (229301, N'Namfix 7801', 3);

INSERT into products VALUES (231332, N'Sonsing 1210', 4);

INSERT into products VALUES (232763, N'Stim 443', 4);

INSERT into products VALUES (234372, N'Quo Lux 4698', 1);

INSERT into products VALUES (235626, N'Hatity 783', 4);

INSERT into products VALUES (237235, N'Cardguard 9530', 3);

INSERT into products VALUES (264938, N'Gembucket 1053', 4);

INSERT into products VALUES (281143, N'Ventosanzap 51', 3);

INSERT into products VALUES (282722, N'Cookley 2230', 2);

INSERT into products VALUES (291816, N'Voltsillam 8680', 3);

INSERT into products VALUES (293980, N'Domainer 6155', 2);

INSERT into products VALUES (300738, N'Tampflex 5550', 2);

INSERT into products VALUES (301815, N'Tempsoft 5588', 2);

INSERT into products VALUES (303017, N'Temp 3862', 3);

INSERT into products VALUES (308989, N'Zoolab 8036', 1);

INSERT into products VALUES (309965, N'Stringtough 4381', 3);

INSERT into products VALUES (312742, N'Vagram 1403', 3);

INSERT into products VALUES (316124, N'Latlux 5754', 2);

INSERT into products VALUES (316319, N'Tres-Zap 7406', 3);

INSERT into products VALUES (317855, N'Zamit 8972', 1);

INSERT into products VALUES (319356, N'Matsoft 4455', 4);

INSERT into products VALUES (319708, N'Stronghold 9250', 3);

INSERT into products VALUES (320095, N'Treeflex 671', 2);

INSERT into products VALUES (320947, N'Vagram 1524', 4);

INSERT into products VALUES (324798, N'Span 8108', 3);

INSERT into products VALUES (324799, N'Alpha 414', 4);

INSERT into products VALUES (334028, N'Daltfresh 5897', 3);

INSERT into products VALUES (342085, N'Gembucket 4198', 2);

INSERT into products VALUES (360149, N'Mat Lam Tam 9648', 1);

INSERT into products VALUES (361534, N'Sub-Ex 5591', 3);

INSERT into products VALUES (371545, N'Cardguard 8341', 1);

INSERT into products VALUES (373060, N'Stronghold 2317', 3);

INSERT into products VALUES (375290, N'Subin 6639', 3);

INSERT into products VALUES (380480, N'Aerified 3586', 1);

INSERT into products VALUES (383173, N'Zaam-Dox 4654', 3);

INSERT into products VALUES (388183, N'Sub-Ex 2361', 4);

INSERT into products VALUES (391599, N'Y-find 4079', 1);

INSERT into products VALUES (394291, N'Treeflex 4870', 2);

INSERT into products VALUES (395718, N'Holdlamis 2110', 4);

INSERT into products VALUES (411254, N'Span 1169', 3);

INSERT into products VALUES (412640, N'Cardguard 963', 2);

INSERT into products VALUES (413225, N'Flexidy 2320', 2);

INSERT into products VALUES (420699, N'Zaam-Dox 4431', 2);

INSERT into products VALUES (422506, N'Bitwolf 9636', 2);

INSERT into products VALUES (432403, N'Konklab 9435', 1);

INSERT into products VALUES (437617, N'Hatity 4472', 1);

INSERT into products VALUES (443507, N'Overhold 4372', 2);

INSERT into products VALUES (446574, N'Tresom 7403', 1);

INSERT into products VALUES (447574, N'Toughjoyfax 7672', 1);

INSERT into products VALUES (447815, N'Wrapsafe 1504', 1);

INSERT into products VALUES (450770, N'Y-find 6317', 3);

INSERT into products VALUES (453389, N'Aerified 1105', 1);

INSERT into products VALUES (461868, N'Mat Lam Tam 9489', 2);

INSERT into products VALUES (462423, N'Sonsing 3886', 2);

INSERT into products VALUES (488388, N'Redhold 3974', 4);

INSERT into products VALUES (490691, N'Rank 1888', 3);

INSERT into products VALUES (490896, N'Lotstring 7639', 2);

INSERT into products VALUES (499666, N'Asoka 3793', 3);

INSERT into products VALUES (502367, N'Y-Solowarm 9603', 1);

INSERT into products VALUES (504288, N'Tresom 4424', 2);

INSERT into products VALUES (505094, N'Prodder 6986', 3);

INSERT into products VALUES (507100, N'Wrapsafe 554', 3);

INSERT into products VALUES (510062, N'Opela 9870', 3);

INSERT into products VALUES (517663, N'Voltsillam 6936', 2);

INSERT into products VALUES (521024, N'Bitchip 5333', 1);

INSERT into products VALUES (523892, N'Fix San 8856', 2);

INSERT into products VALUES (525399, N'Alphazap 765', 1);

INSERT into products VALUES (533153, N'Bytecard 8977', 1);

INSERT into products VALUES (535322, N'Home Ing 7631', 1);

INSERT into products VALUES (542298, N'Tres-Zap 3473', 1);

INSERT into products VALUES (543639, N'Tres-Zap 5696', 3);

INSERT into products VALUES (549555, N'Voyatouch 2033', 2);

INSERT into products VALUES (550898, N'Cookley 2087', 3);

INSERT into products VALUES (555221, N'Tresom 5084', 1);

INSERT into products VALUES (559913, N'Job 7936', 3);

INSERT into products VALUES (560371, N'Zontrax 2562', 1);

INSERT into products VALUES (561458, N'Cardify 5992', 4);

INSERT into products VALUES (563001, N'Kanlam 6243', 1);

INSERT into products VALUES (568530, N'Rank 2178', 1);

INSERT into products VALUES (573063, N'Viva 8850', 4);

INSERT into products VALUES (575529, N'Ronstring 2521', 3);

INSERT into products VALUES (582123, N'It 7354', 4);

INSERT into products VALUES (588765, N'Lotstring 2484', 3);

INSERT into products VALUES (591802, N'Regrant 7122', 1);

INSERT into products VALUES (599604, N'Bigtax 5401', 3);

INSERT into products VALUES (603031, N'Bamity 1988', 2);

INSERT into products VALUES (604917, N'Voyatouch 9176', 3);

INSERT into products VALUES (615813, N'Konklux 1015', 3);

INSERT into products VALUES (628037, N'Alpha 8253', 2);

INSERT into products VALUES (632265, N'Sonair 1972', 1);

INSERT into products VALUES (639438, N'Lotlux 6283', 4);

INSERT into products VALUES (647517, N'Biodex 2391', 1);

INSERT into products VALUES (652736, N'Tampflex 2988', 2);

INSERT into products VALUES (668353, N'Cookley 6180', 1);

INSERT into products VALUES (669847, N'Stim 1781', 2);

INSERT into products VALUES (672966, N'Wrapsafe 1637', 3);

INSERT into products VALUES (674425, N'Namfix 459', 1);

INSERT into products VALUES (674764, N'Zoolab 4983', 4);

INSERT into products VALUES (675924, N'Vagram 5351', 4);

INSERT into products VALUES (678954, N'Flowdesk 5471', 1);

INSERT into products VALUES (682161, N'Sonair 2893', 2);

INSERT into products VALUES (688074, N'Bitwolf 5230', 2);

INSERT into products VALUES (690530, N'Tampflex 9641', 2);

INSERT into products VALUES (692822, N'Pannier 3378', 1);

INSERT into products VALUES (693507, N'Bamity 6493', 2);

INSERT into products VALUES (697877, N'Flowdesk 1883', 4);

INSERT into products VALUES (702534, N'Zamit 5298', 1);

INSERT into products VALUES (706160, N'Stim 616', 3);

INSERT into products VALUES (706353, N'Andalax 7433', 1);

INSERT into products VALUES (707445, N'Bamity 6109', 4);

INSERT into products VALUES (712469, N'Trippledex 5624', 4);

INSERT into products VALUES (716973, N'Ventosanzap 6064', 1);

INSERT into products VALUES (719212, N'Opela 9234', 4);

INSERT into products VALUES (720380, N'Bigtax 6627', 4);

INSERT into products VALUES (722238, N'Y-Solowarm 1504', 3);

INSERT into products VALUES (728921, N'Flowdesk 3712', 2);

INSERT into products VALUES (740205, N'Fintone 7423', 1);

INSERT into products VALUES (753083, N'Subin 4133', 1);

INSERT into products VALUES (756147, N'Konklab 3608', 1);

INSERT into products VALUES (757234, N'Voyatouch 1433', 2);

INSERT into products VALUES (758820, N'Pannier 5458', 4);

INSERT into products VALUES (759032, N'Fix San 1053', 1);

INSERT into products VALUES (763702, N'Alphazap 6925', 1);

INSERT into products VALUES (769658, N'Veribet 5209', 3);

INSERT into products VALUES (775442, N'Keylex 9950', 2);

INSERT into products VALUES (783721, N'Greenlam 281', 3);

INSERT into products VALUES (790012, N'Lotstring 585', 3);

INSERT into products VALUES (806219, N'Redhold 2070', 2);

INSERT into products VALUES (812217, N'Ventosanzap 6781', 1);

INSERT into products VALUES (812977, N'Tin 4565', 2);

INSERT into products VALUES (815516, N'Tempsoft 6840', 2);

INSERT into products VALUES (819430, N'Viva 9601', 2);

INSERT into products VALUES (826144, N'Zontrax 450', 4);

INSERT into products VALUES (831855, N'Temp 4946', 3);

INSERT into products VALUES (840637, N'Namfix 3962', 4);

INSERT into products VALUES (841189, N'Fixflex 670', 2);

INSERT into products VALUES (855331, N'Overhold 1512', 2);

INSERT into products VALUES (859711, N'Treeflex 6907', 3);

INSERT into products VALUES (864658, N'Aerified 9718', 3);

INSERT into products VALUES (875490, N'Greenlam 5825', 3);

INSERT into products VALUES (881903, N'Zathin 678', 2);

INSERT into products VALUES (891258, N'Zathin 5569', 1);

INSERT into products VALUES (895058, N'Daltfresh 6305', 2);

INSERT into products VALUES (895688, N'Quo Lux 9367', 3);

INSERT into products VALUES (898387, N'Bytecard 1446', 3);

INSERT into products VALUES (909971, N'Otcom 9023', 4);

INSERT into products VALUES (912896, N'Flexidy 6233', 4);

INSERT into products VALUES (922757, N'Holdlamis 9224', 4);

INSERT into products VALUES (928563, N'Stronghold 1029', 2);

INSERT into products VALUES (931433, N'Viva 7924', 4);

INSERT into products VALUES (936473, N'Fix San 5427', 4);

INSERT into products VALUES (943454, N'Transcof 3495', 2);

INSERT into products VALUES (946289, N'Zathin 4243', 2);

INSERT into products VALUES (956311, N'Alpha 3199', 2);

INSERT into products VALUES (957632, N'Matsoft 9959', 2);

INSERT into products VALUES (959350, N'Fixflex 8841', 2);

INSERT into products VALUES (964369, N'Kanlam 3927', 2);

INSERT into products VALUES (969798, N'Domainer 180', 3);

INSERT into products VALUES (971525, N'Trippledex 8840', 3);

INSERT into products VALUES (979500, N'Job 4550', 4);

INSERT into products VALUES (979925, N'Konklux 7238', 4);

INSERT into products VALUES (983249, N'Otcom 792', 4);

INSERT into products VALUES (984162, N'Latlux 3243', 3);

INSERT into products VALUES (989718, N'Latlux 1896', 1);

INSERT into products VALUES (997806, N'Keylex 1966', 1);

INSERT into products VALUES (1002512, N'Home Ing 3063', 4);

INSERT into products VALUES (1007711, N'Transcof 4039', 3);

INSERT into products VALUES (1008957, N'Greenlam 5011', 4);

INSERT into products VALUES (1019039, N'Konklux 2478', 3);

INSERT into products VALUES (1020891, N'Voltsillam 136', 2);

INSERT into products VALUES (1042093, N'Transcof 6662', 2);

INSERT into products VALUES (1045748, N'Temp 4821', 3);

INSERT into products VALUES (1047305, N'Duobam 7052', 3);

INSERT into products VALUES (1049442, N'Hatity 6865', 4);

INSERT into products VALUES (1051696, N'Otcom 5766', 3);

INSERT into products VALUES (1059403, N'Zaam-Dox 8625', 2);

INSERT into products VALUES (1061817, N'Holdlamis 4625', 1);

INSERT into traffic VALUES (1758401, CAST(N'2021-01-01' AS Date), 870, 2096, 755);
INSERT into traffic VALUES (1758401, CAST(N'2021-01-02' AS Date), 870, 2562, 462);
INSERT into traffic VALUES (1758401, CAST(N'2021-01-03' AS Date), 870, 1049, 382);
INSERT into traffic VALUES (1758401, CAST(N'2021-01-04' AS Date), 870, 2586, 550);
INSERT into traffic VALUES (1758401, CAST(N'2021-01-05' AS Date), 870, 2340, 358);
INSERT into traffic VALUES (1758401, CAST(N'2021-01-06' AS Date), 870, 2829, 243);
INSERT into traffic VALUES (1758401, CAST(N'2021-01-07' AS Date), 870, 2823, 380);
INSERT into traffic VALUES (1758401, CAST(N'2021-01-08' AS Date), 870, 2200, 751);
INSERT into traffic VALUES (1758401, CAST(N'2021-01-09' AS Date), 870, 2852, 374);
INSERT into traffic VALUES (1758401, CAST(N'2021-01-10' AS Date), 870, 2815, 948);
INSERT into traffic VALUES (1758401, CAST(N'2021-01-11' AS Date), 870, 1321, 297);
INSERT into traffic VALUES (1758401, CAST(N'2021-01-12' AS Date), 870, 2431, 929);
INSERT into traffic VALUES (1758401, CAST(N'2021-01-13' AS Date), 870, 2754, 936);
INSERT into traffic VALUES (1758401, CAST(N'2021-01-14' AS Date), 870, 1067, 844);
INSERT into traffic VALUES (1758401, CAST(N'2021-01-15' AS Date), 870, 2807, 694);
INSERT into traffic VALUES (1758401, CAST(N'2021-01-16' AS Date), 870, 1559, 834);
INSERT into traffic VALUES (1758401, CAST(N'2021-01-17' AS Date), 870, 2774, 336);
INSERT into traffic VALUES (1758401, CAST(N'2021-01-18' AS Date), 870, 2943, 772);
INSERT into traffic VALUES (1758401, CAST(N'2021-01-19' AS Date), 870, 1804, 273);
INSERT into traffic VALUES (1758401, CAST(N'2021-01-20' AS Date), 870, 2220, 937);
INSERT into traffic VALUES (1758401, CAST(N'2021-01-21' AS Date), 870, 1835, 899); 
INSERT into traffic VALUES (1758401, CAST(N'2021-01-22' AS Date), 870, 1833, 520);
INSERT into traffic VALUES (1758401, CAST(N'2021-01-23' AS Date), 870, 1443, 709);
INSERT into traffic VALUES (1758401, CAST(N'2021-01-24' AS Date), 870, 2795, 768);
INSERT into traffic VALUES (1758401, CAST(N'2021-01-25' AS Date), 870, 2694, 903);
INSERT into traffic VALUES (1758401, CAST(N'2021-01-26' AS Date), 870, 2254, 322);
INSERT into traffic VALUES (1758401, CAST(N'2021-01-27' AS Date), 870, 2703, 554);
INSERT into traffic VALUES (1758401, CAST(N'2021-01-28' AS Date), 870, 2383, 799);
INSERT into traffic VALUES (1758401, CAST(N'2021-01-29' AS Date), 870, 2612, 365);
INSERT into traffic VALUES (1758401, CAST(N'2021-01-30' AS Date), 870, 1091, 949);
INSERT into traffic VALUES (14346851, CAST(N'2021-01-01' AS Date), 7098, 2327, 461);
INSERT into traffic VALUES (14346851, CAST(N'2021-01-02' AS Date), 7098, 2804, 321);
INSERT into traffic VALUES (14346851, CAST(N'2021-01-03' AS Date), 7098, 2336, 257);
INSERT into traffic VALUES (14346851, CAST(N'2021-01-04' AS Date), 7098, 2837, 229);
INSERT into traffic VALUES (14346851, CAST(N'2021-01-05' AS Date), 7098, 1872, 413);
INSERT into traffic VALUES (14346851, CAST(N'2021-01-06' AS Date), 7098, 1743, 423);
INSERT into traffic VALUES (14346851, CAST(N'2021-01-07' AS Date), 7098, 1383, 306);
INSERT into traffic VALUES (14346851, CAST(N'2021-01-08' AS Date), 7098, 1029, 596);
INSERT into traffic VALUES (14346851, CAST(N'2021-01-09' AS Date), 7098, 1052, 415);
INSERT into traffic VALUES (14346851, CAST(N'2021-01-10' AS Date), 7098, 1485, 288);
INSERT into traffic VALUES (14346851, CAST(N'2021-01-11' AS Date), 7098, 1930, 309);
INSERT into traffic VALUES (14346851, CAST(N'2021-01-12' AS Date), 7098, 2523, 523);
INSERT into traffic VALUES (14346851, CAST(N'2021-01-13' AS Date), 7098, 1282, 348);
INSERT into traffic VALUES (14346851, CAST(N'2021-01-14' AS Date), 7098, 1046, 209);
INSERT into traffic VALUES (14346851, CAST(N'2021-01-15' AS Date), 7098, 1896, 269);
INSERT into traffic VALUES (14346851, CAST(N'2021-01-16' AS Date), 7098, 1806, 338);
INSERT into traffic VALUES (14346851, CAST(N'2021-01-17' AS Date), 7098, 2488, 594);
INSERT into traffic VALUES (14346851, CAST(N'2021-01-18' AS Date), 7098, 1327, 304);
INSERT into traffic VALUES (14346851, CAST(N'2021-01-19' AS Date), 7098, 1060, 420);
INSERT into traffic VALUES (14346851, CAST(N'2021-01-20' AS Date), 7098, 2928, 283);
INSERT into traffic VALUES (14346851, CAST(N'2021-01-21' AS Date), 7098, 1219, 413);
INSERT into traffic VALUES (14346851, CAST(N'2021-01-22' AS Date), 7098, 1705, 280);
INSERT into traffic VALUES (14346851, CAST(N'2021-01-23' AS Date), 7098, 2372, 292);
INSERT into traffic VALUES (14346851, CAST(N'2021-01-24' AS Date), 7098, 2387, 378);
INSERT into traffic VALUES (14346851, CAST(N'2021-01-25' AS Date), 7098, 1693, 378);
INSERT into traffic VALUES (14346851, CAST(N'2021-01-26' AS Date), 7098, 1005, 465);
INSERT into traffic VALUES (14346851, CAST(N'2021-01-27' AS Date), 7098, 2382, 568);
INSERT into traffic VALUES (14346851, CAST(N'2021-01-28' AS Date), 7098, 1624, 499);
INSERT into traffic VALUES (14346851, CAST(N'2021-01-29' AS Date), 7098, 1785, 261);
INSERT into traffic VALUES (14346851, CAST(N'2021-01-30' AS Date), 7098, 1263, 414);
INSERT into traffic VALUES (43333548, CAST(N'2021-01-01' AS Date), 21441, 2469, 398);
INSERT into traffic VALUES (43333548, CAST(N'2021-01-02' AS Date), 21441, 1384, 262);
INSERT into traffic VALUES (43333548, CAST(N'2021-01-03' AS Date), 21441, 2928, 254);
INSERT into traffic VALUES (43333548, CAST(N'2021-01-04' AS Date), 21441, 2903, 366);
INSERT into traffic VALUES (43333548, CAST(N'2021-01-05' AS Date), 21441, 1618, 216);
INSERT into traffic VALUES (43333548, CAST(N'2021-01-06' AS Date), 21441, 2750, 271);
INSERT into traffic VALUES (43333548, CAST(N'2021-01-07' AS Date), 21441, 1823, 366);
INSERT into traffic VALUES (43333548, CAST(N'2021-01-08' AS Date), 21441, 1956, 240);
INSERT into traffic VALUES (43333548, CAST(N'2021-01-09' AS Date), 21441, 2520, 343);
INSERT into traffic VALUES (43333548, CAST(N'2021-01-10' AS Date), 21441, 2115, 259);
INSERT into traffic VALUES (43333548, CAST(N'2021-01-11' AS Date), 21441, 1431, 305);
INSERT into traffic VALUES (43333548, CAST(N'2021-01-12' AS Date), 21441, 2384, 230);
INSERT into traffic VALUES (43333548, CAST(N'2021-01-13' AS Date), 21441, 2616, 354);
INSERT into traffic VALUES (43333548, CAST(N'2021-01-14' AS Date), 21441, 2347, 254);
INSERT into traffic VALUES (43333548, CAST(N'2021-01-15' AS Date), 21441, 2299, 302);
INSERT into traffic VALUES (43333548, CAST(N'2021-01-16' AS Date), 21441, 2911, 208);
INSERT into traffic VALUES (43333548, CAST(N'2021-01-17' AS Date), 21441, 2782, 375);
INSERT into traffic VALUES (43333548, CAST(N'2021-01-18' AS Date), 21441, 2532, 219);
INSERT into traffic VALUES (43333548, CAST(N'2021-01-19' AS Date), 21441, 2398, 358);
INSERT into traffic VALUES (43333548, CAST(N'2021-01-20' AS Date), 21441, 1711, 381);
INSERT into traffic VALUES (43333548, CAST(N'2021-01-21' AS Date), 21441, 2232, 289);
INSERT into traffic VALUES (43333548, CAST(N'2021-01-22' AS Date), 21441, 1283, 384);
INSERT into traffic VALUES (43333548, CAST(N'2021-01-23' AS Date), 21441, 1931, 383);
INSERT into traffic VALUES (43333548, CAST(N'2021-01-24' AS Date), 21441, 2679, 338);
INSERT into traffic VALUES (43333548, CAST(N'2021-01-25' AS Date), 21441, 1316, 209);
INSERT into traffic VALUES (43333548, CAST(N'2021-01-26' AS Date), 21441, 2270, 341);
INSERT into traffic VALUES (43333548, CAST(N'2021-01-27' AS Date), 21441, 1229, 280);
INSERT into traffic VALUES (43333548, CAST(N'2021-01-28' AS Date), 21441, 1428, 202);
INSERT into traffic VALUES (43333548, CAST(N'2021-01-29' AS Date), 21441, 1947, 235);
INSERT into traffic VALUES (43333548, CAST(N'2021-01-30' AS Date), 21441, 2813, 235);
INSERT into traffic VALUES (48848508, CAST(N'2021-01-01' AS Date), 24170, 2662, 375);
INSERT into traffic VALUES (48848508, CAST(N'2021-01-02' AS Date), 24170, 1961, 599);
INSERT into traffic VALUES (48848508, CAST(N'2021-01-03' AS Date), 24170, 2981, 407);
INSERT into traffic VALUES (48848508, CAST(N'2021-01-04' AS Date), 24170, 2715, 731);
INSERT into traffic VALUES (48848508, CAST(N'2021-01-05' AS Date), 24170, 2655, 723);
INSERT into traffic VALUES (48848508, CAST(N'2021-01-06' AS Date), 24170, 2095, 599);
INSERT into traffic VALUES (48848508, CAST(N'2021-01-07' AS Date), 24170, 1139, 369);
INSERT into traffic VALUES (48848508, CAST(N'2021-01-08' AS Date), 24170, 1697, 462);
INSERT into traffic VALUES (48848508, CAST(N'2021-01-09' AS Date), 24170, 2605, 697);
INSERT into traffic VALUES (48848508, CAST(N'2021-01-10' AS Date), 24170, 2919, 491);
INSERT into traffic VALUES (48848508, CAST(N'2021-01-11' AS Date), 24170, 2372, 394);
INSERT into traffic VALUES (48848508, CAST(N'2021-01-12' AS Date), 24170, 1657, 479);
INSERT into traffic VALUES (48848508, CAST(N'2021-01-13' AS Date), 24170, 1623, 371);
INSERT into traffic VALUES (48848508, CAST(N'2021-01-14' AS Date), 24170, 2408, 637);
INSERT into traffic VALUES (48848508, CAST(N'2021-01-15' AS Date), 24170, 1934, 530);
INSERT into traffic VALUES (48848508, CAST(N'2021-01-16' AS Date), 24170, 1144, 426);
INSERT into traffic VALUES (48848508, CAST(N'2021-01-17' AS Date), 24170, 1500, 331);
INSERT into traffic VALUES (48848508, CAST(N'2021-01-18' AS Date), 24170, 1088, 736);
INSERT into traffic VALUES (48848508, CAST(N'2021-01-19' AS Date), 24170, 2127, 739);
INSERT into traffic VALUES (48848508, CAST(N'2021-01-20' AS Date), 24170, 1864, 324);
INSERT into traffic VALUES (48848508, CAST(N'2021-01-21' AS Date), 24170, 1377, 376);
INSERT into traffic VALUES (48848508, CAST(N'2021-01-22' AS Date), 24170, 1371, 227);
INSERT into traffic VALUES (48848508, CAST(N'2021-01-23' AS Date), 24170, 1844, 398);
INSERT into traffic VALUES (48848508, CAST(N'2021-01-24' AS Date), 24170, 2793, 305);
INSERT into traffic VALUES (48848508, CAST(N'2021-01-25' AS Date), 24170, 2060, 450);
INSERT into traffic VALUES (48848508, CAST(N'2021-01-26' AS Date), 24170, 2538, 392);
INSERT into traffic VALUES (48848508, CAST(N'2021-01-27' AS Date), 24170, 2885, 490);
INSERT into traffic VALUES (48848508, CAST(N'2021-01-28' AS Date), 24170, 2588, 751);
INSERT into traffic VALUES (48848508, CAST(N'2021-01-29' AS Date), 24170, 1358, 302);
INSERT into traffic VALUES (48848508, CAST(N'2021-01-30' AS Date), 24170, 1346, 409);
INSERT into traffic VALUES (48848527, CAST(N'2021-01-01' AS Date), 24170, 1466, 527);
INSERT into traffic VALUES (48848527, CAST(N'2021-01-02' AS Date), 24170, 1583, 785);
INSERT into traffic VALUES (48848527, CAST(N'2021-01-03' AS Date), 24170, 2483, 395);
INSERT into traffic VALUES (48848527, CAST(N'2021-01-04' AS Date), 24170, 1631, 622);
INSERT into traffic VALUES (48848527, CAST(N'2021-01-05' AS Date), 24170, 2093, 592);
INSERT into traffic VALUES (48848527, CAST(N'2021-01-06' AS Date), 24170, 2913, 557);
INSERT into traffic VALUES (48848527, CAST(N'2021-01-07' AS Date), 24170, 2804, 702);
INSERT into traffic VALUES (48848527, CAST(N'2021-01-08' AS Date), 24170, 1847, 713);
INSERT into traffic VALUES (48848527, CAST(N'2021-01-09' AS Date), 24170, 1008, 316);
INSERT into traffic VALUES (48848527, CAST(N'2021-01-10' AS Date), 24170, 2330, 389);
INSERT into traffic VALUES (48848527, CAST(N'2021-01-11' AS Date), 24170, 1145, 339);
INSERT into traffic VALUES (48848527, CAST(N'2021-01-12' AS Date), 24170, 1165, 334);
INSERT into traffic VALUES (48848527, CAST(N'2021-01-13' AS Date), 24170, 2892, 613);
INSERT into traffic VALUES (48848527, CAST(N'2021-01-14' AS Date), 24170, 2472, 688);
INSERT into traffic VALUES (48848527, CAST(N'2021-01-15' AS Date), 24170, 1862, 250);
INSERT into traffic VALUES (48848527, CAST(N'2021-01-16' AS Date), 24170, 2002, 537);
INSERT into traffic VALUES (48848527, CAST(N'2021-01-17' AS Date), 24170, 1110, 543);
INSERT into traffic VALUES (48848527, CAST(N'2021-01-18' AS Date), 24170, 2389, 663);
INSERT into traffic VALUES (48848527, CAST(N'2021-01-19' AS Date), 24170, 2415, 736);
INSERT into traffic VALUES (48848527, CAST(N'2021-01-20' AS Date), 24170, 1274, 363);
INSERT into traffic VALUES (48848527, CAST(N'2021-01-21' AS Date), 24170, 1978, 380);
INSERT into traffic VALUES (48848527, CAST(N'2021-01-22' AS Date), 24170, 2258, 325);
INSERT into traffic VALUES (48848527, CAST(N'2021-01-23' AS Date), 24170, 1658, 206);
INSERT into traffic VALUES (48848527, CAST(N'2021-01-24' AS Date), 24170, 2782, 702);
INSERT into traffic VALUES (48848527, CAST(N'2021-01-25' AS Date), 24170, 2800, 517);
INSERT into traffic VALUES (48848527, CAST(N'2021-01-26' AS Date), 24170, 1246, 245);
INSERT into traffic VALUES (48848527, CAST(N'2021-01-27' AS Date), 24170, 2239, 490);
INSERT into traffic VALUES (48848527, CAST(N'2021-01-28' AS Date), 24170, 2512, 280);
INSERT into traffic VALUES (48848527, CAST(N'2021-01-29' AS Date), 24170, 2294, 320);
INSERT into traffic VALUES (48848527, CAST(N'2021-01-30' AS Date), 24170, 1121, 382);
INSERT into traffic VALUES (69032455, CAST(N'2021-01-01' AS Date), 34157, 1518, 252);
INSERT into traffic VALUES (69032455, CAST(N'2021-01-02' AS Date), 34157, 1925, 746);
INSERT into traffic VALUES (69032455, CAST(N'2021-01-03' AS Date), 34157, 2221, 471);
INSERT into traffic VALUES (69032455, CAST(N'2021-01-04' AS Date), 34157, 1882, 716);
INSERT into traffic VALUES (69032455, CAST(N'2021-01-05' AS Date), 34157, 1649, 770);
INSERT into traffic VALUES (69032455, CAST(N'2021-01-06' AS Date), 34157, 1718, 233);
INSERT into traffic VALUES (69032455, CAST(N'2021-01-07' AS Date), 34157, 2263, 721);
INSERT into traffic VALUES (69032455, CAST(N'2021-01-08' AS Date), 34157, 1192, 538);
INSERT into traffic VALUES (69032455, CAST(N'2021-01-09' AS Date), 34157, 1482, 336);
INSERT into traffic VALUES (69032455, CAST(N'2021-01-10' AS Date), 34157, 2139, 219);
INSERT into traffic VALUES (69032455, CAST(N'2021-01-11' AS Date), 34157, 1827, 487);
INSERT into traffic VALUES (69032455, CAST(N'2021-01-12' AS Date), 34157, 2640, 272);
INSERT into traffic VALUES (69032455, CAST(N'2021-01-13' AS Date), 34157, 2117, 202);
INSERT into traffic VALUES (69032455, CAST(N'2021-01-14' AS Date), 34157, 1561, 411);
INSERT into traffic VALUES (69032455, CAST(N'2021-01-15' AS Date), 34157, 1165, 205);
INSERT into traffic VALUES (69032455, CAST(N'2021-01-16' AS Date), 34157, 2042, 775);
INSERT into traffic VALUES (69032455, CAST(N'2021-01-17' AS Date), 34157, 2252, 730);
INSERT into traffic VALUES (69032455, CAST(N'2021-01-18' AS Date), 34157, 2261, 602);
INSERT into traffic VALUES (69032455, CAST(N'2021-01-19' AS Date), 34157, 1439, 385);
INSERT into traffic VALUES (69032455, CAST(N'2021-01-20' AS Date), 34157, 2072, 339);
INSERT into traffic VALUES (69032455, CAST(N'2021-01-21' AS Date), 34157, 2178, 784);
INSERT into traffic VALUES (69032455, CAST(N'2021-01-22' AS Date), 34157, 2664, 609);
INSERT into traffic VALUES (69032455, CAST(N'2021-01-23' AS Date), 34157, 2569, 684);
INSERT into traffic VALUES (69032455, CAST(N'2021-01-24' AS Date), 34157, 2705, 610);
INSERT into traffic VALUES (69032455, CAST(N'2021-01-25' AS Date), 34157, 2661, 774);
INSERT into traffic VALUES (69032455, CAST(N'2021-01-26' AS Date), 34157, 1398, 712);
INSERT into traffic VALUES (69032455, CAST(N'2021-01-27' AS Date), 34157, 1593, 358);
INSERT into traffic VALUES (69032455, CAST(N'2021-01-28' AS Date), 34157, 1188, 795);
INSERT into traffic VALUES (69032455, CAST(N'2021-01-29' AS Date), 34157, 1667, 439);
INSERT into traffic VALUES (69032455, CAST(N'2021-01-30' AS Date), 34157, 2188, 328);
INSERT into traffic VALUES (71296753, CAST(N'2021-01-01' AS Date), 35277, 1374, 232);
INSERT into traffic VALUES (71296753, CAST(N'2021-01-02' AS Date), 35277, 1972, 294);
INSERT into traffic VALUES (71296753, CAST(N'2021-01-03' AS Date), 35277, 2522, 300);
INSERT into traffic VALUES (71296753, CAST(N'2021-01-04' AS Date), 35277, 1468, 231);
INSERT into traffic VALUES (71296753, CAST(N'2021-01-05' AS Date), 35277, 1075, 216);
INSERT into traffic VALUES (71296753, CAST(N'2021-01-06' AS Date), 35277, 1787, 292);
INSERT into traffic VALUES (71296753, CAST(N'2021-01-07' AS Date), 35277, 1980, 279);
INSERT into traffic VALUES (71296753, CAST(N'2021-01-08' AS Date), 35277, 1724, 262);
INSERT into traffic VALUES (71296753, CAST(N'2021-01-09' AS Date), 35277, 2211, 308);
INSERT into traffic VALUES (71296753, CAST(N'2021-01-10' AS Date), 35277, 1167, 321);
INSERT into traffic VALUES (71296753, CAST(N'2021-01-11' AS Date), 35277, 1362, 335);
INSERT into traffic VALUES (71296753, CAST(N'2021-01-12' AS Date), 35277, 2022, 273);
INSERT into traffic VALUES (71296753, CAST(N'2021-01-13' AS Date), 35277, 1790, 372);
INSERT into traffic VALUES (71296753, CAST(N'2021-01-14' AS Date), 35277, 2094, 361);
INSERT into traffic VALUES (71296753, CAST(N'2021-01-15' AS Date), 35277, 1799, 264);
INSERT into traffic VALUES (71296753, CAST(N'2021-01-16' AS Date), 35277, 2177, 348);
INSERT into traffic VALUES (71296753, CAST(N'2021-01-17' AS Date), 35277, 2941, 317);
INSERT into traffic VALUES (71296753, CAST(N'2021-01-18' AS Date), 35277, 2439, 294);
INSERT into traffic VALUES (71296753, CAST(N'2021-01-19' AS Date), 35277, 1579, 257);
INSERT into traffic VALUES (71296753, CAST(N'2021-01-20' AS Date), 35277, 2681, 366);
INSERT into traffic VALUES (71296753, CAST(N'2021-01-21' AS Date), 35277, 1987, 201);
INSERT into traffic VALUES (71296753, CAST(N'2021-01-22' AS Date), 35277, 1897, 327);
INSERT into traffic VALUES (71296753, CAST(N'2021-01-23' AS Date), 35277, 1708, 253);
INSERT into traffic VALUES (71296753, CAST(N'2021-01-24' AS Date), 35277, 2567, 322);
INSERT into traffic VALUES (71296753, CAST(N'2021-01-25' AS Date), 35277, 1145, 279);
INSERT into traffic VALUES (71296753, CAST(N'2021-01-26' AS Date), 35277, 2982, 359);
INSERT into traffic VALUES (71296753, CAST(N'2021-01-27' AS Date), 35277, 1479, 218);
INSERT into traffic VALUES (71296753, CAST(N'2021-01-28' AS Date), 35277, 2277, 362);
INSERT into traffic VALUES (71296753, CAST(N'2021-01-29' AS Date), 35277, 1715, 290);
INSERT into traffic VALUES (71296753, CAST(N'2021-01-30' AS Date), 35277, 2987, 218);
INSERT into traffic VALUES (85146138, CAST(N'2021-01-01' AS Date), 42130, 2834, 504);
INSERT into traffic VALUES (85146138, CAST(N'2021-01-02' AS Date), 42130, 1718, 480);
INSERT into traffic VALUES (85146138, CAST(N'2021-01-03' AS Date), 42130, 1336, 243);
INSERT into traffic VALUES (85146138, CAST(N'2021-01-04' AS Date), 42130, 1589, 302);
INSERT into traffic VALUES (85146138, CAST(N'2021-01-05' AS Date), 42130, 2057, 548);
INSERT into traffic VALUES (85146138, CAST(N'2021-01-06' AS Date), 42130, 2924, 335);
INSERT into traffic VALUES (85146138, CAST(N'2021-01-07' AS Date), 42130, 1741, 484);
INSERT into traffic VALUES (85146138, CAST(N'2021-01-08' AS Date), 42130, 1771, 413);
INSERT into traffic VALUES (85146138, CAST(N'2021-01-09' AS Date), 42130, 1072, 483);
INSERT into traffic VALUES (85146138, CAST(N'2021-01-10' AS Date), 42130, 1412, 508);
INSERT into traffic VALUES (85146138, CAST(N'2021-01-11' AS Date), 42130, 2977, 556);
INSERT into traffic VALUES (85146138, CAST(N'2021-01-12' AS Date), 42130, 2944, 517);
INSERT into traffic VALUES (85146138, CAST(N'2021-01-13' AS Date), 42130, 2953, 536);
INSERT into traffic VALUES (85146138, CAST(N'2021-01-14' AS Date), 42130, 2257, 286);
INSERT into traffic VALUES (85146138, CAST(N'2021-01-15' AS Date), 42130, 1965, 253);
INSERT into traffic VALUES (85146138, CAST(N'2021-01-16' AS Date), 42130, 1314, 258);
INSERT into traffic VALUES (85146138, CAST(N'2021-01-17' AS Date), 42130, 2760, 542);
INSERT into traffic VALUES (85146138, CAST(N'2021-01-18' AS Date), 42130, 2434, 425);
INSERT into traffic VALUES (85146138, CAST(N'2021-01-19' AS Date), 42130, 1661, 432);
INSERT into traffic VALUES (85146138, CAST(N'2021-01-20' AS Date), 42130, 2692, 282);
INSERT into traffic VALUES (85146138, CAST(N'2021-01-21' AS Date), 42130, 2961, 431);
INSERT into traffic VALUES (85146138, CAST(N'2021-01-22' AS Date), 42130, 2346, 381);
INSERT into traffic VALUES (85146138, CAST(N'2021-01-23' AS Date), 42130, 1465, 575);
INSERT into traffic VALUES (85146138, CAST(N'2021-01-24' AS Date), 42130, 1250, 399);
INSERT into traffic VALUES (85146138, CAST(N'2021-01-25' AS Date), 42130, 2535, 386);
INSERT into traffic VALUES (85146138, CAST(N'2021-01-26' AS Date), 42130, 1403, 472);
INSERT into traffic VALUES (85146138, CAST(N'2021-01-27' AS Date), 42130, 2870, 554);
INSERT into traffic VALUES (85146138, CAST(N'2021-01-28' AS Date), 42130, 2603, 203);
INSERT into traffic VALUES (85146138, CAST(N'2021-01-29' AS Date), 42130, 1125, 328);
INSERT into traffic VALUES (85146138, CAST(N'2021-01-30' AS Date), 42130, 2035, 460);
INSERT into traffic VALUES (85534120, CAST(N'2021-01-01' AS Date), 42322, 2715, 697);
INSERT into traffic VALUES (85534120, CAST(N'2021-01-02' AS Date), 42322, 1518, 813);
INSERT into traffic VALUES (85534120, CAST(N'2021-01-03' AS Date), 42322, 2178, 472);
INSERT into traffic VALUES (85534120, CAST(N'2021-01-04' AS Date), 42322, 2828, 210);
INSERT into traffic VALUES (85534120, CAST(N'2021-01-05' AS Date), 42322, 2259, 764);
INSERT into traffic VALUES (85534120, CAST(N'2021-01-06' AS Date), 42322, 1567, 813);
INSERT into traffic VALUES (85534120, CAST(N'2021-01-07' AS Date), 42322, 1209, 884);
INSERT into traffic VALUES (85534120, CAST(N'2021-01-08' AS Date), 42322, 1590, 474);
INSERT into traffic VALUES (85534120, CAST(N'2021-01-09' AS Date), 42322, 2325, 391);
INSERT into traffic VALUES (85534120, CAST(N'2021-01-10' AS Date), 42322, 2965, 818);
INSERT into traffic VALUES (85534120, CAST(N'2021-01-11' AS Date), 42322, 2002, 402);
INSERT into traffic VALUES (85534120, CAST(N'2021-01-12' AS Date), 42322, 2008, 837);
INSERT into traffic VALUES (85534120, CAST(N'2021-01-13' AS Date), 42322, 1529, 417);
INSERT into traffic VALUES (85534120, CAST(N'2021-01-14' AS Date), 42322, 2240, 253);
INSERT into traffic VALUES (85534120, CAST(N'2021-01-15' AS Date), 42322, 2024, 291);
INSERT into traffic VALUES (85534120, CAST(N'2021-01-16' AS Date), 42322, 1350, 916);
INSERT into traffic VALUES (85534120, CAST(N'2021-01-17' AS Date), 42322, 1562, 840);
INSERT into traffic VALUES (85534120, CAST(N'2021-01-18' AS Date), 42322, 1059, 914);
INSERT into traffic VALUES (85534120, CAST(N'2021-01-19' AS Date), 42322, 2241, 668);
INSERT into traffic VALUES (85534120, CAST(N'2021-01-20' AS Date), 42322, 1841, 855);
INSERT into traffic VALUES (85534120, CAST(N'2021-01-21' AS Date), 42322, 1442, 791);
INSERT into traffic VALUES (85534120, CAST(N'2021-01-22' AS Date), 42322, 2448, 935);
INSERT into traffic VALUES (85534120, CAST(N'2021-01-23' AS Date), 42322, 1291, 600);
INSERT into traffic VALUES (85534120, CAST(N'2021-01-24' AS Date), 42322, 1621, 213);
INSERT into traffic VALUES (85534120, CAST(N'2021-01-25' AS Date), 42322, 2110, 513);
INSERT into traffic VALUES (85534120, CAST(N'2021-01-26' AS Date), 42322, 1239, 874);
INSERT into traffic VALUES (85534120, CAST(N'2021-01-27' AS Date), 42322, 1506, 387);
INSERT into traffic VALUES (85534120, CAST(N'2021-01-28' AS Date), 42322, 2383, 249);
INSERT into traffic VALUES (85534120, CAST(N'2021-01-29' AS Date), 42322, 1391, 458);
INSERT into traffic VALUES (85534120, CAST(N'2021-01-30' AS Date), 42322, 2102, 885);
INSERT into traffic VALUES (87742145, CAST(N'2021-01-01' AS Date), 43415, 1807, 690);
INSERT into traffic VALUES (87742145, CAST(N'2021-01-02' AS Date), 43415, 1150, 512);
INSERT into traffic VALUES (87742145, CAST(N'2021-01-03' AS Date), 43415, 2411, 350);
INSERT into traffic VALUES (87742145, CAST(N'2021-01-04' AS Date), 43415, 1065, 247);
INSERT into traffic VALUES (87742145, CAST(N'2021-01-05' AS Date), 43415, 2069, 449);
INSERT into traffic VALUES (87742145, CAST(N'2021-01-06' AS Date), 43415, 2370, 206);
INSERT into traffic VALUES (87742145, CAST(N'2021-01-07' AS Date), 43415, 2158, 392);
INSERT into traffic VALUES (87742145, CAST(N'2021-01-08' AS Date), 43415, 1983, 591);
INSERT into traffic VALUES (87742145, CAST(N'2021-01-09' AS Date), 43415, 2295, 381);
INSERT into traffic VALUES (87742145, CAST(N'2021-01-10' AS Date), 43415, 1096, 865);
INSERT into traffic VALUES (87742145, CAST(N'2021-01-11' AS Date), 43415, 2243, 418);
INSERT into traffic VALUES (87742145, CAST(N'2021-01-12' AS Date), 43415, 2750, 927);
INSERT into traffic VALUES (87742145, CAST(N'2021-01-13' AS Date), 43415, 2913, 724);
INSERT into traffic VALUES (87742145, CAST(N'2021-01-14' AS Date), 43415, 2270, 304);
INSERT into traffic VALUES (87742145, CAST(N'2021-01-15' AS Date), 43415, 2968, 829);
INSERT into traffic VALUES (87742145, CAST(N'2021-01-16' AS Date), 43415, 1184, 204);
INSERT into traffic VALUES (87742145, CAST(N'2021-01-17' AS Date), 43415, 2967, 806);
INSERT into traffic VALUES (87742145, CAST(N'2021-01-18' AS Date), 43415, 1391, 692);
INSERT into traffic VALUES (87742145, CAST(N'2021-01-19' AS Date), 43415, 1510, 811);
INSERT into traffic VALUES (87742145, CAST(N'2021-01-20' AS Date), 43415, 2552, 209);
INSERT into traffic VALUES (87742145, CAST(N'2021-01-21' AS Date), 43415, 2904, 844);
INSERT into traffic VALUES (87742145, CAST(N'2021-01-22' AS Date), 43415, 2718, 757);
INSERT into traffic VALUES (87742145, CAST(N'2021-01-23' AS Date), 43415, 2082, 676);
INSERT into traffic VALUES (87742145, CAST(N'2021-01-24' AS Date), 43415, 2871, 314);
INSERT into traffic VALUES (87742145, CAST(N'2021-01-25' AS Date), 43415, 2804, 717);
INSERT into traffic VALUES (87742145, CAST(N'2021-01-26' AS Date), 43415, 2973, 499);
INSERT into traffic VALUES (87742145, CAST(N'2021-01-27' AS Date), 43415, 1071, 452);
INSERT into traffic VALUES (87742145, CAST(N'2021-01-28' AS Date), 43415, 1355, 275);
INSERT into traffic VALUES (87742145, CAST(N'2021-01-29' AS Date), 43415, 2779, 704);
INSERT into traffic VALUES (87742145, CAST(N'2021-01-30' AS Date), 43415, 1648, 516);
INSERT into traffic VALUES (92637530, CAST(N'2021-01-01' AS Date), 45837, 2117, 380);
INSERT into traffic VALUES (92637530, CAST(N'2021-01-02' AS Date), 45837, 2074, 547);
INSERT into traffic VALUES (92637530, CAST(N'2021-01-03' AS Date), 45837, 2752, 587);
INSERT into traffic VALUES (92637530, CAST(N'2021-01-04' AS Date), 45837, 2758, 322);
INSERT into traffic VALUES (92637530, CAST(N'2021-01-05' AS Date), 45837, 2653, 404);
INSERT into traffic VALUES (92637530, CAST(N'2021-01-06' AS Date), 45837, 2286, 300);
INSERT into traffic VALUES (92637530, CAST(N'2021-01-07' AS Date), 45837, 1166, 501);
INSERT into traffic VALUES (92637530, CAST(N'2021-01-08' AS Date), 45837, 1570, 475);
INSERT into traffic VALUES (92637530, CAST(N'2021-01-09' AS Date), 45837, 2582, 263);
INSERT into traffic VALUES (92637530, CAST(N'2021-01-10' AS Date), 45837, 1527, 406);
INSERT into traffic VALUES (92637530, CAST(N'2021-01-11' AS Date), 45837, 1348, 457);
INSERT into traffic VALUES (92637530, CAST(N'2021-01-12' AS Date), 45837, 2405, 582);
INSERT into traffic VALUES (92637530, CAST(N'2021-01-13' AS Date), 45837, 1321, 281);
INSERT into traffic VALUES (92637530, CAST(N'2021-01-14' AS Date), 45837, 1530, 473);
INSERT into traffic VALUES (92637530, CAST(N'2021-01-15' AS Date), 45837, 2272, 557);
INSERT into traffic VALUES (92637530, CAST(N'2021-01-16' AS Date), 45837, 2546, 427);
INSERT into traffic VALUES (92637530, CAST(N'2021-01-17' AS Date), 45837, 2916, 559);
INSERT into traffic VALUES (92637530, CAST(N'2021-01-18' AS Date), 45837, 1807, 519);
INSERT into traffic VALUES (92637530, CAST(N'2021-01-19' AS Date), 45837, 1462, 514);
INSERT into traffic VALUES (92637530, CAST(N'2021-01-20' AS Date), 45837, 1015, 322);
INSERT into traffic VALUES (92637530, CAST(N'2021-01-21' AS Date), 45837, 2438, 253);
INSERT into traffic VALUES (92637530, CAST(N'2021-01-22' AS Date), 45837, 2983, 275);
INSERT into traffic VALUES (92637530, CAST(N'2021-01-23' AS Date), 45837, 1245, 354);
INSERT into traffic VALUES (92637530, CAST(N'2021-01-24' AS Date), 45837, 1941, 587);
INSERT into traffic VALUES (92637530, CAST(N'2021-01-25' AS Date), 45837, 1665, 345);
INSERT into traffic VALUES (92637530, CAST(N'2021-01-26' AS Date), 45837, 1714, 469);
INSERT into traffic VALUES (92637530, CAST(N'2021-01-27' AS Date), 45837, 1396, 540);
INSERT into traffic VALUES (92637530, CAST(N'2021-01-28' AS Date), 45837, 2177, 560);
INSERT into traffic VALUES (92637530, CAST(N'2021-01-29' AS Date), 45837, 2521, 397);
INSERT into traffic VALUES (92637530, CAST(N'2021-01-30' AS Date), 45837, 2356, 538);
INSERT into traffic VALUES (93392877, CAST(N'2021-01-01' AS Date), 46211, 2681, 528);
INSERT into traffic VALUES (93392877, CAST(N'2021-01-02' AS Date), 46211, 1442, 753);
INSERT into traffic VALUES (93392877, CAST(N'2021-01-03' AS Date), 46211, 1544, 360);
INSERT into traffic VALUES (93392877, CAST(N'2021-01-04' AS Date), 46211, 2219, 422);
INSERT into traffic VALUES (93392877, CAST(N'2021-01-05' AS Date), 46211, 2108, 691);
INSERT into traffic VALUES (93392877, CAST(N'2021-01-06' AS Date), 46211, 2302, 712);
INSERT into traffic VALUES (93392877, CAST(N'2021-01-07' AS Date), 46211, 1664, 781);
INSERT into traffic VALUES (93392877, CAST(N'2021-01-08' AS Date), 46211, 1909, 550);
INSERT into traffic VALUES (93392877, CAST(N'2021-01-09' AS Date), 46211, 1529, 292);
INSERT into traffic VALUES (93392877, CAST(N'2021-01-10' AS Date), 46211, 1078, 370);
INSERT into traffic VALUES (93392877, CAST(N'2021-01-11' AS Date), 46211, 2129, 465);
INSERT into traffic VALUES (93392877, CAST(N'2021-01-12' AS Date), 46211, 2526, 564);
INSERT into traffic VALUES (93392877, CAST(N'2021-01-13' AS Date), 46211, 2920, 340);
INSERT into traffic VALUES (93392877, CAST(N'2021-01-14' AS Date), 46211, 1202, 258);
INSERT into traffic VALUES (93392877, CAST(N'2021-01-15' AS Date), 46211, 2041, 645);
INSERT into traffic VALUES (93392877, CAST(N'2021-01-16' AS Date), 46211, 1250, 395);
INSERT into traffic VALUES (93392877, CAST(N'2021-01-17' AS Date), 46211, 1676, 744);
INSERT into traffic VALUES (93392877, CAST(N'2021-01-18' AS Date), 46211, 2458, 310);
INSERT into traffic VALUES (93392877, CAST(N'2021-01-19' AS Date), 46211, 1181, 399);
INSERT into traffic VALUES (93392877, CAST(N'2021-01-20' AS Date), 46211, 2519, 304);
INSERT into traffic VALUES (93392877, CAST(N'2021-01-21' AS Date), 46211, 2060, 467);
INSERT into traffic VALUES (93392877, CAST(N'2021-01-22' AS Date), 46211, 2932, 558);
INSERT into traffic VALUES (93392877, CAST(N'2021-01-23' AS Date), 46211, 1491, 759);
INSERT into traffic VALUES (93392877, CAST(N'2021-01-24' AS Date), 46211, 2324, 645);
INSERT into traffic VALUES (93392877, CAST(N'2021-01-25' AS Date), 46211, 2256, 632);
INSERT into traffic VALUES (93392877, CAST(N'2021-01-26' AS Date), 46211, 1702, 737);
INSERT into traffic VALUES (93392877, CAST(N'2021-01-27' AS Date), 46211, 1749, 710);
INSERT into traffic VALUES (93392877, CAST(N'2021-01-28' AS Date), 46211, 2003, 457);
INSERT into traffic VALUES (93392877, CAST(N'2021-01-29' AS Date), 46211, 2416, 411);
INSERT into traffic VALUES (93392877, CAST(N'2021-01-30' AS Date), 46211, 1086, 751);
INSERT into traffic VALUES (93392882, CAST(N'2021-01-01' AS Date), 46211, 1049, 575);
INSERT into traffic VALUES (93392882, CAST(N'2021-01-02' AS Date), 46211, 1208, 546);
INSERT into traffic VALUES (93392882, CAST(N'2021-01-03' AS Date), 46211, 1894, 483);
INSERT into traffic VALUES (93392882, CAST(N'2021-01-04' AS Date), 46211, 1502, 205);
INSERT into traffic VALUES (93392882, CAST(N'2021-01-05' AS Date), 46211, 1430, 312);
INSERT into traffic VALUES (93392882, CAST(N'2021-01-06' AS Date), 46211, 2016, 600);
INSERT into traffic VALUES (93392882, CAST(N'2021-01-07' AS Date), 46211, 1023, 694);
INSERT into traffic VALUES (93392882, CAST(N'2021-01-08' AS Date), 46211, 1027, 377);
INSERT into traffic VALUES (93392882, CAST(N'2021-01-09' AS Date), 46211, 2431, 623);
INSERT into traffic VALUES (93392882, CAST(N'2021-01-10' AS Date), 46211, 2556, 370);
INSERT into traffic VALUES (93392882, CAST(N'2021-01-11' AS Date), 46211, 1740, 206);
INSERT into traffic VALUES (93392882, CAST(N'2021-01-12' AS Date), 46211, 2841, 782);
INSERT into traffic VALUES (93392882, CAST(N'2021-01-13' AS Date), 46211, 2684, 491);
INSERT into traffic VALUES (93392882, CAST(N'2021-01-14' AS Date), 46211, 2500, 309);
INSERT into traffic VALUES (93392882, CAST(N'2021-01-15' AS Date), 46211, 1531, 589);
INSERT into traffic VALUES (93392882, CAST(N'2021-01-16' AS Date), 46211, 1982, 230);
INSERT into traffic VALUES (93392882, CAST(N'2021-01-17' AS Date), 46211, 2397, 771);
INSERT into traffic VALUES (93392882, CAST(N'2021-01-18' AS Date), 46211, 1849, 644);
INSERT into traffic VALUES (93392882, CAST(N'2021-01-19' AS Date), 46211, 2352, 390);
INSERT into traffic VALUES (93392882, CAST(N'2021-01-20' AS Date), 46211, 2968, 200);
INSERT into traffic VALUES (93392882, CAST(N'2021-01-21' AS Date), 46211, 1967, 716);
INSERT into traffic VALUES (93392882, CAST(N'2021-01-22' AS Date), 46211, 1021, 232);
INSERT into traffic VALUES (93392882, CAST(N'2021-01-23' AS Date), 46211, 2904, 323);
INSERT into traffic VALUES (93392882, CAST(N'2021-01-24' AS Date), 46211, 1689, 382);
INSERT into traffic VALUES (93392882, CAST(N'2021-01-25' AS Date), 46211, 2254, 280);
INSERT into traffic VALUES (93392882, CAST(N'2021-01-26' AS Date), 46211, 1203, 305);
INSERT into traffic VALUES (93392882, CAST(N'2021-01-27' AS Date), 46211, 2284, 232);
INSERT into traffic VALUES (93392882, CAST(N'2021-01-28' AS Date), 46211, 1555, 401);
INSERT into traffic VALUES (93392882, CAST(N'2021-01-29' AS Date), 46211, 2311, 269);
INSERT into traffic VALUES (93392882, CAST(N'2021-01-30' AS Date), 46211, 2893, 472);
INSERT into traffic VALUES (98716279, CAST(N'2021-01-01' AS Date), 48845, 2424, 207);
INSERT into traffic VALUES (98716279, CAST(N'2021-01-02' AS Date), 48845, 2296, 271);
INSERT into traffic VALUES (98716279, CAST(N'2021-01-03' AS Date), 48845, 2907, 296);
INSERT into traffic VALUES (98716279, CAST(N'2021-01-04' AS Date), 48845, 1883, 232);
INSERT into traffic VALUES (98716279, CAST(N'2021-01-05' AS Date), 48845, 2356, 394);
INSERT into traffic VALUES (98716279, CAST(N'2021-01-06' AS Date), 48845, 1393, 351);
INSERT into traffic VALUES (98716279, CAST(N'2021-01-07' AS Date), 48845, 2054, 239);
INSERT into traffic VALUES (98716279, CAST(N'2021-01-08' AS Date), 48845, 2545, 226);
INSERT into traffic VALUES (98716279, CAST(N'2021-01-09' AS Date), 48845, 2418, 296);
INSERT into traffic VALUES (98716279, CAST(N'2021-01-10' AS Date), 48845, 1702, 210);
INSERT into traffic VALUES (98716279, CAST(N'2021-01-11' AS Date), 48845, 1499, 358);
INSERT into traffic VALUES (98716279, CAST(N'2021-01-12' AS Date), 48845, 2712, 336);
INSERT into traffic VALUES (98716279, CAST(N'2021-01-13' AS Date), 48845, 1628, 319);
INSERT into traffic VALUES (98716279, CAST(N'2021-01-14' AS Date), 48845, 2337, 266);
INSERT into traffic VALUES (98716279, CAST(N'2021-01-15' AS Date), 48845, 1322, 306);
INSERT into traffic VALUES (98716279, CAST(N'2021-01-16' AS Date), 48845, 1306, 249);
INSERT into traffic VALUES (98716279, CAST(N'2021-01-17' AS Date), 48845, 1968, 345);
INSERT into traffic VALUES (98716279, CAST(N'2021-01-18' AS Date), 48845, 1734, 333);
INSERT into traffic VALUES (98716279, CAST(N'2021-01-19' AS Date), 48845, 2779, 219);
INSERT into traffic VALUES (98716279, CAST(N'2021-01-20' AS Date), 48845, 1301, 396);
INSERT into traffic VALUES (98716279, CAST(N'2021-01-21' AS Date), 48845, 1259, 323);
INSERT into traffic VALUES (98716279, CAST(N'2021-01-22' AS Date), 48845, 2796, 268);
INSERT into traffic VALUES (98716279, CAST(N'2021-01-23' AS Date), 48845, 1583, 370);
INSERT into traffic VALUES (98716279, CAST(N'2021-01-24' AS Date), 48845, 2441, 330);
INSERT into traffic VALUES (98716279, CAST(N'2021-01-25' AS Date), 48845, 1712, 224);
INSERT into traffic VALUES (98716279, CAST(N'2021-01-26' AS Date), 48845, 1693, 261);
INSERT into traffic VALUES (98716279, CAST(N'2021-01-27' AS Date), 48845, 2922, 355);
INSERT into traffic VALUES (98716279, CAST(N'2021-01-28' AS Date), 48845, 2047, 206);
INSERT into traffic VALUES (98716279, CAST(N'2021-01-29' AS Date), 48845, 2257, 327);
INSERT into traffic VALUES (98716279, CAST(N'2021-01-30' AS Date), 48845, 1662, 221);
INSERT into traffic VALUES (103243217, CAST(N'2021-01-01' AS Date), 51085, 1984, 351);
INSERT into traffic VALUES (103243217, CAST(N'2021-01-02' AS Date), 51085, 1460, 393);
INSERT into traffic VALUES (103243217, CAST(N'2021-01-03' AS Date), 51085, 2436, 282);
INSERT into traffic VALUES (103243217, CAST(N'2021-01-04' AS Date), 51085, 2792, 578);
INSERT into traffic VALUES (103243217, CAST(N'2021-01-05' AS Date), 51085, 1508, 469);
INSERT into traffic VALUES (103243217, CAST(N'2021-01-06' AS Date), 51085, 2519, 527);
INSERT into traffic VALUES (103243217, CAST(N'2021-01-07' AS Date), 51085, 2818, 632);
INSERT into traffic VALUES (103243217, CAST(N'2021-01-08' AS Date), 51085, 2207, 796);
INSERT into traffic VALUES (103243217, CAST(N'2021-01-09' AS Date), 51085, 2127, 263);
INSERT into traffic VALUES (103243217, CAST(N'2021-01-10' AS Date), 51085, 1002, 677);
INSERT into traffic VALUES (103243217, CAST(N'2021-01-11' AS Date), 51085, 1365, 459);
INSERT into traffic VALUES (103243217, CAST(N'2021-01-12' AS Date), 51085, 2450, 524);
INSERT into traffic VALUES (103243217, CAST(N'2021-01-13' AS Date), 51085, 2867, 415);
INSERT into traffic VALUES (103243217, CAST(N'2021-01-14' AS Date), 51085, 1483, 289);
INSERT into traffic VALUES (103243217, CAST(N'2021-01-15' AS Date), 51085, 2547, 598);
INSERT into traffic VALUES (103243217, CAST(N'2021-01-16' AS Date), 51085, 2525, 702);
INSERT into traffic VALUES (103243217, CAST(N'2021-01-17' AS Date), 51085, 1166, 466);
INSERT into traffic VALUES (103243217, CAST(N'2021-01-18' AS Date), 51085, 1852, 387);
INSERT into traffic VALUES (103243217, CAST(N'2021-01-19' AS Date), 51085, 1204, 691);
INSERT into traffic VALUES (103243217, CAST(N'2021-01-20' AS Date), 51085, 2557, 338);
INSERT into traffic VALUES (103243217, CAST(N'2021-01-21' AS Date), 51085, 1362, 358);
INSERT into traffic VALUES (103243217, CAST(N'2021-01-22' AS Date), 51085, 2234, 525);
INSERT into traffic VALUES (103243217, CAST(N'2021-01-23' AS Date), 51085, 1539, 599);
INSERT into traffic VALUES (103243217, CAST(N'2021-01-24' AS Date), 51085, 1293, 689);
INSERT into traffic VALUES (103243217, CAST(N'2021-01-25' AS Date), 51085, 2128, 624);
INSERT into traffic VALUES (103243217, CAST(N'2021-01-26' AS Date), 51085, 2763, 704);
INSERT into traffic VALUES (103243217, CAST(N'2021-01-27' AS Date), 51085, 2670, 263);
INSERT into traffic VALUES (103243217, CAST(N'2021-01-28' AS Date), 51085, 1559, 382);
INSERT into traffic VALUES (103243217, CAST(N'2021-01-29' AS Date), 51085, 2465, 760);
INSERT into traffic VALUES (103243217, CAST(N'2021-01-30' AS Date), 51085, 1778, 306);
INSERT into traffic VALUES (104814927, CAST(N'2021-01-01' AS Date), 51862, 2031, 261);
INSERT into traffic VALUES (104814927, CAST(N'2021-01-02' AS Date), 51862, 1657, 372);
INSERT into traffic VALUES (104814927, CAST(N'2021-01-03' AS Date), 51862, 1645, 367);
INSERT into traffic VALUES (104814927, CAST(N'2021-01-04' AS Date), 51862, 2747, 306);
INSERT into traffic VALUES (104814927, CAST(N'2021-01-05' AS Date), 51862, 1142, 389);
INSERT into traffic VALUES (104814927, CAST(N'2021-01-06' AS Date), 51862, 1973, 351);
INSERT into traffic VALUES (104814927, CAST(N'2021-01-07' AS Date), 51862, 1781, 368);
INSERT into traffic VALUES (104814927, CAST(N'2021-01-08' AS Date), 51862, 2006, 319);
INSERT into traffic VALUES (104814927, CAST(N'2021-01-09' AS Date), 51862, 1089, 312);
INSERT into traffic VALUES (104814927, CAST(N'2021-01-10' AS Date), 51862, 2809, 313);
INSERT into traffic VALUES (104814927, CAST(N'2021-01-11' AS Date), 51862, 1069, 304);
INSERT into traffic VALUES (104814927, CAST(N'2021-01-12' AS Date), 51862, 1428, 234);
INSERT into traffic VALUES (104814927, CAST(N'2021-01-13' AS Date), 51862, 2666, 267);
INSERT into traffic VALUES (104814927, CAST(N'2021-01-14' AS Date), 51862, 2075, 357);
INSERT into traffic VALUES (104814927, CAST(N'2021-01-15' AS Date), 51862, 1711, 324);
INSERT into traffic VALUES (104814927, CAST(N'2021-01-16' AS Date), 51862, 2031, 277);
INSERT into traffic VALUES (104814927, CAST(N'2021-01-17' AS Date), 51862, 1039, 236);
INSERT into traffic VALUES (104814927, CAST(N'2021-01-18' AS Date), 51862, 2039, 226);
INSERT into traffic VALUES (104814927, CAST(N'2021-01-19' AS Date), 51862, 1303, 223);
INSERT into traffic VALUES (104814927, CAST(N'2021-01-20' AS Date), 51862, 1952, 226);
INSERT into traffic VALUES (104814927, CAST(N'2021-01-21' AS Date), 51862, 1281, 299);
INSERT into traffic VALUES (104814927, CAST(N'2021-01-22' AS Date), 51862, 2366, 387);
INSERT into traffic VALUES (104814927, CAST(N'2021-01-23' AS Date), 51862, 2361, 283);
INSERT into traffic VALUES (104814927, CAST(N'2021-01-24' AS Date), 51862, 1333, 291);
INSERT into traffic VALUES (104814927, CAST(N'2021-01-25' AS Date), 51862, 1672, 399);
INSERT into traffic VALUES (104814927, CAST(N'2021-01-26' AS Date), 51862, 2148, 274);
INSERT into traffic VALUES (104814927, CAST(N'2021-01-27' AS Date), 51862, 1853, 213);
INSERT into traffic VALUES (104814927, CAST(N'2021-01-28' AS Date), 51862, 1574, 209);
INSERT into traffic VALUES (104814927, CAST(N'2021-01-29' AS Date), 51862, 2346, 366);
INSERT into traffic VALUES (104814927, CAST(N'2021-01-30' AS Date), 51862, 1237, 387);
INSERT into traffic VALUES (125419229, CAST(N'2021-01-01' AS Date), 62058, 2479, 488);
INSERT into traffic VALUES (125419229, CAST(N'2021-01-02' AS Date), 62058, 1155, 511);
INSERT into traffic VALUES (125419229, CAST(N'2021-01-03' AS Date), 62058, 2688, 453);
INSERT into traffic VALUES (125419229, CAST(N'2021-01-04' AS Date), 62058, 1733, 306);
INSERT into traffic VALUES (125419229, CAST(N'2021-01-05' AS Date), 62058, 1662, 227);
INSERT into traffic VALUES (125419229, CAST(N'2021-01-06' AS Date), 62058, 2612, 577);
INSERT into traffic VALUES (125419229, CAST(N'2021-01-07' AS Date), 62058, 1812, 255);
INSERT into traffic VALUES (125419229, CAST(N'2021-01-08' AS Date), 62058, 1884, 542);
INSERT into traffic VALUES (125419229, CAST(N'2021-01-09' AS Date), 62058, 2299, 516);
INSERT into traffic VALUES (125419229, CAST(N'2021-01-10' AS Date), 62058, 1229, 387);
INSERT into traffic VALUES (125419229, CAST(N'2021-01-11' AS Date), 62058, 1215, 516);
INSERT into traffic VALUES (125419229, CAST(N'2021-01-12' AS Date), 62058, 1236, 241);
INSERT into traffic VALUES (125419229, CAST(N'2021-01-13' AS Date), 62058, 1920, 477);
INSERT into traffic VALUES (125419229, CAST(N'2021-01-14' AS Date), 62058, 2842, 232);
INSERT into traffic VALUES (125419229, CAST(N'2021-01-15' AS Date), 62058, 2070, 288);
INSERT into traffic VALUES (125419229, CAST(N'2021-01-16' AS Date), 62058, 2664, 505);
INSERT into traffic VALUES (125419229, CAST(N'2021-01-17' AS Date), 62058, 1106, 439);
INSERT into traffic VALUES (125419229, CAST(N'2021-01-18' AS Date), 62058, 2261, 519);
INSERT into traffic VALUES (125419229, CAST(N'2021-01-19' AS Date), 62058, 2762, 408);
INSERT into traffic VALUES (125419229, CAST(N'2021-01-20' AS Date), 62058, 2808, 213);
INSERT into traffic VALUES (125419229, CAST(N'2021-01-21' AS Date), 62058, 2532, 392);
INSERT into traffic VALUES (125419229, CAST(N'2021-01-22' AS Date), 62058, 2129, 363);
INSERT into traffic VALUES (125419229, CAST(N'2021-01-23' AS Date), 62058, 1285, 330);
INSERT into traffic VALUES (125419229, CAST(N'2021-01-24' AS Date), 62058, 2556, 516);
INSERT into traffic VALUES (125419229, CAST(N'2021-01-25' AS Date), 62058, 2546, 218);
INSERT into traffic VALUES (125419229, CAST(N'2021-01-26' AS Date), 62058, 1823, 205);
INSERT into traffic VALUES (125419229, CAST(N'2021-01-27' AS Date), 62058, 2080, 458);
INSERT into traffic VALUES (125419229, CAST(N'2021-01-28' AS Date), 62058, 1202, 541);
INSERT into traffic VALUES (125419229, CAST(N'2021-01-29' AS Date), 62058, 2609, 216);
INSERT into traffic VALUES (125419229, CAST(N'2021-01-30' AS Date), 62058, 1718, 506);
INSERT into traffic VALUES (125419237, CAST(N'2021-01-01' AS Date), 62058, 1026, 410);
INSERT into traffic VALUES (125419237, CAST(N'2021-01-02' AS Date), 62058, 1866, 427);
INSERT into traffic VALUES (125419237, CAST(N'2021-01-03' AS Date), 62058, 1625, 239);
INSERT into traffic VALUES (125419237, CAST(N'2021-01-04' AS Date), 62058, 1363, 551);
INSERT into traffic VALUES (125419237, CAST(N'2021-01-05' AS Date), 62058, 1133, 492);
INSERT into traffic VALUES (125419237, CAST(N'2021-01-06' AS Date), 62058, 1419, 333);
INSERT into traffic VALUES (125419237, CAST(N'2021-01-07' AS Date), 62058, 2458, 526);
INSERT into traffic VALUES (125419237, CAST(N'2021-01-08' AS Date), 62058, 2688, 355);
INSERT into traffic VALUES (125419237, CAST(N'2021-01-09' AS Date), 62058, 2540, 567);
INSERT into traffic VALUES (125419237, CAST(N'2021-01-10' AS Date), 62058, 2889, 468);
INSERT into traffic VALUES (125419237, CAST(N'2021-01-11' AS Date), 62058, 2145, 472);
INSERT into traffic VALUES (125419237, CAST(N'2021-01-12' AS Date), 62058, 1653, 407);
INSERT into traffic VALUES (125419237, CAST(N'2021-01-13' AS Date), 62058, 1988, 284);
INSERT into traffic VALUES (125419237, CAST(N'2021-01-14' AS Date), 62058, 1003, 596);
INSERT into traffic VALUES (125419237, CAST(N'2021-01-15' AS Date), 62058, 2267, 514);
INSERT into traffic VALUES (125419237, CAST(N'2021-01-16' AS Date), 62058, 2941, 360);
INSERT into traffic VALUES (125419237, CAST(N'2021-01-17' AS Date), 62058, 1532, 480);
INSERT into traffic VALUES (125419237, CAST(N'2021-01-18' AS Date), 62058, 2215, 357);
INSERT into traffic VALUES (125419237, CAST(N'2021-01-19' AS Date), 62058, 1776, 443);
INSERT into traffic VALUES (125419237, CAST(N'2021-01-20' AS Date), 62058, 1856, 461);
INSERT into traffic VALUES (125419237, CAST(N'2021-01-21' AS Date), 62058, 2538, 505);
INSERT into traffic VALUES (125419237, CAST(N'2021-01-22' AS Date), 62058, 2049, 442);
INSERT into traffic VALUES (125419237, CAST(N'2021-01-23' AS Date), 62058, 2712, 550);
INSERT into traffic VALUES (125419237, CAST(N'2021-01-24' AS Date), 62058, 2177, 439);
INSERT into traffic VALUES (125419237, CAST(N'2021-01-25' AS Date), 62058, 1922, 579);
INSERT into traffic VALUES (125419237, CAST(N'2021-01-26' AS Date), 62058, 2455, 409);
INSERT into traffic VALUES (125419237, CAST(N'2021-01-27' AS Date), 62058, 2409, 272);
INSERT into traffic VALUES (125419237, CAST(N'2021-01-28' AS Date), 62058, 2491, 497);
INSERT into traffic VALUES (125419237, CAST(N'2021-01-29' AS Date), 62058, 1649, 227);
INSERT into traffic VALUES (125419237, CAST(N'2021-01-30' AS Date), 62058, 1939, 510);
INSERT into traffic VALUES (125419320, CAST(N'2021-01-01' AS Date), 62058, 1196, 393);
INSERT into traffic VALUES (125419320, CAST(N'2021-01-02' AS Date), 62058, 1985, 530);
INSERT into traffic VALUES (125419320, CAST(N'2021-01-03' AS Date), 62058, 2732, 259);
INSERT into traffic VALUES (125419320, CAST(N'2021-01-04' AS Date), 62058, 2023, 354);
INSERT into traffic VALUES (125419320, CAST(N'2021-01-05' AS Date), 62058, 2488, 227);
INSERT into traffic VALUES (125419320, CAST(N'2021-01-06' AS Date), 62058, 1059, 442);
INSERT into traffic VALUES (125419320, CAST(N'2021-01-07' AS Date), 62058, 2249, 580);
INSERT into traffic VALUES (125419320, CAST(N'2021-01-08' AS Date), 62058, 2479, 457);
INSERT into traffic VALUES (125419320, CAST(N'2021-01-09' AS Date), 62058, 2634, 457);
INSERT into traffic VALUES (125419320, CAST(N'2021-01-10' AS Date), 62058, 1762, 385);
INSERT into traffic VALUES (125419320, CAST(N'2021-01-11' AS Date), 62058, 1907, 396);
INSERT into traffic VALUES (125419320, CAST(N'2021-01-12' AS Date), 62058, 2808, 575);
INSERT into traffic VALUES (125419320, CAST(N'2021-01-13' AS Date), 62058, 2714, 535);
INSERT into traffic VALUES (125419320, CAST(N'2021-01-14' AS Date), 62058, 2996, 563);
INSERT into traffic VALUES (125419320, CAST(N'2021-01-15' AS Date), 62058, 1974, 476);
INSERT into traffic VALUES (125419320, CAST(N'2021-01-16' AS Date), 62058, 2477, 226);
INSERT into traffic VALUES (125419320, CAST(N'2021-01-17' AS Date), 62058, 1575, 461);
INSERT into traffic VALUES (125419320, CAST(N'2021-01-18' AS Date), 62058, 2983, 490);
INSERT into traffic VALUES (125419320, CAST(N'2021-01-19' AS Date), 62058, 1567, 598);
INSERT into traffic VALUES (125419320, CAST(N'2021-01-20' AS Date), 62058, 1640, 586);
INSERT into traffic VALUES (125419320, CAST(N'2021-01-21' AS Date), 62058, 2470, 565);
INSERT into traffic VALUES (125419320, CAST(N'2021-01-22' AS Date), 62058, 2509, 547);
INSERT into traffic VALUES (125419320, CAST(N'2021-01-23' AS Date), 62058, 2913, 315);
INSERT into traffic VALUES (125419320, CAST(N'2021-01-24' AS Date), 62058, 1427, 441);
INSERT into traffic VALUES (125419320, CAST(N'2021-01-25' AS Date), 62058, 1889, 284);
INSERT into traffic VALUES (125419320, CAST(N'2021-01-26' AS Date), 62058, 2086, 595);
INSERT into traffic VALUES (125419320, CAST(N'2021-01-27' AS Date), 62058, 2078, 393);
INSERT into traffic VALUES (125419320, CAST(N'2021-01-28' AS Date), 62058, 1852, 255);
INSERT into traffic VALUES (125419320, CAST(N'2021-01-29' AS Date), 62058, 1437, 373);
INSERT into traffic VALUES (125419320, CAST(N'2021-01-30' AS Date), 62058, 2565, 379);
INSERT into traffic VALUES (127855906, CAST(N'2021-01-01' AS Date), 63263, 1708, 291);
INSERT into traffic VALUES (127855906, CAST(N'2021-01-02' AS Date), 63263, 2293, 274);
INSERT into traffic VALUES (127855906, CAST(N'2021-01-03' AS Date), 63263, 1677, 362);
INSERT into traffic VALUES (127855906, CAST(N'2021-01-04' AS Date), 63263, 2481, 221);
INSERT into traffic VALUES (127855906, CAST(N'2021-01-05' AS Date), 63263, 2307, 232);
INSERT into traffic VALUES (127855906, CAST(N'2021-01-06' AS Date), 63263, 2695, 235);
INSERT into traffic VALUES (127855906, CAST(N'2021-01-07' AS Date), 63263, 1474, 368);
INSERT into traffic VALUES (127855906, CAST(N'2021-01-08' AS Date), 63263, 2756, 251);
INSERT into traffic VALUES (127855906, CAST(N'2021-01-09' AS Date), 63263, 2300, 363);
INSERT into traffic VALUES (127855906, CAST(N'2021-01-10' AS Date), 63263, 2154, 396);
INSERT into traffic VALUES (127855906, CAST(N'2021-01-11' AS Date), 63263, 1509, 250);
INSERT into traffic VALUES (127855906, CAST(N'2021-01-12' AS Date), 63263, 2459, 213);
INSERT into traffic VALUES (127855906, CAST(N'2021-01-13' AS Date), 63263, 2771, 343);
INSERT into traffic VALUES (127855906, CAST(N'2021-01-14' AS Date), 63263, 2531, 352);
INSERT into traffic VALUES (127855906, CAST(N'2021-01-15' AS Date), 63263, 2189, 364);
INSERT into traffic VALUES (127855906, CAST(N'2021-01-16' AS Date), 63263, 2980, 347);
INSERT into traffic VALUES (127855906, CAST(N'2021-01-17' AS Date), 63263, 1069, 235);
INSERT into traffic VALUES (127855906, CAST(N'2021-01-18' AS Date), 63263, 1477, 317);
INSERT into traffic VALUES (127855906, CAST(N'2021-01-19' AS Date), 63263, 2498, 242);
INSERT into traffic VALUES (127855906, CAST(N'2021-01-20' AS Date), 63263, 2481, 334);
INSERT into traffic VALUES (127855906, CAST(N'2021-01-21' AS Date), 63263, 2778, 208);
INSERT into traffic VALUES (127855906, CAST(N'2021-01-22' AS Date), 63263, 2787, 315);
INSERT into traffic VALUES (127855906, CAST(N'2021-01-23' AS Date), 63263, 2303, 346);
INSERT into traffic VALUES (127855906, CAST(N'2021-01-24' AS Date), 63263, 1545, 365);
INSERT into traffic VALUES (127855906, CAST(N'2021-01-25' AS Date), 63263, 2798, 233);
INSERT into traffic VALUES (127855906, CAST(N'2021-01-26' AS Date), 63263, 1637, 397);
INSERT into traffic VALUES (127855906, CAST(N'2021-01-27' AS Date), 63263, 1298, 247);
INSERT into traffic VALUES (127855906, CAST(N'2021-01-28' AS Date), 63263, 2760, 378);
INSERT into traffic VALUES (127855906, CAST(N'2021-01-29' AS Date), 63263, 1481, 204);
INSERT into traffic VALUES (127855906, CAST(N'2021-01-30' AS Date), 63263, 1646, 303);
INSERT into traffic VALUES (127855958, CAST(N'2021-01-01' AS Date), 63263, 2067, 335);
INSERT into traffic VALUES (127855958, CAST(N'2021-01-02' AS Date), 63263, 2147, 217);
INSERT into traffic VALUES (127855958, CAST(N'2021-01-03' AS Date), 63263, 1781, 220);
INSERT into traffic VALUES (127855958, CAST(N'2021-01-04' AS Date), 63263, 2487, 336);
INSERT into traffic VALUES (127855958, CAST(N'2021-01-05' AS Date), 63263, 1627, 271);
INSERT into traffic VALUES (127855958, CAST(N'2021-01-06' AS Date), 63263, 1343, 358);
INSERT into traffic VALUES (127855958, CAST(N'2021-01-07' AS Date), 63263, 1402, 274);
INSERT into traffic VALUES (127855958, CAST(N'2021-01-08' AS Date), 63263, 1122, 235);
INSERT into traffic VALUES (127855958, CAST(N'2021-01-09' AS Date), 63263, 2281, 316);
INSERT into traffic VALUES (127855958, CAST(N'2021-01-10' AS Date), 63263, 2301, 209);
INSERT into traffic VALUES (127855958, CAST(N'2021-01-11' AS Date), 63263, 1969, 275);
INSERT into traffic VALUES (127855958, CAST(N'2021-01-12' AS Date), 63263, 1075, 241);
INSERT into traffic VALUES (127855958, CAST(N'2021-01-13' AS Date), 63263, 2333, 246);
INSERT into traffic VALUES (127855958, CAST(N'2021-01-14' AS Date), 63263, 1996, 258);
INSERT into traffic VALUES (127855958, CAST(N'2021-01-15' AS Date), 63263, 2025, 338);
INSERT into traffic VALUES (127855958, CAST(N'2021-01-16' AS Date), 63263, 1449, 346);
INSERT into traffic VALUES (127855958, CAST(N'2021-01-17' AS Date), 63263, 2077, 314);
INSERT into traffic VALUES (127855958, CAST(N'2021-01-18' AS Date), 63263, 1682, 364);
INSERT into traffic VALUES (127855958, CAST(N'2021-01-19' AS Date), 63263, 2167, 297);
INSERT into traffic VALUES (127855958, CAST(N'2021-01-20' AS Date), 63263, 1178, 268);
INSERT into traffic VALUES (127855958, CAST(N'2021-01-21' AS Date), 63263, 1055, 207);
INSERT into traffic VALUES (127855958, CAST(N'2021-01-22' AS Date), 63263, 2632, 393);
INSERT into traffic VALUES (127855958, CAST(N'2021-01-23' AS Date), 63263, 1347, 219);
INSERT into traffic VALUES (127855958, CAST(N'2021-01-24' AS Date), 63263, 2000, 204);
INSERT into traffic VALUES (127855958, CAST(N'2021-01-25' AS Date), 63263, 2677, 311);
INSERT into traffic VALUES (127855958, CAST(N'2021-01-26' AS Date), 63263, 1059, 255);
INSERT into traffic VALUES (127855958, CAST(N'2021-01-27' AS Date), 63263, 1933, 332);
INSERT into traffic VALUES (127855958, CAST(N'2021-01-28' AS Date), 63263, 1020, 246);
INSERT into traffic VALUES (127855958, CAST(N'2021-01-29' AS Date), 63263, 1959, 394);
INSERT into traffic VALUES (127855958, CAST(N'2021-01-30' AS Date), 63263, 1468, 222);
INSERT into traffic VALUES (127856012, CAST(N'2021-01-01' AS Date), 63263, 1057, 239);
INSERT into traffic VALUES (127856012, CAST(N'2021-01-02' AS Date), 63263, 2055, 325);
INSERT into traffic VALUES (127856012, CAST(N'2021-01-03' AS Date), 63263, 2901, 247);
INSERT into traffic VALUES (127856012, CAST(N'2021-01-04' AS Date), 63263, 1336, 283);
INSERT into traffic VALUES (127856012, CAST(N'2021-01-05' AS Date), 63263, 2422, 277);
INSERT into traffic VALUES (127856012, CAST(N'2021-01-06' AS Date), 63263, 2413, 221);
INSERT into traffic VALUES (127856012, CAST(N'2021-01-07' AS Date), 63263, 2409, 349);
INSERT into traffic VALUES (127856012, CAST(N'2021-01-08' AS Date), 63263, 2618, 220);
INSERT into traffic VALUES (127856012, CAST(N'2021-01-09' AS Date), 63263, 1819, 312);
INSERT into traffic VALUES (127856012, CAST(N'2021-01-10' AS Date), 63263, 2144, 213);
INSERT into traffic VALUES (127856012, CAST(N'2021-01-11' AS Date), 63263, 1055, 210);
INSERT into traffic VALUES (127856012, CAST(N'2021-01-12' AS Date), 63263, 2407, 325);
INSERT into traffic VALUES (127856012, CAST(N'2021-01-13' AS Date), 63263, 1516, 316);
INSERT into traffic VALUES (127856012, CAST(N'2021-01-14' AS Date), 63263, 1243, 242);
INSERT into traffic VALUES (127856012, CAST(N'2021-01-15' AS Date), 63263, 2235, 217);
INSERT into traffic VALUES (127856012, CAST(N'2021-01-16' AS Date), 63263, 1335, 278);
INSERT into traffic VALUES (127856012, CAST(N'2021-01-17' AS Date), 63263, 2042, 292);
INSERT into traffic VALUES (127856012, CAST(N'2021-01-18' AS Date), 63263, 1371, 230);
INSERT into traffic VALUES (127856012, CAST(N'2021-01-19' AS Date), 63263, 2401, 372);
INSERT into traffic VALUES (127856012, CAST(N'2021-01-20' AS Date), 63263, 1807, 388);
INSERT into traffic VALUES (127856012, CAST(N'2021-01-21' AS Date), 63263, 1859, 363);
INSERT into traffic VALUES (127856012, CAST(N'2021-01-22' AS Date), 63263, 1550, 317);
INSERT into traffic VALUES (127856012, CAST(N'2021-01-23' AS Date), 63263, 2753, 254);
INSERT into traffic VALUES (127856012, CAST(N'2021-01-24' AS Date), 63263, 1598, 248);
INSERT into traffic VALUES (127856012, CAST(N'2021-01-25' AS Date), 63263, 2190, 374);
INSERT into traffic VALUES (127856012, CAST(N'2021-01-26' AS Date), 63263, 1249, 224);
INSERT into traffic VALUES (127856012, CAST(N'2021-01-27' AS Date), 63263, 1598, 203);
INSERT into traffic VALUES (127856012, CAST(N'2021-01-28' AS Date), 63263, 2945, 367);
INSERT into traffic VALUES (127856012, CAST(N'2021-01-29' AS Date), 63263, 1850, 270);
INSERT into traffic VALUES (127856012, CAST(N'2021-01-30' AS Date), 63263, 1895, 217);
INSERT into traffic VALUES (130882181, CAST(N'2021-01-01' AS Date), 64761, 1094, 519);
INSERT into traffic VALUES (130882181, CAST(N'2021-01-02' AS Date), 64761, 1796, 215);
INSERT into traffic VALUES (130882181, CAST(N'2021-01-03' AS Date), 64761, 1008, 399);
INSERT into traffic VALUES (130882181, CAST(N'2021-01-04' AS Date), 64761, 1430, 235);
INSERT into traffic VALUES (130882181, CAST(N'2021-01-05' AS Date), 64761, 2620, 408);
INSERT into traffic VALUES (130882181, CAST(N'2021-01-06' AS Date), 64761, 1551, 574);
INSERT into traffic VALUES (130882181, CAST(N'2021-01-07' AS Date), 64761, 2437, 408);
INSERT into traffic VALUES (130882181, CAST(N'2021-01-08' AS Date), 64761, 2674, 564);
INSERT into traffic VALUES (130882181, CAST(N'2021-01-09' AS Date), 64761, 1694, 423);
INSERT into traffic VALUES (130882181, CAST(N'2021-01-10' AS Date), 64761, 2709, 300);
INSERT into traffic VALUES (130882181, CAST(N'2021-01-11' AS Date), 64761, 2843, 222);
INSERT into traffic VALUES (130882181, CAST(N'2021-01-12' AS Date), 64761, 2697, 499);
INSERT into traffic VALUES (130882181, CAST(N'2021-01-13' AS Date), 64761, 1503, 298);
INSERT into traffic VALUES (130882181, CAST(N'2021-01-14' AS Date), 64761, 1057, 577);
INSERT into traffic VALUES (130882181, CAST(N'2021-01-15' AS Date), 64761, 1666, 442);
INSERT into traffic VALUES (130882181, CAST(N'2021-01-16' AS Date), 64761, 2968, 449);
INSERT into traffic VALUES (130882181, CAST(N'2021-01-17' AS Date), 64761, 2836, 561);
INSERT into traffic VALUES (130882181, CAST(N'2021-01-18' AS Date), 64761, 2405, 559);
INSERT into traffic VALUES (130882181, CAST(N'2021-01-19' AS Date), 64761, 2668, 597);
INSERT into traffic VALUES (130882181, CAST(N'2021-01-20' AS Date), 64761, 2821, 359);
INSERT into traffic VALUES (130882181, CAST(N'2021-01-21' AS Date), 64761, 1502, 330);
INSERT into traffic VALUES (130882181, CAST(N'2021-01-22' AS Date), 64761, 2740, 414);
INSERT into traffic VALUES (130882181, CAST(N'2021-01-23' AS Date), 64761, 2527, 528);
INSERT into traffic VALUES (130882181, CAST(N'2021-01-24' AS Date), 64761, 2619, 447);
INSERT into traffic VALUES (130882181, CAST(N'2021-01-25' AS Date), 64761, 1806, 524);
INSERT into traffic VALUES (130882181, CAST(N'2021-01-26' AS Date), 64761, 2209, 209);
INSERT into traffic VALUES (130882181, CAST(N'2021-01-27' AS Date), 64761, 2472, 366);
INSERT into traffic VALUES (130882181, CAST(N'2021-01-28' AS Date), 64761, 2710, 537);
INSERT into traffic VALUES (130882181, CAST(N'2021-01-29' AS Date), 64761, 1153, 212);
INSERT into traffic VALUES (130882181, CAST(N'2021-01-30' AS Date), 64761, 1531, 396);
INSERT into traffic VALUES (130882192, CAST(N'2021-01-01' AS Date), 64761, 2281, 341);
INSERT into traffic VALUES (130882192, CAST(N'2021-01-02' AS Date), 64761, 1914, 256);
INSERT into traffic VALUES (130882192, CAST(N'2021-01-03' AS Date), 64761, 1234, 551);
INSERT into traffic VALUES (130882192, CAST(N'2021-01-04' AS Date), 64761, 1040, 237);
INSERT into traffic VALUES (130882192, CAST(N'2021-01-05' AS Date), 64761, 1843, 454);
INSERT into traffic VALUES (130882192, CAST(N'2021-01-06' AS Date), 64761, 2939, 330);
INSERT into traffic VALUES (130882192, CAST(N'2021-01-07' AS Date), 64761, 1527, 431);
INSERT into traffic VALUES (130882192, CAST(N'2021-01-08' AS Date), 64761, 1898, 251);
INSERT into traffic VALUES (130882192, CAST(N'2021-01-09' AS Date), 64761, 2252, 434);
INSERT into traffic VALUES (130882192, CAST(N'2021-01-10' AS Date), 64761, 2379, 317);
INSERT into traffic VALUES (130882192, CAST(N'2021-01-11' AS Date), 64761, 2369, 292);
INSERT into traffic VALUES (130882192, CAST(N'2021-01-12' AS Date), 64761, 2885, 553);
INSERT into traffic VALUES (130882192, CAST(N'2021-01-13' AS Date), 64761, 2579, 286);
INSERT into traffic VALUES (130882192, CAST(N'2021-01-14' AS Date), 64761, 2359, 399);
INSERT into traffic VALUES (130882192, CAST(N'2021-01-15' AS Date), 64761, 2706, 447);
INSERT into traffic VALUES (130882192, CAST(N'2021-01-16' AS Date), 64761, 1190, 578);
INSERT into traffic VALUES (130882192, CAST(N'2021-01-17' AS Date), 64761, 2483, 416);
INSERT into traffic VALUES (130882192, CAST(N'2021-01-18' AS Date), 64761, 1331, 462);
INSERT into traffic VALUES (130882192, CAST(N'2021-01-19' AS Date), 64761, 2335, 512);
INSERT into traffic VALUES (130882192, CAST(N'2021-01-20' AS Date), 64761, 2968, 572);
INSERT into traffic VALUES (130882192, CAST(N'2021-01-21' AS Date), 64761, 1787, 387);
INSERT into traffic VALUES (130882192, CAST(N'2021-01-22' AS Date), 64761, 1052, 370);
INSERT into traffic VALUES (130882192, CAST(N'2021-01-23' AS Date), 64761, 2944, 451);
INSERT into traffic VALUES (130882192, CAST(N'2021-01-24' AS Date), 64761, 2598, 589);
INSERT into traffic VALUES (130882192, CAST(N'2021-01-25' AS Date), 64761, 2313, 488);
INSERT into traffic VALUES (130882192, CAST(N'2021-01-26' AS Date), 64761, 2178, 427);
INSERT into traffic VALUES (130882192, CAST(N'2021-01-27' AS Date), 64761, 2628, 295);
INSERT into traffic VALUES (130882192, CAST(N'2021-01-28' AS Date), 64761, 2262, 433);
INSERT into traffic VALUES (130882192, CAST(N'2021-01-29' AS Date), 64761, 2357, 453);
INSERT into traffic VALUES (130882192, CAST(N'2021-01-30' AS Date), 64761, 2702, 391);
INSERT into traffic VALUES (130882227, CAST(N'2021-01-01' AS Date), 64761, 2001, 377);
INSERT into traffic VALUES (130882227, CAST(N'2021-01-02' AS Date), 64761, 2562, 493);
INSERT into traffic VALUES (130882227, CAST(N'2021-01-03' AS Date), 64761, 2570, 246);
INSERT into traffic VALUES (130882227, CAST(N'2021-01-04' AS Date), 64761, 2852, 416);
INSERT into traffic VALUES (130882227, CAST(N'2021-01-05' AS Date), 64761, 2864, 526);
INSERT into traffic VALUES (130882227, CAST(N'2021-01-06' AS Date), 64761, 2425, 230);
INSERT into traffic VALUES (130882227, CAST(N'2021-01-07' AS Date), 64761, 2218, 317);
INSERT into traffic VALUES (130882227, CAST(N'2021-01-08' AS Date), 64761, 1798, 526);
INSERT into traffic VALUES (130882227, CAST(N'2021-01-09' AS Date), 64761, 2769, 358);
INSERT into traffic VALUES (130882227, CAST(N'2021-01-10' AS Date), 64761, 2570, 239);
INSERT into traffic VALUES (130882227, CAST(N'2021-01-11' AS Date), 64761, 2926, 359);
INSERT into traffic VALUES (130882227, CAST(N'2021-01-12' AS Date), 64761, 2625, 408);
INSERT into traffic VALUES (130882227, CAST(N'2021-01-13' AS Date), 64761, 1369, 353);
INSERT into traffic VALUES (130882227, CAST(N'2021-01-14' AS Date), 64761, 2574, 395);
INSERT into traffic VALUES (130882227, CAST(N'2021-01-15' AS Date), 64761, 1119, 435);
INSERT into traffic VALUES (130882227, CAST(N'2021-01-16' AS Date), 64761, 2568, 493);
INSERT into traffic VALUES (130882227, CAST(N'2021-01-17' AS Date), 64761, 1369, 420);
INSERT into traffic VALUES (130882227, CAST(N'2021-01-18' AS Date), 64761, 2805, 587);
INSERT into traffic VALUES (130882227, CAST(N'2021-01-19' AS Date), 64761, 2598, 518);
INSERT into traffic VALUES (130882227, CAST(N'2021-01-20' AS Date), 64761, 2406, 265);
INSERT into traffic VALUES (130882227, CAST(N'2021-01-21' AS Date), 64761, 1662, 375);
INSERT into traffic VALUES (130882227, CAST(N'2021-01-22' AS Date), 64761, 1882, 455);
INSERT into traffic VALUES (130882227, CAST(N'2021-01-23' AS Date), 64761, 2913, 389);
INSERT into traffic VALUES (130882227, CAST(N'2021-01-24' AS Date), 64761, 2374, 446);
INSERT into traffic VALUES (130882227, CAST(N'2021-01-25' AS Date), 64761, 1145, 529);
INSERT into traffic VALUES (130882227, CAST(N'2021-01-26' AS Date), 64761, 2602, 377);
INSERT into traffic VALUES (130882227, CAST(N'2021-01-27' AS Date), 64761, 1694, 482);
INSERT into traffic VALUES (130882227, CAST(N'2021-01-28' AS Date), 64761, 2045, 394);
INSERT into traffic VALUES (130882227, CAST(N'2021-01-29' AS Date), 64761, 2726, 271);
INSERT into traffic VALUES (130882227, CAST(N'2021-01-30' AS Date), 64761, 2627, 233);
INSERT into traffic VALUES (134214939, CAST(N'2021-01-01' AS Date), 66410, 1770, 234);
INSERT into traffic VALUES (134214939, CAST(N'2021-01-02' AS Date), 66410, 1445, 208);
INSERT into traffic VALUES (134214939, CAST(N'2021-01-03' AS Date), 66410, 2493, 396);
INSERT into traffic VALUES (134214939, CAST(N'2021-01-04' AS Date), 66410, 1827, 210);
INSERT into traffic VALUES (134214939, CAST(N'2021-01-05' AS Date), 66410, 2293, 393);
INSERT into traffic VALUES (134214939, CAST(N'2021-01-06' AS Date), 66410, 2982, 250);
INSERT into traffic VALUES (134214939, CAST(N'2021-01-07' AS Date), 66410, 2976, 375);
INSERT into traffic VALUES (134214939, CAST(N'2021-01-08' AS Date), 66410, 1910, 237);
INSERT into traffic VALUES (134214939, CAST(N'2021-01-09' AS Date), 66410, 2483, 359);
INSERT into traffic VALUES (134214939, CAST(N'2021-01-10' AS Date), 66410, 2408, 264);
INSERT into traffic VALUES (134214939, CAST(N'2021-01-11' AS Date), 66410, 2001, 334);
INSERT into traffic VALUES (134214939, CAST(N'2021-01-12' AS Date), 66410, 1684, 330);
INSERT into traffic VALUES (134214939, CAST(N'2021-01-13' AS Date), 66410, 1931, 242);
INSERT into traffic VALUES (134214939, CAST(N'2021-01-14' AS Date), 66410, 1446, 387);
INSERT into traffic VALUES (134214939, CAST(N'2021-01-15' AS Date), 66410, 1059, 272);
INSERT into traffic VALUES (134214939, CAST(N'2021-01-16' AS Date), 66410, 1817, 221);
INSERT into traffic VALUES (134214939, CAST(N'2021-01-17' AS Date), 66410, 1182, 215);
INSERT into traffic VALUES (134214939, CAST(N'2021-01-18' AS Date), 66410, 2077, 352);
INSERT into traffic VALUES (134214939, CAST(N'2021-01-19' AS Date), 66410, 2234, 370);
INSERT into traffic VALUES (134214939, CAST(N'2021-01-20' AS Date), 66410, 2999, 326);
INSERT into traffic VALUES (134214939, CAST(N'2021-01-21' AS Date), 66410, 1937, 260);
INSERT into traffic VALUES (134214939, CAST(N'2021-01-22' AS Date), 66410, 1032, 256);
INSERT into traffic VALUES (134214939, CAST(N'2021-01-23' AS Date), 66410, 1705, 224);
INSERT into traffic VALUES (134214939, CAST(N'2021-01-24' AS Date), 66410, 1647, 326);
INSERT into traffic VALUES (134214939, CAST(N'2021-01-25' AS Date), 66410, 1771, 323);
INSERT into traffic VALUES (134214939, CAST(N'2021-01-26' AS Date), 66410, 1319, 347);
INSERT into traffic VALUES (134214939, CAST(N'2021-01-27' AS Date), 66410, 1121, 396);
INSERT into traffic VALUES (134214939, CAST(N'2021-01-28' AS Date), 66410, 1547, 271);
INSERT into traffic VALUES (134214939, CAST(N'2021-01-29' AS Date), 66410, 1766, 230);
INSERT into traffic VALUES (134214939, CAST(N'2021-01-30' AS Date), 66410, 1475, 373);
INSERT into traffic VALUES (134214946, CAST(N'2021-01-01' AS Date), 66410, 2424, 235);
INSERT into traffic VALUES (134214946, CAST(N'2021-01-02' AS Date), 66410, 1873, 288);
INSERT into traffic VALUES (134214946, CAST(N'2021-01-03' AS Date), 66410, 2623, 237);
INSERT into traffic VALUES (134214946, CAST(N'2021-01-04' AS Date), 66410, 1340, 336);
INSERT into traffic VALUES (134214946, CAST(N'2021-01-05' AS Date), 66410, 1415, 320);
INSERT into traffic VALUES (134214946, CAST(N'2021-01-06' AS Date), 66410, 1074, 336);
INSERT into traffic VALUES (134214946, CAST(N'2021-01-07' AS Date), 66410, 2360, 235);
INSERT into traffic VALUES (134214946, CAST(N'2021-01-08' AS Date), 66410, 1149, 397);
INSERT into traffic VALUES (134214946, CAST(N'2021-01-09' AS Date), 66410, 1049, 249);
INSERT into traffic VALUES (134214946, CAST(N'2021-01-10' AS Date), 66410, 2363, 331);
INSERT into traffic VALUES (134214946, CAST(N'2021-01-11' AS Date), 66410, 1480, 288);
INSERT into traffic VALUES (134214946, CAST(N'2021-01-12' AS Date), 66410, 1687, 326);
INSERT into traffic VALUES (134214946, CAST(N'2021-01-13' AS Date), 66410, 1470, 233);
INSERT into traffic VALUES (134214946, CAST(N'2021-01-14' AS Date), 66410, 2845, 316);
INSERT into traffic VALUES (134214946, CAST(N'2021-01-15' AS Date), 66410, 1214, 202);
INSERT into traffic VALUES (134214946, CAST(N'2021-01-16' AS Date), 66410, 1660, 274);
INSERT into traffic VALUES (134214946, CAST(N'2021-01-17' AS Date), 66410, 2849, 276);
INSERT into traffic VALUES (134214946, CAST(N'2021-01-18' AS Date), 66410, 1070, 211);
INSERT into traffic VALUES (134214946, CAST(N'2021-01-19' AS Date), 66410, 1304, 237);
INSERT into traffic VALUES (134214946, CAST(N'2021-01-20' AS Date), 66410, 2514, 233);
INSERT into traffic VALUES (134214946, CAST(N'2021-01-21' AS Date), 66410, 1124, 282);
INSERT into traffic VALUES (134214946, CAST(N'2021-01-22' AS Date), 66410, 2562, 368);
INSERT into traffic VALUES (134214946, CAST(N'2021-01-23' AS Date), 66410, 2902, 278);
INSERT into traffic VALUES (134214946, CAST(N'2021-01-24' AS Date), 66410, 2677, 385);
INSERT into traffic VALUES (134214946, CAST(N'2021-01-25' AS Date), 66410, 1235, 374);
INSERT into traffic VALUES (134214946, CAST(N'2021-01-26' AS Date), 66410, 2747, 271);
INSERT into traffic VALUES (134214946, CAST(N'2021-01-27' AS Date), 66410, 2205, 345);
INSERT into traffic VALUES (134214946, CAST(N'2021-01-28' AS Date), 66410, 1241, 330);
INSERT into traffic VALUES (134214946, CAST(N'2021-01-29' AS Date), 66410, 2390, 239);
INSERT into traffic VALUES (134214946, CAST(N'2021-01-30' AS Date), 66410, 2059, 371);
INSERT into traffic VALUES (134214996, CAST(N'2021-01-01' AS Date), 66410, 2010, 288);
INSERT into traffic VALUES (134214996, CAST(N'2021-01-02' AS Date), 66410, 1695, 284);
INSERT into traffic VALUES (134214996, CAST(N'2021-01-03' AS Date), 66410, 2902, 260);
INSERT into traffic VALUES (134214996, CAST(N'2021-01-04' AS Date), 66410, 1408, 259);
INSERT into traffic VALUES (134214996, CAST(N'2021-01-05' AS Date), 66410, 1913, 317);
INSERT into traffic VALUES (134214996, CAST(N'2021-01-06' AS Date), 66410, 2016, 359);
INSERT into traffic VALUES (134214996, CAST(N'2021-01-07' AS Date), 66410, 2435, 391);
INSERT into traffic VALUES (134214996, CAST(N'2021-01-08' AS Date), 66410, 2898, 284);
INSERT into traffic VALUES (134214996, CAST(N'2021-01-09' AS Date), 66410, 2340, 363);
INSERT into traffic VALUES (134214996, CAST(N'2021-01-10' AS Date), 66410, 1620, 251);
INSERT into traffic VALUES (134214996, CAST(N'2021-01-11' AS Date), 66410, 1019, 209);
INSERT into traffic VALUES (134214996, CAST(N'2021-01-12' AS Date), 66410, 1515, 207);
INSERT into traffic VALUES (134214996, CAST(N'2021-01-13' AS Date), 66410, 2952, 271);
INSERT into traffic VALUES (134214996, CAST(N'2021-01-14' AS Date), 66410, 2631, 220);
INSERT into traffic VALUES (134214996, CAST(N'2021-01-15' AS Date), 66410, 1556, 349);
INSERT into traffic VALUES (134214996, CAST(N'2021-01-16' AS Date), 66410, 1946, 394);
INSERT into traffic VALUES (134214996, CAST(N'2021-01-17' AS Date), 66410, 1355, 269);
INSERT into traffic VALUES (134214996, CAST(N'2021-01-18' AS Date), 66410, 1155, 295);
INSERT into traffic VALUES (134214996, CAST(N'2021-01-19' AS Date), 66410, 2106, 344);
INSERT into traffic VALUES (134214996, CAST(N'2021-01-20' AS Date), 66410, 1764, 227);
INSERT into traffic VALUES (134214996, CAST(N'2021-01-21' AS Date), 66410, 1260, 203);
INSERT into traffic VALUES (134214996, CAST(N'2021-01-22' AS Date), 66410, 2321, 294);
INSERT into traffic VALUES (134214996, CAST(N'2021-01-23' AS Date), 66410, 1187, 261);
INSERT into traffic VALUES (134214996, CAST(N'2021-01-24' AS Date), 66410, 1209, 385);
INSERT into traffic VALUES (134214996, CAST(N'2021-01-25' AS Date), 66410, 2617, 218);
INSERT into traffic VALUES (134214996, CAST(N'2021-01-26' AS Date), 66410, 2642, 312);
INSERT into traffic VALUES (134214996, CAST(N'2021-01-27' AS Date), 66410, 1741, 217);
INSERT into traffic VALUES (134214996, CAST(N'2021-01-28' AS Date), 66410, 1131, 378);
INSERT into traffic VALUES (134214996, CAST(N'2021-01-29' AS Date), 66410, 2893, 272);
INSERT into traffic VALUES (134214996, CAST(N'2021-01-30' AS Date), 66410, 2920, 280);
INSERT into traffic VALUES (134215007, CAST(N'2021-01-01' AS Date), 66410, 2876, 274);
INSERT into traffic VALUES (134215007, CAST(N'2021-01-02' AS Date), 66410, 2336, 241);
INSERT into traffic VALUES (134215007, CAST(N'2021-01-03' AS Date), 66410, 2822, 276);
INSERT into traffic VALUES (134215007, CAST(N'2021-01-04' AS Date), 66410, 2676, 327);
INSERT into traffic VALUES (134215007, CAST(N'2021-01-05' AS Date), 66410, 2279, 342);
INSERT into traffic VALUES (134215007, CAST(N'2021-01-06' AS Date), 66410, 1937, 387);
INSERT into traffic VALUES (134215007, CAST(N'2021-01-07' AS Date), 66410, 2351, 389);
INSERT into traffic VALUES (134215007, CAST(N'2021-01-08' AS Date), 66410, 1457, 351);
INSERT into traffic VALUES (134215007, CAST(N'2021-01-09' AS Date), 66410, 2090, 385);
INSERT into traffic VALUES (134215007, CAST(N'2021-01-10' AS Date), 66410, 1976, 292);
INSERT into traffic VALUES (134215007, CAST(N'2021-01-11' AS Date), 66410, 2414, 373);
INSERT into traffic VALUES (134215007, CAST(N'2021-01-12' AS Date), 66410, 2290, 336);
INSERT into traffic VALUES (134215007, CAST(N'2021-01-13' AS Date), 66410, 2237, 263);
INSERT into traffic VALUES (134215007, CAST(N'2021-01-14' AS Date), 66410, 1834, 328);
INSERT into traffic VALUES (134215007, CAST(N'2021-01-15' AS Date), 66410, 2309, 205);
INSERT into traffic VALUES (134215007, CAST(N'2021-01-16' AS Date), 66410, 2036, 282);
INSERT into traffic VALUES (134215007, CAST(N'2021-01-17' AS Date), 66410, 1268, 303);
INSERT into traffic VALUES (134215007, CAST(N'2021-01-18' AS Date), 66410, 1590, 315);
INSERT into traffic VALUES (134215007, CAST(N'2021-01-19' AS Date), 66410, 2141, 278);
INSERT into traffic VALUES (134215007, CAST(N'2021-01-20' AS Date), 66410, 1194, 370);
INSERT into traffic VALUES (134215007, CAST(N'2021-01-21' AS Date), 66410, 1117, 309);
INSERT into traffic VALUES (134215007, CAST(N'2021-01-22' AS Date), 66410, 1375, 212);
INSERT into traffic VALUES (134215007, CAST(N'2021-01-23' AS Date), 66410, 2577, 391);
INSERT into traffic VALUES (134215007, CAST(N'2021-01-24' AS Date), 66410, 1880, 324);
INSERT into traffic VALUES (134215007, CAST(N'2021-01-25' AS Date), 66410, 1310, 293);
INSERT into traffic VALUES (134215007, CAST(N'2021-01-26' AS Date), 66410, 2756, 232);
INSERT into traffic VALUES (134215007, CAST(N'2021-01-27' AS Date), 66410, 2154, 282);
INSERT into traffic VALUES (134215007, CAST(N'2021-01-28' AS Date), 66410, 2053, 253);
INSERT into traffic VALUES (134215007, CAST(N'2021-01-29' AS Date), 66410, 1272, 374);
INSERT into traffic VALUES (134215007, CAST(N'2021-01-30' AS Date), 66410, 1735, 396);
INSERT into traffic VALUES (153279736, CAST(N'2021-01-01' AS Date), 75843, 1627, 526);
INSERT into traffic VALUES (153279736, CAST(N'2021-01-02' AS Date), 75843, 2285, 648);
INSERT into traffic VALUES (153279736, CAST(N'2021-01-03' AS Date), 75843, 2760, 277);
INSERT into traffic VALUES (153279736, CAST(N'2021-01-04' AS Date), 75843, 2325, 806);
INSERT into traffic VALUES (153279736, CAST(N'2021-01-05' AS Date), 75843, 1346, 832);
INSERT into traffic VALUES (153279736, CAST(N'2021-01-06' AS Date), 75843, 1443, 255);
INSERT into traffic VALUES (153279736, CAST(N'2021-01-07' AS Date), 75843, 2108, 803);
INSERT into traffic VALUES (153279736, CAST(N'2021-01-08' AS Date), 75843, 1101, 358);
INSERT into traffic VALUES (153279736, CAST(N'2021-01-09' AS Date), 75843, 2928, 626);
INSERT into traffic VALUES (153279736, CAST(N'2021-01-10' AS Date), 75843, 1904, 539);
INSERT into traffic VALUES (153279736, CAST(N'2021-01-11' AS Date), 75843, 2963, 509);
INSERT into traffic VALUES (153279736, CAST(N'2021-01-12' AS Date), 75843, 2427, 618);
INSERT into traffic VALUES (153279736, CAST(N'2021-01-13' AS Date), 75843, 1683, 368);
INSERT into traffic VALUES (153279736, CAST(N'2021-01-14' AS Date), 75843, 1415, 425);
INSERT into traffic VALUES (153279736, CAST(N'2021-01-15' AS Date), 75843, 1127, 329);
INSERT into traffic VALUES (153279736, CAST(N'2021-01-16' AS Date), 75843, 2064, 754);
INSERT into traffic VALUES (153279736, CAST(N'2021-01-17' AS Date), 75843, 1696, 428);
INSERT into traffic VALUES (153279736, CAST(N'2021-01-18' AS Date), 75843, 2503, 286);
INSERT into traffic VALUES (153279736, CAST(N'2021-01-19' AS Date), 75843, 1689, 316);
INSERT into traffic VALUES (153279736, CAST(N'2021-01-20' AS Date), 75843, 1828, 932);
INSERT into traffic VALUES (153279736, CAST(N'2021-01-21' AS Date), 75843, 1870, 268);
INSERT into traffic VALUES (153279736, CAST(N'2021-01-22' AS Date), 75843, 2665, 293);
INSERT into traffic VALUES (153279736, CAST(N'2021-01-23' AS Date), 75843, 1325, 717);
INSERT into traffic VALUES (153279736, CAST(N'2021-01-24' AS Date), 75843, 1943, 354);
INSERT into traffic VALUES (153279736, CAST(N'2021-01-25' AS Date), 75843, 2581, 210);
INSERT into traffic VALUES (153279736, CAST(N'2021-01-26' AS Date), 75843, 1061, 913);
INSERT into traffic VALUES (153279736, CAST(N'2021-01-27' AS Date), 75843, 2446, 402);
INSERT into traffic VALUES (153279736, CAST(N'2021-01-28' AS Date), 75843, 2634, 517);
INSERT into traffic VALUES (153279736, CAST(N'2021-01-29' AS Date), 75843, 1278, 770);
INSERT into traffic VALUES (153279736, CAST(N'2021-01-30' AS Date), 75843, 2479, 488);
INSERT into traffic VALUES (153279758, CAST(N'2021-01-01' AS Date), 75843, 1470, 557);
INSERT into traffic VALUES (153279758, CAST(N'2021-01-02' AS Date), 75843, 2039, 794);
INSERT into traffic VALUES (153279758, CAST(N'2021-01-03' AS Date), 75843, 1171, 549);
INSERT into traffic VALUES (153279758, CAST(N'2021-01-04' AS Date), 75843, 2737, 598);
INSERT into traffic VALUES (153279758, CAST(N'2021-01-05' AS Date), 75843, 1309, 512);
INSERT into traffic VALUES (153279758, CAST(N'2021-01-06' AS Date), 75843, 1674, 402);
INSERT into traffic VALUES (153279758, CAST(N'2021-01-07' AS Date), 75843, 2093, 907);
INSERT into traffic VALUES (153279758, CAST(N'2021-01-08' AS Date), 75843, 2999, 236);
INSERT into traffic VALUES (153279758, CAST(N'2021-01-09' AS Date), 75843, 1967, 753);
INSERT into traffic VALUES (153279758, CAST(N'2021-01-10' AS Date), 75843, 1895, 660);
INSERT into traffic VALUES (153279758, CAST(N'2021-01-11' AS Date), 75843, 2680, 691);
INSERT into traffic VALUES (153279758, CAST(N'2021-01-12' AS Date), 75843, 2661, 931);
INSERT into traffic VALUES (153279758, CAST(N'2021-01-13' AS Date), 75843, 1059, 939);
INSERT into traffic VALUES (153279758, CAST(N'2021-01-14' AS Date), 75843, 1233, 934);
INSERT into traffic VALUES (153279758, CAST(N'2021-01-15' AS Date), 75843, 1948, 850);
INSERT into traffic VALUES (153279758, CAST(N'2021-01-16' AS Date), 75843, 1034, 367);
INSERT into traffic VALUES (153279758, CAST(N'2021-01-17' AS Date), 75843, 2931, 742);
INSERT into traffic VALUES (153279758, CAST(N'2021-01-18' AS Date), 75843, 2137, 502);
INSERT into traffic VALUES (153279758, CAST(N'2021-01-19' AS Date), 75843, 2814, 361);
INSERT into traffic VALUES (153279758, CAST(N'2021-01-20' AS Date), 75843, 1387, 292);
INSERT into traffic VALUES (153279758, CAST(N'2021-01-21' AS Date), 75843, 1138, 291);
INSERT into traffic VALUES (153279758, CAST(N'2021-01-22' AS Date), 75843, 2688, 461);
INSERT into traffic VALUES (153279758, CAST(N'2021-01-23' AS Date), 75843, 1535, 863);
INSERT into traffic VALUES (153279758, CAST(N'2021-01-24' AS Date), 75843, 1908, 214);
INSERT into traffic VALUES (153279758, CAST(N'2021-01-25' AS Date), 75843, 1484, 623);
INSERT into traffic VALUES (153279758, CAST(N'2021-01-26' AS Date), 75843, 2331, 327);
INSERT into traffic VALUES (153279758, CAST(N'2021-01-27' AS Date), 75843, 2272, 770);
INSERT into traffic VALUES (153279758, CAST(N'2021-01-28' AS Date), 75843, 1054, 242);
INSERT into traffic VALUES (153279758, CAST(N'2021-01-29' AS Date), 75843, 2230, 239);
INSERT into traffic VALUES (153279758, CAST(N'2021-01-30' AS Date), 75843, 2912, 553);
INSERT into traffic VALUES (155161879, CAST(N'2021-01-01' AS Date), 76774, 1779, 718);
INSERT into traffic VALUES (155161879, CAST(N'2021-01-02' AS Date), 76774, 1356, 661);
INSERT into traffic VALUES (155161879, CAST(N'2021-01-03' AS Date), 76774, 1178, 331);
INSERT into traffic VALUES (155161879, CAST(N'2021-01-04' AS Date), 76774, 2208, 625);
INSERT into traffic VALUES (155161879, CAST(N'2021-01-05' AS Date), 76774, 1463, 414);
INSERT into traffic VALUES (155161879, CAST(N'2021-01-06' AS Date), 76774, 2858, 543);
INSERT into traffic VALUES (155161879, CAST(N'2021-01-07' AS Date), 76774, 2279, 793);
INSERT into traffic VALUES (155161879, CAST(N'2021-01-08' AS Date), 76774, 1376, 756);
INSERT into traffic VALUES (155161879, CAST(N'2021-01-09' AS Date), 76774, 2966, 389);
INSERT into traffic VALUES (155161879, CAST(N'2021-01-10' AS Date), 76774, 1407, 639);
INSERT into traffic VALUES (155161879, CAST(N'2021-01-11' AS Date), 76774, 2571, 560);
INSERT into traffic VALUES (155161879, CAST(N'2021-01-12' AS Date), 76774, 1647, 687);
INSERT into traffic VALUES (155161879, CAST(N'2021-01-13' AS Date), 76774, 2361, 538);
INSERT into traffic VALUES (155161879, CAST(N'2021-01-14' AS Date), 76774, 1480, 557);
INSERT into traffic VALUES (155161879, CAST(N'2021-01-15' AS Date), 76774, 1220, 530);
INSERT into traffic VALUES (155161879, CAST(N'2021-01-16' AS Date), 76774, 1223, 626);
INSERT into traffic VALUES (155161879, CAST(N'2021-01-17' AS Date), 76774, 1787, 368);
INSERT into traffic VALUES (155161879, CAST(N'2021-01-18' AS Date), 76774, 1785, 415);
INSERT into traffic VALUES (155161879, CAST(N'2021-01-19' AS Date), 76774, 1969, 760);
INSERT into traffic VALUES (155161879, CAST(N'2021-01-20' AS Date), 76774, 1989, 236);
INSERT into traffic VALUES (155161879, CAST(N'2021-01-21' AS Date), 76774, 2834, 210);
INSERT into traffic VALUES (155161879, CAST(N'2021-01-22' AS Date), 76774, 2541, 556);
INSERT into traffic VALUES (155161879, CAST(N'2021-01-23' AS Date), 76774, 1670, 697);
INSERT into traffic VALUES (155161879, CAST(N'2021-01-24' AS Date), 76774, 2822, 546);
INSERT into traffic VALUES (155161879, CAST(N'2021-01-25' AS Date), 76774, 2184, 666);
INSERT into traffic VALUES (155161879, CAST(N'2021-01-26' AS Date), 76774, 2110, 640);
INSERT into traffic VALUES (155161879, CAST(N'2021-01-27' AS Date), 76774, 1909, 531);
INSERT into traffic VALUES (155161879, CAST(N'2021-01-28' AS Date), 76774, 2015, 496);
INSERT into traffic VALUES (155161879, CAST(N'2021-01-29' AS Date), 76774, 2861, 665);
INSERT into traffic VALUES (155161879, CAST(N'2021-01-30' AS Date), 76774, 2268, 496);
INSERT into traffic VALUES (155161911, CAST(N'2021-01-01' AS Date), 76774, 2909, 385);
INSERT into traffic VALUES (155161911, CAST(N'2021-01-02' AS Date), 76774, 2846, 708);
INSERT into traffic VALUES (155161911, CAST(N'2021-01-03' AS Date), 76774, 2849, 525);
INSERT into traffic VALUES (155161911, CAST(N'2021-01-04' AS Date), 76774, 2869, 575);
INSERT into traffic VALUES (155161911, CAST(N'2021-01-05' AS Date), 76774, 2680, 519);
INSERT into traffic VALUES (155161911, CAST(N'2021-01-06' AS Date), 76774, 2003, 403);
INSERT into traffic VALUES (155161911, CAST(N'2021-01-07' AS Date), 76774, 2663, 668);
INSERT into traffic VALUES (155161911, CAST(N'2021-01-08' AS Date), 76774, 1229, 783);
INSERT into traffic VALUES (155161911, CAST(N'2021-01-09' AS Date), 76774, 2186, 205);
INSERT into traffic VALUES (155161911, CAST(N'2021-01-10' AS Date), 76774, 1119, 630);
INSERT into traffic VALUES (155161911, CAST(N'2021-01-11' AS Date), 76774, 2549, 298);
INSERT into traffic VALUES (155161911, CAST(N'2021-01-12' AS Date), 76774, 1458, 601);
INSERT into traffic VALUES (155161911, CAST(N'2021-01-13' AS Date), 76774, 2315, 397);
INSERT into traffic VALUES (155161911, CAST(N'2021-01-14' AS Date), 76774, 2576, 227);
INSERT into traffic VALUES (155161911, CAST(N'2021-01-15' AS Date), 76774, 1987, 344);
INSERT into traffic VALUES (155161911, CAST(N'2021-01-16' AS Date), 76774, 1600, 719);
INSERT into traffic VALUES (155161911, CAST(N'2021-01-17' AS Date), 76774, 2269, 470);
INSERT into traffic VALUES (155161911, CAST(N'2021-01-18' AS Date), 76774, 2605, 617);
INSERT into traffic VALUES (155161911, CAST(N'2021-01-19' AS Date), 76774, 1113, 590);
INSERT into traffic VALUES (155161911, CAST(N'2021-01-20' AS Date), 76774, 1555, 482);
INSERT into traffic VALUES (155161911, CAST(N'2021-01-21' AS Date), 76774, 1424, 574);
INSERT into traffic VALUES (155161911, CAST(N'2021-01-22' AS Date), 76774, 2469, 458);
INSERT into traffic VALUES (155161911, CAST(N'2021-01-23' AS Date), 76774, 1016, 287);
INSERT into traffic VALUES (155161911, CAST(N'2021-01-24' AS Date), 76774, 1390, 570);
INSERT into traffic VALUES (155161911, CAST(N'2021-01-25' AS Date), 76774, 1102, 771);
INSERT into traffic VALUES (155161911, CAST(N'2021-01-26' AS Date), 76774, 1668, 273);
INSERT into traffic VALUES (155161911, CAST(N'2021-01-27' AS Date), 76774, 2993, 492);
INSERT into traffic VALUES (155161911, CAST(N'2021-01-28' AS Date), 76774, 2327, 476);
INSERT into traffic VALUES (155161911, CAST(N'2021-01-29' AS Date), 76774, 1069, 730);
INSERT into traffic VALUES (155161911, CAST(N'2021-01-30' AS Date), 76774, 1234, 245);
INSERT into traffic VALUES (155161963, CAST(N'2021-01-01' AS Date), 76774, 1259, 457);
INSERT into traffic VALUES (155161963, CAST(N'2021-01-02' AS Date), 76774, 2200, 521);
INSERT into traffic VALUES (155161963, CAST(N'2021-01-03' AS Date), 76774, 2663, 590);
INSERT into traffic VALUES (155161963, CAST(N'2021-01-04' AS Date), 76774, 1943, 750);
INSERT into traffic VALUES (155161963, CAST(N'2021-01-05' AS Date), 76774, 2455, 678);
INSERT into traffic VALUES (155161963, CAST(N'2021-01-06' AS Date), 76774, 2596, 504);
INSERT into traffic VALUES (155161963, CAST(N'2021-01-07' AS Date), 76774, 2707, 297);
INSERT into traffic VALUES (155161963, CAST(N'2021-01-08' AS Date), 76774, 1367, 617);
INSERT into traffic VALUES (155161963, CAST(N'2021-01-09' AS Date), 76774, 2220, 216);
INSERT into traffic VALUES (155161963, CAST(N'2021-01-10' AS Date), 76774, 1782, 558);
INSERT into traffic VALUES (155161963, CAST(N'2021-01-11' AS Date), 76774, 1186, 754);
INSERT into traffic VALUES (155161963, CAST(N'2021-01-12' AS Date), 76774, 1475, 607);
INSERT into traffic VALUES (155161963, CAST(N'2021-01-13' AS Date), 76774, 2046, 643);
INSERT into traffic VALUES (155161963, CAST(N'2021-01-14' AS Date), 76774, 1691, 384);
INSERT into traffic VALUES (155161963, CAST(N'2021-01-15' AS Date), 76774, 2331, 771);
INSERT into traffic VALUES (155161963, CAST(N'2021-01-16' AS Date), 76774, 2613, 713);
INSERT into traffic VALUES (155161963, CAST(N'2021-01-17' AS Date), 76774, 1652, 240);
INSERT into traffic VALUES (155161963, CAST(N'2021-01-18' AS Date), 76774, 2899, 756);
INSERT into traffic VALUES (155161963, CAST(N'2021-01-19' AS Date), 76774, 1449, 705);
INSERT into traffic VALUES (155161963, CAST(N'2021-01-20' AS Date), 76774, 1015, 322);
INSERT into traffic VALUES (155161963, CAST(N'2021-01-21' AS Date), 76774, 2396, 680);
INSERT into traffic VALUES (155161963, CAST(N'2021-01-22' AS Date), 76774, 1114, 700);
INSERT into traffic VALUES (155161963, CAST(N'2021-01-23' AS Date), 76774, 1691, 567);
INSERT into traffic VALUES (155161963, CAST(N'2021-01-24' AS Date), 76774, 1023, 549);
INSERT into traffic VALUES (155161963, CAST(N'2021-01-25' AS Date), 76774, 1281, 509);
INSERT into traffic VALUES (155161963, CAST(N'2021-01-26' AS Date), 76774, 1801, 634);
INSERT into traffic VALUES (155161963, CAST(N'2021-01-27' AS Date), 76774, 1796, 250);
INSERT into traffic VALUES (155161963, CAST(N'2021-01-28' AS Date), 76774, 2710, 323);
INSERT into traffic VALUES (155161963, CAST(N'2021-01-29' AS Date), 76774, 1798, 557);
INSERT into traffic VALUES (155161963, CAST(N'2021-01-30' AS Date), 76774, 2903, 699);
INSERT into traffic VALUES (155161969, CAST(N'2021-01-01' AS Date), 76774, 2034, 448);
INSERT into traffic VALUES (155161969, CAST(N'2021-01-02' AS Date), 76774, 2971, 363);
INSERT into traffic VALUES (155161969, CAST(N'2021-01-03' AS Date), 76774, 2222, 213);
INSERT into traffic VALUES (155161969, CAST(N'2021-01-04' AS Date), 76774, 2609, 402);
INSERT into traffic VALUES (155161969, CAST(N'2021-01-05' AS Date), 76774, 2968, 283);
INSERT into traffic VALUES (155161969, CAST(N'2021-01-06' AS Date), 76774, 1387, 653);
INSERT into traffic VALUES (155161969, CAST(N'2021-01-07' AS Date), 76774, 1157, 271);
INSERT into traffic VALUES (155161969, CAST(N'2021-01-08' AS Date), 76774, 2882, 593);
INSERT into traffic VALUES (155161969, CAST(N'2021-01-09' AS Date), 76774, 1361, 571);
INSERT into traffic VALUES (155161969, CAST(N'2021-01-10' AS Date), 76774, 2734, 790);
INSERT into traffic VALUES (155161969, CAST(N'2021-01-11' AS Date), 76774, 2569, 264);
INSERT into traffic VALUES (155161969, CAST(N'2021-01-12' AS Date), 76774, 1622, 340);
INSERT into traffic VALUES (155161969, CAST(N'2021-01-13' AS Date), 76774, 1299, 663);
INSERT into traffic VALUES (155161969, CAST(N'2021-01-14' AS Date), 76774, 2041, 363);
INSERT into traffic VALUES (155161969, CAST(N'2021-01-15' AS Date), 76774, 2470, 475);
INSERT into traffic VALUES (155161969, CAST(N'2021-01-16' AS Date), 76774, 2580, 513);
INSERT into traffic VALUES (155161969, CAST(N'2021-01-17' AS Date), 76774, 2693, 310);
INSERT into traffic VALUES (155161969, CAST(N'2021-01-18' AS Date), 76774, 2209, 369);
INSERT into traffic VALUES (155161969, CAST(N'2021-01-19' AS Date), 76774, 2563, 370);
INSERT into traffic VALUES (155161969, CAST(N'2021-01-20' AS Date), 76774, 2027, 696);
INSERT into traffic VALUES (155161969, CAST(N'2021-01-21' AS Date), 76774, 2103, 429);
INSERT into traffic VALUES (155161969, CAST(N'2021-01-22' AS Date), 76774, 2918, 349);
INSERT into traffic VALUES (155161969, CAST(N'2021-01-23' AS Date), 76774, 2115, 683);
INSERT into traffic VALUES (155161969, CAST(N'2021-01-24' AS Date), 76774, 1981, 661);
INSERT into traffic VALUES (155161969, CAST(N'2021-01-25' AS Date), 76774, 1407, 342);
INSERT into traffic VALUES (155161969, CAST(N'2021-01-26' AS Date), 76774, 2576, 411);
INSERT into traffic VALUES (155161969, CAST(N'2021-01-27' AS Date), 76774, 1616, 573);
INSERT into traffic VALUES (155161969, CAST(N'2021-01-28' AS Date), 76774, 2847, 473);
INSERT into traffic VALUES (155161969, CAST(N'2021-01-29' AS Date), 76774, 1648, 227);
INSERT into traffic VALUES (155161969, CAST(N'2021-01-30' AS Date), 76774, 2987, 371);
INSERT into traffic VALUES (174711769, CAST(N'2021-01-01' AS Date), 86448, 1441, 265);
INSERT into traffic VALUES (174711769, CAST(N'2021-01-02' AS Date), 86448, 1552, 263);
INSERT into traffic VALUES (174711769, CAST(N'2021-01-03' AS Date), 86448, 1361, 374);
INSERT into traffic VALUES (174711769, CAST(N'2021-01-04' AS Date), 86448, 2805, 291);
INSERT into traffic VALUES (174711769, CAST(N'2021-01-05' AS Date), 86448, 1761, 296);
INSERT into traffic VALUES (174711769, CAST(N'2021-01-06' AS Date), 86448, 1488, 361);
INSERT into traffic VALUES (174711769, CAST(N'2021-01-07' AS Date), 86448, 1769, 355);
INSERT into traffic VALUES (174711769, CAST(N'2021-01-08' AS Date), 86448, 1179, 258);
INSERT into traffic VALUES (174711769, CAST(N'2021-01-09' AS Date), 86448, 2824, 390);
INSERT into traffic VALUES (174711769, CAST(N'2021-01-10' AS Date), 86448, 1490, 256);
INSERT into traffic VALUES (174711769, CAST(N'2021-01-11' AS Date), 86448, 2058, 380);
INSERT into traffic VALUES (174711769, CAST(N'2021-01-12' AS Date), 86448, 1344, 345);
INSERT into traffic VALUES (174711769, CAST(N'2021-01-13' AS Date), 86448, 1150, 316);
INSERT into traffic VALUES (174711769, CAST(N'2021-01-14' AS Date), 86448, 1322, 234);
INSERT into traffic VALUES (174711769, CAST(N'2021-01-15' AS Date), 86448, 1662, 307);
INSERT into traffic VALUES (174711769, CAST(N'2021-01-16' AS Date), 86448, 1787, 330);
INSERT into traffic VALUES (174711769, CAST(N'2021-01-17' AS Date), 86448, 1900, 289);
INSERT into traffic VALUES (174711769, CAST(N'2021-01-18' AS Date), 86448, 2463, 319);
INSERT into traffic VALUES (174711769, CAST(N'2021-01-19' AS Date), 86448, 1681, 317);
INSERT into traffic VALUES (174711769, CAST(N'2021-01-20' AS Date), 86448, 1740, 268);
INSERT into traffic VALUES (174711769, CAST(N'2021-01-21' AS Date), 86448, 1286, 357);
INSERT into traffic VALUES (174711769, CAST(N'2021-01-22' AS Date), 86448, 2813, 233);
INSERT into traffic VALUES (174711769, CAST(N'2021-01-23' AS Date), 86448, 1144, 200);
INSERT into traffic VALUES (174711769, CAST(N'2021-01-24' AS Date), 86448, 1850, 346);
INSERT into traffic VALUES (174711769, CAST(N'2021-01-25' AS Date), 86448, 2965, 261);
INSERT into traffic VALUES (174711769, CAST(N'2021-01-26' AS Date), 86448, 2108, 347);
INSERT into traffic VALUES (174711769, CAST(N'2021-01-27' AS Date), 86448, 2239, 313);
INSERT into traffic VALUES (174711769, CAST(N'2021-01-28' AS Date), 86448, 1633, 371);
INSERT into traffic VALUES (174711769, CAST(N'2021-01-29' AS Date), 86448, 2721, 223);
INSERT into traffic VALUES (174711769, CAST(N'2021-01-30' AS Date), 86448, 2866, 338);
INSERT into traffic VALUES (181052958, CAST(N'2021-01-01' AS Date), 89585, 1141, 286);
INSERT into traffic VALUES (181052958, CAST(N'2021-01-02' AS Date), 89585, 1394, 390);
INSERT into traffic VALUES (181052958, CAST(N'2021-01-03' AS Date), 89585, 2649, 352);
INSERT into traffic VALUES (181052958, CAST(N'2021-01-04' AS Date), 89585, 2409, 342);
INSERT into traffic VALUES (181052958, CAST(N'2021-01-05' AS Date), 89585, 2762, 271);
INSERT into traffic VALUES (181052958, CAST(N'2021-01-06' AS Date), 89585, 1565, 208);
INSERT into traffic VALUES (181052958, CAST(N'2021-01-07' AS Date), 89585, 2502, 214);
INSERT into traffic VALUES (181052958, CAST(N'2021-01-08' AS Date), 89585, 1000, 215);
INSERT into traffic VALUES (181052958, CAST(N'2021-01-09' AS Date), 89585, 2388, 217);
INSERT into traffic VALUES (181052958, CAST(N'2021-01-10' AS Date), 89585, 2606, 256);
INSERT into traffic VALUES (181052958, CAST(N'2021-01-11' AS Date), 89585, 2030, 263);
INSERT into traffic VALUES (181052958, CAST(N'2021-01-12' AS Date), 89585, 2826, 394);
INSERT into traffic VALUES (181052958, CAST(N'2021-01-13' AS Date), 89585, 1867, 257);
INSERT into traffic VALUES (181052958, CAST(N'2021-01-14' AS Date), 89585, 1874, 358);
INSERT into traffic VALUES (181052958, CAST(N'2021-01-15' AS Date), 89585, 1923, 243);
INSERT into traffic VALUES (181052958, CAST(N'2021-01-16' AS Date), 89585, 1984, 377);
INSERT into traffic VALUES (181052958, CAST(N'2021-01-17' AS Date), 89585, 1637, 283);
INSERT into traffic VALUES (181052958, CAST(N'2021-01-18' AS Date), 89585, 1208, 283);
INSERT into traffic VALUES (181052958, CAST(N'2021-01-19' AS Date), 89585, 1372, 219);
INSERT into traffic VALUES (181052958, CAST(N'2021-01-20' AS Date), 89585, 2401, 282);
INSERT into traffic VALUES (181052958, CAST(N'2021-01-21' AS Date), 89585, 1763, 390);
INSERT into traffic VALUES (181052958, CAST(N'2021-01-22' AS Date), 89585, 2471, 305);
INSERT into traffic VALUES (181052958, CAST(N'2021-01-23' AS Date), 89585, 1430, 346);
INSERT into traffic VALUES (181052958, CAST(N'2021-01-24' AS Date), 89585, 1059, 310);
INSERT into traffic VALUES (181052958, CAST(N'2021-01-25' AS Date), 89585, 2900, 293);
INSERT into traffic VALUES (181052958, CAST(N'2021-01-26' AS Date), 89585, 2006, 364);
INSERT into traffic VALUES (181052958, CAST(N'2021-01-27' AS Date), 89585, 2948, 274);
INSERT into traffic VALUES (181052958, CAST(N'2021-01-28' AS Date), 89585, 1771, 240);
INSERT into traffic VALUES (181052958, CAST(N'2021-01-29' AS Date), 89585, 2614, 315);
INSERT into traffic VALUES (181052958, CAST(N'2021-01-30' AS Date), 89585, 1780, 310);
INSERT into traffic VALUES (181052997, CAST(N'2021-01-01' AS Date), 89585, 1382, 390);
INSERT into traffic VALUES (181052997, CAST(N'2021-01-02' AS Date), 89585, 1486, 244);
INSERT into traffic VALUES (181052997, CAST(N'2021-01-03' AS Date), 89585, 2630, 275);
INSERT into traffic VALUES (181052997, CAST(N'2021-01-04' AS Date), 89585, 2674, 391);
INSERT into traffic VALUES (181052997, CAST(N'2021-01-05' AS Date), 89585, 2924, 370);
INSERT into traffic VALUES (181052997, CAST(N'2021-01-06' AS Date), 89585, 1070, 387);
INSERT into traffic VALUES (181052997, CAST(N'2021-01-07' AS Date), 89585, 2133, 388);
INSERT into traffic VALUES (181052997, CAST(N'2021-01-08' AS Date), 89585, 1070, 315);
INSERT into traffic VALUES (181052997, CAST(N'2021-01-09' AS Date), 89585, 1898, 300);
INSERT into traffic VALUES (181052997, CAST(N'2021-01-10' AS Date), 89585, 2984, 355);
INSERT into traffic VALUES (181052997, CAST(N'2021-01-11' AS Date), 89585, 1174, 250);
INSERT into traffic VALUES (181052997, CAST(N'2021-01-12' AS Date), 89585, 1961, 240);
INSERT into traffic VALUES (181052997, CAST(N'2021-01-13' AS Date), 89585, 1736, 323);
INSERT into traffic VALUES (181052997, CAST(N'2021-01-14' AS Date), 89585, 2488, 244);
INSERT into traffic VALUES (181052997, CAST(N'2021-01-15' AS Date), 89585, 2473, 322);
INSERT into traffic VALUES (181052997, CAST(N'2021-01-16' AS Date), 89585, 2451, 372);
INSERT into traffic VALUES (181052997, CAST(N'2021-01-17' AS Date), 89585, 2241, 399);
INSERT into traffic VALUES (181052997, CAST(N'2021-01-18' AS Date), 89585, 2925, 384);
INSERT into traffic VALUES (181052997, CAST(N'2021-01-19' AS Date), 89585, 2853, 375);
INSERT into traffic VALUES (181052997, CAST(N'2021-01-20' AS Date), 89585, 1957, 398);
INSERT into traffic VALUES (181052997, CAST(N'2021-01-21' AS Date), 89585, 2078, 239);
INSERT into traffic VALUES (181052997, CAST(N'2021-01-22' AS Date), 89585, 2505, 359);
INSERT into traffic VALUES (181052997, CAST(N'2021-01-23' AS Date), 89585, 1483, 238);
INSERT into traffic VALUES (181052997, CAST(N'2021-01-24' AS Date), 89585, 1405, 206);
INSERT into traffic VALUES (181052997, CAST(N'2021-01-25' AS Date), 89585, 2030, 271);
INSERT into traffic VALUES (181052997, CAST(N'2021-01-26' AS Date), 89585, 2212, 370);
INSERT into traffic VALUES (181052997, CAST(N'2021-01-27' AS Date), 89585, 1962, 371);
INSERT into traffic VALUES (181052997, CAST(N'2021-01-28' AS Date), 89585, 1327, 369);
INSERT into traffic VALUES (181052997, CAST(N'2021-01-29' AS Date), 89585, 2709, 238);
INSERT into traffic VALUES (181052997, CAST(N'2021-01-30' AS Date), 89585, 1057, 267);
INSERT into traffic VALUES (181052998, CAST(N'2021-01-01' AS Date), 89585, 1285, 265);
INSERT into traffic VALUES (181052998, CAST(N'2021-01-02' AS Date), 89585, 1617, 322);
INSERT into traffic VALUES (181052998, CAST(N'2021-01-03' AS Date), 89585, 1725, 338);
INSERT into traffic VALUES (181052998, CAST(N'2021-01-04' AS Date), 89585, 2630, 261);
INSERT into traffic VALUES (181052998, CAST(N'2021-01-05' AS Date), 89585, 1325, 227);
INSERT into traffic VALUES (181052998, CAST(N'2021-01-06' AS Date), 89585, 1029, 377);
INSERT into traffic VALUES (181052998, CAST(N'2021-01-07' AS Date), 89585, 2038, 310);
INSERT into traffic VALUES (181052998, CAST(N'2021-01-08' AS Date), 89585, 1378, 389);
INSERT into traffic VALUES (181052998, CAST(N'2021-01-09' AS Date), 89585, 1029, 215);
INSERT into traffic VALUES (181052998, CAST(N'2021-01-10' AS Date), 89585, 2119, 266);
INSERT into traffic VALUES (181052998, CAST(N'2021-01-11' AS Date), 89585, 1238, 265);
INSERT into traffic VALUES (181052998, CAST(N'2021-01-12' AS Date), 89585, 2184, 391);
INSERT into traffic VALUES (181052998, CAST(N'2021-01-13' AS Date), 89585, 1264, 296);
INSERT into traffic VALUES (181052998, CAST(N'2021-01-14' AS Date), 89585, 2564, 292);
INSERT into traffic VALUES (181052998, CAST(N'2021-01-15' AS Date), 89585, 2819, 369);
INSERT into traffic VALUES (181052998, CAST(N'2021-01-16' AS Date), 89585, 2303, 255);
INSERT into traffic VALUES (181052998, CAST(N'2021-01-17' AS Date), 89585, 1809, 293);
INSERT into traffic VALUES (181052998, CAST(N'2021-01-18' AS Date), 89585, 1996, 274);
INSERT into traffic VALUES (181052998, CAST(N'2021-01-19' AS Date), 89585, 2936, 330);
INSERT into traffic VALUES (181052998, CAST(N'2021-01-20' AS Date), 89585, 2709, 317);
INSERT into traffic VALUES (181052998, CAST(N'2021-01-21' AS Date), 89585, 2504, 372);
INSERT into traffic VALUES (181052998, CAST(N'2021-01-22' AS Date), 89585, 1199, 343);
INSERT into traffic VALUES (181052998, CAST(N'2021-01-23' AS Date), 89585, 2452, 338);
INSERT into traffic VALUES (181052998, CAST(N'2021-01-24' AS Date), 89585, 1073, 385);
INSERT into traffic VALUES (181052998, CAST(N'2021-01-25' AS Date), 89585, 2846, 222);
INSERT into traffic VALUES (181052998, CAST(N'2021-01-26' AS Date), 89585, 2605, 264);
INSERT into traffic VALUES (181052998, CAST(N'2021-01-27' AS Date), 89585, 1783, 388);
INSERT into traffic VALUES (181052998, CAST(N'2021-01-28' AS Date), 89585, 1137, 231);
INSERT into traffic VALUES (181052998, CAST(N'2021-01-29' AS Date), 89585, 1123, 388);
INSERT into traffic VALUES (181052998, CAST(N'2021-01-30' AS Date), 89585, 1235, 250);
INSERT into traffic VALUES (181053039, CAST(N'2021-01-01' AS Date), 89585, 2590, 235);
INSERT into traffic VALUES (181053039, CAST(N'2021-01-02' AS Date), 89585, 2032, 353);
INSERT into traffic VALUES (181053039, CAST(N'2021-01-03' AS Date), 89585, 2964, 260);
INSERT into traffic VALUES (181053039, CAST(N'2021-01-04' AS Date), 89585, 1154, 228);
INSERT into traffic VALUES (181053039, CAST(N'2021-01-05' AS Date), 89585, 2702, 242);
INSERT into traffic VALUES (181053039, CAST(N'2021-01-06' AS Date), 89585, 2004, 266);
INSERT into traffic VALUES (181053039, CAST(N'2021-01-07' AS Date), 89585, 2812, 260);
INSERT into traffic VALUES (181053039, CAST(N'2021-01-08' AS Date), 89585, 2897, 326);
INSERT into traffic VALUES (181053039, CAST(N'2021-01-09' AS Date), 89585, 2229, 355);
INSERT into traffic VALUES (181053039, CAST(N'2021-01-10' AS Date), 89585, 1565, 367);
INSERT into traffic VALUES (181053039, CAST(N'2021-01-11' AS Date), 89585, 2228, 246);
INSERT into traffic VALUES (181053039, CAST(N'2021-01-12' AS Date), 89585, 2092, 289);
INSERT into traffic VALUES (181053039, CAST(N'2021-01-13' AS Date), 89585, 2855, 399);
INSERT into traffic VALUES (181053039, CAST(N'2021-01-14' AS Date), 89585, 1564, 358);
INSERT into traffic VALUES (181053039, CAST(N'2021-01-15' AS Date), 89585, 2104, 318);
INSERT into traffic VALUES (181053039, CAST(N'2021-01-16' AS Date), 89585, 1921, 241);
INSERT into traffic VALUES (181053039, CAST(N'2021-01-17' AS Date), 89585, 2164, 206);
INSERT into traffic VALUES (181053039, CAST(N'2021-01-18' AS Date), 89585, 1096, 208);
INSERT into traffic VALUES (181053039, CAST(N'2021-01-19' AS Date), 89585, 1185, 335);
INSERT into traffic VALUES (181053039, CAST(N'2021-01-20' AS Date), 89585, 1192, 368);
INSERT into traffic VALUES (181053039, CAST(N'2021-01-21' AS Date), 89585, 2468, 248);
INSERT into traffic VALUES (181053039, CAST(N'2021-01-22' AS Date), 89585, 1005, 307);
INSERT into traffic VALUES (181053039, CAST(N'2021-01-23' AS Date), 89585, 2510, 322);
INSERT into traffic VALUES (181053039, CAST(N'2021-01-24' AS Date), 89585, 2135, 284);
INSERT into traffic VALUES (181053039, CAST(N'2021-01-25' AS Date), 89585, 1545, 254);
INSERT into traffic VALUES (181053039, CAST(N'2021-01-26' AS Date), 89585, 1593, 239);
INSERT into traffic VALUES (181053039, CAST(N'2021-01-27' AS Date), 89585, 1069, 327);
INSERT into traffic VALUES (181053039, CAST(N'2021-01-28' AS Date), 89585, 2229, 298);
INSERT into traffic VALUES (181053039, CAST(N'2021-01-29' AS Date), 89585, 1705, 278);
INSERT into traffic VALUES (181053039, CAST(N'2021-01-30' AS Date), 89585, 2536, 212);
INSERT into traffic VALUES (181053061, CAST(N'2021-01-01' AS Date), 89585, 2574, 352);
INSERT into traffic VALUES (181053061, CAST(N'2021-01-02' AS Date), 89585, 2566, 205);
INSERT into traffic VALUES (181053061, CAST(N'2021-01-03' AS Date), 89585, 1869, 399);
INSERT into traffic VALUES (181053061, CAST(N'2021-01-04' AS Date), 89585, 1675, 223);
INSERT into traffic VALUES (181053061, CAST(N'2021-01-05' AS Date), 89585, 1916, 300);
INSERT into traffic VALUES (181053061, CAST(N'2021-01-06' AS Date), 89585, 2771, 324);
INSERT into traffic VALUES (181053061, CAST(N'2021-01-07' AS Date), 89585, 1417, 222);
INSERT into traffic VALUES (181053061, CAST(N'2021-01-08' AS Date), 89585, 1104, 327);
INSERT into traffic VALUES (181053061, CAST(N'2021-01-09' AS Date), 89585, 1791, 381);
INSERT into traffic VALUES (181053061, CAST(N'2021-01-10' AS Date), 89585, 1873, 383);
INSERT into traffic VALUES (181053061, CAST(N'2021-01-11' AS Date), 89585, 2608, 274);
INSERT into traffic VALUES (181053061, CAST(N'2021-01-12' AS Date), 89585, 2688, 208);
INSERT into traffic VALUES (181053061, CAST(N'2021-01-13' AS Date), 89585, 2469, 236);
INSERT into traffic VALUES (181053061, CAST(N'2021-01-14' AS Date), 89585, 2599, 393);
INSERT into traffic VALUES (181053061, CAST(N'2021-01-15' AS Date), 89585, 2395, 294);
INSERT into traffic VALUES (181053061, CAST(N'2021-01-16' AS Date), 89585, 1591, 232);
INSERT into traffic VALUES (181053061, CAST(N'2021-01-17' AS Date), 89585, 2086, 399);
INSERT into traffic VALUES (181053061, CAST(N'2021-01-18' AS Date), 89585, 1539, 345);
INSERT into traffic VALUES (181053061, CAST(N'2021-01-19' AS Date), 89585, 1532, 270);
INSERT into traffic VALUES (181053061, CAST(N'2021-01-20' AS Date), 89585, 1407, 368);
INSERT into traffic VALUES (181053061, CAST(N'2021-01-21' AS Date), 89585, 2556, 244);
INSERT into traffic VALUES (181053061, CAST(N'2021-01-22' AS Date), 89585, 1487, 328);
INSERT into traffic VALUES (181053061, CAST(N'2021-01-23' AS Date), 89585, 2635, 344);
INSERT into traffic VALUES (181053061, CAST(N'2021-01-24' AS Date), 89585, 1548, 303);
INSERT into traffic VALUES (181053061, CAST(N'2021-01-25' AS Date), 89585, 2788, 280);
INSERT into traffic VALUES (181053061, CAST(N'2021-01-26' AS Date), 89585, 1916, 290);
INSERT into traffic VALUES (181053061, CAST(N'2021-01-27' AS Date), 89585, 2484, 320);
INSERT into traffic VALUES (181053061, CAST(N'2021-01-28' AS Date), 89585, 1832, 210);
INSERT into traffic VALUES (181053061, CAST(N'2021-01-29' AS Date), 89585, 1625, 372);
INSERT into traffic VALUES (181053061, CAST(N'2021-01-30' AS Date), 89585, 2251, 304);
INSERT into traffic VALUES (181053078, CAST(N'2021-01-01' AS Date), 89585, 2276, 253);
INSERT into traffic VALUES (181053078, CAST(N'2021-01-02' AS Date), 89585, 1743, 328);
INSERT into traffic VALUES (181053078, CAST(N'2021-01-03' AS Date), 89585, 2386, 270);
INSERT into traffic VALUES (181053078, CAST(N'2021-01-04' AS Date), 89585, 2329, 234);
INSERT into traffic VALUES (181053078, CAST(N'2021-01-05' AS Date), 89585, 1277, 337);
INSERT into traffic VALUES (181053078, CAST(N'2021-01-06' AS Date), 89585, 1515, 319);
INSERT into traffic VALUES (181053078, CAST(N'2021-01-07' AS Date), 89585, 1326, 205);
INSERT into traffic VALUES (181053078, CAST(N'2021-01-08' AS Date), 89585, 2919, 234);
INSERT into traffic VALUES (181053078, CAST(N'2021-01-09' AS Date), 89585, 1532, 373);
INSERT into traffic VALUES (181053078, CAST(N'2021-01-10' AS Date), 89585, 1548, 390);
INSERT into traffic VALUES (181053078, CAST(N'2021-01-11' AS Date), 89585, 2290, 328);
INSERT into traffic VALUES (181053078, CAST(N'2021-01-12' AS Date), 89585, 2049, 366);
INSERT into traffic VALUES (181053078, CAST(N'2021-01-13' AS Date), 89585, 2334, 240);
INSERT into traffic VALUES (181053078, CAST(N'2021-01-14' AS Date), 89585, 2743, 283);
INSERT into traffic VALUES (181053078, CAST(N'2021-01-15' AS Date), 89585, 2906, 212);
INSERT into traffic VALUES (181053078, CAST(N'2021-01-16' AS Date), 89585, 1070, 345);
INSERT into traffic VALUES (181053078, CAST(N'2021-01-17' AS Date), 89585, 2535, 208);
INSERT into traffic VALUES (181053078, CAST(N'2021-01-18' AS Date), 89585, 2002, 270);
INSERT into traffic VALUES (181053078, CAST(N'2021-01-19' AS Date), 89585, 1602, 314);
INSERT into traffic VALUES (181053078, CAST(N'2021-01-20' AS Date), 89585, 2969, 226);
INSERT into traffic VALUES (181053078, CAST(N'2021-01-21' AS Date), 89585, 1976, 307);
INSERT into traffic VALUES (181053078, CAST(N'2021-01-22' AS Date), 89585, 2655, 312);
INSERT into traffic VALUES (181053078, CAST(N'2021-01-23' AS Date), 89585, 1118, 208);
INSERT into traffic VALUES (181053078, CAST(N'2021-01-24' AS Date), 89585, 2040, 224);
INSERT into traffic VALUES (181053078, CAST(N'2021-01-25' AS Date), 89585, 2491, 236);
INSERT into traffic VALUES (181053078, CAST(N'2021-01-26' AS Date), 89585, 2643, 398);
INSERT into traffic VALUES (181053078, CAST(N'2021-01-27' AS Date), 89585, 1055, 333);
INSERT into traffic VALUES (181053078, CAST(N'2021-01-28' AS Date), 89585, 2259, 361);
INSERT into traffic VALUES (181053078, CAST(N'2021-01-29' AS Date), 89585, 2244, 303);
INSERT into traffic VALUES (181053078, CAST(N'2021-01-30' AS Date), 89585, 1901, 293);
INSERT into traffic VALUES (191035036, CAST(N'2021-01-01' AS Date), 94525, 1057, 273);
INSERT into traffic VALUES (191035036, CAST(N'2021-01-02' AS Date), 94525, 1018, 713);
INSERT into traffic VALUES (191035036, CAST(N'2021-01-03' AS Date), 94525, 1833, 263);
INSERT into traffic VALUES (191035036, CAST(N'2021-01-04' AS Date), 94525, 2174, 751);
INSERT into traffic VALUES (191035036, CAST(N'2021-01-05' AS Date), 94525, 1602, 368);
INSERT into traffic VALUES (191035036, CAST(N'2021-01-06' AS Date), 94525, 2323, 214);
INSERT into traffic VALUES (191035036, CAST(N'2021-01-07' AS Date), 94525, 1608, 647);
INSERT into traffic VALUES (191035036, CAST(N'2021-01-08' AS Date), 94525, 2031, 757);
INSERT into traffic VALUES (191035036, CAST(N'2021-01-09' AS Date), 94525, 2423, 367);
INSERT into traffic VALUES (191035036, CAST(N'2021-01-10' AS Date), 94525, 2001, 644);
INSERT into traffic VALUES (191035036, CAST(N'2021-01-11' AS Date), 94525, 2563, 390);
INSERT into traffic VALUES (191035036, CAST(N'2021-01-12' AS Date), 94525, 2697, 780);
INSERT into traffic VALUES (191035036, CAST(N'2021-01-13' AS Date), 94525, 1101, 818);
INSERT into traffic VALUES (191035036, CAST(N'2021-01-14' AS Date), 94525, 2209, 314);
INSERT into traffic VALUES (191035036, CAST(N'2021-01-15' AS Date), 94525, 1486, 542);
INSERT into traffic VALUES (191035036, CAST(N'2021-01-16' AS Date), 94525, 1737, 520);
INSERT into traffic VALUES (191035036, CAST(N'2021-01-17' AS Date), 94525, 2584, 224);
INSERT into traffic VALUES (191035036, CAST(N'2021-01-18' AS Date), 94525, 1952, 604);
INSERT into traffic VALUES (191035036, CAST(N'2021-01-19' AS Date), 94525, 1764, 858);
INSERT into traffic VALUES (191035036, CAST(N'2021-01-20' AS Date), 94525, 2443, 728);
INSERT into traffic VALUES (191035036, CAST(N'2021-01-21' AS Date), 94525, 1740, 456);
INSERT into traffic VALUES (191035036, CAST(N'2021-01-22' AS Date), 94525, 2837, 479);
INSERT into traffic VALUES (191035036, CAST(N'2021-01-23' AS Date), 94525, 2278, 243);
INSERT into traffic VALUES (191035036, CAST(N'2021-01-24' AS Date), 94525, 1616, 478);
INSERT into traffic VALUES (191035036, CAST(N'2021-01-25' AS Date), 94525, 1631, 269);
INSERT into traffic VALUES (191035036, CAST(N'2021-01-26' AS Date), 94525, 1835, 505);
INSERT into traffic VALUES (191035036, CAST(N'2021-01-27' AS Date), 94525, 2194, 590);
INSERT into traffic VALUES (191035036, CAST(N'2021-01-28' AS Date), 94525, 2599, 573);
INSERT into traffic VALUES (191035036, CAST(N'2021-01-29' AS Date), 94525, 2426, 614);
INSERT into traffic VALUES (191035036, CAST(N'2021-01-30' AS Date), 94525, 2715, 346);
INSERT into traffic VALUES (191035113, CAST(N'2021-01-01' AS Date), 94525, 2165, 470);
INSERT into traffic VALUES (191035113, CAST(N'2021-01-02' AS Date), 94525, 1426, 939);
INSERT into traffic VALUES (191035113, CAST(N'2021-01-03' AS Date), 94525, 1116, 425);
INSERT into traffic VALUES (191035113, CAST(N'2021-01-04' AS Date), 94525, 2382, 677);
INSERT into traffic VALUES (191035113, CAST(N'2021-01-05' AS Date), 94525, 1487, 366);
INSERT into traffic VALUES (191035113, CAST(N'2021-01-06' AS Date), 94525, 2969, 514);
INSERT into traffic VALUES (191035113, CAST(N'2021-01-07' AS Date), 94525, 1382, 520);
INSERT into traffic VALUES (191035113, CAST(N'2021-01-08' AS Date), 94525, 2345, 681);
INSERT into traffic VALUES (191035113, CAST(N'2021-01-09' AS Date), 94525, 1443, 379);
INSERT into traffic VALUES (191035113, CAST(N'2021-01-10' AS Date), 94525, 1384, 396);
INSERT into traffic VALUES (191035113, CAST(N'2021-01-11' AS Date), 94525, 2829, 556);
INSERT into traffic VALUES (191035113, CAST(N'2021-01-12' AS Date), 94525, 2232, 761);
INSERT into traffic VALUES (191035113, CAST(N'2021-01-13' AS Date), 94525, 1564, 897);
INSERT into traffic VALUES (191035113, CAST(N'2021-01-14' AS Date), 94525, 1198, 784);
INSERT into traffic VALUES (191035113, CAST(N'2021-01-15' AS Date), 94525, 2318, 203);
INSERT into traffic VALUES (191035113, CAST(N'2021-01-16' AS Date), 94525, 1889, 610);
INSERT into traffic VALUES (191035113, CAST(N'2021-01-17' AS Date), 94525, 1390, 562);
INSERT into traffic VALUES (191035113, CAST(N'2021-01-18' AS Date), 94525, 1990, 508);
INSERT into traffic VALUES (191035113, CAST(N'2021-01-19' AS Date), 94525, 2964, 878);
INSERT into traffic VALUES (191035113, CAST(N'2021-01-20' AS Date), 94525, 2548, 586);
INSERT into traffic VALUES (191035113, CAST(N'2021-01-21' AS Date), 94525, 1292, 598);
INSERT into traffic VALUES (191035113, CAST(N'2021-01-22' AS Date), 94525, 1580, 443);
INSERT into traffic VALUES (191035113, CAST(N'2021-01-23' AS Date), 94525, 2083, 344);
INSERT into traffic VALUES (191035113, CAST(N'2021-01-24' AS Date), 94525, 2028, 644);
INSERT into traffic VALUES (191035113, CAST(N'2021-01-25' AS Date), 94525, 2333, 492);
INSERT into traffic VALUES (191035113, CAST(N'2021-01-26' AS Date), 94525, 2937, 509);
INSERT into traffic VALUES (191035113, CAST(N'2021-01-27' AS Date), 94525, 1237, 915);
INSERT into traffic VALUES (191035113, CAST(N'2021-01-28' AS Date), 94525, 1559, 583);
INSERT into traffic VALUES (191035113, CAST(N'2021-01-29' AS Date), 94525, 2209, 577);
INSERT into traffic VALUES (191035113, CAST(N'2021-01-30' AS Date), 94525, 2671, 364);
INSERT into traffic VALUES (191928987, CAST(N'2021-01-01' AS Date), 94967, 2623, 935);
INSERT into traffic VALUES (191928987, CAST(N'2021-01-02' AS Date), 94967, 2097, 214);
INSERT into traffic VALUES (191928987, CAST(N'2021-01-03' AS Date), 94967, 1786, 403);
INSERT into traffic VALUES (191928987, CAST(N'2021-01-04' AS Date), 94967, 2463, 930);
INSERT into traffic VALUES (191928987, CAST(N'2021-01-05' AS Date), 94967, 2310, 359);
INSERT into traffic VALUES (191928987, CAST(N'2021-01-06' AS Date), 94967, 1749, 712);
INSERT into traffic VALUES (191928987, CAST(N'2021-01-07' AS Date), 94967, 1029, 653);
INSERT into traffic VALUES (191928987, CAST(N'2021-01-08' AS Date), 94967, 2672, 549);
INSERT into traffic VALUES (191928987, CAST(N'2021-01-09' AS Date), 94967, 1521, 373);
INSERT into traffic VALUES (191928987, CAST(N'2021-01-10' AS Date), 94967, 1859, 489);
INSERT into traffic VALUES (191928987, CAST(N'2021-01-11' AS Date), 94967, 1743, 296);
INSERT into traffic VALUES (191928987, CAST(N'2021-01-12' AS Date), 94967, 2661, 686);
INSERT into traffic VALUES (191928987, CAST(N'2021-01-13' AS Date), 94967, 2764, 800);
INSERT into traffic VALUES (191928987, CAST(N'2021-01-14' AS Date), 94967, 2344, 863);
INSERT into traffic VALUES (191928987, CAST(N'2021-01-15' AS Date), 94967, 2631, 897);
INSERT into traffic VALUES (191928987, CAST(N'2021-01-16' AS Date), 94967, 2300, 783);
INSERT into traffic VALUES (191928987, CAST(N'2021-01-17' AS Date), 94967, 2064, 265);
INSERT into traffic VALUES (191928987, CAST(N'2021-01-18' AS Date), 94967, 2018, 270);
INSERT into traffic VALUES (191928987, CAST(N'2021-01-19' AS Date), 94967, 2626, 687);
INSERT into traffic VALUES (191928987, CAST(N'2021-01-20' AS Date), 94967, 1575, 579);
INSERT into traffic VALUES (191928987, CAST(N'2021-01-21' AS Date), 94967, 1185, 883);
INSERT into traffic VALUES (191928987, CAST(N'2021-01-22' AS Date), 94967, 2612, 762);
INSERT into traffic VALUES (191928987, CAST(N'2021-01-23' AS Date), 94967, 2376, 752);
INSERT into traffic VALUES (191928987, CAST(N'2021-01-24' AS Date), 94967, 2197, 754);
INSERT into traffic VALUES (191928987, CAST(N'2021-01-25' AS Date), 94967, 1131, 535);
INSERT into traffic VALUES (191928987, CAST(N'2021-01-26' AS Date), 94967, 1513, 388);
INSERT into traffic VALUES (191928987, CAST(N'2021-01-27' AS Date), 94967, 1836, 799);
INSERT into traffic VALUES (191928987, CAST(N'2021-01-28' AS Date), 94967, 2515, 461);
INSERT into traffic VALUES (191928987, CAST(N'2021-01-29' AS Date), 94967, 2910, 769);
INSERT into traffic VALUES (191928987, CAST(N'2021-01-30' AS Date), 94967, 1604, 773);
INSERT into traffic VALUES (194648842, CAST(N'2021-01-01' AS Date), 96313, 1930, 567);
INSERT into traffic VALUES (194648842, CAST(N'2021-01-02' AS Date), 96313, 2938, 214);
INSERT into traffic VALUES (194648842, CAST(N'2021-01-03' AS Date), 96313, 1682, 223);
INSERT into traffic VALUES (194648842, CAST(N'2021-01-04' AS Date), 96313, 1950, 250);
INSERT into traffic VALUES (194648842, CAST(N'2021-01-05' AS Date), 96313, 2125, 206);
INSERT into traffic VALUES (194648842, CAST(N'2021-01-06' AS Date), 96313, 2190, 342);
INSERT into traffic VALUES (194648842, CAST(N'2021-01-07' AS Date), 96313, 1271, 596);
INSERT into traffic VALUES (194648842, CAST(N'2021-01-08' AS Date), 96313, 1768, 468);
INSERT into traffic VALUES (194648842, CAST(N'2021-01-09' AS Date), 96313, 1216, 276);
INSERT into traffic VALUES (194648842, CAST(N'2021-01-10' AS Date), 96313, 2475, 362);
INSERT into traffic VALUES (194648842, CAST(N'2021-01-11' AS Date), 96313, 2751, 418);
INSERT into traffic VALUES (194648842, CAST(N'2021-01-12' AS Date), 96313, 1435, 572);
INSERT into traffic VALUES (194648842, CAST(N'2021-01-13' AS Date), 96313, 2958, 272);
INSERT into traffic VALUES (194648842, CAST(N'2021-01-14' AS Date), 96313, 2315, 346);
INSERT into traffic VALUES (194648842, CAST(N'2021-01-15' AS Date), 96313, 1034, 213);
INSERT into traffic VALUES (194648842, CAST(N'2021-01-16' AS Date), 96313, 1021, 528);
INSERT into traffic VALUES (194648842, CAST(N'2021-01-17' AS Date), 96313, 1864, 393);
INSERT into traffic VALUES (194648842, CAST(N'2021-01-18' AS Date), 96313, 1337, 586);
INSERT into traffic VALUES (194648842, CAST(N'2021-01-19' AS Date), 96313, 2539, 445);
INSERT into traffic VALUES (194648842, CAST(N'2021-01-20' AS Date), 96313, 1937, 373);
INSERT into traffic VALUES (194648842, CAST(N'2021-01-21' AS Date), 96313, 1537, 418);
INSERT into traffic VALUES (194648842, CAST(N'2021-01-22' AS Date), 96313, 2116, 237);
INSERT into traffic VALUES (194648842, CAST(N'2021-01-23' AS Date), 96313, 1559, 465);
INSERT into traffic VALUES (194648842, CAST(N'2021-01-24' AS Date), 96313, 1491, 409);
INSERT into traffic VALUES (194648842, CAST(N'2021-01-25' AS Date), 96313, 2306, 549);
INSERT into traffic VALUES (194648842, CAST(N'2021-01-26' AS Date), 96313, 1345, 515);
INSERT into traffic VALUES (194648842, CAST(N'2021-01-27' AS Date), 96313, 1557, 329);
INSERT into traffic VALUES (194648842, CAST(N'2021-01-28' AS Date), 96313, 2957, 548);
INSERT into traffic VALUES (194648842, CAST(N'2021-01-29' AS Date), 96313, 1998, 230);
INSERT into traffic VALUES (194648842, CAST(N'2021-01-30' AS Date), 96313, 2146, 231);
INSERT into traffic VALUES (194648850, CAST(N'2021-01-01' AS Date), 96313, 1208, 533);
INSERT into traffic VALUES (194648850, CAST(N'2021-01-02' AS Date), 96313, 1759, 314);
INSERT into traffic VALUES (194648850, CAST(N'2021-01-03' AS Date), 96313, 2788, 384);
INSERT into traffic VALUES (194648850, CAST(N'2021-01-04' AS Date), 96313, 1657, 501);
INSERT into traffic VALUES (194648850, CAST(N'2021-01-05' AS Date), 96313, 1716, 365);
INSERT into traffic VALUES (194648850, CAST(N'2021-01-06' AS Date), 96313, 1742, 358);
INSERT into traffic VALUES (194648850, CAST(N'2021-01-07' AS Date), 96313, 2577, 369);
INSERT into traffic VALUES (194648850, CAST(N'2021-01-08' AS Date), 96313, 1846, 251);
INSERT into traffic VALUES (194648850, CAST(N'2021-01-09' AS Date), 96313, 2028, 400);
INSERT into traffic VALUES (194648850, CAST(N'2021-01-10' AS Date), 96313, 1243, 572);
INSERT into traffic VALUES (194648850, CAST(N'2021-01-11' AS Date), 96313, 2232, 299);
INSERT into traffic VALUES (194648850, CAST(N'2021-01-12' AS Date), 96313, 1384, 441);
INSERT into traffic VALUES (194648850, CAST(N'2021-01-13' AS Date), 96313, 2052, 547);
INSERT into traffic VALUES (194648850, CAST(N'2021-01-14' AS Date), 96313, 2375, 521);
INSERT into traffic VALUES (194648850, CAST(N'2021-01-15' AS Date), 96313, 1838, 493);
INSERT into traffic VALUES (194648850, CAST(N'2021-01-16' AS Date), 96313, 1670, 486);
INSERT into traffic VALUES (194648850, CAST(N'2021-01-17' AS Date), 96313, 2709, 385);
INSERT into traffic VALUES (194648850, CAST(N'2021-01-18' AS Date), 96313, 2975, 265);
INSERT into traffic VALUES (194648850, CAST(N'2021-01-19' AS Date), 96313, 1277, 453);
INSERT into traffic VALUES (194648850, CAST(N'2021-01-20' AS Date), 96313, 2593, 470);
INSERT into traffic VALUES (194648850, CAST(N'2021-01-21' AS Date), 96313, 1815, 579);
INSERT into traffic VALUES (194648850, CAST(N'2021-01-22' AS Date), 96313, 1388, 252);
INSERT into traffic VALUES (194648850, CAST(N'2021-01-23' AS Date), 96313, 1457, 272);
INSERT into traffic VALUES (194648850, CAST(N'2021-01-24' AS Date), 96313, 1642, 200);
INSERT into traffic VALUES (194648850, CAST(N'2021-01-25' AS Date), 96313, 1563, 516);
INSERT into traffic VALUES (194648850, CAST(N'2021-01-26' AS Date), 96313, 2523, 433);
INSERT into traffic VALUES (194648850, CAST(N'2021-01-27' AS Date), 96313, 1070, 389);
INSERT into traffic VALUES (194648850, CAST(N'2021-01-28' AS Date), 96313, 2610, 464);
INSERT into traffic VALUES (194648850, CAST(N'2021-01-29' AS Date), 96313, 2211, 562);
INSERT into traffic VALUES (194648850, CAST(N'2021-01-30' AS Date), 96313, 2925, 541);
INSERT into traffic VALUES (194648911, CAST(N'2021-01-01' AS Date), 96313, 1301, 481);
INSERT into traffic VALUES (194648911, CAST(N'2021-01-02' AS Date), 96313, 2459, 344);
INSERT into traffic VALUES (194648911, CAST(N'2021-01-03' AS Date), 96313, 1790, 581);
INSERT into traffic VALUES (194648911, CAST(N'2021-01-04' AS Date), 96313, 1623, 528);
INSERT into traffic VALUES (194648911, CAST(N'2021-01-05' AS Date), 96313, 2291, 251);
INSERT into traffic VALUES (194648911, CAST(N'2021-01-06' AS Date), 96313, 1310, 228);
INSERT into traffic VALUES (194648911, CAST(N'2021-01-07' AS Date), 96313, 2908, 516);
INSERT into traffic VALUES (194648911, CAST(N'2021-01-08' AS Date), 96313, 1715, 342);
INSERT into traffic VALUES (194648911, CAST(N'2021-01-09' AS Date), 96313, 1053, 439);
INSERT into traffic VALUES (194648911, CAST(N'2021-01-10' AS Date), 96313, 2818, 399);
INSERT into traffic VALUES (194648911, CAST(N'2021-01-11' AS Date), 96313, 1663, 441);
INSERT into traffic VALUES (194648911, CAST(N'2021-01-12' AS Date), 96313, 1123, 379);
INSERT into traffic VALUES (194648911, CAST(N'2021-01-13' AS Date), 96313, 1468, 293);
INSERT into traffic VALUES (194648911, CAST(N'2021-01-14' AS Date), 96313, 1378, 429);
INSERT into traffic VALUES (194648911, CAST(N'2021-01-15' AS Date), 96313, 2080, 396);
INSERT into traffic VALUES (194648911, CAST(N'2021-01-16' AS Date), 96313, 1445, 375);
INSERT into traffic VALUES (194648911, CAST(N'2021-01-17' AS Date), 96313, 2415, 459);
INSERT into traffic VALUES (194648911, CAST(N'2021-01-18' AS Date), 96313, 1777, 461);
INSERT into traffic VALUES (194648911, CAST(N'2021-01-19' AS Date), 96313, 1509, 560);
INSERT into traffic VALUES (194648911, CAST(N'2021-01-20' AS Date), 96313, 2711, 400);
INSERT into traffic VALUES (194648911, CAST(N'2021-01-21' AS Date), 96313, 1969, 335);
INSERT into traffic VALUES (194648911, CAST(N'2021-01-22' AS Date), 96313, 2901, 203);
INSERT into traffic VALUES (194648911, CAST(N'2021-01-23' AS Date), 96313, 1266, 448);
INSERT into traffic VALUES (194648911, CAST(N'2021-01-24' AS Date), 96313, 1229, 279);
INSERT into traffic VALUES (194648911, CAST(N'2021-01-25' AS Date), 96313, 1817, 544);
INSERT into traffic VALUES (194648911, CAST(N'2021-01-26' AS Date), 96313, 2240, 248);
INSERT into traffic VALUES (194648911, CAST(N'2021-01-27' AS Date), 96313, 2554, 444);
INSERT into traffic VALUES (194648911, CAST(N'2021-01-28' AS Date), 96313, 1698, 410);
INSERT into traffic VALUES (194648911, CAST(N'2021-01-29' AS Date), 96313, 2202, 504);
INSERT into traffic VALUES (194648911, CAST(N'2021-01-30' AS Date), 96313, 2655, 383);
INSERT into traffic VALUES (194648935, CAST(N'2021-01-01' AS Date), 96313, 2507, 276);
INSERT into traffic VALUES (194648935, CAST(N'2021-01-02' AS Date), 96313, 1332, 377);
INSERT into traffic VALUES (194648935, CAST(N'2021-01-03' AS Date), 96313, 1736, 388);
INSERT into traffic VALUES (194648935, CAST(N'2021-01-04' AS Date), 96313, 1310, 584);
INSERT into traffic VALUES (194648935, CAST(N'2021-01-05' AS Date), 96313, 1907, 432);
INSERT into traffic VALUES (194648935, CAST(N'2021-01-06' AS Date), 96313, 1398, 264);
INSERT into traffic VALUES (194648935, CAST(N'2021-01-07' AS Date), 96313, 1956, 254);
INSERT into traffic VALUES (194648935, CAST(N'2021-01-08' AS Date), 96313, 2257, 360);
INSERT into traffic VALUES (194648935, CAST(N'2021-01-09' AS Date), 96313, 1492, 421);
INSERT into traffic VALUES (194648935, CAST(N'2021-01-10' AS Date), 96313, 1402, 211);
INSERT into traffic VALUES (194648935, CAST(N'2021-01-11' AS Date), 96313, 1526, 507);
INSERT into traffic VALUES (194648935, CAST(N'2021-01-12' AS Date), 96313, 1269, 259);
INSERT into traffic VALUES (194648935, CAST(N'2021-01-13' AS Date), 96313, 1216, 286);
INSERT into traffic VALUES (194648935, CAST(N'2021-01-14' AS Date), 96313, 2207, 494);
INSERT into traffic VALUES (194648935, CAST(N'2021-01-15' AS Date), 96313, 2409, 214);
INSERT into traffic VALUES (194648935, CAST(N'2021-01-16' AS Date), 96313, 2321, 333);
INSERT into traffic VALUES (194648935, CAST(N'2021-01-17' AS Date), 96313, 2494, 590);
INSERT into traffic VALUES (194648935, CAST(N'2021-01-18' AS Date), 96313, 2100, 581);
INSERT into traffic VALUES (194648935, CAST(N'2021-01-19' AS Date), 96313, 2933, 262);
INSERT into traffic VALUES (194648935, CAST(N'2021-01-20' AS Date), 96313, 1040, 332);
INSERT into traffic VALUES (194648935, CAST(N'2021-01-21' AS Date), 96313, 2604, 282);
INSERT into traffic VALUES (194648935, CAST(N'2021-01-22' AS Date), 96313, 1534, 222);
INSERT into traffic VALUES (194648935, CAST(N'2021-01-23' AS Date), 96313, 1865, 374);
INSERT into traffic VALUES (194648935, CAST(N'2021-01-24' AS Date), 96313, 1721, 514);
INSERT into traffic VALUES (194648935, CAST(N'2021-01-25' AS Date), 96313, 2248, 522);
INSERT into traffic VALUES (194648935, CAST(N'2021-01-26' AS Date), 96313, 2283, 562);
INSERT into traffic VALUES (194648935, CAST(N'2021-01-27' AS Date), 96313, 2908, 271);
INSERT into traffic VALUES (194648935, CAST(N'2021-01-28' AS Date), 96313, 2173, 317);
INSERT into traffic VALUES (194648935, CAST(N'2021-01-29' AS Date), 96313, 2870, 414);
INSERT into traffic VALUES (194648935, CAST(N'2021-01-30' AS Date), 96313, 2486, 257);
INSERT into traffic VALUES (202762743, CAST(N'2021-01-01' AS Date), 100327, 1679, 227);
INSERT into traffic VALUES (202762743, CAST(N'2021-01-02' AS Date), 100327, 2802, 262);
INSERT into traffic VALUES (202762743, CAST(N'2021-01-03' AS Date), 100327, 1913, 342);
INSERT into traffic VALUES (202762743, CAST(N'2021-01-04' AS Date), 100327, 2934, 221);
INSERT into traffic VALUES (202762743, CAST(N'2021-01-05' AS Date), 100327, 1210, 241);
INSERT into traffic VALUES (202762743, CAST(N'2021-01-06' AS Date), 100327, 1161, 327);
INSERT into traffic VALUES (202762743, CAST(N'2021-01-07' AS Date), 100327, 2863, 227);
INSERT into traffic VALUES (202762743, CAST(N'2021-01-08' AS Date), 100327, 2667, 350);
INSERT into traffic VALUES (202762743, CAST(N'2021-01-09' AS Date), 100327, 1973, 321);
INSERT into traffic VALUES (202762743, CAST(N'2021-01-10' AS Date), 100327, 2133, 329);
INSERT into traffic VALUES (202762743, CAST(N'2021-01-11' AS Date), 100327, 2632, 361);
INSERT into traffic VALUES (202762743, CAST(N'2021-01-12' AS Date), 100327, 1079, 297);
INSERT into traffic VALUES (202762743, CAST(N'2021-01-13' AS Date), 100327, 1253, 355);
INSERT into traffic VALUES (202762743, CAST(N'2021-01-14' AS Date), 100327, 2093, 230);
INSERT into traffic VALUES (202762743, CAST(N'2021-01-15' AS Date), 100327, 1677, 204);
INSERT into traffic VALUES (202762743, CAST(N'2021-01-16' AS Date), 100327, 2307, 397);
INSERT into traffic VALUES (202762743, CAST(N'2021-01-17' AS Date), 100327, 1802, 228);
INSERT into traffic VALUES (202762743, CAST(N'2021-01-18' AS Date), 100327, 1442, 282);
INSERT into traffic VALUES (202762743, CAST(N'2021-01-19' AS Date), 100327, 1507, 354);
INSERT into traffic VALUES (202762743, CAST(N'2021-01-20' AS Date), 100327, 2554, 219);
INSERT into traffic VALUES (202762743, CAST(N'2021-01-21' AS Date), 100327, 2376, 305);
INSERT into traffic VALUES (202762743, CAST(N'2021-01-22' AS Date), 100327, 1754, 337);
INSERT into traffic VALUES (202762743, CAST(N'2021-01-23' AS Date), 100327, 1394, 231);
INSERT into traffic VALUES (202762743, CAST(N'2021-01-24' AS Date), 100327, 1002, 386);
INSERT into traffic VALUES (202762743, CAST(N'2021-01-25' AS Date), 100327, 1406, 303);
INSERT into traffic VALUES (202762743, CAST(N'2021-01-26' AS Date), 100327, 1356, 325);
INSERT into traffic VALUES (202762743, CAST(N'2021-01-27' AS Date), 100327, 2663, 224);
INSERT into traffic VALUES (202762743, CAST(N'2021-01-28' AS Date), 100327, 2025, 253);
INSERT into traffic VALUES (202762743, CAST(N'2021-01-29' AS Date), 100327, 2331, 231);
INSERT into traffic VALUES (202762743, CAST(N'2021-01-30' AS Date), 100327, 1447, 344);
INSERT into traffic VALUES (202762755, CAST(N'2021-01-01' AS Date), 100327, 1296, 349);
INSERT into traffic VALUES (202762755, CAST(N'2021-01-02' AS Date), 100327, 1305, 259);
INSERT into traffic VALUES (202762755, CAST(N'2021-01-03' AS Date), 100327, 1341, 284);
INSERT into traffic VALUES (202762755, CAST(N'2021-01-04' AS Date), 100327, 2969, 270);
INSERT into traffic VALUES (202762755, CAST(N'2021-01-05' AS Date), 100327, 2979, 322);
INSERT into traffic VALUES (202762755, CAST(N'2021-01-06' AS Date), 100327, 1808, 359);
INSERT into traffic VALUES (202762755, CAST(N'2021-01-07' AS Date), 100327, 1255, 257);
INSERT into traffic VALUES (202762755, CAST(N'2021-01-08' AS Date), 100327, 2577, 259);
INSERT into traffic VALUES (202762755, CAST(N'2021-01-09' AS Date), 100327, 1533, 377);
INSERT into traffic VALUES (202762755, CAST(N'2021-01-10' AS Date), 100327, 2385, 363);
INSERT into traffic VALUES (202762755, CAST(N'2021-01-11' AS Date), 100327, 1455, 376);
INSERT into traffic VALUES (202762755, CAST(N'2021-01-12' AS Date), 100327, 2813, 259);
INSERT into traffic VALUES (202762755, CAST(N'2021-01-13' AS Date), 100327, 2467, 200);
INSERT into traffic VALUES (202762755, CAST(N'2021-01-14' AS Date), 100327, 2691, 244);
INSERT into traffic VALUES (202762755, CAST(N'2021-01-15' AS Date), 100327, 2575, 358);
INSERT into traffic VALUES (202762755, CAST(N'2021-01-16' AS Date), 100327, 2121, 322);
INSERT into traffic VALUES (202762755, CAST(N'2021-01-17' AS Date), 100327, 2112, 202);
INSERT into traffic VALUES (202762755, CAST(N'2021-01-18' AS Date), 100327, 1846, 275);
INSERT into traffic VALUES (202762755, CAST(N'2021-01-19' AS Date), 100327, 1276, 349);
INSERT into traffic VALUES (202762755, CAST(N'2021-01-20' AS Date), 100327, 2794, 342);
INSERT into traffic VALUES (202762755, CAST(N'2021-01-21' AS Date), 100327, 1400, 345);
INSERT into traffic VALUES (202762755, CAST(N'2021-01-22' AS Date), 100327, 1510, 207);
INSERT into traffic VALUES (202762755, CAST(N'2021-01-23' AS Date), 100327, 1796, 346);
INSERT into traffic VALUES (202762755, CAST(N'2021-01-24' AS Date), 100327, 1652, 374);
INSERT into traffic VALUES (202762755, CAST(N'2021-01-25' AS Date), 100327, 2135, 329);
INSERT into traffic VALUES (202762755, CAST(N'2021-01-26' AS Date), 100327, 1871, 391);
INSERT into traffic VALUES (202762755, CAST(N'2021-01-27' AS Date), 100327, 2671, 282);
INSERT into traffic VALUES (202762755, CAST(N'2021-01-28' AS Date), 100327, 2980, 271);
INSERT into traffic VALUES (202762755, CAST(N'2021-01-29' AS Date), 100327, 1120, 215);
INSERT into traffic VALUES (202762755, CAST(N'2021-01-30' AS Date), 100327, 2601, 209);
INSERT into traffic VALUES (208565270, CAST(N'2021-01-01' AS Date), 103199, 1822, 527);
INSERT into traffic VALUES (208565270, CAST(N'2021-01-02' AS Date), 103199, 1682, 256);
INSERT into traffic VALUES (208565270, CAST(N'2021-01-03' AS Date), 103199, 2102, 539);
INSERT into traffic VALUES (208565270, CAST(N'2021-01-04' AS Date), 103199, 2968, 540);
INSERT into traffic VALUES (208565270, CAST(N'2021-01-05' AS Date), 103199, 1049, 214);
INSERT into traffic VALUES (208565270, CAST(N'2021-01-06' AS Date), 103199, 1150, 482);
INSERT into traffic VALUES (208565270, CAST(N'2021-01-07' AS Date), 103199, 2598, 205);
INSERT into traffic VALUES (208565270, CAST(N'2021-01-08' AS Date), 103199, 1375, 297);
INSERT into traffic VALUES (208565270, CAST(N'2021-01-09' AS Date), 103199, 1627, 572);
INSERT into traffic VALUES (208565270, CAST(N'2021-01-10' AS Date), 103199, 1758, 544);
INSERT into traffic VALUES (208565270, CAST(N'2021-01-11' AS Date), 103199, 1621, 421);
INSERT into traffic VALUES (208565270, CAST(N'2021-01-12' AS Date), 103199, 2211, 214);
INSERT into traffic VALUES (208565270, CAST(N'2021-01-13' AS Date), 103199, 1089, 251);
INSERT into traffic VALUES (208565270, CAST(N'2021-01-14' AS Date), 103199, 2310, 520);
INSERT into traffic VALUES (208565270, CAST(N'2021-01-15' AS Date), 103199, 1901, 352);
INSERT into traffic VALUES (208565270, CAST(N'2021-01-16' AS Date), 103199, 1865, 320);
INSERT into traffic VALUES (208565270, CAST(N'2021-01-17' AS Date), 103199, 2047, 241);
INSERT into traffic VALUES (208565270, CAST(N'2021-01-18' AS Date), 103199, 2237, 532);
INSERT into traffic VALUES (208565270, CAST(N'2021-01-19' AS Date), 103199, 2132, 307);
INSERT into traffic VALUES (208565270, CAST(N'2021-01-20' AS Date), 103199, 2079, 579);
INSERT into traffic VALUES (208565270, CAST(N'2021-01-21' AS Date), 103199, 2252, 406);
INSERT into traffic VALUES (208565270, CAST(N'2021-01-22' AS Date), 103199, 1659, 569);
INSERT into traffic VALUES (208565270, CAST(N'2021-01-23' AS Date), 103199, 2741, 572);
INSERT into traffic VALUES (208565270, CAST(N'2021-01-24' AS Date), 103199, 2121, 356);
INSERT into traffic VALUES (208565270, CAST(N'2021-01-25' AS Date), 103199, 1144, 539);
INSERT into traffic VALUES (208565270, CAST(N'2021-01-26' AS Date), 103199, 2791, 527);
INSERT into traffic VALUES (208565270, CAST(N'2021-01-27' AS Date), 103199, 1589, 350);
INSERT into traffic VALUES (208565270, CAST(N'2021-01-28' AS Date), 103199, 1786, 599);
INSERT into traffic VALUES (208565270, CAST(N'2021-01-29' AS Date), 103199, 1325, 402);
INSERT into traffic VALUES (208565270, CAST(N'2021-01-30' AS Date), 103199, 2311, 454);
INSERT into traffic VALUES (228615244, CAST(N'2021-01-01' AS Date), 113119, 2991, 230);
INSERT into traffic VALUES (228615244, CAST(N'2021-01-02' AS Date), 113119, 1787, 321);
INSERT into traffic VALUES (228615244, CAST(N'2021-01-03' AS Date), 113119, 2551, 363);
INSERT into traffic VALUES (228615244, CAST(N'2021-01-04' AS Date), 113119, 2945, 510);
INSERT into traffic VALUES (228615244, CAST(N'2021-01-05' AS Date), 113119, 2598, 291);
INSERT into traffic VALUES (228615244, CAST(N'2021-01-06' AS Date), 113119, 1741, 599);
INSERT into traffic VALUES (228615244, CAST(N'2021-01-07' AS Date), 113119, 1215, 222);
INSERT into traffic VALUES (228615244, CAST(N'2021-01-08' AS Date), 113119, 2568, 544);
INSERT into traffic VALUES (228615244, CAST(N'2021-01-09' AS Date), 113119, 2618, 535);
INSERT into traffic VALUES (228615244, CAST(N'2021-01-10' AS Date), 113119, 2315, 274);
INSERT into traffic VALUES (228615244, CAST(N'2021-01-11' AS Date), 113119, 2219, 437);
INSERT into traffic VALUES (228615244, CAST(N'2021-01-12' AS Date), 113119, 1716, 432);
INSERT into traffic VALUES (228615244, CAST(N'2021-01-13' AS Date), 113119, 1146, 216);
INSERT into traffic VALUES (228615244, CAST(N'2021-01-14' AS Date), 113119, 1527, 517);
INSERT into traffic VALUES (228615244, CAST(N'2021-01-15' AS Date), 113119, 1402, 311);
INSERT into traffic VALUES (228615244, CAST(N'2021-01-16' AS Date), 113119, 2430, 382);
INSERT into traffic VALUES (228615244, CAST(N'2021-01-17' AS Date), 113119, 1210, 566);
INSERT into traffic VALUES (228615244, CAST(N'2021-01-18' AS Date), 113119, 1945, 467);
INSERT into traffic VALUES (228615244, CAST(N'2021-01-19' AS Date), 113119, 2441, 549);
INSERT into traffic VALUES (228615244, CAST(N'2021-01-20' AS Date), 113119, 2507, 459);
INSERT into traffic VALUES (228615244, CAST(N'2021-01-21' AS Date), 113119, 2788, 211);
INSERT into traffic VALUES (228615244, CAST(N'2021-01-22' AS Date), 113119, 2999, 215);
INSERT into traffic VALUES (228615244, CAST(N'2021-01-23' AS Date), 113119, 2104, 580);
INSERT into traffic VALUES (228615244, CAST(N'2021-01-24' AS Date), 113119, 1354, 356);
INSERT into traffic VALUES (228615244, CAST(N'2021-01-25' AS Date), 113119, 2036, 390);
INSERT into traffic VALUES (228615244, CAST(N'2021-01-26' AS Date), 113119, 1748, 549);
INSERT into traffic VALUES (228615244, CAST(N'2021-01-27' AS Date), 113119, 1516, 324);
INSERT into traffic VALUES (228615244, CAST(N'2021-01-28' AS Date), 113119, 1375, 281);
INSERT into traffic VALUES (228615244, CAST(N'2021-01-29' AS Date), 113119, 1786, 328);
INSERT into traffic VALUES (228615244, CAST(N'2021-01-30' AS Date), 113119, 1381, 450);
INSERT into traffic VALUES (228615282, CAST(N'2021-01-01' AS Date), 113119, 2693, 532);
INSERT into traffic VALUES (228615282, CAST(N'2021-01-02' AS Date), 113119, 2844, 415);
INSERT into traffic VALUES (228615282, CAST(N'2021-01-03' AS Date), 113119, 1997, 233);
INSERT into traffic VALUES (228615282, CAST(N'2021-01-04' AS Date), 113119, 1858, 494);
INSERT into traffic VALUES (228615282, CAST(N'2021-01-05' AS Date), 113119, 1803, 203);
INSERT into traffic VALUES (228615282, CAST(N'2021-01-06' AS Date), 113119, 2810, 425);
INSERT into traffic VALUES (228615282, CAST(N'2021-01-07' AS Date), 113119, 1287, 298);
INSERT into traffic VALUES (228615282, CAST(N'2021-01-08' AS Date), 113119, 2756, 491);
INSERT into traffic VALUES (228615282, CAST(N'2021-01-09' AS Date), 113119, 2587, 238);
INSERT into traffic VALUES (228615282, CAST(N'2021-01-10' AS Date), 113119, 2190, 302);
INSERT into traffic VALUES (228615282, CAST(N'2021-01-11' AS Date), 113119, 1349, 280);
INSERT into traffic VALUES (228615282, CAST(N'2021-01-12' AS Date), 113119, 2286, 503);
INSERT into traffic VALUES (228615282, CAST(N'2021-01-13' AS Date), 113119, 2787, 534);
INSERT into traffic VALUES (228615282, CAST(N'2021-01-14' AS Date), 113119, 2602, 583);
INSERT into traffic VALUES (228615282, CAST(N'2021-01-15' AS Date), 113119, 2338, 575);
INSERT into traffic VALUES (228615282, CAST(N'2021-01-16' AS Date), 113119, 1938, 396);
INSERT into traffic VALUES (228615282, CAST(N'2021-01-17' AS Date), 113119, 1628, 292);
INSERT into traffic VALUES (228615282, CAST(N'2021-01-18' AS Date), 113119, 2226, 559);
INSERT into traffic VALUES (228615282, CAST(N'2021-01-19' AS Date), 113119, 2617, 324);
INSERT into traffic VALUES (228615282, CAST(N'2021-01-20' AS Date), 113119, 1531, 363);
INSERT into traffic VALUES (228615282, CAST(N'2021-01-21' AS Date), 113119, 1297, 268);
INSERT into traffic VALUES (228615282, CAST(N'2021-01-22' AS Date), 113119, 2890, 438);
INSERT into traffic VALUES (228615282, CAST(N'2021-01-23' AS Date), 113119, 1604, 552);
INSERT into traffic VALUES (228615282, CAST(N'2021-01-24' AS Date), 113119, 1857, 414);
INSERT into traffic VALUES (228615282, CAST(N'2021-01-25' AS Date), 113119, 2207, 521);
INSERT into traffic VALUES (228615282, CAST(N'2021-01-26' AS Date), 113119, 2238, 252);
INSERT into traffic VALUES (228615282, CAST(N'2021-01-27' AS Date), 113119, 2358, 523);
INSERT into traffic VALUES (228615282, CAST(N'2021-01-28' AS Date), 113119, 1753, 553);
INSERT into traffic VALUES (228615282, CAST(N'2021-01-29' AS Date), 113119, 1447, 587);
INSERT into traffic VALUES (228615282, CAST(N'2021-01-30' AS Date), 113119, 1396, 588);
INSERT into traffic VALUES (241321978, CAST(N'2021-01-01' AS Date), 119407, 1445, 277);
INSERT into traffic VALUES (241321978, CAST(N'2021-01-02' AS Date), 119407, 2175, 355);
INSERT into traffic VALUES (241321978, CAST(N'2021-01-03' AS Date), 119407, 2845, 266);
INSERT into traffic VALUES (241321978, CAST(N'2021-01-04' AS Date), 119407, 1870, 259);
INSERT into traffic VALUES (241321978, CAST(N'2021-01-05' AS Date), 119407, 1024, 264);
INSERT into traffic VALUES (241321978, CAST(N'2021-01-06' AS Date), 119407, 1220, 263);
INSERT into traffic VALUES (241321978, CAST(N'2021-01-07' AS Date), 119407, 2378, 376);
INSERT into traffic VALUES (241321978, CAST(N'2021-01-08' AS Date), 119407, 1163, 218);
INSERT into traffic VALUES (241321978, CAST(N'2021-01-09' AS Date), 119407, 2676, 321);
INSERT into traffic VALUES (241321978, CAST(N'2021-01-10' AS Date), 119407, 1905, 237);
INSERT into traffic VALUES (241321978, CAST(N'2021-01-11' AS Date), 119407, 2247, 397);
INSERT into traffic VALUES (241321978, CAST(N'2021-01-12' AS Date), 119407, 2494, 282);
INSERT into traffic VALUES (241321978, CAST(N'2021-01-13' AS Date), 119407, 2969, 307);
INSERT into traffic VALUES (241321978, CAST(N'2021-01-14' AS Date), 119407, 1594, 267);
INSERT into traffic VALUES (241321978, CAST(N'2021-01-15' AS Date), 119407, 1331, 247);
INSERT into traffic VALUES (241321978, CAST(N'2021-01-16' AS Date), 119407, 2650, 325);
INSERT into traffic VALUES (241321978, CAST(N'2021-01-17' AS Date), 119407, 1108, 364);
INSERT into traffic VALUES (241321978, CAST(N'2021-01-18' AS Date), 119407, 1721, 327);
INSERT into traffic VALUES (241321978, CAST(N'2021-01-19' AS Date), 119407, 2007, 243);
INSERT into traffic VALUES (241321978, CAST(N'2021-01-20' AS Date), 119407, 1240, 278);
INSERT into traffic VALUES (241321978, CAST(N'2021-01-21' AS Date), 119407, 1594, 271);
INSERT into traffic VALUES (241321978, CAST(N'2021-01-22' AS Date), 119407, 2633, 357);
INSERT into traffic VALUES (241321978, CAST(N'2021-01-23' AS Date), 119407, 2652, 315);
INSERT into traffic VALUES (241321978, CAST(N'2021-01-24' AS Date), 119407, 1800, 245);
INSERT into traffic VALUES (241321978, CAST(N'2021-01-25' AS Date), 119407, 2141, 393);
INSERT into traffic VALUES (241321978, CAST(N'2021-01-26' AS Date), 119407, 2104, 205);
INSERT into traffic VALUES (241321978, CAST(N'2021-01-27' AS Date), 119407, 2402, 330);
INSERT into traffic VALUES (241321978, CAST(N'2021-01-28' AS Date), 119407, 2791, 301);
INSERT into traffic VALUES (241321978, CAST(N'2021-01-29' AS Date), 119407, 1381, 301);
INSERT into traffic VALUES (241321978, CAST(N'2021-01-30' AS Date), 119407, 2048, 376);
INSERT into traffic VALUES (250083968, CAST(N'2021-01-01' AS Date), 123742, 1717, 732);
INSERT into traffic VALUES (250083968, CAST(N'2021-01-02' AS Date), 123742, 1556, 223);
INSERT into traffic VALUES (250083968, CAST(N'2021-01-03' AS Date), 123742, 2876, 619);
INSERT into traffic VALUES (250083968, CAST(N'2021-01-04' AS Date), 123742, 1203, 586);
INSERT into traffic VALUES (250083968, CAST(N'2021-01-05' AS Date), 123742, 2430, 451);
INSERT into traffic VALUES (250083968, CAST(N'2021-01-06' AS Date), 123742, 2600, 611);
INSERT into traffic VALUES (250083968, CAST(N'2021-01-07' AS Date), 123742, 2622, 482);
INSERT into traffic VALUES (250083968, CAST(N'2021-01-08' AS Date), 123742, 2143, 294);
INSERT into traffic VALUES (250083968, CAST(N'2021-01-09' AS Date), 123742, 1883, 490);
INSERT into traffic VALUES (250083968, CAST(N'2021-01-10' AS Date), 123742, 2999, 624);
INSERT into traffic VALUES (250083968, CAST(N'2021-01-11' AS Date), 123742, 2364, 535);
INSERT into traffic VALUES (250083968, CAST(N'2021-01-12' AS Date), 123742, 2021, 758);
INSERT into traffic VALUES (250083968, CAST(N'2021-01-13' AS Date), 123742, 1901, 673);
INSERT into traffic VALUES (250083968, CAST(N'2021-01-14' AS Date), 123742, 1712, 628);
INSERT into traffic VALUES (250083968, CAST(N'2021-01-15' AS Date), 123742, 1802, 659);
INSERT into traffic VALUES (250083968, CAST(N'2021-01-16' AS Date), 123742, 1536, 613);
INSERT into traffic VALUES (250083968, CAST(N'2021-01-17' AS Date), 123742, 1644, 587);
INSERT into traffic VALUES (250083968, CAST(N'2021-01-18' AS Date), 123742, 2429, 604);
INSERT into traffic VALUES (250083968, CAST(N'2021-01-19' AS Date), 123742, 2114, 558);
INSERT into traffic VALUES (250083968, CAST(N'2021-01-20' AS Date), 123742, 2399, 361);
INSERT into traffic VALUES (250083968, CAST(N'2021-01-21' AS Date), 123742, 1662, 522);
INSERT into traffic VALUES (250083968, CAST(N'2021-01-22' AS Date), 123742, 1049, 533);
INSERT into traffic VALUES (250083968, CAST(N'2021-01-23' AS Date), 123742, 2421, 534);
INSERT into traffic VALUES (250083968, CAST(N'2021-01-24' AS Date), 123742, 2943, 707);
INSERT into traffic VALUES (250083968, CAST(N'2021-01-25' AS Date), 123742, 2045, 244);
INSERT into traffic VALUES (250083968, CAST(N'2021-01-26' AS Date), 123742, 1339, 303);
INSERT into traffic VALUES (250083968, CAST(N'2021-01-27' AS Date), 123742, 1730, 661);
INSERT into traffic VALUES (250083968, CAST(N'2021-01-28' AS Date), 123742, 1458, 399);
INSERT into traffic VALUES (250083968, CAST(N'2021-01-29' AS Date), 123742, 2413, 345);
INSERT into traffic VALUES (250083968, CAST(N'2021-01-30' AS Date), 123742, 1641, 383);
INSERT into traffic VALUES (291471789, CAST(N'2021-01-01' AS Date), 144221, 1394, 378);
INSERT into traffic VALUES (291471789, CAST(N'2021-01-02' AS Date), 144221, 2542, 543);
INSERT into traffic VALUES (291471789, CAST(N'2021-01-03' AS Date), 144221, 2810, 328);
INSERT into traffic VALUES (291471789, CAST(N'2021-01-04' AS Date), 144221, 2279, 595);
INSERT into traffic VALUES (291471789, CAST(N'2021-01-05' AS Date), 144221, 1387, 337);
INSERT into traffic VALUES (291471789, CAST(N'2021-01-06' AS Date), 144221, 2899, 265);
INSERT into traffic VALUES (291471789, CAST(N'2021-01-07' AS Date), 144221, 2032, 291);
INSERT into traffic VALUES (291471789, CAST(N'2021-01-08' AS Date), 144221, 1844, 412);
INSERT into traffic VALUES (291471789, CAST(N'2021-01-09' AS Date), 144221, 1856, 445);
INSERT into traffic VALUES (291471789, CAST(N'2021-01-10' AS Date), 144221, 2177, 383);
INSERT into traffic VALUES (291471789, CAST(N'2021-01-11' AS Date), 144221, 2831, 362);
INSERT into traffic VALUES (291471789, CAST(N'2021-01-12' AS Date), 144221, 2736, 345);
INSERT into traffic VALUES (291471789, CAST(N'2021-01-13' AS Date), 144221, 2385, 210);
INSERT into traffic VALUES (291471789, CAST(N'2021-01-14' AS Date), 144221, 1364, 577);
INSERT into traffic VALUES (291471789, CAST(N'2021-01-15' AS Date), 144221, 1742, 238);
INSERT into traffic VALUES (291471789, CAST(N'2021-01-16' AS Date), 144221, 2000, 317);
INSERT into traffic VALUES (291471789, CAST(N'2021-01-17' AS Date), 144221, 2025, 482);
INSERT into traffic VALUES (291471789, CAST(N'2021-01-18' AS Date), 144221, 1563, 270);
INSERT into traffic VALUES (291471789, CAST(N'2021-01-19' AS Date), 144221, 2424, 275);
INSERT into traffic VALUES (291471789, CAST(N'2021-01-20' AS Date), 144221, 1011, 462);
INSERT into traffic VALUES (291471789, CAST(N'2021-01-21' AS Date), 144221, 1680, 489);
INSERT into traffic VALUES (291471789, CAST(N'2021-01-22' AS Date), 144221, 1121, 318);
INSERT into traffic VALUES (291471789, CAST(N'2021-01-23' AS Date), 144221, 2894, 596);
INSERT into traffic VALUES (291471789, CAST(N'2021-01-24' AS Date), 144221, 1376, 400);
INSERT into traffic VALUES (291471789, CAST(N'2021-01-25' AS Date), 144221, 2481, 278);
INSERT into traffic VALUES (291471789, CAST(N'2021-01-26' AS Date), 144221, 1851, 219);
INSERT into traffic VALUES (291471789, CAST(N'2021-01-27' AS Date), 144221, 1794, 256);
INSERT into traffic VALUES (291471789, CAST(N'2021-01-28' AS Date), 144221, 2139, 326);
INSERT into traffic VALUES (291471789, CAST(N'2021-01-29' AS Date), 144221, 1803, 312);
INSERT into traffic VALUES (291471789, CAST(N'2021-01-30' AS Date), 144221, 2971, 593);
INSERT into traffic VALUES (314574337, CAST(N'2021-01-01' AS Date), 155652, 1341, 446);
INSERT into traffic VALUES (314574337, CAST(N'2021-01-02' AS Date), 155652, 1962, 604);
INSERT into traffic VALUES (314574337, CAST(N'2021-01-03' AS Date), 155652, 1100, 676);
INSERT into traffic VALUES (314574337, CAST(N'2021-01-04' AS Date), 155652, 1469, 873);
INSERT into traffic VALUES (314574337, CAST(N'2021-01-05' AS Date), 155652, 2879, 795);
INSERT into traffic VALUES (314574337, CAST(N'2021-01-06' AS Date), 155652, 1074, 550);
INSERT into traffic VALUES (314574337, CAST(N'2021-01-07' AS Date), 155652, 2063, 314);
INSERT into traffic VALUES (314574337, CAST(N'2021-01-08' AS Date), 155652, 1642, 867);
INSERT into traffic VALUES (314574337, CAST(N'2021-01-09' AS Date), 155652, 1508, 431);
INSERT into traffic VALUES (314574337, CAST(N'2021-01-10' AS Date), 155652, 1195, 544);
INSERT into traffic VALUES (314574337, CAST(N'2021-01-11' AS Date), 155652, 2228, 782);
INSERT into traffic VALUES (314574337, CAST(N'2021-01-12' AS Date), 155652, 2650, 689);
INSERT into traffic VALUES (314574337, CAST(N'2021-01-13' AS Date), 155652, 1480, 712);
INSERT into traffic VALUES (314574337, CAST(N'2021-01-14' AS Date), 155652, 1913, 492);
INSERT into traffic VALUES (314574337, CAST(N'2021-01-15' AS Date), 155652, 1123, 226);
INSERT into traffic VALUES (314574337, CAST(N'2021-01-16' AS Date), 155652, 2133, 763);
INSERT into traffic VALUES (314574337, CAST(N'2021-01-17' AS Date), 155652, 1586, 805);
INSERT into traffic VALUES (314574337, CAST(N'2021-01-18' AS Date), 155652, 1790, 726);
INSERT into traffic VALUES (314574337, CAST(N'2021-01-19' AS Date), 155652, 2446, 519);
INSERT into traffic VALUES (314574337, CAST(N'2021-01-20' AS Date), 155652, 1762, 314);
INSERT into traffic VALUES (314574337, CAST(N'2021-01-21' AS Date), 155652, 2898, 403);
INSERT into traffic VALUES (314574337, CAST(N'2021-01-22' AS Date), 155652, 1252, 726);
INSERT into traffic VALUES (314574337, CAST(N'2021-01-23' AS Date), 155652, 2043, 278);
INSERT into traffic VALUES (314574337, CAST(N'2021-01-24' AS Date), 155652, 2426, 797);
INSERT into traffic VALUES (314574337, CAST(N'2021-01-25' AS Date), 155652, 2543, 744);
INSERT into traffic VALUES (314574337, CAST(N'2021-01-26' AS Date), 155652, 1400, 430);
INSERT into traffic VALUES (314574337, CAST(N'2021-01-27' AS Date), 155652, 2663, 204);
INSERT into traffic VALUES (314574337, CAST(N'2021-01-28' AS Date), 155652, 2798, 800);
INSERT into traffic VALUES (314574337, CAST(N'2021-01-29' AS Date), 155652, 2816, 787);
INSERT into traffic VALUES (314574337, CAST(N'2021-01-30' AS Date), 155652, 1586, 685);
INSERT into traffic VALUES (319732203, CAST(N'2021-01-01' AS Date), 158204, 1685, 331);
INSERT into traffic VALUES (319732203, CAST(N'2021-01-02' AS Date), 158204, 2607, 236);
INSERT into traffic VALUES (319732203, CAST(N'2021-01-03' AS Date), 158204, 1143, 450);
INSERT into traffic VALUES (319732203, CAST(N'2021-01-04' AS Date), 158204, 2566, 277);
INSERT into traffic VALUES (319732203, CAST(N'2021-01-05' AS Date), 158204, 1214, 280);
INSERT into traffic VALUES (319732203, CAST(N'2021-01-06' AS Date), 158204, 2132, 243);
INSERT into traffic VALUES (319732203, CAST(N'2021-01-07' AS Date), 158204, 1577, 327);
INSERT into traffic VALUES (319732203, CAST(N'2021-01-08' AS Date), 158204, 1926, 263);
INSERT into traffic VALUES (319732203, CAST(N'2021-01-09' AS Date), 158204, 1767, 332);
INSERT into traffic VALUES (319732203, CAST(N'2021-01-10' AS Date), 158204, 1591, 227);
INSERT into traffic VALUES (319732203, CAST(N'2021-01-11' AS Date), 158204, 2843, 327);
INSERT into traffic VALUES (319732203, CAST(N'2021-01-12' AS Date), 158204, 2985, 329);
INSERT into traffic VALUES (319732203, CAST(N'2021-01-13' AS Date), 158204, 1747, 516);
INSERT into traffic VALUES (319732203, CAST(N'2021-01-14' AS Date), 158204, 1162, 552);
INSERT into traffic VALUES (319732203, CAST(N'2021-01-15' AS Date), 158204, 2336, 235);
INSERT into traffic VALUES (319732203, CAST(N'2021-01-16' AS Date), 158204, 2449, 399);
INSERT into traffic VALUES (319732203, CAST(N'2021-01-17' AS Date), 158204, 2329, 470);
INSERT into traffic VALUES (319732203, CAST(N'2021-01-18' AS Date), 158204, 2917, 366);
INSERT into traffic VALUES (319732203, CAST(N'2021-01-19' AS Date), 158204, 1852, 507);
INSERT into traffic VALUES (319732203, CAST(N'2021-01-20' AS Date), 158204, 2073, 332);
INSERT into traffic VALUES (319732203, CAST(N'2021-01-21' AS Date), 158204, 1065, 352);
INSERT into traffic VALUES (319732203, CAST(N'2021-01-22' AS Date), 158204, 1105, 273);
INSERT into traffic VALUES (319732203, CAST(N'2021-01-23' AS Date), 158204, 1051, 414);
INSERT into traffic VALUES (319732203, CAST(N'2021-01-24' AS Date), 158204, 1017, 431);
INSERT into traffic VALUES (319732203, CAST(N'2021-01-25' AS Date), 158204, 2411, 267);
INSERT into traffic VALUES (319732203, CAST(N'2021-01-26' AS Date), 158204, 2627, 560);
INSERT into traffic VALUES (319732203, CAST(N'2021-01-27' AS Date), 158204, 2155, 201);
INSERT into traffic VALUES (319732203, CAST(N'2021-01-28' AS Date), 158204, 2026, 529);
INSERT into traffic VALUES (319732203, CAST(N'2021-01-29' AS Date), 158204, 1240, 401);
INSERT into traffic VALUES (319732203, CAST(N'2021-01-30' AS Date), 158204, 2485, 280);
INSERT into traffic VALUES (337649693, CAST(N'2021-01-01' AS Date), 167070, 1154, 335);
INSERT into traffic VALUES (337649693, CAST(N'2021-01-02' AS Date), 167070, 2191, 349);
INSERT into traffic VALUES (337649693, CAST(N'2021-01-03' AS Date), 167070, 2107, 783);
INSERT into traffic VALUES (337649693, CAST(N'2021-01-04' AS Date), 167070, 2673, 499);
INSERT into traffic VALUES (337649693, CAST(N'2021-01-05' AS Date), 167070, 2971, 400);
INSERT into traffic VALUES (337649693, CAST(N'2021-01-06' AS Date), 167070, 1889, 747);
INSERT into traffic VALUES (337649693, CAST(N'2021-01-07' AS Date), 167070, 2401, 308);
INSERT into traffic VALUES (337649693, CAST(N'2021-01-08' AS Date), 167070, 2043, 233);
INSERT into traffic VALUES (337649693, CAST(N'2021-01-09' AS Date), 167070, 2864, 205);
INSERT into traffic VALUES (337649693, CAST(N'2021-01-10' AS Date), 167070, 1367, 435);
INSERT into traffic VALUES (337649693, CAST(N'2021-01-11' AS Date), 167070, 1162, 469);
INSERT into traffic VALUES (337649693, CAST(N'2021-01-12' AS Date), 167070, 2146, 653);
INSERT into traffic VALUES (337649693, CAST(N'2021-01-13' AS Date), 167070, 2201, 290);
INSERT into traffic VALUES (337649693, CAST(N'2021-01-14' AS Date), 167070, 2326, 299);
INSERT into traffic VALUES (337649693, CAST(N'2021-01-15' AS Date), 167070, 1449, 483);
INSERT into traffic VALUES (337649693, CAST(N'2021-01-16' AS Date), 167070, 2155, 301);
INSERT into traffic VALUES (337649693, CAST(N'2021-01-17' AS Date), 167070, 2931, 509);
INSERT into traffic VALUES (337649693, CAST(N'2021-01-18' AS Date), 167070, 1880, 500);
INSERT into traffic VALUES (337649693, CAST(N'2021-01-19' AS Date), 167070, 1840, 304);
INSERT into traffic VALUES (337649693, CAST(N'2021-01-20' AS Date), 167070, 1276, 585);
INSERT into traffic VALUES (337649693, CAST(N'2021-01-21' AS Date), 167070, 1772, 744);
INSERT into traffic VALUES (337649693, CAST(N'2021-01-22' AS Date), 167070, 2783, 386);
INSERT into traffic VALUES (337649693, CAST(N'2021-01-23' AS Date), 167070, 1377, 529);
INSERT into traffic VALUES (337649693, CAST(N'2021-01-24' AS Date), 167070, 1625, 717);
INSERT into traffic VALUES (337649693, CAST(N'2021-01-25' AS Date), 167070, 1326, 663);
INSERT into traffic VALUES (337649693, CAST(N'2021-01-26' AS Date), 167070, 1899, 431);
INSERT into traffic VALUES (337649693, CAST(N'2021-01-27' AS Date), 167070, 1817, 383);
INSERT into traffic VALUES (337649693, CAST(N'2021-01-28' AS Date), 167070, 1848, 686);
INSERT into traffic VALUES (337649693, CAST(N'2021-01-29' AS Date), 167070, 1002, 406);
INSERT into traffic VALUES (337649693, CAST(N'2021-01-30' AS Date), 167070, 2594, 266);
INSERT into traffic VALUES (356353822, CAST(N'2021-01-01' AS Date), 176325, 1763, 330);
INSERT into traffic VALUES (356353822, CAST(N'2021-01-02' AS Date), 176325, 1267, 549);
INSERT into traffic VALUES (356353822, CAST(N'2021-01-03' AS Date), 176325, 1874, 725);
INSERT into traffic VALUES (356353822, CAST(N'2021-01-04' AS Date), 176325, 2118, 697);
INSERT into traffic VALUES (356353822, CAST(N'2021-01-05' AS Date), 176325, 1698, 525);
INSERT into traffic VALUES (356353822, CAST(N'2021-01-06' AS Date), 176325, 2214, 515);
INSERT into traffic VALUES (356353822, CAST(N'2021-01-07' AS Date), 176325, 2670, 336);
INSERT into traffic VALUES (356353822, CAST(N'2021-01-08' AS Date), 176325, 2441, 293);
INSERT into traffic VALUES (356353822, CAST(N'2021-01-09' AS Date), 176325, 2841, 498);
INSERT into traffic VALUES (356353822, CAST(N'2021-01-10' AS Date), 176325, 1591, 391);
INSERT into traffic VALUES (356353822, CAST(N'2021-01-11' AS Date), 176325, 1772, 309);
INSERT into traffic VALUES (356353822, CAST(N'2021-01-12' AS Date), 176325, 2108, 601);
INSERT into traffic VALUES (356353822, CAST(N'2021-01-13' AS Date), 176325, 2041, 316);
INSERT into traffic VALUES (356353822, CAST(N'2021-01-14' AS Date), 176325, 1535, 476);
INSERT into traffic VALUES (356353822, CAST(N'2021-01-15' AS Date), 176325, 2582, 234);
INSERT into traffic VALUES (356353822, CAST(N'2021-01-16' AS Date), 176325, 2942, 463);
INSERT into traffic VALUES (356353822, CAST(N'2021-01-17' AS Date), 176325, 2980, 217);
INSERT into traffic VALUES (356353822, CAST(N'2021-01-18' AS Date), 176325, 1782, 596);
INSERT into traffic VALUES (356353822, CAST(N'2021-01-19' AS Date), 176325, 2823, 662);
INSERT into traffic VALUES (356353822, CAST(N'2021-01-20' AS Date), 176325, 2075, 595);
INSERT into traffic VALUES (356353822, CAST(N'2021-01-21' AS Date), 176325, 2300, 643);
INSERT into traffic VALUES (356353822, CAST(N'2021-01-22' AS Date), 176325, 1384, 782);
INSERT into traffic VALUES (356353822, CAST(N'2021-01-23' AS Date), 176325, 2734, 263);
INSERT into traffic VALUES (356353822, CAST(N'2021-01-24' AS Date), 176325, 2692, 499);
INSERT into traffic VALUES (356353822, CAST(N'2021-01-25' AS Date), 176325, 1261, 201);
INSERT into traffic VALUES (356353822, CAST(N'2021-01-26' AS Date), 176325, 1550, 229);
INSERT into traffic VALUES (356353822, CAST(N'2021-01-27' AS Date), 176325, 1559, 405);
INSERT into traffic VALUES (356353822, CAST(N'2021-01-28' AS Date), 176325, 2932, 215);
INSERT into traffic VALUES (356353822, CAST(N'2021-01-29' AS Date), 176325, 2105, 213);
INSERT into traffic VALUES (356353822, CAST(N'2021-01-30' AS Date), 176325, 2915, 774);
INSERT into traffic VALUES (363576091, CAST(N'2021-01-01' AS Date), 179899, 2534, 282);
INSERT into traffic VALUES (363576091, CAST(N'2021-01-02' AS Date), 179899, 2400, 319);
INSERT into traffic VALUES (363576091, CAST(N'2021-01-03' AS Date), 179899, 1190, 423);
INSERT into traffic VALUES (363576091, CAST(N'2021-01-04' AS Date), 179899, 1831, 327);
INSERT into traffic VALUES (363576091, CAST(N'2021-01-05' AS Date), 179899, 2788, 369);
INSERT into traffic VALUES (363576091, CAST(N'2021-01-06' AS Date), 179899, 1045, 351);
INSERT into traffic VALUES (363576091, CAST(N'2021-01-07' AS Date), 179899, 2561, 343);
INSERT into traffic VALUES (363576091, CAST(N'2021-01-08' AS Date), 179899, 2259, 528);
INSERT into traffic VALUES (363576091, CAST(N'2021-01-09' AS Date), 179899, 2638, 404);
INSERT into traffic VALUES (363576091, CAST(N'2021-01-10' AS Date), 179899, 1073, 512);
INSERT into traffic VALUES (363576091, CAST(N'2021-01-11' AS Date), 179899, 1337, 399);
INSERT into traffic VALUES (363576091, CAST(N'2021-01-12' AS Date), 179899, 1557, 443);
INSERT into traffic VALUES (363576091, CAST(N'2021-01-13' AS Date), 179899, 1926, 485);
INSERT into traffic VALUES (363576091, CAST(N'2021-01-14' AS Date), 179899, 1986, 592);
INSERT into traffic VALUES (363576091, CAST(N'2021-01-15' AS Date), 179899, 2490, 413);
INSERT into traffic VALUES (363576091, CAST(N'2021-01-16' AS Date), 179899, 1406, 206);
INSERT into traffic VALUES (363576091, CAST(N'2021-01-17' AS Date), 179899, 1544, 511);
INSERT into traffic VALUES (363576091, CAST(N'2021-01-18' AS Date), 179899, 2568, 458);
INSERT into traffic VALUES (363576091, CAST(N'2021-01-19' AS Date), 179899, 1206, 239);
INSERT into traffic VALUES (363576091, CAST(N'2021-01-20' AS Date), 179899, 2823, 424);
INSERT into traffic VALUES (363576091, CAST(N'2021-01-21' AS Date), 179899, 1307, 261);
INSERT into traffic VALUES (363576091, CAST(N'2021-01-22' AS Date), 179899, 2331, 353);
INSERT into traffic VALUES (363576091, CAST(N'2021-01-23' AS Date), 179899, 1270, 307);
INSERT into traffic VALUES (363576091, CAST(N'2021-01-24' AS Date), 179899, 2261, 528);
INSERT into traffic VALUES (363576091, CAST(N'2021-01-25' AS Date), 179899, 2188, 245);
INSERT into traffic VALUES (363576091, CAST(N'2021-01-26' AS Date), 179899, 1378, 521);
INSERT into traffic VALUES (363576091, CAST(N'2021-01-27' AS Date), 179899, 2606, 403);
INSERT into traffic VALUES (363576091, CAST(N'2021-01-28' AS Date), 179899, 2123, 532);
INSERT into traffic VALUES (363576091, CAST(N'2021-01-29' AS Date), 179899, 2232, 339);
INSERT into traffic VALUES (363576091, CAST(N'2021-01-30' AS Date), 179899, 1683, 514);
INSERT into traffic VALUES (374382155, CAST(N'2021-01-01' AS Date), 185245, 1457, 336);
INSERT into traffic VALUES (374382155, CAST(N'2021-01-02' AS Date), 185245, 2205, 360);
INSERT into traffic VALUES (374382155, CAST(N'2021-01-03' AS Date), 185245, 2702, 360);
INSERT into traffic VALUES (374382155, CAST(N'2021-01-04' AS Date), 185245, 1621, 414);
INSERT into traffic VALUES (374382155, CAST(N'2021-01-05' AS Date), 185245, 2733, 364);
INSERT into traffic VALUES (374382155, CAST(N'2021-01-06' AS Date), 185245, 2006, 303);
INSERT into traffic VALUES (374382155, CAST(N'2021-01-07' AS Date), 185245, 2659, 563);
INSERT into traffic VALUES (374382155, CAST(N'2021-01-08' AS Date), 185245, 2232, 352);
INSERT into traffic VALUES (374382155, CAST(N'2021-01-09' AS Date), 185245, 2093, 378);
INSERT into traffic VALUES (374382155, CAST(N'2021-01-10' AS Date), 185245, 1827, 592);
INSERT into traffic VALUES (374382155, CAST(N'2021-01-11' AS Date), 185245, 2188, 312);
INSERT into traffic VALUES (374382155, CAST(N'2021-01-12' AS Date), 185245, 2777, 481);
INSERT into traffic VALUES (374382155, CAST(N'2021-01-13' AS Date), 185245, 2699, 228);
INSERT into traffic VALUES (374382155, CAST(N'2021-01-14' AS Date), 185245, 1180, 312);
INSERT into traffic VALUES (374382155, CAST(N'2021-01-15' AS Date), 185245, 2215, 529);
INSERT into traffic VALUES (374382155, CAST(N'2021-01-16' AS Date), 185245, 1263, 475);
INSERT into traffic VALUES (374382155, CAST(N'2021-01-17' AS Date), 185245, 2968, 240);
INSERT into traffic VALUES (374382155, CAST(N'2021-01-18' AS Date), 185245, 1894, 318);
INSERT into traffic VALUES (374382155, CAST(N'2021-01-19' AS Date), 185245, 1841, 358);
INSERT into traffic VALUES (374382155, CAST(N'2021-01-20' AS Date), 185245, 2980, 244);
INSERT into traffic VALUES (374382155, CAST(N'2021-01-21' AS Date), 185245, 1270, 517);
INSERT into traffic VALUES (374382155, CAST(N'2021-01-22' AS Date), 185245, 2357, 378);
INSERT into traffic VALUES (374382155, CAST(N'2021-01-23' AS Date), 185245, 2355, 261);
INSERT into traffic VALUES (374382155, CAST(N'2021-01-24' AS Date), 185245, 2934, 215);
INSERT into traffic VALUES (374382155, CAST(N'2021-01-25' AS Date), 185245, 2646, 204);
INSERT into traffic VALUES (374382155, CAST(N'2021-01-26' AS Date), 185245, 2412, 303);
INSERT into traffic VALUES (374382155, CAST(N'2021-01-27' AS Date), 185245, 1635, 431);
INSERT into traffic VALUES (374382155, CAST(N'2021-01-28' AS Date), 185245, 2633, 478);
INSERT into traffic VALUES (374382155, CAST(N'2021-01-29' AS Date), 185245, 1701, 221);
INSERT into traffic VALUES (374382155, CAST(N'2021-01-30' AS Date), 185245, 1564, 433);
INSERT into traffic VALUES (374382265, CAST(N'2021-01-01' AS Date), 185246, 2361, 292);
INSERT into traffic VALUES (374382265, CAST(N'2021-01-02' AS Date), 185246, 2624, 324);
INSERT into traffic VALUES (374382265, CAST(N'2021-01-03' AS Date), 185246, 1645, 263);
INSERT into traffic VALUES (374382265, CAST(N'2021-01-04' AS Date), 185246, 1428, 228);
INSERT into traffic VALUES (374382265, CAST(N'2021-01-05' AS Date), 185246, 1414, 298);
INSERT into traffic VALUES (374382265, CAST(N'2021-01-06' AS Date), 185246, 1420, 292);
INSERT into traffic VALUES (374382265, CAST(N'2021-01-07' AS Date), 185246, 1125, 280);
INSERT into traffic VALUES (374382265, CAST(N'2021-01-08' AS Date), 185246, 1625, 371);
INSERT into traffic VALUES (374382265, CAST(N'2021-01-09' AS Date), 185246, 2007, 389);
INSERT into traffic VALUES (374382265, CAST(N'2021-01-10' AS Date), 185246, 1450, 288);
INSERT into traffic VALUES (374382265, CAST(N'2021-01-11' AS Date), 185246, 1413, 343);
INSERT into traffic VALUES (374382265, CAST(N'2021-01-12' AS Date), 185246, 2589, 395);
INSERT into traffic VALUES (374382265, CAST(N'2021-01-13' AS Date), 185246, 2553, 246);
INSERT into traffic VALUES (374382265, CAST(N'2021-01-14' AS Date), 185246, 2904, 346);
INSERT into traffic VALUES (374382265, CAST(N'2021-01-15' AS Date), 185246, 1761, 375);
INSERT into traffic VALUES (374382265, CAST(N'2021-01-16' AS Date), 185246, 2634, 282);
INSERT into traffic VALUES (374382265, CAST(N'2021-01-17' AS Date), 185246, 1403, 286);
INSERT into traffic VALUES (374382265, CAST(N'2021-01-18' AS Date), 185246, 1189, 373);
INSERT into traffic VALUES (374382265, CAST(N'2021-01-19' AS Date), 185246, 2344, 316);
INSERT into traffic VALUES (374382265, CAST(N'2021-01-20' AS Date), 185246, 2592, 395);
INSERT into traffic VALUES (374382265, CAST(N'2021-01-21' AS Date), 185246, 1838, 390);
INSERT into traffic VALUES (374382265, CAST(N'2021-01-22' AS Date), 185246, 2450, 342);
INSERT into traffic VALUES (374382265, CAST(N'2021-01-23' AS Date), 185246, 2242, 270);
INSERT into traffic VALUES (374382265, CAST(N'2021-01-24' AS Date), 185246, 2600, 341);
INSERT into traffic VALUES (374382265, CAST(N'2021-01-25' AS Date), 185246, 1328, 296);
INSERT into traffic VALUES (374382265, CAST(N'2021-01-26' AS Date), 185246, 2715, 212);
INSERT into traffic VALUES (374382265, CAST(N'2021-01-27' AS Date), 185246, 2561, 277);
INSERT into traffic VALUES (374382265, CAST(N'2021-01-28' AS Date), 185246, 1861, 315);
INSERT into traffic VALUES (374382265, CAST(N'2021-01-29' AS Date), 185246, 1004, 281);
INSERT into traffic VALUES (374382265, CAST(N'2021-01-30' AS Date), 185246, 1033, 398);
INSERT into traffic VALUES (385879182, CAST(N'2021-01-01' AS Date), 190934, 1975, 492);
INSERT into traffic VALUES (385879182, CAST(N'2021-01-02' AS Date), 190934, 1198, 297);
INSERT into traffic VALUES (385879182, CAST(N'2021-01-03' AS Date), 190934, 2701, 364);
INSERT into traffic VALUES (385879182, CAST(N'2021-01-04' AS Date), 190934, 2445, 548);
INSERT into traffic VALUES (385879182, CAST(N'2021-01-05' AS Date), 190934, 2604, 543);
INSERT into traffic VALUES (385879182, CAST(N'2021-01-06' AS Date), 190934, 2335, 560);
INSERT into traffic VALUES (385879182, CAST(N'2021-01-07' AS Date), 190934, 2794, 476);
INSERT into traffic VALUES (385879182, CAST(N'2021-01-08' AS Date), 190934, 1700, 200);
INSERT into traffic VALUES (385879182, CAST(N'2021-01-09' AS Date), 190934, 1197, 392);
INSERT into traffic VALUES (385879182, CAST(N'2021-01-10' AS Date), 190934, 1328, 471);
INSERT into traffic VALUES (385879182, CAST(N'2021-01-11' AS Date), 190934, 2545, 313);
INSERT into traffic VALUES (385879182, CAST(N'2021-01-12' AS Date), 190934, 1583, 500);
INSERT into traffic VALUES (385879182, CAST(N'2021-01-13' AS Date), 190934, 1396, 414);
INSERT into traffic VALUES (385879182, CAST(N'2021-01-14' AS Date), 190934, 1695, 310);
INSERT into traffic VALUES (385879182, CAST(N'2021-01-15' AS Date), 190934, 1306, 283);
INSERT into traffic VALUES (385879182, CAST(N'2021-01-16' AS Date), 190934, 1636, 239);
INSERT into traffic VALUES (385879182, CAST(N'2021-01-17' AS Date), 190934, 2040, 556);
INSERT into traffic VALUES (385879182, CAST(N'2021-01-18' AS Date), 190934, 1895, 363);
INSERT into traffic VALUES (385879182, CAST(N'2021-01-19' AS Date), 190934, 2528, 483);
INSERT into traffic VALUES (385879182, CAST(N'2021-01-20' AS Date), 190934, 1657, 531);
INSERT into traffic VALUES (385879182, CAST(N'2021-01-21' AS Date), 190934, 2431, 545);
INSERT into traffic VALUES (385879182, CAST(N'2021-01-22' AS Date), 190934, 1240, 434);
INSERT into traffic VALUES (385879182, CAST(N'2021-01-23' AS Date), 190934, 1281, 203);
INSERT into traffic VALUES (385879182, CAST(N'2021-01-24' AS Date), 190934, 1850, 496);
INSERT into traffic VALUES (385879182, CAST(N'2021-01-25' AS Date), 190934, 2126, 414);
INSERT into traffic VALUES (385879182, CAST(N'2021-01-26' AS Date), 190934, 2783, 473);
INSERT into traffic VALUES (385879182, CAST(N'2021-01-27' AS Date), 190934, 1594, 416);
INSERT into traffic VALUES (385879182, CAST(N'2021-01-28' AS Date), 190934, 1327, 259);
INSERT into traffic VALUES (385879182, CAST(N'2021-01-29' AS Date), 190934, 2602, 261);
INSERT into traffic VALUES (385879182, CAST(N'2021-01-30' AS Date), 190934, 2411, 444);
INSERT into traffic VALUES (386559097, CAST(N'2021-01-01' AS Date), 191271, 2329, 204);
INSERT into traffic VALUES (386559097, CAST(N'2021-01-02' AS Date), 191271, 2680, 322);
INSERT into traffic VALUES (386559097, CAST(N'2021-01-03' AS Date), 191271, 1757, 663);
INSERT into traffic VALUES (386559097, CAST(N'2021-01-04' AS Date), 191271, 1761, 726);
INSERT into traffic VALUES (386559097, CAST(N'2021-01-05' AS Date), 191271, 1592, 350);
INSERT into traffic VALUES (386559097, CAST(N'2021-01-06' AS Date), 191271, 2897, 429);
INSERT into traffic VALUES (386559097, CAST(N'2021-01-07' AS Date), 191271, 2811, 615);
INSERT into traffic VALUES (386559097, CAST(N'2021-01-08' AS Date), 191271, 2144, 343);
INSERT into traffic VALUES (386559097, CAST(N'2021-01-09' AS Date), 191271, 2630, 580);
INSERT into traffic VALUES (386559097, CAST(N'2021-01-10' AS Date), 191271, 1922, 771);
INSERT into traffic VALUES (386559097, CAST(N'2021-01-11' AS Date), 191271, 2108, 552);
INSERT into traffic VALUES (386559097, CAST(N'2021-01-12' AS Date), 191271, 1229, 631);
INSERT into traffic VALUES (386559097, CAST(N'2021-01-13' AS Date), 191271, 1239, 298);
INSERT into traffic VALUES (386559097, CAST(N'2021-01-14' AS Date), 191271, 2696, 276);
INSERT into traffic VALUES (386559097, CAST(N'2021-01-15' AS Date), 191271, 2251, 245);
INSERT into traffic VALUES (386559097, CAST(N'2021-01-16' AS Date), 191271, 2207, 458);
INSERT into traffic VALUES (386559097, CAST(N'2021-01-17' AS Date), 191271, 1315, 249);
INSERT into traffic VALUES (386559097, CAST(N'2021-01-18' AS Date), 191271, 1754, 632);
INSERT into traffic VALUES (386559097, CAST(N'2021-01-19' AS Date), 191271, 1673, 732);
INSERT into traffic VALUES (386559097, CAST(N'2021-01-20' AS Date), 191271, 1562, 378);
INSERT into traffic VALUES (386559097, CAST(N'2021-01-21' AS Date), 191271, 2931, 379);
INSERT into traffic VALUES (386559097, CAST(N'2021-01-22' AS Date), 191271, 2253, 751);
INSERT into traffic VALUES (386559097, CAST(N'2021-01-23' AS Date), 191271, 1733, 396);
INSERT into traffic VALUES (386559097, CAST(N'2021-01-24' AS Date), 191271, 1756, 731);
INSERT into traffic VALUES (386559097, CAST(N'2021-01-25' AS Date), 191271, 2151, 506);
INSERT into traffic VALUES (386559097, CAST(N'2021-01-26' AS Date), 191271, 1280, 377);
INSERT into traffic VALUES (386559097, CAST(N'2021-01-27' AS Date), 191271, 1703, 377);
INSERT into traffic VALUES (386559097, CAST(N'2021-01-28' AS Date), 191271, 2062, 315);
INSERT into traffic VALUES (386559097, CAST(N'2021-01-29' AS Date), 191271, 1617, 489);
INSERT into traffic VALUES (386559097, CAST(N'2021-01-30' AS Date), 191271, 2538, 275);
INSERT into traffic VALUES (386559160, CAST(N'2021-01-01' AS Date), 191271, 2558, 406);
INSERT into traffic VALUES (386559160, CAST(N'2021-01-02' AS Date), 191271, 1860, 551);
INSERT into traffic VALUES (386559160, CAST(N'2021-01-03' AS Date), 191271, 1215, 790);
INSERT into traffic VALUES (386559160, CAST(N'2021-01-04' AS Date), 191271, 2972, 577);
INSERT into traffic VALUES (386559160, CAST(N'2021-01-05' AS Date), 191271, 1633, 616);
INSERT into traffic VALUES (386559160, CAST(N'2021-01-06' AS Date), 191271, 2261, 343);
INSERT into traffic VALUES (386559160, CAST(N'2021-01-07' AS Date), 191271, 1132, 265);
INSERT into traffic VALUES (386559160, CAST(N'2021-01-08' AS Date), 191271, 2701, 514);
INSERT into traffic VALUES (386559160, CAST(N'2021-01-09' AS Date), 191271, 2124, 531);
INSERT into traffic VALUES (386559160, CAST(N'2021-01-10' AS Date), 191271, 2515, 334);
INSERT into traffic VALUES (386559160, CAST(N'2021-01-11' AS Date), 191271, 2580, 442);
INSERT into traffic VALUES (386559160, CAST(N'2021-01-12' AS Date), 191271, 1600, 501);
INSERT into traffic VALUES (386559160, CAST(N'2021-01-13' AS Date), 191271, 1629, 266);
INSERT into traffic VALUES (386559160, CAST(N'2021-01-14' AS Date), 191271, 1384, 734);
INSERT into traffic VALUES (386559160, CAST(N'2021-01-15' AS Date), 191271, 1977, 615);
INSERT into traffic VALUES (386559160, CAST(N'2021-01-16' AS Date), 191271, 1889, 514);
INSERT into traffic VALUES (386559160, CAST(N'2021-01-17' AS Date), 191271, 1565, 293);
INSERT into traffic VALUES (386559160, CAST(N'2021-01-18' AS Date), 191271, 2786, 679);
INSERT into traffic VALUES (386559160, CAST(N'2021-01-19' AS Date), 191271, 2041, 443);
INSERT into traffic VALUES (386559160, CAST(N'2021-01-20' AS Date), 191271, 1947, 699);
INSERT into traffic VALUES (386559160, CAST(N'2021-01-21' AS Date), 191271, 2604, 315);
INSERT into traffic VALUES (386559160, CAST(N'2021-01-22' AS Date), 191271, 2356, 555);
INSERT into traffic VALUES (386559160, CAST(N'2021-01-23' AS Date), 191271, 1028, 717);
INSERT into traffic VALUES (386559160, CAST(N'2021-01-24' AS Date), 191271, 2604, 648);
INSERT into traffic VALUES (386559160, CAST(N'2021-01-25' AS Date), 191271, 2159, 470);
INSERT into traffic VALUES (386559160, CAST(N'2021-01-26' AS Date), 191271, 2181, 521);
INSERT into traffic VALUES (386559160, CAST(N'2021-01-27' AS Date), 191271, 2007, 460);
INSERT into traffic VALUES (386559160, CAST(N'2021-01-28' AS Date), 191271, 1052, 683);
INSERT into traffic VALUES (386559160, CAST(N'2021-01-29' AS Date), 191271, 2686, 630);
INSERT into traffic VALUES (386559160, CAST(N'2021-01-30' AS Date), 191271, 1937, 397);
INSERT into traffic VALUES (386559181, CAST(N'2021-01-01' AS Date), 191271, 2015, 543);
INSERT into traffic VALUES (386559181, CAST(N'2021-01-02' AS Date), 191271, 2252, 359);
INSERT into traffic VALUES (386559181, CAST(N'2021-01-03' AS Date), 191271, 1647, 707);
INSERT into traffic VALUES (386559181, CAST(N'2021-01-04' AS Date), 191271, 1871, 217);
INSERT into traffic VALUES (386559181, CAST(N'2021-01-05' AS Date), 191271, 1258, 656);
INSERT into traffic VALUES (386559181, CAST(N'2021-01-06' AS Date), 191271, 2435, 232);
INSERT into traffic VALUES (386559181, CAST(N'2021-01-07' AS Date), 191271, 1568, 446);
INSERT into traffic VALUES (386559181, CAST(N'2021-01-08' AS Date), 191271, 2969, 401);
INSERT into traffic VALUES (386559181, CAST(N'2021-01-09' AS Date), 191271, 1193, 391);
INSERT into traffic VALUES (386559181, CAST(N'2021-01-10' AS Date), 191271, 2704, 606);
INSERT into traffic VALUES (386559181, CAST(N'2021-01-11' AS Date), 191271, 2112, 592);
INSERT into traffic VALUES (386559181, CAST(N'2021-01-12' AS Date), 191271, 2129, 684);
INSERT into traffic VALUES (386559181, CAST(N'2021-01-13' AS Date), 191271, 1697, 221);
INSERT into traffic VALUES (386559181, CAST(N'2021-01-14' AS Date), 191271, 1638, 298);
INSERT into traffic VALUES (386559181, CAST(N'2021-01-15' AS Date), 191271, 1458, 202);
INSERT into traffic VALUES (386559181, CAST(N'2021-01-16' AS Date), 191271, 2648, 629);
INSERT into traffic VALUES (386559181, CAST(N'2021-01-17' AS Date), 191271, 2408, 797);
INSERT into traffic VALUES (386559181, CAST(N'2021-01-18' AS Date), 191271, 1434, 729);
INSERT into traffic VALUES (386559181, CAST(N'2021-01-19' AS Date), 191271, 1741, 362);
INSERT into traffic VALUES (386559181, CAST(N'2021-01-20' AS Date), 191271, 2142, 379);
INSERT into traffic VALUES (386559181, CAST(N'2021-01-21' AS Date), 191271, 2638, 615);
INSERT into traffic VALUES (386559181, CAST(N'2021-01-22' AS Date), 191271, 2875, 743);
INSERT into traffic VALUES (386559181, CAST(N'2021-01-23' AS Date), 191271, 1366, 385);
INSERT into traffic VALUES (386559181, CAST(N'2021-01-24' AS Date), 191271, 2443, 397);
INSERT into traffic VALUES (386559181, CAST(N'2021-01-25' AS Date), 191271, 1271, 781);
INSERT into traffic VALUES (386559181, CAST(N'2021-01-26' AS Date), 191271, 1296, 211);
INSERT into traffic VALUES (386559181, CAST(N'2021-01-27' AS Date), 191271, 1969, 775);
INSERT into traffic VALUES (386559181, CAST(N'2021-01-28' AS Date), 191271, 2783, 301);
INSERT into traffic VALUES (386559181, CAST(N'2021-01-29' AS Date), 191271, 2608, 275);
INSERT into traffic VALUES (386559181, CAST(N'2021-01-30' AS Date), 191271, 1487, 539);
INSERT into traffic VALUES (405647741, CAST(N'2021-01-01' AS Date), 200716, 2268, 661);
INSERT into traffic VALUES (405647741, CAST(N'2021-01-02' AS Date), 200716, 2641, 580);
INSERT into traffic VALUES (405647741, CAST(N'2021-01-03' AS Date), 200716, 2323, 249);
INSERT into traffic VALUES (405647741, CAST(N'2021-01-04' AS Date), 200716, 2988, 492);
INSERT into traffic VALUES (405647741, CAST(N'2021-01-05' AS Date), 200716, 1044, 553);
INSERT into traffic VALUES (405647741, CAST(N'2021-01-06' AS Date), 200716, 1810, 703);
INSERT into traffic VALUES (405647741, CAST(N'2021-01-07' AS Date), 200716, 2166, 345);
INSERT into traffic VALUES (405647741, CAST(N'2021-01-08' AS Date), 200716, 2916, 515);
INSERT into traffic VALUES (405647741, CAST(N'2021-01-09' AS Date), 200716, 2991, 581);
INSERT into traffic VALUES (405647741, CAST(N'2021-01-10' AS Date), 200716, 1777, 220);
INSERT into traffic VALUES (405647741, CAST(N'2021-01-11' AS Date), 200716, 1911, 669);
INSERT into traffic VALUES (405647741, CAST(N'2021-01-12' AS Date), 200716, 1116, 541);
INSERT into traffic VALUES (405647741, CAST(N'2021-01-13' AS Date), 200716, 2743, 246);
INSERT into traffic VALUES (405647741, CAST(N'2021-01-14' AS Date), 200716, 1218, 205);
INSERT into traffic VALUES (405647741, CAST(N'2021-01-15' AS Date), 200716, 1147, 768);
INSERT into traffic VALUES (405647741, CAST(N'2021-01-16' AS Date), 200716, 1234, 610);
INSERT into traffic VALUES (405647741, CAST(N'2021-01-17' AS Date), 200716, 1364, 360);
INSERT into traffic VALUES (405647741, CAST(N'2021-01-18' AS Date), 200716, 2846, 513);
INSERT into traffic VALUES (405647741, CAST(N'2021-01-19' AS Date), 200716, 2086, 306);
INSERT into traffic VALUES (405647741, CAST(N'2021-01-20' AS Date), 200716, 2024, 246);
INSERT into traffic VALUES (405647741, CAST(N'2021-01-21' AS Date), 200716, 2386, 399);
INSERT into traffic VALUES (405647741, CAST(N'2021-01-22' AS Date), 200716, 2106, 759);
INSERT into traffic VALUES (405647741, CAST(N'2021-01-23' AS Date), 200716, 2593, 240);
INSERT into traffic VALUES (405647741, CAST(N'2021-01-24' AS Date), 200716, 1829, 367);
INSERT into traffic VALUES (405647741, CAST(N'2021-01-25' AS Date), 200716, 1680, 273);
INSERT into traffic VALUES (405647741, CAST(N'2021-01-26' AS Date), 200716, 2345, 325);
INSERT into traffic VALUES (405647741, CAST(N'2021-01-27' AS Date), 200716, 2638, 579);
INSERT into traffic VALUES (405647741, CAST(N'2021-01-28' AS Date), 200716, 1933, 363);
INSERT into traffic VALUES (405647741, CAST(N'2021-01-29' AS Date), 200716, 1479, 208);
INSERT into traffic VALUES (405647741, CAST(N'2021-01-30' AS Date), 200716, 2211, 426);
INSERT into traffic VALUES (422021896, CAST(N'2021-01-01' AS Date), 208818, 1494, 661);
INSERT into traffic VALUES (422021896, CAST(N'2021-01-02' AS Date), 208818, 2404, 589);
INSERT into traffic VALUES (422021896, CAST(N'2021-01-03' AS Date), 208818, 1183, 361);
INSERT into traffic VALUES (422021896, CAST(N'2021-01-04' AS Date), 208818, 1480, 863);
INSERT into traffic VALUES (422021896, CAST(N'2021-01-05' AS Date), 208818, 1806, 779);
INSERT into traffic VALUES (422021896, CAST(N'2021-01-06' AS Date), 208818, 1820, 870);
INSERT into traffic VALUES (422021896, CAST(N'2021-01-07' AS Date), 208818, 2079, 833);
INSERT into traffic VALUES (422021896, CAST(N'2021-01-08' AS Date), 208818, 2927, 682);
INSERT into traffic VALUES (422021896, CAST(N'2021-01-09' AS Date), 208818, 1825, 773);
INSERT into traffic VALUES (422021896, CAST(N'2021-01-10' AS Date), 208818, 2108, 627);
INSERT into traffic VALUES (422021896, CAST(N'2021-01-11' AS Date), 208818, 1487, 851);
INSERT into traffic VALUES (422021896, CAST(N'2021-01-12' AS Date), 208818, 2004, 512);
INSERT into traffic VALUES (422021896, CAST(N'2021-01-13' AS Date), 208818, 2485, 643);
INSERT into traffic VALUES (422021896, CAST(N'2021-01-14' AS Date), 208818, 2974, 644);
INSERT into traffic VALUES (422021896, CAST(N'2021-01-15' AS Date), 208818, 1339, 706);
INSERT into traffic VALUES (422021896, CAST(N'2021-01-16' AS Date), 208818, 2079, 526);
INSERT into traffic VALUES (422021896, CAST(N'2021-01-17' AS Date), 208818, 1785, 614);
INSERT into traffic VALUES (422021896, CAST(N'2021-01-18' AS Date), 208818, 2805, 602);
INSERT into traffic VALUES (422021896, CAST(N'2021-01-19' AS Date), 208818, 2588, 447);
INSERT into traffic VALUES (422021896, CAST(N'2021-01-20' AS Date), 208818, 2715, 214);
INSERT into traffic VALUES (422021896, CAST(N'2021-01-21' AS Date), 208818, 2245, 466);
INSERT into traffic VALUES (422021896, CAST(N'2021-01-22' AS Date), 208818, 1618, 556);
INSERT into traffic VALUES (422021896, CAST(N'2021-01-23' AS Date), 208818, 2361, 569);
INSERT into traffic VALUES (422021896, CAST(N'2021-01-24' AS Date), 208818, 2261, 485);
INSERT into traffic VALUES (422021896, CAST(N'2021-01-25' AS Date), 208818, 1045, 825);
INSERT into traffic VALUES (422021896, CAST(N'2021-01-26' AS Date), 208818, 1991, 382);
INSERT into traffic VALUES (422021896, CAST(N'2021-01-27' AS Date), 208818, 2542, 742);
INSERT into traffic VALUES (422021896, CAST(N'2021-01-28' AS Date), 208818, 1944, 349);
INSERT into traffic VALUES (422021896, CAST(N'2021-01-29' AS Date), 208818, 2730, 666);
INSERT into traffic VALUES (422021896, CAST(N'2021-01-30' AS Date), 208818, 1985, 318);
INSERT into traffic VALUES (422022014, CAST(N'2021-01-01' AS Date), 208818, 1745, 922);
INSERT into traffic VALUES (422022014, CAST(N'2021-01-02' AS Date), 208818, 1595, 600);
INSERT into traffic VALUES (422022014, CAST(N'2021-01-03' AS Date), 208818, 1299, 249);
INSERT into traffic VALUES (422022014, CAST(N'2021-01-04' AS Date), 208818, 2957, 530);
INSERT into traffic VALUES (422022014, CAST(N'2021-01-05' AS Date), 208818, 2740, 860);
INSERT into traffic VALUES (422022014, CAST(N'2021-01-06' AS Date), 208818, 1280, 888);
INSERT into traffic VALUES (422022014, CAST(N'2021-01-07' AS Date), 208818, 1512, 232);
INSERT into traffic VALUES (422022014, CAST(N'2021-01-08' AS Date), 208818, 2750, 749);
INSERT into traffic VALUES (422022014, CAST(N'2021-01-09' AS Date), 208818, 2404, 524);
INSERT into traffic VALUES (422022014, CAST(N'2021-01-10' AS Date), 208818, 2162, 264);
INSERT into traffic VALUES (422022014, CAST(N'2021-01-11' AS Date), 208818, 2873, 777);
INSERT into traffic VALUES (422022014, CAST(N'2021-01-12' AS Date), 208818, 2553, 835);
INSERT into traffic VALUES (422022014, CAST(N'2021-01-13' AS Date), 208818, 2085, 478);
INSERT into traffic VALUES (422022014, CAST(N'2021-01-14' AS Date), 208818, 2117, 481);
INSERT into traffic VALUES (422022014, CAST(N'2021-01-15' AS Date), 208818, 1878, 556);
INSERT into traffic VALUES (422022014, CAST(N'2021-01-16' AS Date), 208818, 2105, 317);
INSERT into traffic VALUES (422022014, CAST(N'2021-01-17' AS Date), 208818, 2106, 524);
INSERT into traffic VALUES (422022014, CAST(N'2021-01-18' AS Date), 208818, 1136, 437);
INSERT into traffic VALUES (422022014, CAST(N'2021-01-19' AS Date), 208818, 1354, 735);
INSERT into traffic VALUES (422022014, CAST(N'2021-01-20' AS Date), 208818, 2009, 498);
INSERT into traffic VALUES (422022014, CAST(N'2021-01-21' AS Date), 208818, 1125, 660);
INSERT into traffic VALUES (422022014, CAST(N'2021-01-22' AS Date), 208818, 2349, 595);
INSERT into traffic VALUES (422022014, CAST(N'2021-01-23' AS Date), 208818, 2326, 458);
INSERT into traffic VALUES (422022014, CAST(N'2021-01-24' AS Date), 208818, 2704, 866);
INSERT into traffic VALUES (422022014, CAST(N'2021-01-25' AS Date), 208818, 2110, 392);
INSERT into traffic VALUES (422022014, CAST(N'2021-01-26' AS Date), 208818, 2551, 247);
INSERT into traffic VALUES (422022014, CAST(N'2021-01-27' AS Date), 208818, 1591, 823);
INSERT into traffic VALUES (422022014, CAST(N'2021-01-28' AS Date), 208818, 1668, 326);
INSERT into traffic VALUES (422022014, CAST(N'2021-01-29' AS Date), 208818, 2172, 813);
INSERT into traffic VALUES (422022014, CAST(N'2021-01-30' AS Date), 208818, 2334, 711);
INSERT into traffic VALUES (431118188, CAST(N'2021-01-01' AS Date), 213319, 1194, 488);
INSERT into traffic VALUES (431118188, CAST(N'2021-01-02' AS Date), 213319, 2067, 272);
INSERT into traffic VALUES (431118188, CAST(N'2021-01-03' AS Date), 213319, 2545, 375);
INSERT into traffic VALUES (431118188, CAST(N'2021-01-04' AS Date), 213319, 2967, 479);
INSERT into traffic VALUES (431118188, CAST(N'2021-01-05' AS Date), 213319, 2720, 481);
INSERT into traffic VALUES (431118188, CAST(N'2021-01-06' AS Date), 213319, 2786, 286);
INSERT into traffic VALUES (431118188, CAST(N'2021-01-07' AS Date), 213319, 2393, 388);
INSERT into traffic VALUES (431118188, CAST(N'2021-01-08' AS Date), 213319, 2056, 224);
INSERT into traffic VALUES (431118188, CAST(N'2021-01-09' AS Date), 213319, 2293, 274);
INSERT into traffic VALUES (431118188, CAST(N'2021-01-10' AS Date), 213319, 1579, 465);
INSERT into traffic VALUES (431118188, CAST(N'2021-01-11' AS Date), 213319, 2693, 281);
INSERT into traffic VALUES (431118188, CAST(N'2021-01-12' AS Date), 213319, 1158, 565);
INSERT into traffic VALUES (431118188, CAST(N'2021-01-13' AS Date), 213319, 2559, 263);
INSERT into traffic VALUES (431118188, CAST(N'2021-01-14' AS Date), 213319, 1854, 571);
INSERT into traffic VALUES (431118188, CAST(N'2021-01-15' AS Date), 213319, 2414, 566);
INSERT into traffic VALUES (431118188, CAST(N'2021-01-16' AS Date), 213319, 2499, 379);
INSERT into traffic VALUES (431118188, CAST(N'2021-01-17' AS Date), 213319, 1945, 205);
INSERT into traffic VALUES (431118188, CAST(N'2021-01-18' AS Date), 213319, 1888, 216);
INSERT into traffic VALUES (431118188, CAST(N'2021-01-19' AS Date), 213319, 2428, 361);
INSERT into traffic VALUES (431118188, CAST(N'2021-01-20' AS Date), 213319, 1928, 236);
INSERT into traffic VALUES (431118188, CAST(N'2021-01-21' AS Date), 213319, 1308, 484);
INSERT into traffic VALUES (431118188, CAST(N'2021-01-22' AS Date), 213319, 2080, 201);
INSERT into traffic VALUES (431118188, CAST(N'2021-01-23' AS Date), 213319, 2348, 321);
INSERT into traffic VALUES (431118188, CAST(N'2021-01-24' AS Date), 213319, 1556, 249);
INSERT into traffic VALUES (431118188, CAST(N'2021-01-25' AS Date), 213319, 1943, 262);
INSERT into traffic VALUES (431118188, CAST(N'2021-01-26' AS Date), 213319, 2665, 456);
INSERT into traffic VALUES (431118188, CAST(N'2021-01-27' AS Date), 213319, 1021, 598);
INSERT into traffic VALUES (431118188, CAST(N'2021-01-28' AS Date), 213319, 1295, 550);
INSERT into traffic VALUES (431118188, CAST(N'2021-01-29' AS Date), 213319, 2005, 389);
INSERT into traffic VALUES (431118188, CAST(N'2021-01-30' AS Date), 213319, 1018, 281);
INSERT into traffic VALUES (434824575, CAST(N'2021-01-01' AS Date), 215153, 1160, 332);
INSERT into traffic VALUES (434824575, CAST(N'2021-01-02' AS Date), 215153, 1422, 314);
INSERT into traffic VALUES (434824575, CAST(N'2021-01-03' AS Date), 215153, 1397, 203);
INSERT into traffic VALUES (434824575, CAST(N'2021-01-04' AS Date), 215153, 2374, 329);
INSERT into traffic VALUES (434824575, CAST(N'2021-01-05' AS Date), 215153, 1315, 290);
INSERT into traffic VALUES (434824575, CAST(N'2021-01-06' AS Date), 215153, 1714, 364);
INSERT into traffic VALUES (434824575, CAST(N'2021-01-07' AS Date), 215153, 1286, 369);
INSERT into traffic VALUES (434824575, CAST(N'2021-01-08' AS Date), 215153, 2870, 339);
INSERT into traffic VALUES (434824575, CAST(N'2021-01-09' AS Date), 215153, 2273, 388);
INSERT into traffic VALUES (434824575, CAST(N'2021-01-10' AS Date), 215153, 2092, 299);
INSERT into traffic VALUES (434824575, CAST(N'2021-01-11' AS Date), 215153, 1493, 278);
INSERT into traffic VALUES (434824575, CAST(N'2021-01-12' AS Date), 215153, 2744, 336);
INSERT into traffic VALUES (434824575, CAST(N'2021-01-13' AS Date), 215153, 1279, 349);
INSERT into traffic VALUES (434824575, CAST(N'2021-01-14' AS Date), 215153, 2026, 338);
INSERT into traffic VALUES (434824575, CAST(N'2021-01-15' AS Date), 215153, 2817, 245);
INSERT into traffic VALUES (434824575, CAST(N'2021-01-16' AS Date), 215153, 1517, 264);
INSERT into traffic VALUES (434824575, CAST(N'2021-01-17' AS Date), 215153, 2651, 342);
INSERT into traffic VALUES (434824575, CAST(N'2021-01-18' AS Date), 215153, 2622, 228);
INSERT into traffic VALUES (434824575, CAST(N'2021-01-19' AS Date), 215153, 1079, 339);
INSERT into traffic VALUES (434824575, CAST(N'2021-01-20' AS Date), 215153, 2751, 357);
INSERT into traffic VALUES (434824575, CAST(N'2021-01-21' AS Date), 215153, 2466, 221);
INSERT into traffic VALUES (434824575, CAST(N'2021-01-22' AS Date), 215153, 1148, 376);
INSERT into traffic VALUES (434824575, CAST(N'2021-01-23' AS Date), 215153, 1914, 263);
INSERT into traffic VALUES (434824575, CAST(N'2021-01-24' AS Date), 215153, 2658, 248);
INSERT into traffic VALUES (434824575, CAST(N'2021-01-25' AS Date), 215153, 2922, 334);
INSERT into traffic VALUES (434824575, CAST(N'2021-01-26' AS Date), 215153, 1772, 323);
INSERT into traffic VALUES (434824575, CAST(N'2021-01-27' AS Date), 215153, 1248, 301);
INSERT into traffic VALUES (434824575, CAST(N'2021-01-28' AS Date), 215153, 2429, 256);
INSERT into traffic VALUES (434824575, CAST(N'2021-01-29' AS Date), 215153, 1678, 285);
INSERT into traffic VALUES (434824575, CAST(N'2021-01-30' AS Date), 215153, 1491, 365);
INSERT into traffic VALUES (435814721, CAST(N'2021-01-01' AS Date), 215643, 1166, 317);
INSERT into traffic VALUES (435814721, CAST(N'2021-01-02' AS Date), 215643, 2632, 214);
INSERT into traffic VALUES (435814721, CAST(N'2021-01-03' AS Date), 215643, 1981, 554);
INSERT into traffic VALUES (435814721, CAST(N'2021-01-04' AS Date), 215643, 1009, 243);
INSERT into traffic VALUES (435814721, CAST(N'2021-01-05' AS Date), 215643, 2997, 478);
INSERT into traffic VALUES (435814721, CAST(N'2021-01-06' AS Date), 215643, 1127, 496);
INSERT into traffic VALUES (435814721, CAST(N'2021-01-07' AS Date), 215643, 2505, 200);
INSERT into traffic VALUES (435814721, CAST(N'2021-01-08' AS Date), 215643, 2827, 593);
INSERT into traffic VALUES (435814721, CAST(N'2021-01-09' AS Date), 215643, 2339, 562);
INSERT into traffic VALUES (435814721, CAST(N'2021-01-10' AS Date), 215643, 1433, 451);
INSERT into traffic VALUES (435814721, CAST(N'2021-01-11' AS Date), 215643, 2084, 594);
INSERT into traffic VALUES (435814721, CAST(N'2021-01-12' AS Date), 215643, 1389, 592);
INSERT into traffic VALUES (435814721, CAST(N'2021-01-13' AS Date), 215643, 2164, 392);
INSERT into traffic VALUES (435814721, CAST(N'2021-01-14' AS Date), 215643, 2500, 528);
INSERT into traffic VALUES (435814721, CAST(N'2021-01-15' AS Date), 215643, 2915, 586);
INSERT into traffic VALUES (435814721, CAST(N'2021-01-16' AS Date), 215643, 1885, 425);
INSERT into traffic VALUES (435814721, CAST(N'2021-01-17' AS Date), 215643, 1610, 421);
INSERT into traffic VALUES (435814721, CAST(N'2021-01-18' AS Date), 215643, 1714, 366);
INSERT into traffic VALUES (435814721, CAST(N'2021-01-19' AS Date), 215643, 1224, 321);
INSERT into traffic VALUES (435814721, CAST(N'2021-01-20' AS Date), 215643, 1001, 294);
INSERT into traffic VALUES (435814721, CAST(N'2021-01-21' AS Date), 215643, 2002, 381);
INSERT into traffic VALUES (435814721, CAST(N'2021-01-22' AS Date), 215643, 2438, 488);
INSERT into traffic VALUES (435814721, CAST(N'2021-01-23' AS Date), 215643, 2130, 380);
INSERT into traffic VALUES (435814721, CAST(N'2021-01-24' AS Date), 215643, 1099, 569);
INSERT into traffic VALUES (435814721, CAST(N'2021-01-25' AS Date), 215643, 1845, 578);
INSERT into traffic VALUES (435814721, CAST(N'2021-01-26' AS Date), 215643, 2981, 399);
INSERT into traffic VALUES (435814721, CAST(N'2021-01-27' AS Date), 215643, 1282, 541);
INSERT into traffic VALUES (435814721, CAST(N'2021-01-28' AS Date), 215643, 1591, 267);
INSERT into traffic VALUES (435814721, CAST(N'2021-01-29' AS Date), 215643, 1633, 586);
INSERT into traffic VALUES (435814721, CAST(N'2021-01-30' AS Date), 215643, 1366, 537);
INSERT into traffic VALUES (441243464, CAST(N'2021-01-01' AS Date), 218329, 1508, 434);
INSERT into traffic VALUES (441243464, CAST(N'2021-01-02' AS Date), 218329, 1543, 282);
INSERT into traffic VALUES (441243464, CAST(N'2021-01-03' AS Date), 218329, 2315, 202);
INSERT into traffic VALUES (441243464, CAST(N'2021-01-04' AS Date), 218329, 1339, 344);
INSERT into traffic VALUES (441243464, CAST(N'2021-01-05' AS Date), 218329, 2018, 578);
INSERT into traffic VALUES (441243464, CAST(N'2021-01-06' AS Date), 218329, 2309, 322);
INSERT into traffic VALUES (441243464, CAST(N'2021-01-07' AS Date), 218329, 2783, 402);
INSERT into traffic VALUES (441243464, CAST(N'2021-01-08' AS Date), 218329, 1753, 421);
INSERT into traffic VALUES (441243464, CAST(N'2021-01-09' AS Date), 218329, 1899, 250);
INSERT into traffic VALUES (441243464, CAST(N'2021-01-10' AS Date), 218329, 2874, 435);
INSERT into traffic VALUES (441243464, CAST(N'2021-01-11' AS Date), 218329, 1402, 561);
INSERT into traffic VALUES (441243464, CAST(N'2021-01-12' AS Date), 218329, 1177, 581);
INSERT into traffic VALUES (441243464, CAST(N'2021-01-13' AS Date), 218329, 1760, 426);
INSERT into traffic VALUES (441243464, CAST(N'2021-01-14' AS Date), 218329, 2685, 467);
INSERT into traffic VALUES (441243464, CAST(N'2021-01-15' AS Date), 218329, 2316, 280);
INSERT into traffic VALUES (441243464, CAST(N'2021-01-16' AS Date), 218329, 1544, 389);
INSERT into traffic VALUES (441243464, CAST(N'2021-01-17' AS Date), 218329, 1429, 547);
INSERT into traffic VALUES (441243464, CAST(N'2021-01-18' AS Date), 218329, 1713, 488);
INSERT into traffic VALUES (441243464, CAST(N'2021-01-19' AS Date), 218329, 1261, 425);
INSERT into traffic VALUES (441243464, CAST(N'2021-01-20' AS Date), 218329, 2926, 305);
INSERT into traffic VALUES (441243464, CAST(N'2021-01-21' AS Date), 218329, 2012, 491);
INSERT into traffic VALUES (441243464, CAST(N'2021-01-22' AS Date), 218329, 1915, 260);
INSERT into traffic VALUES (441243464, CAST(N'2021-01-23' AS Date), 218329, 1102, 445);
INSERT into traffic VALUES (441243464, CAST(N'2021-01-24' AS Date), 218329, 1202, 320);
INSERT into traffic VALUES (441243464, CAST(N'2021-01-25' AS Date), 218329, 1455, 469);
INSERT into traffic VALUES (441243464, CAST(N'2021-01-26' AS Date), 218329, 1294, 386);
INSERT into traffic VALUES (441243464, CAST(N'2021-01-27' AS Date), 218329, 2516, 480);
INSERT into traffic VALUES (441243464, CAST(N'2021-01-28' AS Date), 218329, 2601, 321);
INSERT into traffic VALUES (441243464, CAST(N'2021-01-29' AS Date), 218329, 2792, 248);
INSERT into traffic VALUES (441243464, CAST(N'2021-01-30' AS Date), 218329, 1873, 521);
INSERT into traffic VALUES (449200331, CAST(N'2021-01-01' AS Date), 222266, 1037, 439);
INSERT into traffic VALUES (449200331, CAST(N'2021-01-02' AS Date), 222266, 2579, 579);
INSERT into traffic VALUES (449200331, CAST(N'2021-01-03' AS Date), 222266, 1481, 499);
INSERT into traffic VALUES (449200331, CAST(N'2021-01-04' AS Date), 222266, 2399, 592);
INSERT into traffic VALUES (449200331, CAST(N'2021-01-05' AS Date), 222266, 1499, 408);
INSERT into traffic VALUES (449200331, CAST(N'2021-01-06' AS Date), 222266, 1095, 570);
INSERT into traffic VALUES (449200331, CAST(N'2021-01-07' AS Date), 222266, 1520, 308);
INSERT into traffic VALUES (449200331, CAST(N'2021-01-08' AS Date), 222266, 1751, 203);
INSERT into traffic VALUES (449200331, CAST(N'2021-01-09' AS Date), 222266, 1434, 203);
INSERT into traffic VALUES (449200331, CAST(N'2021-01-10' AS Date), 222266, 1743, 397);
INSERT into traffic VALUES (449200331, CAST(N'2021-01-11' AS Date), 222266, 1624, 562);
INSERT into traffic VALUES (449200331, CAST(N'2021-01-12' AS Date), 222266, 1341, 543);
INSERT into traffic VALUES (449200331, CAST(N'2021-01-13' AS Date), 222266, 1715, 490);
INSERT into traffic VALUES (449200331, CAST(N'2021-01-14' AS Date), 222266, 2260, 501);
INSERT into traffic VALUES (449200331, CAST(N'2021-01-15' AS Date), 222266, 2482, 207);
INSERT into traffic VALUES (449200331, CAST(N'2021-01-16' AS Date), 222266, 2913, 584);
INSERT into traffic VALUES (449200331, CAST(N'2021-01-17' AS Date), 222266, 2490, 528);
INSERT into traffic VALUES (449200331, CAST(N'2021-01-18' AS Date), 222266, 1960, 574);
INSERT into traffic VALUES (449200331, CAST(N'2021-01-19' AS Date), 222266, 1052, 325);
INSERT into traffic VALUES (449200331, CAST(N'2021-01-20' AS Date), 222266, 2837, 451);
INSERT into traffic VALUES (449200331, CAST(N'2021-01-21' AS Date), 222266, 2965, 594);
INSERT into traffic VALUES (449200331, CAST(N'2021-01-22' AS Date), 222266, 1074, 211);
INSERT into traffic VALUES (449200331, CAST(N'2021-01-23' AS Date), 222266, 2338, 353);
INSERT into traffic VALUES (449200331, CAST(N'2021-01-24' AS Date), 222266, 2814, 385);
INSERT into traffic VALUES (449200331, CAST(N'2021-01-25' AS Date), 222266, 2547, 238);
INSERT into traffic VALUES (449200331, CAST(N'2021-01-26' AS Date), 222266, 2193, 357);
INSERT into traffic VALUES (449200331, CAST(N'2021-01-27' AS Date), 222266, 2682, 537);
INSERT into traffic VALUES (449200331, CAST(N'2021-01-28' AS Date), 222266, 2979, 567);
INSERT into traffic VALUES (449200331, CAST(N'2021-01-29' AS Date), 222266, 1888, 309);
INSERT into traffic VALUES (449200331, CAST(N'2021-01-30' AS Date), 222266, 2770, 543);
INSERT into traffic VALUES (463418477, CAST(N'2021-01-01' AS Date), 229301, 1705, 673);
INSERT into traffic VALUES (463418477, CAST(N'2021-01-02' AS Date), 229301, 1229, 786);
INSERT into traffic VALUES (463418477, CAST(N'2021-01-03' AS Date), 229301, 1332, 292);
INSERT into traffic VALUES (463418477, CAST(N'2021-01-04' AS Date), 229301, 1577, 323);
INSERT into traffic VALUES (463418477, CAST(N'2021-01-05' AS Date), 229301, 2008, 702);
INSERT into traffic VALUES (463418477, CAST(N'2021-01-06' AS Date), 229301, 1007, 343);
INSERT into traffic VALUES (463418477, CAST(N'2021-01-07' AS Date), 229301, 1131, 497);
INSERT into traffic VALUES (463418477, CAST(N'2021-01-08' AS Date), 229301, 2937, 283);
INSERT into traffic VALUES (463418477, CAST(N'2021-01-09' AS Date), 229301, 2976, 426);
INSERT into traffic VALUES (463418477, CAST(N'2021-01-10' AS Date), 229301, 2630, 770);
INSERT into traffic VALUES (463418477, CAST(N'2021-01-11' AS Date), 229301, 2516, 230);
INSERT into traffic VALUES (463418477, CAST(N'2021-01-12' AS Date), 229301, 2277, 732);
INSERT into traffic VALUES (463418477, CAST(N'2021-01-13' AS Date), 229301, 1368, 679);
INSERT into traffic VALUES (463418477, CAST(N'2021-01-14' AS Date), 229301, 1215, 285);
INSERT into traffic VALUES (463418477, CAST(N'2021-01-15' AS Date), 229301, 1675, 793);
INSERT into traffic VALUES (463418477, CAST(N'2021-01-16' AS Date), 229301, 1718, 478);
INSERT into traffic VALUES (463418477, CAST(N'2021-01-17' AS Date), 229301, 1986, 606);
INSERT into traffic VALUES (463418477, CAST(N'2021-01-18' AS Date), 229301, 2833, 212);
INSERT into traffic VALUES (463418477, CAST(N'2021-01-19' AS Date), 229301, 1779, 764);
INSERT into traffic VALUES (463418477, CAST(N'2021-01-20' AS Date), 229301, 2506, 210);
INSERT into traffic VALUES (463418477, CAST(N'2021-01-21' AS Date), 229301, 2126, 499);
INSERT into traffic VALUES (463418477, CAST(N'2021-01-22' AS Date), 229301, 2812, 752);
INSERT into traffic VALUES (463418477, CAST(N'2021-01-23' AS Date), 229301, 2783, 754);
INSERT into traffic VALUES (463418477, CAST(N'2021-01-24' AS Date), 229301, 1377, 442);
INSERT into traffic VALUES (463418477, CAST(N'2021-01-25' AS Date), 229301, 2464, 302);
INSERT into traffic VALUES (463418477, CAST(N'2021-01-26' AS Date), 229301, 2304, 249);
INSERT into traffic VALUES (463418477, CAST(N'2021-01-27' AS Date), 229301, 2326, 574);
INSERT into traffic VALUES (463418477, CAST(N'2021-01-28' AS Date), 229301, 2572, 770);
INSERT into traffic VALUES (463418477, CAST(N'2021-01-29' AS Date), 229301, 2175, 760);
INSERT into traffic VALUES (463418477, CAST(N'2021-01-30' AS Date), 229301, 2213, 570);
INSERT into traffic VALUES (467523017, CAST(N'2021-01-01' AS Date), 231332, 2273, 325);
INSERT into traffic VALUES (467523017, CAST(N'2021-01-02' AS Date), 231332, 2376, 684);
INSERT into traffic VALUES (467523017, CAST(N'2021-01-03' AS Date), 231332, 1197, 933);
INSERT into traffic VALUES (467523017, CAST(N'2021-01-04' AS Date), 231332, 1258, 941);
INSERT into traffic VALUES (467523017, CAST(N'2021-01-05' AS Date), 231332, 2411, 620);
INSERT into traffic VALUES (467523017, CAST(N'2021-01-06' AS Date), 231332, 2786, 419);
INSERT into traffic VALUES (467523017, CAST(N'2021-01-07' AS Date), 231332, 2797, 262);
INSERT into traffic VALUES (467523017, CAST(N'2021-01-08' AS Date), 231332, 1000, 853);
INSERT into traffic VALUES (467523017, CAST(N'2021-01-09' AS Date), 231332, 2845, 251);
INSERT into traffic VALUES (467523017, CAST(N'2021-01-10' AS Date), 231332, 1962, 534);
INSERT into traffic VALUES (467523017, CAST(N'2021-01-11' AS Date), 231332, 2155, 833);
INSERT into traffic VALUES (467523017, CAST(N'2021-01-12' AS Date), 231332, 2470, 852);
INSERT into traffic VALUES (467523017, CAST(N'2021-01-13' AS Date), 231332, 1445, 383);
INSERT into traffic VALUES (467523017, CAST(N'2021-01-14' AS Date), 231332, 2967, 636);
INSERT into traffic VALUES (467523017, CAST(N'2021-01-15' AS Date), 231332, 2522, 471);
INSERT into traffic VALUES (467523017, CAST(N'2021-01-16' AS Date), 231332, 1571, 603);
INSERT into traffic VALUES (467523017, CAST(N'2021-01-17' AS Date), 231332, 2442, 277);
INSERT into traffic VALUES (467523017, CAST(N'2021-01-18' AS Date), 231332, 1249, 487);
INSERT into traffic VALUES (467523017, CAST(N'2021-01-19' AS Date), 231332, 2494, 216);
INSERT into traffic VALUES (467523017, CAST(N'2021-01-20' AS Date), 231332, 1235, 905);
INSERT into traffic VALUES (467523017, CAST(N'2021-01-21' AS Date), 231332, 2971, 786);
INSERT into traffic VALUES (467523017, CAST(N'2021-01-22' AS Date), 231332, 2065, 686);
INSERT into traffic VALUES (467523017, CAST(N'2021-01-23' AS Date), 231332, 2373, 830);
INSERT into traffic VALUES (467523017, CAST(N'2021-01-24' AS Date), 231332, 1631, 811);
INSERT into traffic VALUES (467523017, CAST(N'2021-01-25' AS Date), 231332, 2004, 766);
INSERT into traffic VALUES (467523017, CAST(N'2021-01-26' AS Date), 231332, 2543, 458);
INSERT into traffic VALUES (467523017, CAST(N'2021-01-27' AS Date), 231332, 1672, 715);
INSERT into traffic VALUES (467523017, CAST(N'2021-01-28' AS Date), 231332, 1386, 532);
INSERT into traffic VALUES (467523017, CAST(N'2021-01-29' AS Date), 231332, 2978, 365);
INSERT into traffic VALUES (467523017, CAST(N'2021-01-30' AS Date), 231332, 1030, 870);
INSERT into traffic VALUES (470414781, CAST(N'2021-01-01' AS Date), 232763, 1351, 497);
INSERT into traffic VALUES (470414781, CAST(N'2021-01-02' AS Date), 232763, 2315, 500);
INSERT into traffic VALUES (470414781, CAST(N'2021-01-03' AS Date), 232763, 2073, 918);
INSERT into traffic VALUES (470414781, CAST(N'2021-01-04' AS Date), 232763, 1902, 415);
INSERT into traffic VALUES (470414781, CAST(N'2021-01-05' AS Date), 232763, 2447, 742);
INSERT into traffic VALUES (470414781, CAST(N'2021-01-06' AS Date), 232763, 1653, 723);
INSERT into traffic VALUES (470414781, CAST(N'2021-01-07' AS Date), 232763, 2572, 281);
INSERT into traffic VALUES (470414781, CAST(N'2021-01-08' AS Date), 232763, 1410, 262);
INSERT into traffic VALUES (470414781, CAST(N'2021-01-09' AS Date), 232763, 2847, 490);
INSERT into traffic VALUES (470414781, CAST(N'2021-01-10' AS Date), 232763, 2333, 805);
INSERT into traffic VALUES (470414781, CAST(N'2021-01-11' AS Date), 232763, 1454, 205);
INSERT into traffic VALUES (470414781, CAST(N'2021-01-12' AS Date), 232763, 2907, 654);
INSERT into traffic VALUES (470414781, CAST(N'2021-01-13' AS Date), 232763, 2296, 341);
INSERT into traffic VALUES (470414781, CAST(N'2021-01-14' AS Date), 232763, 2296, 465);
INSERT into traffic VALUES (470414781, CAST(N'2021-01-15' AS Date), 232763, 1898, 702);
INSERT into traffic VALUES (470414781, CAST(N'2021-01-16' AS Date), 232763, 1950, 204);
INSERT into traffic VALUES (470414781, CAST(N'2021-01-17' AS Date), 232763, 1307, 905);
INSERT into traffic VALUES (470414781, CAST(N'2021-01-18' AS Date), 232763, 1257, 788);
INSERT into traffic VALUES (470414781, CAST(N'2021-01-19' AS Date), 232763, 1681, 849);
INSERT into traffic VALUES (470414781, CAST(N'2021-01-20' AS Date), 232763, 1751, 575);
INSERT into traffic VALUES (470414781, CAST(N'2021-01-21' AS Date), 232763, 1602, 827);
INSERT into traffic VALUES (470414781, CAST(N'2021-01-22' AS Date), 232763, 1374, 699);
INSERT into traffic VALUES (470414781, CAST(N'2021-01-23' AS Date), 232763, 2073, 769);
INSERT into traffic VALUES (470414781, CAST(N'2021-01-24' AS Date), 232763, 2841, 286);
INSERT into traffic VALUES (470414781, CAST(N'2021-01-25' AS Date), 232763, 2667, 274);
INSERT into traffic VALUES (470414781, CAST(N'2021-01-26' AS Date), 232763, 1246, 811);
INSERT into traffic VALUES (470414781, CAST(N'2021-01-27' AS Date), 232763, 2277, 231);
INSERT into traffic VALUES (470414781, CAST(N'2021-01-28' AS Date), 232763, 2756, 306);
INSERT into traffic VALUES (470414781, CAST(N'2021-01-29' AS Date), 232763, 1177, 223);
INSERT into traffic VALUES (470414781, CAST(N'2021-01-30' AS Date), 232763, 1994, 235);
INSERT into traffic VALUES (470414826, CAST(N'2021-01-01' AS Date), 232763, 2463, 921);
INSERT into traffic VALUES (470414826, CAST(N'2021-01-02' AS Date), 232763, 2442, 565);
INSERT into traffic VALUES (470414826, CAST(N'2021-01-03' AS Date), 232763, 2097, 878);
INSERT into traffic VALUES (470414826, CAST(N'2021-01-04' AS Date), 232763, 1618, 846);
INSERT into traffic VALUES (470414826, CAST(N'2021-01-05' AS Date), 232763, 1400, 546);
INSERT into traffic VALUES (470414826, CAST(N'2021-01-06' AS Date), 232763, 2746, 277);
INSERT into traffic VALUES (470414826, CAST(N'2021-01-07' AS Date), 232763, 1182, 458);
INSERT into traffic VALUES (470414826, CAST(N'2021-01-08' AS Date), 232763, 1451, 477);
INSERT into traffic VALUES (470414826, CAST(N'2021-01-09' AS Date), 232763, 1664, 548);
INSERT into traffic VALUES (470414826, CAST(N'2021-01-10' AS Date), 232763, 2457, 503);
INSERT into traffic VALUES (470414826, CAST(N'2021-01-11' AS Date), 232763, 1668, 375);
INSERT into traffic VALUES (470414826, CAST(N'2021-01-12' AS Date), 232763, 1524, 586);
INSERT into traffic VALUES (470414826, CAST(N'2021-01-13' AS Date), 232763, 2935, 779);
INSERT into traffic VALUES (470414826, CAST(N'2021-01-14' AS Date), 232763, 1655, 853);
INSERT into traffic VALUES (470414826, CAST(N'2021-01-15' AS Date), 232763, 2297, 708);
INSERT into traffic VALUES (470414826, CAST(N'2021-01-16' AS Date), 232763, 1775, 233);
INSERT into traffic VALUES (470414826, CAST(N'2021-01-17' AS Date), 232763, 1837, 329);
INSERT into traffic VALUES (470414826, CAST(N'2021-01-18' AS Date), 232763, 2742, 712);
INSERT into traffic VALUES (470414826, CAST(N'2021-01-19' AS Date), 232763, 2126, 656);
INSERT into traffic VALUES (470414826, CAST(N'2021-01-20' AS Date), 232763, 1541, 205);
INSERT into traffic VALUES (470414826, CAST(N'2021-01-21' AS Date), 232763, 1611, 675);
INSERT into traffic VALUES (470414826, CAST(N'2021-01-22' AS Date), 232763, 2351, 759);
INSERT into traffic VALUES (470414826, CAST(N'2021-01-23' AS Date), 232763, 2698, 589);
INSERT into traffic VALUES (470414826, CAST(N'2021-01-24' AS Date), 232763, 1484, 302);
INSERT into traffic VALUES (470414826, CAST(N'2021-01-25' AS Date), 232763, 2976, 393);
INSERT into traffic VALUES (470414826, CAST(N'2021-01-26' AS Date), 232763, 1591, 364);
INSERT into traffic VALUES (470414826, CAST(N'2021-01-27' AS Date), 232763, 1824, 450);
INSERT into traffic VALUES (470414826, CAST(N'2021-01-28' AS Date), 232763, 1547, 737);
INSERT into traffic VALUES (470414826, CAST(N'2021-01-29' AS Date), 232763, 2087, 578);
INSERT into traffic VALUES (470414826, CAST(N'2021-01-30' AS Date), 232763, 2129, 780);
INSERT into traffic VALUES (473667571, CAST(N'2021-01-01' AS Date), 234372, 2943, 338);
INSERT into traffic VALUES (473667571, CAST(N'2021-01-02' AS Date), 234372, 1709, 228);
INSERT into traffic VALUES (473667571, CAST(N'2021-01-03' AS Date), 234372, 1520, 399);
INSERT into traffic VALUES (473667571, CAST(N'2021-01-04' AS Date), 234372, 2644, 208);
INSERT into traffic VALUES (473667571, CAST(N'2021-01-05' AS Date), 234372, 1003, 387);
INSERT into traffic VALUES (473667571, CAST(N'2021-01-06' AS Date), 234372, 2019, 358);
INSERT into traffic VALUES (473667571, CAST(N'2021-01-07' AS Date), 234372, 2500, 321);
INSERT into traffic VALUES (473667571, CAST(N'2021-01-08' AS Date), 234372, 1609, 365);
INSERT into traffic VALUES (473667571, CAST(N'2021-01-09' AS Date), 234372, 1847, 296);
INSERT into traffic VALUES (473667571, CAST(N'2021-01-10' AS Date), 234372, 2449, 333);
INSERT into traffic VALUES (473667571, CAST(N'2021-01-11' AS Date), 234372, 2352, 371);
INSERT into traffic VALUES (473667571, CAST(N'2021-01-12' AS Date), 234372, 2967, 367);
INSERT into traffic VALUES (473667571, CAST(N'2021-01-13' AS Date), 234372, 1199, 347);
INSERT into traffic VALUES (473667571, CAST(N'2021-01-14' AS Date), 234372, 2622, 289);
INSERT into traffic VALUES (473667571, CAST(N'2021-01-15' AS Date), 234372, 2698, 371);
INSERT into traffic VALUES (473667571, CAST(N'2021-01-16' AS Date), 234372, 1551, 338);
INSERT into traffic VALUES (473667571, CAST(N'2021-01-17' AS Date), 234372, 1592, 279);
INSERT into traffic VALUES (473667571, CAST(N'2021-01-18' AS Date), 234372, 1579, 219);
INSERT into traffic VALUES (473667571, CAST(N'2021-01-19' AS Date), 234372, 2572, 247);
INSERT into traffic VALUES (473667571, CAST(N'2021-01-20' AS Date), 234372, 2037, 311);
INSERT into traffic VALUES (473667571, CAST(N'2021-01-21' AS Date), 234372, 2402, 376);
INSERT into traffic VALUES (473667571, CAST(N'2021-01-22' AS Date), 234372, 1242, 260);
INSERT into traffic VALUES (473667571, CAST(N'2021-01-23' AS Date), 234372, 2537, 378);
INSERT into traffic VALUES (473667571, CAST(N'2021-01-24' AS Date), 234372, 2356, 319);
INSERT into traffic VALUES (473667571, CAST(N'2021-01-25' AS Date), 234372, 2856, 206);
INSERT into traffic VALUES (473667571, CAST(N'2021-01-26' AS Date), 234372, 2304, 219);
INSERT into traffic VALUES (473667571, CAST(N'2021-01-27' AS Date), 234372, 1305, 271);
INSERT into traffic VALUES (473667571, CAST(N'2021-01-28' AS Date), 234372, 2889, 290);
INSERT into traffic VALUES (473667571, CAST(N'2021-01-29' AS Date), 234372, 2524, 366);
INSERT into traffic VALUES (473667571, CAST(N'2021-01-30' AS Date), 234372, 1354, 203);
INSERT into traffic VALUES (476200182, CAST(N'2021-01-01' AS Date), 235626, 2710, 420);
INSERT into traffic VALUES (476200182, CAST(N'2021-01-02' AS Date), 235626, 1529, 830);
INSERT into traffic VALUES (476200182, CAST(N'2021-01-03' AS Date), 235626, 1618, 832);
INSERT into traffic VALUES (476200182, CAST(N'2021-01-04' AS Date), 235626, 1386, 713);
INSERT into traffic VALUES (476200182, CAST(N'2021-01-05' AS Date), 235626, 1380, 370);
INSERT into traffic VALUES (476200182, CAST(N'2021-01-06' AS Date), 235626, 1186, 309);
INSERT into traffic VALUES (476200182, CAST(N'2021-01-07' AS Date), 235626, 1723, 494);
INSERT into traffic VALUES (476200182, CAST(N'2021-01-08' AS Date), 235626, 1127, 492);
INSERT into traffic VALUES (476200182, CAST(N'2021-01-09' AS Date), 235626, 1085, 200);
INSERT into traffic VALUES (476200182, CAST(N'2021-01-10' AS Date), 235626, 1745, 231);
INSERT into traffic VALUES (476200182, CAST(N'2021-01-11' AS Date), 235626, 2164, 775);
INSERT into traffic VALUES (476200182, CAST(N'2021-01-12' AS Date), 235626, 1933, 202);
INSERT into traffic VALUES (476200182, CAST(N'2021-01-13' AS Date), 235626, 2071, 442);
INSERT into traffic VALUES (476200182, CAST(N'2021-01-14' AS Date), 235626, 2152, 831);
INSERT into traffic VALUES (476200182, CAST(N'2021-01-15' AS Date), 235626, 2744, 221);
INSERT into traffic VALUES (476200182, CAST(N'2021-01-16' AS Date), 235626, 1139, 223);
INSERT into traffic VALUES (476200182, CAST(N'2021-01-17' AS Date), 235626, 2252, 802);
INSERT into traffic VALUES (476200182, CAST(N'2021-01-18' AS Date), 235626, 1122, 917);
INSERT into traffic VALUES (476200182, CAST(N'2021-01-19' AS Date), 235626, 2842, 681);
INSERT into traffic VALUES (476200182, CAST(N'2021-01-20' AS Date), 235626, 2925, 759);
INSERT into traffic VALUES (476200182, CAST(N'2021-01-21' AS Date), 235626, 1820, 482);
INSERT into traffic VALUES (476200182, CAST(N'2021-01-22' AS Date), 235626, 2098, 861);
INSERT into traffic VALUES (476200182, CAST(N'2021-01-23' AS Date), 235626, 1729, 604);
INSERT into traffic VALUES (476200182, CAST(N'2021-01-24' AS Date), 235626, 2305, 869);
INSERT into traffic VALUES (476200182, CAST(N'2021-01-25' AS Date), 235626, 2884, 932);
INSERT into traffic VALUES (476200182, CAST(N'2021-01-26' AS Date), 235626, 1945, 323);
INSERT into traffic VALUES (476200182, CAST(N'2021-01-27' AS Date), 235626, 1061, 691);
INSERT into traffic VALUES (476200182, CAST(N'2021-01-28' AS Date), 235626, 1459, 244);
INSERT into traffic VALUES (476200182, CAST(N'2021-01-29' AS Date), 235626, 2932, 775);
INSERT into traffic VALUES (476200182, CAST(N'2021-01-30' AS Date), 235626, 2895, 753);
INSERT into traffic VALUES (479453446, CAST(N'2021-01-01' AS Date), 237235, 2635, 248);
INSERT into traffic VALUES (479453446, CAST(N'2021-01-02' AS Date), 237235, 1536, 270);
INSERT into traffic VALUES (479453446, CAST(N'2021-01-03' AS Date), 237235, 2774, 794);
INSERT into traffic VALUES (479453446, CAST(N'2021-01-04' AS Date), 237235, 1550, 480);
INSERT into traffic VALUES (479453446, CAST(N'2021-01-05' AS Date), 237235, 1230, 735);
INSERT into traffic VALUES (479453446, CAST(N'2021-01-06' AS Date), 237235, 2350, 707);
INSERT into traffic VALUES (479453446, CAST(N'2021-01-07' AS Date), 237235, 1093, 554);
INSERT into traffic VALUES (479453446, CAST(N'2021-01-08' AS Date), 237235, 2242, 235);
INSERT into traffic VALUES (479453446, CAST(N'2021-01-09' AS Date), 237235, 2050, 618);
INSERT into traffic VALUES (479453446, CAST(N'2021-01-10' AS Date), 237235, 2462, 733);
INSERT into traffic VALUES (479453446, CAST(N'2021-01-11' AS Date), 237235, 1730, 644);
INSERT into traffic VALUES (479453446, CAST(N'2021-01-12' AS Date), 237235, 2289, 435);
INSERT into traffic VALUES (479453446, CAST(N'2021-01-13' AS Date), 237235, 1352, 623);
INSERT into traffic VALUES (479453446, CAST(N'2021-01-14' AS Date), 237235, 2327, 789);
INSERT into traffic VALUES (479453446, CAST(N'2021-01-15' AS Date), 237235, 1944, 560);
INSERT into traffic VALUES (479453446, CAST(N'2021-01-16' AS Date), 237235, 2632, 243);
INSERT into traffic VALUES (479453446, CAST(N'2021-01-17' AS Date), 237235, 2019, 494);
INSERT into traffic VALUES (479453446, CAST(N'2021-01-18' AS Date), 237235, 2920, 234);
INSERT into traffic VALUES (479453446, CAST(N'2021-01-19' AS Date), 237235, 2319, 738);
INSERT into traffic VALUES (479453446, CAST(N'2021-01-20' AS Date), 237235, 2698, 352);
INSERT into traffic VALUES (479453446, CAST(N'2021-01-21' AS Date), 237235, 2636, 791);
INSERT into traffic VALUES (479453446, CAST(N'2021-01-22' AS Date), 237235, 2861, 500);
INSERT into traffic VALUES (479453446, CAST(N'2021-01-23' AS Date), 237235, 2436, 514);
INSERT into traffic VALUES (479453446, CAST(N'2021-01-24' AS Date), 237235, 2032, 553);
INSERT into traffic VALUES (479453446, CAST(N'2021-01-25' AS Date), 237235, 1729, 433);
INSERT into traffic VALUES (479453446, CAST(N'2021-01-26' AS Date), 237235, 1261, 547);
INSERT into traffic VALUES (479453446, CAST(N'2021-01-27' AS Date), 237235, 2187, 505);
INSERT into traffic VALUES (479453446, CAST(N'2021-01-28' AS Date), 237235, 2856, 630);
INSERT into traffic VALUES (479453446, CAST(N'2021-01-29' AS Date), 237235, 1442, 201);
INSERT into traffic VALUES (479453446, CAST(N'2021-01-30' AS Date), 237235, 1667, 691);
INSERT into traffic VALUES (479453482, CAST(N'2021-01-01' AS Date), 237235, 1134, 320);
INSERT into traffic VALUES (479453482, CAST(N'2021-01-02' AS Date), 237235, 1024, 369);
INSERT into traffic VALUES (479453482, CAST(N'2021-01-03' AS Date), 237235, 1284, 714);
INSERT into traffic VALUES (479453482, CAST(N'2021-01-04' AS Date), 237235, 1069, 739);
INSERT into traffic VALUES (479453482, CAST(N'2021-01-05' AS Date), 237235, 2242, 473);
INSERT into traffic VALUES (479453482, CAST(N'2021-01-06' AS Date), 237235, 1843, 264);
INSERT into traffic VALUES (479453482, CAST(N'2021-01-07' AS Date), 237235, 2017, 730);
INSERT into traffic VALUES (479453482, CAST(N'2021-01-08' AS Date), 237235, 2517, 426);
INSERT into traffic VALUES (479453482, CAST(N'2021-01-09' AS Date), 237235, 2893, 658);
INSERT into traffic VALUES (479453482, CAST(N'2021-01-10' AS Date), 237235, 1174, 660);
INSERT into traffic VALUES (479453482, CAST(N'2021-01-11' AS Date), 237235, 2405, 761);
INSERT into traffic VALUES (479453482, CAST(N'2021-01-12' AS Date), 237235, 2158, 587);
INSERT into traffic VALUES (479453482, CAST(N'2021-01-13' AS Date), 237235, 2121, 694);
INSERT into traffic VALUES (479453482, CAST(N'2021-01-14' AS Date), 237235, 1376, 360);
INSERT into traffic VALUES (479453482, CAST(N'2021-01-15' AS Date), 237235, 2987, 435);
INSERT into traffic VALUES (479453482, CAST(N'2021-01-16' AS Date), 237235, 1856, 555);
INSERT into traffic VALUES (479453482, CAST(N'2021-01-17' AS Date), 237235, 1250, 732);
INSERT into traffic VALUES (479453482, CAST(N'2021-01-18' AS Date), 237235, 2063, 751);
INSERT into traffic VALUES (479453482, CAST(N'2021-01-19' AS Date), 237235, 2349, 674);
INSERT into traffic VALUES (479453482, CAST(N'2021-01-20' AS Date), 237235, 2814, 721);
INSERT into traffic VALUES (479453482, CAST(N'2021-01-21' AS Date), 237235, 1315, 638);
INSERT into traffic VALUES (479453482, CAST(N'2021-01-22' AS Date), 237235, 2211, 638);
INSERT into traffic VALUES (479453482, CAST(N'2021-01-23' AS Date), 237235, 1886, 277);
INSERT into traffic VALUES (479453482, CAST(N'2021-01-24' AS Date), 237235, 2800, 396);
INSERT into traffic VALUES (479453482, CAST(N'2021-01-25' AS Date), 237235, 2263, 754);
INSERT into traffic VALUES (479453482, CAST(N'2021-01-26' AS Date), 237235, 2581, 772);
INSERT into traffic VALUES (479453482, CAST(N'2021-01-27' AS Date), 237235, 2626, 598);
INSERT into traffic VALUES (479453482, CAST(N'2021-01-28' AS Date), 237235, 1555, 504);
INSERT into traffic VALUES (479453482, CAST(N'2021-01-29' AS Date), 237235, 2203, 619);
INSERT into traffic VALUES (479453482, CAST(N'2021-01-30' AS Date), 237235, 1929, 249);
INSERT into traffic VALUES (535441554, CAST(N'2021-01-01' AS Date), 264938, 2427, 638);
INSERT into traffic VALUES (535441554, CAST(N'2021-01-02' AS Date), 264938, 2377, 745);
INSERT into traffic VALUES (535441554, CAST(N'2021-01-03' AS Date), 264938, 1817, 633);
INSERT into traffic VALUES (535441554, CAST(N'2021-01-04' AS Date), 264938, 1625, 267);
INSERT into traffic VALUES (535441554, CAST(N'2021-01-05' AS Date), 264938, 1568, 411);
INSERT into traffic VALUES (535441554, CAST(N'2021-01-06' AS Date), 264938, 1161, 259);
INSERT into traffic VALUES (535441554, CAST(N'2021-01-07' AS Date), 264938, 2566, 648);
INSERT into traffic VALUES (535441554, CAST(N'2021-01-08' AS Date), 264938, 2155, 705);
INSERT into traffic VALUES (535441554, CAST(N'2021-01-09' AS Date), 264938, 1057, 348);
INSERT into traffic VALUES (535441554, CAST(N'2021-01-10' AS Date), 264938, 2770, 268);
INSERT into traffic VALUES (535441554, CAST(N'2021-01-11' AS Date), 264938, 2884, 673);
INSERT into traffic VALUES (535441554, CAST(N'2021-01-12' AS Date), 264938, 2435, 497);
INSERT into traffic VALUES (535441554, CAST(N'2021-01-13' AS Date), 264938, 2340, 538);
INSERT into traffic VALUES (535441554, CAST(N'2021-01-14' AS Date), 264938, 1720, 371);
INSERT into traffic VALUES (535441554, CAST(N'2021-01-15' AS Date), 264938, 2723, 324);
INSERT into traffic VALUES (535441554, CAST(N'2021-01-16' AS Date), 264938, 1343, 376);
INSERT into traffic VALUES (535441554, CAST(N'2021-01-17' AS Date), 264938, 1353, 766);
INSERT into traffic VALUES (535441554, CAST(N'2021-01-18' AS Date), 264938, 1850, 772);
INSERT into traffic VALUES (535441554, CAST(N'2021-01-19' AS Date), 264938, 1256, 339);
INSERT into traffic VALUES (535441554, CAST(N'2021-01-20' AS Date), 264938, 2872, 589);
INSERT into traffic VALUES (535441554, CAST(N'2021-01-21' AS Date), 264938, 2052, 290);
INSERT into traffic VALUES (535441554, CAST(N'2021-01-22' AS Date), 264938, 2645, 877);
INSERT into traffic VALUES (535441554, CAST(N'2021-01-23' AS Date), 264938, 2839, 677);
INSERT into traffic VALUES (535441554, CAST(N'2021-01-24' AS Date), 264938, 1449, 812);
INSERT into traffic VALUES (535441554, CAST(N'2021-01-25' AS Date), 264938, 1424, 601);
INSERT into traffic VALUES (535441554, CAST(N'2021-01-26' AS Date), 264938, 1870, 637);
INSERT into traffic VALUES (535441554, CAST(N'2021-01-27' AS Date), 264938, 2979, 719);
INSERT into traffic VALUES (535441554, CAST(N'2021-01-28' AS Date), 264938, 1429, 609);
INSERT into traffic VALUES (535441554, CAST(N'2021-01-29' AS Date), 264938, 2990, 800);
INSERT into traffic VALUES (535441554, CAST(N'2021-01-30' AS Date), 264938, 2836, 714);
INSERT into traffic VALUES (568191501, CAST(N'2021-01-01' AS Date), 281143, 1909, 342);
INSERT into traffic VALUES (568191501, CAST(N'2021-01-02' AS Date), 281143, 2752, 411);
INSERT into traffic VALUES (568191501, CAST(N'2021-01-03' AS Date), 281143, 2416, 220);
INSERT into traffic VALUES (568191501, CAST(N'2021-01-04' AS Date), 281143, 1744, 579);
INSERT into traffic VALUES (568191501, CAST(N'2021-01-05' AS Date), 281143, 1312, 369);
INSERT into traffic VALUES (568191501, CAST(N'2021-01-06' AS Date), 281143, 2975, 460);
INSERT into traffic VALUES (568191501, CAST(N'2021-01-07' AS Date), 281143, 2183, 590);
INSERT into traffic VALUES (568191501, CAST(N'2021-01-08' AS Date), 281143, 2982, 655);
INSERT into traffic VALUES (568191501, CAST(N'2021-01-09' AS Date), 281143, 1350, 758);
INSERT into traffic VALUES (568191501, CAST(N'2021-01-10' AS Date), 281143, 1591, 476);
INSERT into traffic VALUES (568191501, CAST(N'2021-01-11' AS Date), 281143, 1832, 760);
INSERT into traffic VALUES (568191501, CAST(N'2021-01-12' AS Date), 281143, 2884, 687);
INSERT into traffic VALUES (568191501, CAST(N'2021-01-13' AS Date), 281143, 2611, 247);
INSERT into traffic VALUES (568191501, CAST(N'2021-01-14' AS Date), 281143, 2047, 537);
INSERT into traffic VALUES (568191501, CAST(N'2021-01-15' AS Date), 281143, 2552, 446);
INSERT into traffic VALUES (568191501, CAST(N'2021-01-16' AS Date), 281143, 1138, 636);
INSERT into traffic VALUES (568191501, CAST(N'2021-01-17' AS Date), 281143, 1998, 422);
INSERT into traffic VALUES (568191501, CAST(N'2021-01-18' AS Date), 281143, 1911, 495);
INSERT into traffic VALUES (568191501, CAST(N'2021-01-19' AS Date), 281143, 1360, 263);
INSERT into traffic VALUES (568191501, CAST(N'2021-01-20' AS Date), 281143, 1063, 661);
INSERT into traffic VALUES (568191501, CAST(N'2021-01-21' AS Date), 281143, 1420, 243);
INSERT into traffic VALUES (568191501, CAST(N'2021-01-22' AS Date), 281143, 1033, 524);
INSERT into traffic VALUES (568191501, CAST(N'2021-01-23' AS Date), 281143, 2017, 508);
INSERT into traffic VALUES (568191501, CAST(N'2021-01-24' AS Date), 281143, 1065, 566);
INSERT into traffic VALUES (568191501, CAST(N'2021-01-25' AS Date), 281143, 1855, 608);
INSERT into traffic VALUES (568191501, CAST(N'2021-01-26' AS Date), 281143, 1245, 745);
INSERT into traffic VALUES (568191501, CAST(N'2021-01-27' AS Date), 281143, 1346, 725);
INSERT into traffic VALUES (568191501, CAST(N'2021-01-28' AS Date), 281143, 1372, 796);
INSERT into traffic VALUES (568191501, CAST(N'2021-01-29' AS Date), 281143, 1355, 605);
INSERT into traffic VALUES (568191501, CAST(N'2021-01-30' AS Date), 281143, 2286, 673);
INSERT into traffic VALUES (571381413, CAST(N'2021-01-01' AS Date), 282722, 2597, 258);
INSERT into traffic VALUES (571381413, CAST(N'2021-01-02' AS Date), 282722, 1563, 397);
INSERT into traffic VALUES (571381413, CAST(N'2021-01-03' AS Date), 282722, 2572, 290);
INSERT into traffic VALUES (571381413, CAST(N'2021-01-04' AS Date), 282722, 1193, 575);
INSERT into traffic VALUES (571381413, CAST(N'2021-01-05' AS Date), 282722, 2687, 353);
INSERT into traffic VALUES (571381413, CAST(N'2021-01-06' AS Date), 282722, 1781, 344);
INSERT into traffic VALUES (571381413, CAST(N'2021-01-07' AS Date), 282722, 2000, 516);
INSERT into traffic VALUES (571381413, CAST(N'2021-01-08' AS Date), 282722, 2597, 505);
INSERT into traffic VALUES (571381413, CAST(N'2021-01-09' AS Date), 282722, 1576, 442);
INSERT into traffic VALUES (571381413, CAST(N'2021-01-10' AS Date), 282722, 1768, 458);
INSERT into traffic VALUES (571381413, CAST(N'2021-01-11' AS Date), 282722, 1115, 290);
INSERT into traffic VALUES (571381413, CAST(N'2021-01-12' AS Date), 282722, 2942, 563);
INSERT into traffic VALUES (571381413, CAST(N'2021-01-13' AS Date), 282722, 2699, 514);
INSERT into traffic VALUES (571381413, CAST(N'2021-01-14' AS Date), 282722, 2106, 210);
INSERT into traffic VALUES (571381413, CAST(N'2021-01-15' AS Date), 282722, 2445, 508);
INSERT into traffic VALUES (571381413, CAST(N'2021-01-16' AS Date), 282722, 2739, 460);
INSERT into traffic VALUES (571381413, CAST(N'2021-01-17' AS Date), 282722, 1129, 393);
INSERT into traffic VALUES (571381413, CAST(N'2021-01-18' AS Date), 282722, 1845, 388);
INSERT into traffic VALUES (571381413, CAST(N'2021-01-19' AS Date), 282722, 1384, 562);
INSERT into traffic VALUES (571381413, CAST(N'2021-01-20' AS Date), 282722, 2004, 321);
INSERT into traffic VALUES (571381413, CAST(N'2021-01-21' AS Date), 282722, 2315, 261);
INSERT into traffic VALUES (571381413, CAST(N'2021-01-22' AS Date), 282722, 1826, 228);
INSERT into traffic VALUES (571381413, CAST(N'2021-01-23' AS Date), 282722, 2769, 517);
INSERT into traffic VALUES (571381413, CAST(N'2021-01-24' AS Date), 282722, 2786, 305);
INSERT into traffic VALUES (571381413, CAST(N'2021-01-25' AS Date), 282722, 1271, 290);
INSERT into traffic VALUES (571381413, CAST(N'2021-01-26' AS Date), 282722, 1511, 336);
INSERT into traffic VALUES (571381413, CAST(N'2021-01-27' AS Date), 282722, 2544, 231);
INSERT into traffic VALUES (571381413, CAST(N'2021-01-28' AS Date), 282722, 1528, 401);
INSERT into traffic VALUES (571381413, CAST(N'2021-01-29' AS Date), 282722, 2437, 222);
INSERT into traffic VALUES (571381413, CAST(N'2021-01-30' AS Date), 282722, 1951, 567);
INSERT into traffic VALUES (571381421, CAST(N'2021-01-01' AS Date), 282722, 2275, 534);
INSERT into traffic VALUES (571381421, CAST(N'2021-01-02' AS Date), 282722, 1801, 287);
INSERT into traffic VALUES (571381421, CAST(N'2021-01-03' AS Date), 282722, 2550, 559);
INSERT into traffic VALUES (571381421, CAST(N'2021-01-04' AS Date), 282722, 2893, 349);
INSERT into traffic VALUES (571381421, CAST(N'2021-01-05' AS Date), 282722, 1175, 233);
INSERT into traffic VALUES (571381421, CAST(N'2021-01-06' AS Date), 282722, 1899, 551);
INSERT into traffic VALUES (571381421, CAST(N'2021-01-07' AS Date), 282722, 1582, 207);
INSERT into traffic VALUES (571381421, CAST(N'2021-01-08' AS Date), 282722, 1789, 234);
INSERT into traffic VALUES (571381421, CAST(N'2021-01-09' AS Date), 282722, 1564, 509);
INSERT into traffic VALUES (571381421, CAST(N'2021-01-10' AS Date), 282722, 2243, 291);
INSERT into traffic VALUES (571381421, CAST(N'2021-01-11' AS Date), 282722, 2445, 470);
INSERT into traffic VALUES (571381421, CAST(N'2021-01-12' AS Date), 282722, 1846, 488);
INSERT into traffic VALUES (571381421, CAST(N'2021-01-13' AS Date), 282722, 2293, 439);
INSERT into traffic VALUES (571381421, CAST(N'2021-01-14' AS Date), 282722, 1045, 493);
INSERT into traffic VALUES (571381421, CAST(N'2021-01-15' AS Date), 282722, 1493, 580);
INSERT into traffic VALUES (571381421, CAST(N'2021-01-16' AS Date), 282722, 2039, 537);
INSERT into traffic VALUES (571381421, CAST(N'2021-01-17' AS Date), 282722, 1408, 364);
INSERT into traffic VALUES (571381421, CAST(N'2021-01-18' AS Date), 282722, 2933, 219);
INSERT into traffic VALUES (571381421, CAST(N'2021-01-19' AS Date), 282722, 2428, 250);
INSERT into traffic VALUES (571381421, CAST(N'2021-01-20' AS Date), 282722, 2507, 378);
INSERT into traffic VALUES (571381421, CAST(N'2021-01-21' AS Date), 282722, 1783, 380);
INSERT into traffic VALUES (571381421, CAST(N'2021-01-22' AS Date), 282722, 2878, 293);
INSERT into traffic VALUES (571381421, CAST(N'2021-01-23' AS Date), 282722, 1380, 297);
INSERT into traffic VALUES (571381421, CAST(N'2021-01-24' AS Date), 282722, 2739, 422);
INSERT into traffic VALUES (571381421, CAST(N'2021-01-25' AS Date), 282722, 2531, 515);
INSERT into traffic VALUES (571381421, CAST(N'2021-01-26' AS Date), 282722, 1977, 245);
INSERT into traffic VALUES (571381421, CAST(N'2021-01-27' AS Date), 282722, 2798, 268);
INSERT into traffic VALUES (571381421, CAST(N'2021-01-28' AS Date), 282722, 2516, 371);
INSERT into traffic VALUES (571381421, CAST(N'2021-01-29' AS Date), 282722, 2342, 477);
INSERT into traffic VALUES (571381421, CAST(N'2021-01-30' AS Date), 282722, 1838, 417);
INSERT into traffic VALUES (571381428, CAST(N'2021-01-01' AS Date), 282722, 1069, 579);
INSERT into traffic VALUES (571381428, CAST(N'2021-01-02' AS Date), 282722, 2840, 418);
INSERT into traffic VALUES (571381428, CAST(N'2021-01-03' AS Date), 282722, 2050, 263);
INSERT into traffic VALUES (571381428, CAST(N'2021-01-04' AS Date), 282722, 1928, 323);
INSERT into traffic VALUES (571381428, CAST(N'2021-01-05' AS Date), 282722, 2120, 426);
INSERT into traffic VALUES (571381428, CAST(N'2021-01-06' AS Date), 282722, 2217, 518);
INSERT into traffic VALUES (571381428, CAST(N'2021-01-07' AS Date), 282722, 2282, 274);
INSERT into traffic VALUES (571381428, CAST(N'2021-01-08' AS Date), 282722, 2363, 556);
INSERT into traffic VALUES (571381428, CAST(N'2021-01-09' AS Date), 282722, 1173, 359);
INSERT into traffic VALUES (571381428, CAST(N'2021-01-10' AS Date), 282722, 2468, 264);
INSERT into traffic VALUES (571381428, CAST(N'2021-01-11' AS Date), 282722, 1111, 348);
INSERT into traffic VALUES (571381428, CAST(N'2021-01-12' AS Date), 282722, 2211, 255);
INSERT into traffic VALUES (571381428, CAST(N'2021-01-13' AS Date), 282722, 1493, 537);
INSERT into traffic VALUES (571381428, CAST(N'2021-01-14' AS Date), 282722, 1146, 444);
INSERT into traffic VALUES (571381428, CAST(N'2021-01-15' AS Date), 282722, 2527, 562);
INSERT into traffic VALUES (571381428, CAST(N'2021-01-16' AS Date), 282722, 1530, 403);
INSERT into traffic VALUES (571381428, CAST(N'2021-01-17' AS Date), 282722, 1880, 238);
INSERT into traffic VALUES (571381428, CAST(N'2021-01-18' AS Date), 282722, 2036, 500);
INSERT into traffic VALUES (571381428, CAST(N'2021-01-19' AS Date), 282722, 1241, 370);
INSERT into traffic VALUES (571381428, CAST(N'2021-01-20' AS Date), 282722, 2466, 317);
INSERT into traffic VALUES (571381428, CAST(N'2021-01-21' AS Date), 282722, 2498, 509);
INSERT into traffic VALUES (571381428, CAST(N'2021-01-22' AS Date), 282722, 1195, 322);
INSERT into traffic VALUES (571381428, CAST(N'2021-01-23' AS Date), 282722, 2733, 409);
INSERT into traffic VALUES (571381428, CAST(N'2021-01-24' AS Date), 282722, 2020, 568);
INSERT into traffic VALUES (571381428, CAST(N'2021-01-25' AS Date), 282722, 2144, 420);
INSERT into traffic VALUES (571381428, CAST(N'2021-01-26' AS Date), 282722, 2192, 233);
INSERT into traffic VALUES (571381428, CAST(N'2021-01-27' AS Date), 282722, 1857, 350);
INSERT into traffic VALUES (571381428, CAST(N'2021-01-28' AS Date), 282722, 2582, 283);
INSERT into traffic VALUES (571381428, CAST(N'2021-01-29' AS Date), 282722, 1668, 419);
INSERT into traffic VALUES (571381428, CAST(N'2021-01-30' AS Date), 282722, 1140, 245);
INSERT into traffic VALUES (589760921, CAST(N'2021-01-01' AS Date), 291816, 1421, 738);
INSERT into traffic VALUES (589760921, CAST(N'2021-01-02' AS Date), 291816, 2089, 550);
INSERT into traffic VALUES (589760921, CAST(N'2021-01-03' AS Date), 291816, 1736, 366);
INSERT into traffic VALUES (589760921, CAST(N'2021-01-04' AS Date), 291816, 2756, 767);
INSERT into traffic VALUES (589760921, CAST(N'2021-01-05' AS Date), 291816, 1114, 209);
INSERT into traffic VALUES (589760921, CAST(N'2021-01-06' AS Date), 291816, 2570, 461);
INSERT into traffic VALUES (589760921, CAST(N'2021-01-07' AS Date), 291816, 2804, 541);
INSERT into traffic VALUES (589760921, CAST(N'2021-01-08' AS Date), 291816, 1586, 461);
INSERT into traffic VALUES (589760921, CAST(N'2021-01-09' AS Date), 291816, 1449, 480);
INSERT into traffic VALUES (589760921, CAST(N'2021-01-10' AS Date), 291816, 1456, 303);
INSERT into traffic VALUES (589760921, CAST(N'2021-01-11' AS Date), 291816, 1414, 655);
INSERT into traffic VALUES (589760921, CAST(N'2021-01-12' AS Date), 291816, 2177, 271);
INSERT into traffic VALUES (589760921, CAST(N'2021-01-13' AS Date), 291816, 2523, 563);
INSERT into traffic VALUES (589760921, CAST(N'2021-01-14' AS Date), 291816, 1381, 558);
INSERT into traffic VALUES (589760921, CAST(N'2021-01-15' AS Date), 291816, 1814, 450);
INSERT into traffic VALUES (589760921, CAST(N'2021-01-16' AS Date), 291816, 1372, 417);
INSERT into traffic VALUES (589760921, CAST(N'2021-01-17' AS Date), 291816, 1441, 406);
INSERT into traffic VALUES (589760921, CAST(N'2021-01-18' AS Date), 291816, 1439, 617);
INSERT into traffic VALUES (589760921, CAST(N'2021-01-19' AS Date), 291816, 1910, 386);
INSERT into traffic VALUES (589760921, CAST(N'2021-01-20' AS Date), 291816, 1716, 790);
INSERT into traffic VALUES (589760921, CAST(N'2021-01-21' AS Date), 291816, 1252, 700);
INSERT into traffic VALUES (589760921, CAST(N'2021-01-22' AS Date), 291816, 1929, 478);
INSERT into traffic VALUES (589760921, CAST(N'2021-01-23' AS Date), 291816, 2701, 705);
INSERT into traffic VALUES (589760921, CAST(N'2021-01-24' AS Date), 291816, 1040, 624);
INSERT into traffic VALUES (589760921, CAST(N'2021-01-25' AS Date), 291816, 2865, 522);
INSERT into traffic VALUES (589760921, CAST(N'2021-01-26' AS Date), 291816, 2273, 702);
INSERT into traffic VALUES (589760921, CAST(N'2021-01-27' AS Date), 291816, 2523, 495);
INSERT into traffic VALUES (589760921, CAST(N'2021-01-28' AS Date), 291816, 2582, 508);
INSERT into traffic VALUES (589760921, CAST(N'2021-01-29' AS Date), 291816, 1157, 640);
INSERT into traffic VALUES (589760921, CAST(N'2021-01-30' AS Date), 291816, 2282, 537);
INSERT into traffic VALUES (594135345, CAST(N'2021-01-01' AS Date), 293980, 1752, 323);
INSERT into traffic VALUES (594135345, CAST(N'2021-01-02' AS Date), 293980, 1936, 563);
INSERT into traffic VALUES (594135345, CAST(N'2021-01-03' AS Date), 293980, 1566, 498);
INSERT into traffic VALUES (594135345, CAST(N'2021-01-04' AS Date), 293980, 2231, 466);
INSERT into traffic VALUES (594135345, CAST(N'2021-01-05' AS Date), 293980, 2715, 343);
INSERT into traffic VALUES (594135345, CAST(N'2021-01-06' AS Date), 293980, 1869, 225);
INSERT into traffic VALUES (594135345, CAST(N'2021-01-07' AS Date), 293980, 1821, 446);
INSERT into traffic VALUES (594135345, CAST(N'2021-01-08' AS Date), 293980, 1046, 280);
INSERT into traffic VALUES (594135345, CAST(N'2021-01-09' AS Date), 293980, 1761, 337);
INSERT into traffic VALUES (594135345, CAST(N'2021-01-10' AS Date), 293980, 2328, 576);
INSERT into traffic VALUES (594135345, CAST(N'2021-01-11' AS Date), 293980, 1307, 327);
INSERT into traffic VALUES (594135345, CAST(N'2021-01-12' AS Date), 293980, 2792, 525);
INSERT into traffic VALUES (594135345, CAST(N'2021-01-13' AS Date), 293980, 1847, 349);
INSERT into traffic VALUES (594135345, CAST(N'2021-01-14' AS Date), 293980, 1139, 263);
INSERT into traffic VALUES (594135345, CAST(N'2021-01-15' AS Date), 293980, 1447, 284);
INSERT into traffic VALUES (594135345, CAST(N'2021-01-16' AS Date), 293980, 1579, 207);
INSERT into traffic VALUES (594135345, CAST(N'2021-01-17' AS Date), 293980, 2796, 285);
INSERT into traffic VALUES (594135345, CAST(N'2021-01-18' AS Date), 293980, 2957, 380);
INSERT into traffic VALUES (594135345, CAST(N'2021-01-19' AS Date), 293980, 2630, 480);
INSERT into traffic VALUES (594135345, CAST(N'2021-01-20' AS Date), 293980, 2191, 323);
INSERT into traffic VALUES (594135345, CAST(N'2021-01-21' AS Date), 293980, 1699, 563);
INSERT into traffic VALUES (594135345, CAST(N'2021-01-22' AS Date), 293980, 1994, 582);
INSERT into traffic VALUES (594135345, CAST(N'2021-01-23' AS Date), 293980, 1298, 377);
INSERT into traffic VALUES (594135345, CAST(N'2021-01-24' AS Date), 293980, 2227, 420);
INSERT into traffic VALUES (594135345, CAST(N'2021-01-25' AS Date), 293980, 1472, 581);
INSERT into traffic VALUES (594135345, CAST(N'2021-01-26' AS Date), 293980, 2847, 237);
INSERT into traffic VALUES (594135345, CAST(N'2021-01-27' AS Date), 293980, 1323, 466);
INSERT into traffic VALUES (594135345, CAST(N'2021-01-28' AS Date), 293980, 2039, 328);
INSERT into traffic VALUES (594135345, CAST(N'2021-01-29' AS Date), 293980, 1880, 489);
INSERT into traffic VALUES (594135345, CAST(N'2021-01-30' AS Date), 293980, 1304, 311);
INSERT into traffic VALUES (607793168, CAST(N'2021-01-01' AS Date), 300738, 2112, 479);
INSERT into traffic VALUES (607793168, CAST(N'2021-01-02' AS Date), 300738, 2872, 356);
INSERT into traffic VALUES (607793168, CAST(N'2021-01-03' AS Date), 300738, 1021, 307);
INSERT into traffic VALUES (607793168, CAST(N'2021-01-04' AS Date), 300738, 2952, 210);
INSERT into traffic VALUES (607793168, CAST(N'2021-01-05' AS Date), 300738, 2115, 432);
INSERT into traffic VALUES (607793168, CAST(N'2021-01-06' AS Date), 300738, 2451, 512);
INSERT into traffic VALUES (607793168, CAST(N'2021-01-07' AS Date), 300738, 1856, 308);
INSERT into traffic VALUES (607793168, CAST(N'2021-01-08' AS Date), 300738, 2981, 440);
INSERT into traffic VALUES (607793168, CAST(N'2021-01-09' AS Date), 300738, 1231, 585);
INSERT into traffic VALUES (607793168, CAST(N'2021-01-10' AS Date), 300738, 2607, 365);
INSERT into traffic VALUES (607793168, CAST(N'2021-01-11' AS Date), 300738, 1710, 293);
INSERT into traffic VALUES (607793168, CAST(N'2021-01-12' AS Date), 300738, 1798, 491);
INSERT into traffic VALUES (607793168, CAST(N'2021-01-13' AS Date), 300738, 1700, 264);
INSERT into traffic VALUES (607793168, CAST(N'2021-01-14' AS Date), 300738, 1298, 554);
INSERT into traffic VALUES (607793168, CAST(N'2021-01-15' AS Date), 300738, 2747, 221);
INSERT into traffic VALUES (607793168, CAST(N'2021-01-16' AS Date), 300738, 1105, 323);
INSERT into traffic VALUES (607793168, CAST(N'2021-01-17' AS Date), 300738, 2190, 398);
INSERT into traffic VALUES (607793168, CAST(N'2021-01-18' AS Date), 300738, 1185, 243);
INSERT into traffic VALUES (607793168, CAST(N'2021-01-19' AS Date), 300738, 1088, 320);
INSERT into traffic VALUES (607793168, CAST(N'2021-01-20' AS Date), 300738, 1003, 264);
INSERT into traffic VALUES (607793168, CAST(N'2021-01-21' AS Date), 300738, 1026, 540);
INSERT into traffic VALUES (607793168, CAST(N'2021-01-22' AS Date), 300738, 1318, 511);
INSERT into traffic VALUES (607793168, CAST(N'2021-01-23' AS Date), 300738, 1052, 459);
INSERT into traffic VALUES (607793168, CAST(N'2021-01-24' AS Date), 300738, 1748, 576);
INSERT into traffic VALUES (607793168, CAST(N'2021-01-25' AS Date), 300738, 1573, 490);
INSERT into traffic VALUES (607793168, CAST(N'2021-01-26' AS Date), 300738, 2289, 382);
INSERT into traffic VALUES (607793168, CAST(N'2021-01-27' AS Date), 300738, 1541, 324);
INSERT into traffic VALUES (607793168, CAST(N'2021-01-28' AS Date), 300738, 2130, 243);
INSERT into traffic VALUES (607793168, CAST(N'2021-01-29' AS Date), 300738, 1851, 316);
INSERT into traffic VALUES (607793168, CAST(N'2021-01-30' AS Date), 300738, 1030, 235);
INSERT into traffic VALUES (609969940, CAST(N'2021-01-01' AS Date), 301815, 1918, 431);
INSERT into traffic VALUES (609969940, CAST(N'2021-01-02' AS Date), 301815, 1479, 553);
INSERT into traffic VALUES (609969940, CAST(N'2021-01-03' AS Date), 301815, 2642, 401);
INSERT into traffic VALUES (609969940, CAST(N'2021-01-04' AS Date), 301815, 2433, 358);
INSERT into traffic VALUES (609969940, CAST(N'2021-01-05' AS Date), 301815, 2854, 542);
INSERT into traffic VALUES (609969940, CAST(N'2021-01-06' AS Date), 301815, 2227, 407);
INSERT into traffic VALUES (609969940, CAST(N'2021-01-07' AS Date), 301815, 2953, 525);
INSERT into traffic VALUES (609969940, CAST(N'2021-01-08' AS Date), 301815, 1916, 200);
INSERT into traffic VALUES (609969940, CAST(N'2021-01-09' AS Date), 301815, 1358, 256);
INSERT into traffic VALUES (609969940, CAST(N'2021-01-10' AS Date), 301815, 1780, 501);
INSERT into traffic VALUES (609969940, CAST(N'2021-01-11' AS Date), 301815, 2055, 342);
INSERT into traffic VALUES (609969940, CAST(N'2021-01-12' AS Date), 301815, 1081, 368);
INSERT into traffic VALUES (609969940, CAST(N'2021-01-13' AS Date), 301815, 2637, 379);
INSERT into traffic VALUES (609969940, CAST(N'2021-01-14' AS Date), 301815, 1126, 529);
INSERT into traffic VALUES (609969940, CAST(N'2021-01-15' AS Date), 301815, 2460, 472);
INSERT into traffic VALUES (609969940, CAST(N'2021-01-16' AS Date), 301815, 2028, 252);
INSERT into traffic VALUES (609969940, CAST(N'2021-01-17' AS Date), 301815, 1811, 547);
INSERT into traffic VALUES (609969940, CAST(N'2021-01-18' AS Date), 301815, 1870, 517);
INSERT into traffic VALUES (609969940, CAST(N'2021-01-19' AS Date), 301815, 2097, 323);
INSERT into traffic VALUES (609969940, CAST(N'2021-01-20' AS Date), 301815, 1746, 512);
INSERT into traffic VALUES (609969940, CAST(N'2021-01-21' AS Date), 301815, 1596, 581);
INSERT into traffic VALUES (609969940, CAST(N'2021-01-22' AS Date), 301815, 2423, 232);
INSERT into traffic VALUES (609969940, CAST(N'2021-01-23' AS Date), 301815, 1919, 284);
INSERT into traffic VALUES (609969940, CAST(N'2021-01-24' AS Date), 301815, 1818, 203);
INSERT into traffic VALUES (609969940, CAST(N'2021-01-25' AS Date), 301815, 1937, 397);
INSERT into traffic VALUES (609969940, CAST(N'2021-01-26' AS Date), 301815, 2257, 268);
INSERT into traffic VALUES (609969940, CAST(N'2021-01-27' AS Date), 301815, 1218, 462);
INSERT into traffic VALUES (609969940, CAST(N'2021-01-28' AS Date), 301815, 1184, 591);
INSERT into traffic VALUES (609969940, CAST(N'2021-01-29' AS Date), 301815, 2397, 296);
INSERT into traffic VALUES (609969940, CAST(N'2021-01-30' AS Date), 301815, 2356, 421);
INSERT into traffic VALUES (612398208, CAST(N'2021-01-01' AS Date), 303017, 2964, 525);
INSERT into traffic VALUES (612398208, CAST(N'2021-01-02' AS Date), 303017, 1183, 644);
INSERT into traffic VALUES (612398208, CAST(N'2021-01-03' AS Date), 303017, 2157, 526);
INSERT into traffic VALUES (612398208, CAST(N'2021-01-04' AS Date), 303017, 2402, 367);
INSERT into traffic VALUES (612398208, CAST(N'2021-01-05' AS Date), 303017, 1074, 314);
INSERT into traffic VALUES (612398208, CAST(N'2021-01-06' AS Date), 303017, 1436, 481);
INSERT into traffic VALUES (612398208, CAST(N'2021-01-07' AS Date), 303017, 1738, 571);
INSERT into traffic VALUES (612398208, CAST(N'2021-01-08' AS Date), 303017, 2812, 416);
INSERT into traffic VALUES (612398208, CAST(N'2021-01-09' AS Date), 303017, 1499, 404);
INSERT into traffic VALUES (612398208, CAST(N'2021-01-10' AS Date), 303017, 2438, 604);
INSERT into traffic VALUES (612398208, CAST(N'2021-01-11' AS Date), 303017, 1856, 571);
INSERT into traffic VALUES (612398208, CAST(N'2021-01-12' AS Date), 303017, 1166, 706);
INSERT into traffic VALUES (612398208, CAST(N'2021-01-13' AS Date), 303017, 2317, 291);
INSERT into traffic VALUES (612398208, CAST(N'2021-01-14' AS Date), 303017, 2049, 578);
INSERT into traffic VALUES (612398208, CAST(N'2021-01-15' AS Date), 303017, 2402, 422);
INSERT into traffic VALUES (612398208, CAST(N'2021-01-16' AS Date), 303017, 1601, 373);
INSERT into traffic VALUES (612398208, CAST(N'2021-01-17' AS Date), 303017, 1697, 464);
INSERT into traffic VALUES (612398208, CAST(N'2021-01-18' AS Date), 303017, 1845, 760);
INSERT into traffic VALUES (612398208, CAST(N'2021-01-19' AS Date), 303017, 1859, 439);
INSERT into traffic VALUES (612398208, CAST(N'2021-01-20' AS Date), 303017, 2000, 795);
INSERT into traffic VALUES (612398208, CAST(N'2021-01-21' AS Date), 303017, 2136, 390);
INSERT into traffic VALUES (612398208, CAST(N'2021-01-22' AS Date), 303017, 2474, 416);
INSERT into traffic VALUES (612398208, CAST(N'2021-01-23' AS Date), 303017, 2282, 270);
INSERT into traffic VALUES (612398208, CAST(N'2021-01-24' AS Date), 303017, 1710, 677);
INSERT into traffic VALUES (612398208, CAST(N'2021-01-25' AS Date), 303017, 2958, 627);
INSERT into traffic VALUES (612398208, CAST(N'2021-01-26' AS Date), 303017, 2453, 541);
INSERT into traffic VALUES (612398208, CAST(N'2021-01-27' AS Date), 303017, 1841, 779);
INSERT into traffic VALUES (612398208, CAST(N'2021-01-28' AS Date), 303017, 1750, 784);
INSERT into traffic VALUES (612398208, CAST(N'2021-01-29' AS Date), 303017, 2440, 562);
INSERT into traffic VALUES (612398208, CAST(N'2021-01-30' AS Date), 303017, 1251, 479);
INSERT into traffic VALUES (624468271, CAST(N'2021-01-01' AS Date), 308989, 1814, 377);
INSERT into traffic VALUES (624468271, CAST(N'2021-01-02' AS Date), 308989, 1052, 377);
INSERT into traffic VALUES (624468271, CAST(N'2021-01-03' AS Date), 308989, 2209, 286);
INSERT into traffic VALUES (624468271, CAST(N'2021-01-04' AS Date), 308989, 2580, 371);
INSERT into traffic VALUES (624468271, CAST(N'2021-01-05' AS Date), 308989, 2558, 270);
INSERT into traffic VALUES (624468271, CAST(N'2021-01-06' AS Date), 308989, 2597, 386);
INSERT into traffic VALUES (624468271, CAST(N'2021-01-07' AS Date), 308989, 2981, 336);
INSERT into traffic VALUES (624468271, CAST(N'2021-01-08' AS Date), 308989, 2505, 323);
INSERT into traffic VALUES (624468271, CAST(N'2021-01-09' AS Date), 308989, 1020, 212);
INSERT into traffic VALUES (624468271, CAST(N'2021-01-10' AS Date), 308989, 2155, 232);
INSERT into traffic VALUES (624468271, CAST(N'2021-01-11' AS Date), 308989, 2092, 203);
INSERT into traffic VALUES (624468271, CAST(N'2021-01-12' AS Date), 308989, 2784, 361);
INSERT into traffic VALUES (624468271, CAST(N'2021-01-13' AS Date), 308989, 1727, 358);
INSERT into traffic VALUES (624468271, CAST(N'2021-01-14' AS Date), 308989, 2106, 274);
INSERT into traffic VALUES (624468271, CAST(N'2021-01-15' AS Date), 308989, 1794, 284);
INSERT into traffic VALUES (624468271, CAST(N'2021-01-16' AS Date), 308989, 1745, 391);
INSERT into traffic VALUES (624468271, CAST(N'2021-01-17' AS Date), 308989, 1185, 346);
INSERT into traffic VALUES (624468271, CAST(N'2021-01-18' AS Date), 308989, 2252, 268);
INSERT into traffic VALUES (624468271, CAST(N'2021-01-19' AS Date), 308989, 1602, 345);
INSERT into traffic VALUES (624468271, CAST(N'2021-01-20' AS Date), 308989, 1600, 301);
INSERT into traffic VALUES (624468271, CAST(N'2021-01-21' AS Date), 308989, 2255, 287);
INSERT into traffic VALUES (624468271, CAST(N'2021-01-22' AS Date), 308989, 2164, 275);
INSERT into traffic VALUES (624468271, CAST(N'2021-01-23' AS Date), 308989, 2237, 394);
INSERT into traffic VALUES (624468271, CAST(N'2021-01-24' AS Date), 308989, 1574, 237);
INSERT into traffic VALUES (624468271, CAST(N'2021-01-25' AS Date), 308989, 2900, 270);
INSERT into traffic VALUES (624468271, CAST(N'2021-01-26' AS Date), 308989, 2471, 385);
INSERT into traffic VALUES (624468271, CAST(N'2021-01-27' AS Date), 308989, 1744, 386);
INSERT into traffic VALUES (624468271, CAST(N'2021-01-28' AS Date), 308989, 1719, 262);
INSERT into traffic VALUES (624468271, CAST(N'2021-01-29' AS Date), 308989, 2333, 357);
INSERT into traffic VALUES (624468271, CAST(N'2021-01-30' AS Date), 308989, 2209, 257);
INSERT into traffic VALUES (626440076, CAST(N'2021-01-01' AS Date), 309965, 2222, 702);
INSERT into traffic VALUES (626440076, CAST(N'2021-01-02' AS Date), 309965, 2709, 452);
INSERT into traffic VALUES (626440076, CAST(N'2021-01-03' AS Date), 309965, 2993, 500);
INSERT into traffic VALUES (626440076, CAST(N'2021-01-04' AS Date), 309965, 2886, 746);
INSERT into traffic VALUES (626440076, CAST(N'2021-01-05' AS Date), 309965, 2094, 598);
INSERT into traffic VALUES (626440076, CAST(N'2021-01-06' AS Date), 309965, 1899, 457);
INSERT into traffic VALUES (626440076, CAST(N'2021-01-07' AS Date), 309965, 2481, 237);
INSERT into traffic VALUES (626440076, CAST(N'2021-01-08' AS Date), 309965, 2120, 676);
INSERT into traffic VALUES (626440076, CAST(N'2021-01-09' AS Date), 309965, 2807, 486);
INSERT into traffic VALUES (626440076, CAST(N'2021-01-10' AS Date), 309965, 2432, 675);
INSERT into traffic VALUES (626440076, CAST(N'2021-01-11' AS Date), 309965, 2037, 747);
INSERT into traffic VALUES (626440076, CAST(N'2021-01-12' AS Date), 309965, 2968, 392);
INSERT into traffic VALUES (626440076, CAST(N'2021-01-13' AS Date), 309965, 2409, 712);
INSERT into traffic VALUES (626440076, CAST(N'2021-01-14' AS Date), 309965, 1738, 670);
INSERT into traffic VALUES (626440076, CAST(N'2021-01-15' AS Date), 309965, 2097, 423);
INSERT into traffic VALUES (626440076, CAST(N'2021-01-16' AS Date), 309965, 1732, 495);
INSERT into traffic VALUES (626440076, CAST(N'2021-01-17' AS Date), 309965, 1130, 702);
INSERT into traffic VALUES (626440076, CAST(N'2021-01-18' AS Date), 309965, 2348, 398);
INSERT into traffic VALUES (626440076, CAST(N'2021-01-19' AS Date), 309965, 2207, 602);
INSERT into traffic VALUES (626440076, CAST(N'2021-01-20' AS Date), 309965, 1063, 621);
INSERT into traffic VALUES (626440076, CAST(N'2021-01-21' AS Date), 309965, 1757, 439);
INSERT into traffic VALUES (626440076, CAST(N'2021-01-22' AS Date), 309965, 1369, 656);
INSERT into traffic VALUES (626440076, CAST(N'2021-01-23' AS Date), 309965, 2382, 372);
INSERT into traffic VALUES (626440076, CAST(N'2021-01-24' AS Date), 309965, 1591, 494);
INSERT into traffic VALUES (626440076, CAST(N'2021-01-25' AS Date), 309965, 1173, 404);
INSERT into traffic VALUES (626440076, CAST(N'2021-01-26' AS Date), 309965, 2491, 276);
INSERT into traffic VALUES (626440076, CAST(N'2021-01-27' AS Date), 309965, 2041, 624);
INSERT into traffic VALUES (626440076, CAST(N'2021-01-28' AS Date), 309965, 1663, 200);
INSERT into traffic VALUES (626440076, CAST(N'2021-01-29' AS Date), 309965, 2106, 427);
INSERT into traffic VALUES (626440076, CAST(N'2021-01-30' AS Date), 309965, 2234, 739);
INSERT into traffic VALUES (632051805, CAST(N'2021-01-01' AS Date), 312742, 2596, 201);
INSERT into traffic VALUES (632051805, CAST(N'2021-01-02' AS Date), 312742, 2394, 236);
INSERT into traffic VALUES (632051805, CAST(N'2021-01-03' AS Date), 312742, 2868, 259);
INSERT into traffic VALUES (632051805, CAST(N'2021-01-04' AS Date), 312742, 2905, 500);
INSERT into traffic VALUES (632051805, CAST(N'2021-01-05' AS Date), 312742, 2798, 262);
INSERT into traffic VALUES (632051805, CAST(N'2021-01-06' AS Date), 312742, 1930, 694);
INSERT into traffic VALUES (632051805, CAST(N'2021-01-07' AS Date), 312742, 1960, 381);
INSERT into traffic VALUES (632051805, CAST(N'2021-01-08' AS Date), 312742, 1386, 763);
INSERT into traffic VALUES (632051805, CAST(N'2021-01-09' AS Date), 312742, 2852, 384);
INSERT into traffic VALUES (632051805, CAST(N'2021-01-10' AS Date), 312742, 2068, 212);
INSERT into traffic VALUES (632051805, CAST(N'2021-01-11' AS Date), 312742, 2993, 767);
INSERT into traffic VALUES (632051805, CAST(N'2021-01-12' AS Date), 312742, 1894, 516);
INSERT into traffic VALUES (632051805, CAST(N'2021-01-13' AS Date), 312742, 1369, 771);
INSERT into traffic VALUES (632051805, CAST(N'2021-01-14' AS Date), 312742, 2743, 323);
INSERT into traffic VALUES (632051805, CAST(N'2021-01-15' AS Date), 312742, 1775, 266);
INSERT into traffic VALUES (632051805, CAST(N'2021-01-16' AS Date), 312742, 1706, 699);
INSERT into traffic VALUES (632051805, CAST(N'2021-01-17' AS Date), 312742, 2883, 755);
INSERT into traffic VALUES (632051805, CAST(N'2021-01-18' AS Date), 312742, 1713, 498);
INSERT into traffic VALUES (632051805, CAST(N'2021-01-19' AS Date), 312742, 1873, 598);
INSERT into traffic VALUES (632051805, CAST(N'2021-01-20' AS Date), 312742, 1602, 706);
INSERT into traffic VALUES (632051805, CAST(N'2021-01-21' AS Date), 312742, 2863, 699);
INSERT into traffic VALUES (632051805, CAST(N'2021-01-22' AS Date), 312742, 2162, 594);
INSERT into traffic VALUES (632051805, CAST(N'2021-01-23' AS Date), 312742, 2598, 647);
INSERT into traffic VALUES (632051805, CAST(N'2021-01-24' AS Date), 312742, 2301, 500);
INSERT into traffic VALUES (632051805, CAST(N'2021-01-25' AS Date), 312742, 2060, 642);
INSERT into traffic VALUES (632051805, CAST(N'2021-01-26' AS Date), 312742, 2357, 225);
INSERT into traffic VALUES (632051805, CAST(N'2021-01-27' AS Date), 312742, 2316, 299);
INSERT into traffic VALUES (632051805, CAST(N'2021-01-28' AS Date), 312742, 2497, 261);
INSERT into traffic VALUES (632051805, CAST(N'2021-01-29' AS Date), 312742, 2063, 777);
INSERT into traffic VALUES (632051805, CAST(N'2021-01-30' AS Date), 312742, 1239, 525);
INSERT into traffic VALUES (638887870, CAST(N'2021-01-01' AS Date), 316124, 2892, 395);
INSERT into traffic VALUES (638887870, CAST(N'2021-01-02' AS Date), 316124, 2001, 376);
INSERT into traffic VALUES (638887870, CAST(N'2021-01-03' AS Date), 316124, 2944, 487);
INSERT into traffic VALUES (638887870, CAST(N'2021-01-04' AS Date), 316124, 2424, 570);
INSERT into traffic VALUES (638887870, CAST(N'2021-01-05' AS Date), 316124, 2356, 541);
INSERT into traffic VALUES (638887870, CAST(N'2021-01-06' AS Date), 316124, 2080, 276);
INSERT into traffic VALUES (638887870, CAST(N'2021-01-07' AS Date), 316124, 2167, 325);
INSERT into traffic VALUES (638887870, CAST(N'2021-01-08' AS Date), 316124, 1831, 387);
INSERT into traffic VALUES (638887870, CAST(N'2021-01-09' AS Date), 316124, 2017, 310);
INSERT into traffic VALUES (638887870, CAST(N'2021-01-10' AS Date), 316124, 2057, 306);
INSERT into traffic VALUES (638887870, CAST(N'2021-01-11' AS Date), 316124, 1868, 511);
INSERT into traffic VALUES (638887870, CAST(N'2021-01-12' AS Date), 316124, 1939, 532);
INSERT into traffic VALUES (638887870, CAST(N'2021-01-13' AS Date), 316124, 2221, 422);
INSERT into traffic VALUES (638887870, CAST(N'2021-01-14' AS Date), 316124, 2175, 320);
INSERT into traffic VALUES (638887870, CAST(N'2021-01-15' AS Date), 316124, 1838, 576);
INSERT into traffic VALUES (638887870, CAST(N'2021-01-16' AS Date), 316124, 1656, 590);
INSERT into traffic VALUES (638887870, CAST(N'2021-01-17' AS Date), 316124, 2365, 436);
INSERT into traffic VALUES (638887870, CAST(N'2021-01-18' AS Date), 316124, 2261, 333);
INSERT into traffic VALUES (638887870, CAST(N'2021-01-19' AS Date), 316124, 1617, 413);
INSERT into traffic VALUES (638887870, CAST(N'2021-01-20' AS Date), 316124, 1860, 284);
INSERT into traffic VALUES (638887870, CAST(N'2021-01-21' AS Date), 316124, 1852, 469);
INSERT into traffic VALUES (638887870, CAST(N'2021-01-22' AS Date), 316124, 1102, 254);
INSERT into traffic VALUES (638887870, CAST(N'2021-01-23' AS Date), 316124, 1460, 408);
INSERT into traffic VALUES (638887870, CAST(N'2021-01-24' AS Date), 316124, 1460, 338);
INSERT into traffic VALUES (638887870, CAST(N'2021-01-25' AS Date), 316124, 2272, 500);
INSERT into traffic VALUES (638887870, CAST(N'2021-01-26' AS Date), 316124, 1591, 492);
INSERT into traffic VALUES (638887870, CAST(N'2021-01-27' AS Date), 316124, 2060, 359);
INSERT into traffic VALUES (638887870, CAST(N'2021-01-28' AS Date), 316124, 2439, 303);
INSERT into traffic VALUES (638887870, CAST(N'2021-01-29' AS Date), 316124, 1268, 321);
INSERT into traffic VALUES (638887870, CAST(N'2021-01-30' AS Date), 316124, 2806, 285);
INSERT into traffic VALUES (639281677, CAST(N'2021-01-01' AS Date), 316319, 1208, 252);
INSERT into traffic VALUES (639281677, CAST(N'2021-01-02' AS Date), 316319, 2121, 211);
INSERT into traffic VALUES (639281677, CAST(N'2021-01-03' AS Date), 316319, 1374, 327);
INSERT into traffic VALUES (639281677, CAST(N'2021-01-04' AS Date), 316319, 1400, 578);
INSERT into traffic VALUES (639281677, CAST(N'2021-01-05' AS Date), 316319, 2502, 427);
INSERT into traffic VALUES (639281677, CAST(N'2021-01-06' AS Date), 316319, 1160, 748);
INSERT into traffic VALUES (639281677, CAST(N'2021-01-07' AS Date), 316319, 1771, 790);
INSERT into traffic VALUES (639281677, CAST(N'2021-01-08' AS Date), 316319, 2377, 293);
INSERT into traffic VALUES (639281677, CAST(N'2021-01-09' AS Date), 316319, 1550, 464);
INSERT into traffic VALUES (639281677, CAST(N'2021-01-10' AS Date), 316319, 2010, 705);
INSERT into traffic VALUES (639281677, CAST(N'2021-01-11' AS Date), 316319, 1499, 447);
INSERT into traffic VALUES (639281677, CAST(N'2021-01-12' AS Date), 316319, 2107, 215);
INSERT into traffic VALUES (639281677, CAST(N'2021-01-13' AS Date), 316319, 1523, 616);
INSERT into traffic VALUES (639281677, CAST(N'2021-01-14' AS Date), 316319, 2076, 683);
INSERT into traffic VALUES (639281677, CAST(N'2021-01-15' AS Date), 316319, 1821, 647);
INSERT into traffic VALUES (639281677, CAST(N'2021-01-16' AS Date), 316319, 2700, 320);
INSERT into traffic VALUES (639281677, CAST(N'2021-01-17' AS Date), 316319, 2888, 369);
INSERT into traffic VALUES (639281677, CAST(N'2021-01-18' AS Date), 316319, 2380, 273);
INSERT into traffic VALUES (639281677, CAST(N'2021-01-19' AS Date), 316319, 1558, 346);
INSERT into traffic VALUES (639281677, CAST(N'2021-01-20' AS Date), 316319, 1018, 660);
INSERT into traffic VALUES (639281677, CAST(N'2021-01-21' AS Date), 316319, 2442, 783);
INSERT into traffic VALUES (639281677, CAST(N'2021-01-22' AS Date), 316319, 1841, 713);
INSERT into traffic VALUES (639281677, CAST(N'2021-01-23' AS Date), 316319, 2776, 384);
INSERT into traffic VALUES (639281677, CAST(N'2021-01-24' AS Date), 316319, 2459, 505);
INSERT into traffic VALUES (639281677, CAST(N'2021-01-25' AS Date), 316319, 2301, 401);
INSERT into traffic VALUES (639281677, CAST(N'2021-01-26' AS Date), 316319, 2126, 471);
INSERT into traffic VALUES (639281677, CAST(N'2021-01-27' AS Date), 316319, 2948, 667);
INSERT into traffic VALUES (639281677, CAST(N'2021-01-28' AS Date), 316319, 1278, 619);
INSERT into traffic VALUES (639281677, CAST(N'2021-01-29' AS Date), 316319, 1261, 717);
INSERT into traffic VALUES (639281677, CAST(N'2021-01-30' AS Date), 316319, 1996, 475);
INSERT into traffic VALUES (642386769, CAST(N'2021-01-01' AS Date), 317855, 2528, 252);
INSERT into traffic VALUES (642386769, CAST(N'2021-01-02' AS Date), 317855, 2508, 347);
INSERT into traffic VALUES (642386769, CAST(N'2021-01-03' AS Date), 317855, 2902, 391);
INSERT into traffic VALUES (642386769, CAST(N'2021-01-04' AS Date), 317855, 2012, 354);
INSERT into traffic VALUES (642386769, CAST(N'2021-01-05' AS Date), 317855, 2123, 297);
INSERT into traffic VALUES (642386769, CAST(N'2021-01-06' AS Date), 317855, 2221, 229);
INSERT into traffic VALUES (642386769, CAST(N'2021-01-07' AS Date), 317855, 2589, 371);
INSERT into traffic VALUES (642386769, CAST(N'2021-01-08' AS Date), 317855, 1525, 358);
INSERT into traffic VALUES (642386769, CAST(N'2021-01-09' AS Date), 317855, 2035, 210);
INSERT into traffic VALUES (642386769, CAST(N'2021-01-10' AS Date), 317855, 2080, 358);
INSERT into traffic VALUES (642386769, CAST(N'2021-01-11' AS Date), 317855, 1107, 251);
INSERT into traffic VALUES (642386769, CAST(N'2021-01-12' AS Date), 317855, 2025, 371);
INSERT into traffic VALUES (642386769, CAST(N'2021-01-13' AS Date), 317855, 2078, 211);
INSERT into traffic VALUES (642386769, CAST(N'2021-01-14' AS Date), 317855, 1141, 363);
INSERT into traffic VALUES (642386769, CAST(N'2021-01-15' AS Date), 317855, 2342, 249);
INSERT into traffic VALUES (642386769, CAST(N'2021-01-16' AS Date), 317855, 1744, 250);
INSERT into traffic VALUES (642386769, CAST(N'2021-01-17' AS Date), 317855, 1799, 393);
INSERT into traffic VALUES (642386769, CAST(N'2021-01-18' AS Date), 317855, 2450, 242);
INSERT into traffic VALUES (642386769, CAST(N'2021-01-19' AS Date), 317855, 2126, 329);
INSERT into traffic VALUES (642386769, CAST(N'2021-01-20' AS Date), 317855, 2213, 386);
INSERT into traffic VALUES (642386769, CAST(N'2021-01-21' AS Date), 317855, 2387, 253);
INSERT into traffic VALUES (642386769, CAST(N'2021-01-22' AS Date), 317855, 1518, 288);
INSERT into traffic VALUES (642386769, CAST(N'2021-01-23' AS Date), 317855, 1040, 268);
INSERT into traffic VALUES (642386769, CAST(N'2021-01-24' AS Date), 317855, 1205, 333);
INSERT into traffic VALUES (642386769, CAST(N'2021-01-25' AS Date), 317855, 1600, 252);
INSERT into traffic VALUES (642386769, CAST(N'2021-01-26' AS Date), 317855, 1797, 235);
INSERT into traffic VALUES (642386769, CAST(N'2021-01-27' AS Date), 317855, 2820, 392);
INSERT into traffic VALUES (642386769, CAST(N'2021-01-28' AS Date), 317855, 1814, 386);
INSERT into traffic VALUES (642386769, CAST(N'2021-01-29' AS Date), 317855, 2084, 308);
INSERT into traffic VALUES (642386769, CAST(N'2021-01-30' AS Date), 317855, 2343, 225);
INSERT into traffic VALUES (642386775, CAST(N'2021-01-01' AS Date), 317855, 2988, 390);
INSERT into traffic VALUES (642386775, CAST(N'2021-01-02' AS Date), 317855, 1859, 216);
INSERT into traffic VALUES (642386775, CAST(N'2021-01-03' AS Date), 317855, 2248, 214);
INSERT into traffic VALUES (642386775, CAST(N'2021-01-04' AS Date), 317855, 2772, 270);
INSERT into traffic VALUES (642386775, CAST(N'2021-01-05' AS Date), 317855, 2845, 371);
INSERT into traffic VALUES (642386775, CAST(N'2021-01-06' AS Date), 317855, 1313, 389);
INSERT into traffic VALUES (642386775, CAST(N'2021-01-07' AS Date), 317855, 2958, 283);
INSERT into traffic VALUES (642386775, CAST(N'2021-01-08' AS Date), 317855, 1750, 317);
INSERT into traffic VALUES (642386775, CAST(N'2021-01-09' AS Date), 317855, 1967, 231);
INSERT into traffic VALUES (642386775, CAST(N'2021-01-10' AS Date), 317855, 1020, 315);
INSERT into traffic VALUES (642386775, CAST(N'2021-01-11' AS Date), 317855, 2286, 220);
INSERT into traffic VALUES (642386775, CAST(N'2021-01-12' AS Date), 317855, 1453, 266);
INSERT into traffic VALUES (642386775, CAST(N'2021-01-13' AS Date), 317855, 1046, 231);
INSERT into traffic VALUES (642386775, CAST(N'2021-01-14' AS Date), 317855, 2239, 200);
INSERT into traffic VALUES (642386775, CAST(N'2021-01-15' AS Date), 317855, 1824, 350);
INSERT into traffic VALUES (642386775, CAST(N'2021-01-16' AS Date), 317855, 2980, 334);
INSERT into traffic VALUES (642386775, CAST(N'2021-01-17' AS Date), 317855, 2815, 385);
INSERT into traffic VALUES (642386775, CAST(N'2021-01-18' AS Date), 317855, 1576, 396);
INSERT into traffic VALUES (642386775, CAST(N'2021-01-19' AS Date), 317855, 2833, 337);
INSERT into traffic VALUES (642386775, CAST(N'2021-01-20' AS Date), 317855, 1947, 215);
INSERT into traffic VALUES (642386775, CAST(N'2021-01-21' AS Date), 317855, 2166, 298);
INSERT into traffic VALUES (642386775, CAST(N'2021-01-22' AS Date), 317855, 1295, 205);
INSERT into traffic VALUES (642386775, CAST(N'2021-01-23' AS Date), 317855, 1275, 302);
INSERT into traffic VALUES (642386775, CAST(N'2021-01-24' AS Date), 317855, 2490, 351);
INSERT into traffic VALUES (642386775, CAST(N'2021-01-25' AS Date), 317855, 1441, 226);
INSERT into traffic VALUES (642386775, CAST(N'2021-01-26' AS Date), 317855, 2910, 324);
INSERT into traffic VALUES (642386775, CAST(N'2021-01-27' AS Date), 317855, 2828, 379);
INSERT into traffic VALUES (642386775, CAST(N'2021-01-28' AS Date), 317855, 2589, 331);
INSERT into traffic VALUES (642386775, CAST(N'2021-01-29' AS Date), 317855, 1316, 369);
INSERT into traffic VALUES (642386775, CAST(N'2021-01-30' AS Date), 317855, 2284, 243);
INSERT into traffic VALUES (642386778, CAST(N'2021-01-01' AS Date), 317855, 1106, 210);
INSERT into traffic VALUES (642386778, CAST(N'2021-01-02' AS Date), 317855, 1629, 238);
INSERT into traffic VALUES (642386778, CAST(N'2021-01-03' AS Date), 317855, 1897, 335);
INSERT into traffic VALUES (642386778, CAST(N'2021-01-04' AS Date), 317855, 2308, 204);
INSERT into traffic VALUES (642386778, CAST(N'2021-01-05' AS Date), 317855, 2494, 375);
INSERT into traffic VALUES (642386778, CAST(N'2021-01-06' AS Date), 317855, 2183, 310);
INSERT into traffic VALUES (642386778, CAST(N'2021-01-07' AS Date), 317855, 1935, 309);
INSERT into traffic VALUES (642386778, CAST(N'2021-01-08' AS Date), 317855, 1457, 209);
INSERT into traffic VALUES (642386778, CAST(N'2021-01-09' AS Date), 317855, 2734, 261);
INSERT into traffic VALUES (642386778, CAST(N'2021-01-10' AS Date), 317855, 1900, 360);
INSERT into traffic VALUES (642386778, CAST(N'2021-01-11' AS Date), 317855, 2339, 343);
INSERT into traffic VALUES (642386778, CAST(N'2021-01-12' AS Date), 317855, 1721, 302);
INSERT into traffic VALUES (642386778, CAST(N'2021-01-13' AS Date), 317855, 1850, 397);
INSERT into traffic VALUES (642386778, CAST(N'2021-01-14' AS Date), 317855, 1639, 349);
INSERT into traffic VALUES (642386778, CAST(N'2021-01-15' AS Date), 317855, 1529, 268);
INSERT into traffic VALUES (642386778, CAST(N'2021-01-16' AS Date), 317855, 1161, 242);
INSERT into traffic VALUES (642386778, CAST(N'2021-01-17' AS Date), 317855, 1238, 325);
INSERT into traffic VALUES (642386778, CAST(N'2021-01-18' AS Date), 317855, 2103, 217);
INSERT into traffic VALUES (642386778, CAST(N'2021-01-19' AS Date), 317855, 1975, 238);
INSERT into traffic VALUES (642386778, CAST(N'2021-01-20' AS Date), 317855, 1612, 267);
INSERT into traffic VALUES (642386778, CAST(N'2021-01-21' AS Date), 317855, 1362, 280);
INSERT into traffic VALUES (642386778, CAST(N'2021-01-22' AS Date), 317855, 2228, 382);
INSERT into traffic VALUES (642386778, CAST(N'2021-01-23' AS Date), 317855, 1441, 298);
INSERT into traffic VALUES (642386778, CAST(N'2021-01-24' AS Date), 317855, 2185, 327);
INSERT into traffic VALUES (642386778, CAST(N'2021-01-25' AS Date), 317855, 1594, 296);
INSERT into traffic VALUES (642386778, CAST(N'2021-01-26' AS Date), 317855, 2163, 287);
INSERT into traffic VALUES (642386778, CAST(N'2021-01-27' AS Date), 317855, 2737, 211);
INSERT into traffic VALUES (642386778, CAST(N'2021-01-28' AS Date), 317855, 2452, 215);
INSERT into traffic VALUES (642386778, CAST(N'2021-01-29' AS Date), 317855, 2315, 215);
INSERT into traffic VALUES (642386778, CAST(N'2021-01-30' AS Date), 317855, 2808, 262);
INSERT into traffic VALUES (645420194, CAST(N'2021-01-01' AS Date), 319356, 1968, 757);
INSERT into traffic VALUES (645420194, CAST(N'2021-01-02' AS Date), 319356, 1774, 409);
INSERT into traffic VALUES (645420194, CAST(N'2021-01-03' AS Date), 319356, 2628, 348);
INSERT into traffic VALUES (645420194, CAST(N'2021-01-04' AS Date), 319356, 1385, 305);
INSERT into traffic VALUES (645420194, CAST(N'2021-01-05' AS Date), 319356, 1249, 624);
INSERT into traffic VALUES (645420194, CAST(N'2021-01-06' AS Date), 319356, 2472, 531);
INSERT into traffic VALUES (645420194, CAST(N'2021-01-07' AS Date), 319356, 1541, 949);
INSERT into traffic VALUES (645420194, CAST(N'2021-01-08' AS Date), 319356, 2222, 939);
INSERT into traffic VALUES (645420194, CAST(N'2021-01-09' AS Date), 319356, 1570, 603);
INSERT into traffic VALUES (645420194, CAST(N'2021-01-10' AS Date), 319356, 2742, 875);
INSERT into traffic VALUES (645420194, CAST(N'2021-01-11' AS Date), 319356, 1965, 207);
INSERT into traffic VALUES (645420194, CAST(N'2021-01-12' AS Date), 319356, 2642, 433);
INSERT into traffic VALUES (645420194, CAST(N'2021-01-13' AS Date), 319356, 2658, 424);
INSERT into traffic VALUES (645420194, CAST(N'2021-01-14' AS Date), 319356, 1668, 934);
INSERT into traffic VALUES (645420194, CAST(N'2021-01-15' AS Date), 319356, 2260, 529);
INSERT into traffic VALUES (645420194, CAST(N'2021-01-16' AS Date), 319356, 2694, 239);
INSERT into traffic VALUES (645420194, CAST(N'2021-01-17' AS Date), 319356, 1281, 660);
INSERT into traffic VALUES (645420194, CAST(N'2021-01-18' AS Date), 319356, 1333, 374);
INSERT into traffic VALUES (645420194, CAST(N'2021-01-19' AS Date), 319356, 2122, 271);
INSERT into traffic VALUES (645420194, CAST(N'2021-01-20' AS Date), 319356, 1230, 202);
INSERT into traffic VALUES (645420194, CAST(N'2021-01-21' AS Date), 319356, 1730, 852);
INSERT into traffic VALUES (645420194, CAST(N'2021-01-22' AS Date), 319356, 1014, 938);
INSERT into traffic VALUES (645420194, CAST(N'2021-01-23' AS Date), 319356, 1462, 463);
INSERT into traffic VALUES (645420194, CAST(N'2021-01-24' AS Date), 319356, 1447, 604);
INSERT into traffic VALUES (645420194, CAST(N'2021-01-25' AS Date), 319356, 2756, 894);
INSERT into traffic VALUES (645420194, CAST(N'2021-01-26' AS Date), 319356, 2286, 856);
INSERT into traffic VALUES (645420194, CAST(N'2021-01-27' AS Date), 319356, 1118, 241);
INSERT into traffic VALUES (645420194, CAST(N'2021-01-28' AS Date), 319356, 2824, 741);
INSERT into traffic VALUES (645420194, CAST(N'2021-01-29' AS Date), 319356, 2101, 584);
INSERT into traffic VALUES (645420194, CAST(N'2021-01-30' AS Date), 319356, 1531, 340);
INSERT into traffic VALUES (645420278, CAST(N'2021-01-01' AS Date), 319356, 2504, 446);
INSERT into traffic VALUES (645420278, CAST(N'2021-01-02' AS Date), 319356, 1071, 821);
INSERT into traffic VALUES (645420278, CAST(N'2021-01-03' AS Date), 319356, 1736, 710);
INSERT into traffic VALUES (645420278, CAST(N'2021-01-04' AS Date), 319356, 2480, 725);
INSERT into traffic VALUES (645420278, CAST(N'2021-01-05' AS Date), 319356, 1378, 454);
INSERT into traffic VALUES (645420278, CAST(N'2021-01-06' AS Date), 319356, 2435, 579);
INSERT into traffic VALUES (645420278, CAST(N'2021-01-07' AS Date), 319356, 2232, 563);
INSERT into traffic VALUES (645420278, CAST(N'2021-01-08' AS Date), 319356, 1403, 306);
INSERT into traffic VALUES (645420278, CAST(N'2021-01-09' AS Date), 319356, 1645, 422);
INSERT into traffic VALUES (645420278, CAST(N'2021-01-10' AS Date), 319356, 2223, 763);
INSERT into traffic VALUES (645420278, CAST(N'2021-01-11' AS Date), 319356, 2970, 540);
INSERT into traffic VALUES (645420278, CAST(N'2021-01-12' AS Date), 319356, 2651, 870);
INSERT into traffic VALUES (645420278, CAST(N'2021-01-13' AS Date), 319356, 1647, 578);
INSERT into traffic VALUES (645420278, CAST(N'2021-01-14' AS Date), 319356, 2515, 276);
INSERT into traffic VALUES (645420278, CAST(N'2021-01-15' AS Date), 319356, 2181, 374);
INSERT into traffic VALUES (645420278, CAST(N'2021-01-16' AS Date), 319356, 2442, 236);
INSERT into traffic VALUES (645420278, CAST(N'2021-01-17' AS Date), 319356, 1936, 643);
INSERT into traffic VALUES (645420278, CAST(N'2021-01-18' AS Date), 319356, 1408, 843);
INSERT into traffic VALUES (645420278, CAST(N'2021-01-19' AS Date), 319356, 1682, 727);
INSERT into traffic VALUES (645420278, CAST(N'2021-01-20' AS Date), 319356, 1550, 598);
INSERT into traffic VALUES (645420278, CAST(N'2021-01-21' AS Date), 319356, 2729, 627);
INSERT into traffic VALUES (645420278, CAST(N'2021-01-22' AS Date), 319356, 2110, 698);
INSERT into traffic VALUES (645420278, CAST(N'2021-01-23' AS Date), 319356, 2751, 327);
INSERT into traffic VALUES (645420278, CAST(N'2021-01-24' AS Date), 319356, 1861, 485);
INSERT into traffic VALUES (645420278, CAST(N'2021-01-25' AS Date), 319356, 1359, 458);
INSERT into traffic VALUES (645420278, CAST(N'2021-01-26' AS Date), 319356, 1677, 409);
INSERT into traffic VALUES (645420278, CAST(N'2021-01-27' AS Date), 319356, 1223, 871);
INSERT into traffic VALUES (645420278, CAST(N'2021-01-28' AS Date), 319356, 1895, 874);
INSERT into traffic VALUES (645420278, CAST(N'2021-01-29' AS Date), 319356, 2966, 763);
INSERT into traffic VALUES (645420278, CAST(N'2021-01-30' AS Date), 319356, 1049, 628);
INSERT into traffic VALUES (646131868, CAST(N'2021-01-01' AS Date), 319708, 1866, 745);
INSERT into traffic VALUES (646131868, CAST(N'2021-01-02' AS Date), 319708, 2865, 669);
INSERT into traffic VALUES (646131868, CAST(N'2021-01-03' AS Date), 319708, 2267, 658);
INSERT into traffic VALUES (646131868, CAST(N'2021-01-04' AS Date), 319708, 2572, 443);
INSERT into traffic VALUES (646131868, CAST(N'2021-01-05' AS Date), 319708, 1705, 605);
INSERT into traffic VALUES (646131868, CAST(N'2021-01-06' AS Date), 319708, 1830, 224);
INSERT into traffic VALUES (646131868, CAST(N'2021-01-07' AS Date), 319708, 2139, 360);
INSERT into traffic VALUES (646131868, CAST(N'2021-01-08' AS Date), 319708, 1231, 458);
INSERT into traffic VALUES (646131868, CAST(N'2021-01-09' AS Date), 319708, 2164, 381);
INSERT into traffic VALUES (646131868, CAST(N'2021-01-10' AS Date), 319708, 2727, 296);
INSERT into traffic VALUES (646131868, CAST(N'2021-01-11' AS Date), 319708, 1657, 748);
INSERT into traffic VALUES (646131868, CAST(N'2021-01-12' AS Date), 319708, 2557, 773);
INSERT into traffic VALUES (646131868, CAST(N'2021-01-13' AS Date), 319708, 1063, 316);
INSERT into traffic VALUES (646131868, CAST(N'2021-01-14' AS Date), 319708, 2104, 283);
INSERT into traffic VALUES (646131868, CAST(N'2021-01-15' AS Date), 319708, 1847, 619);
INSERT into traffic VALUES (646131868, CAST(N'2021-01-16' AS Date), 319708, 2033, 425);
INSERT into traffic VALUES (646131868, CAST(N'2021-01-17' AS Date), 319708, 2558, 763);
INSERT into traffic VALUES (646131868, CAST(N'2021-01-18' AS Date), 319708, 1060, 640);
INSERT into traffic VALUES (646131868, CAST(N'2021-01-19' AS Date), 319708, 2978, 414);
INSERT into traffic VALUES (646131868, CAST(N'2021-01-20' AS Date), 319708, 2541, 264);
INSERT into traffic VALUES (646131868, CAST(N'2021-01-21' AS Date), 319708, 2559, 251);
INSERT into traffic VALUES (646131868, CAST(N'2021-01-22' AS Date), 319708, 1164, 549);
INSERT into traffic VALUES (646131868, CAST(N'2021-01-23' AS Date), 319708, 1280, 545);
INSERT into traffic VALUES (646131868, CAST(N'2021-01-24' AS Date), 319708, 2875, 455);
INSERT into traffic VALUES (646131868, CAST(N'2021-01-25' AS Date), 319708, 2809, 279);
INSERT into traffic VALUES (646131868, CAST(N'2021-01-26' AS Date), 319708, 1270, 366);
INSERT into traffic VALUES (646131868, CAST(N'2021-01-27' AS Date), 319708, 2956, 626);
INSERT into traffic VALUES (646131868, CAST(N'2021-01-28' AS Date), 319708, 2577, 312);
INSERT into traffic VALUES (646131868, CAST(N'2021-01-29' AS Date), 319708, 2983, 372);
INSERT into traffic VALUES (646131868, CAST(N'2021-01-30' AS Date), 319708, 1490, 758);
INSERT into traffic VALUES (646912358, CAST(N'2021-01-01' AS Date), 320095, 1589, 231);
INSERT into traffic VALUES (646912358, CAST(N'2021-01-02' AS Date), 320095, 1621, 488);
INSERT into traffic VALUES (646912358, CAST(N'2021-01-03' AS Date), 320095, 1733, 378);
INSERT into traffic VALUES (646912358, CAST(N'2021-01-04' AS Date), 320095, 1381, 220);
INSERT into traffic VALUES (646912358, CAST(N'2021-01-05' AS Date), 320095, 1880, 247);
INSERT into traffic VALUES (646912358, CAST(N'2021-01-06' AS Date), 320095, 1211, 234);
INSERT into traffic VALUES (646912358, CAST(N'2021-01-07' AS Date), 320095, 1025, 406);
INSERT into traffic VALUES (646912358, CAST(N'2021-01-08' AS Date), 320095, 2886, 251);
INSERT into traffic VALUES (646912358, CAST(N'2021-01-09' AS Date), 320095, 1678, 310);
INSERT into traffic VALUES (646912358, CAST(N'2021-01-10' AS Date), 320095, 1171, 284);
INSERT into traffic VALUES (646912358, CAST(N'2021-01-11' AS Date), 320095, 2134, 428);
INSERT into traffic VALUES (646912358, CAST(N'2021-01-12' AS Date), 320095, 2930, 215);
INSERT into traffic VALUES (646912358, CAST(N'2021-01-13' AS Date), 320095, 1562, 529);
INSERT into traffic VALUES (646912358, CAST(N'2021-01-14' AS Date), 320095, 2150, 451);
INSERT into traffic VALUES (646912358, CAST(N'2021-01-15' AS Date), 320095, 1405, 212);
INSERT into traffic VALUES (646912358, CAST(N'2021-01-16' AS Date), 320095, 2533, 247);
INSERT into traffic VALUES (646912358, CAST(N'2021-01-17' AS Date), 320095, 2745, 402);
INSERT into traffic VALUES (646912358, CAST(N'2021-01-18' AS Date), 320095, 1048, 474);
INSERT into traffic VALUES (646912358, CAST(N'2021-01-19' AS Date), 320095, 1389, 331);
INSERT into traffic VALUES (646912358, CAST(N'2021-01-20' AS Date), 320095, 1884, 519);
INSERT into traffic VALUES (646912358, CAST(N'2021-01-21' AS Date), 320095, 1132, 589);
INSERT into traffic VALUES (646912358, CAST(N'2021-01-22' AS Date), 320095, 2402, 430);
INSERT into traffic VALUES (646912358, CAST(N'2021-01-23' AS Date), 320095, 1458, 416);
INSERT into traffic VALUES (646912358, CAST(N'2021-01-24' AS Date), 320095, 1628, 289);
INSERT into traffic VALUES (646912358, CAST(N'2021-01-25' AS Date), 320095, 2443, 470);
INSERT into traffic VALUES (646912358, CAST(N'2021-01-26' AS Date), 320095, 1181, 436);
INSERT into traffic VALUES (646912358, CAST(N'2021-01-27' AS Date), 320095, 1725, 409);
INSERT into traffic VALUES (646912358, CAST(N'2021-01-28' AS Date), 320095, 1403, 374);
INSERT into traffic VALUES (646912358, CAST(N'2021-01-29' AS Date), 320095, 1392, 556);
INSERT into traffic VALUES (646912358, CAST(N'2021-01-30' AS Date), 320095, 2010, 211);
INSERT into traffic VALUES (648635603, CAST(N'2021-01-01' AS Date), 320947, 2212, 330);
INSERT into traffic VALUES (648635603, CAST(N'2021-01-02' AS Date), 320947, 1558, 857);
INSERT into traffic VALUES (648635603, CAST(N'2021-01-03' AS Date), 320947, 2659, 278);
INSERT into traffic VALUES (648635603, CAST(N'2021-01-04' AS Date), 320947, 2825, 752);
INSERT into traffic VALUES (648635603, CAST(N'2021-01-05' AS Date), 320947, 2085, 464);
INSERT into traffic VALUES (648635603, CAST(N'2021-01-06' AS Date), 320947, 1508, 496);
INSERT into traffic VALUES (648635603, CAST(N'2021-01-07' AS Date), 320947, 1319, 810);
INSERT into traffic VALUES (648635603, CAST(N'2021-01-08' AS Date), 320947, 2053, 909);
INSERT into traffic VALUES (648635603, CAST(N'2021-01-09' AS Date), 320947, 2414, 393);
INSERT into traffic VALUES (648635603, CAST(N'2021-01-10' AS Date), 320947, 1007, 257);
INSERT into traffic VALUES (648635603, CAST(N'2021-01-11' AS Date), 320947, 2881, 695);
INSERT into traffic VALUES (648635603, CAST(N'2021-01-12' AS Date), 320947, 2713, 224);
INSERT into traffic VALUES (648635603, CAST(N'2021-01-13' AS Date), 320947, 2521, 427);
INSERT into traffic VALUES (648635603, CAST(N'2021-01-14' AS Date), 320947, 2806, 484);
INSERT into traffic VALUES (648635603, CAST(N'2021-01-15' AS Date), 320947, 2394, 822);
INSERT into traffic VALUES (648635603, CAST(N'2021-01-16' AS Date), 320947, 2535, 308);
INSERT into traffic VALUES (648635603, CAST(N'2021-01-17' AS Date), 320947, 2584, 581);
INSERT into traffic VALUES (648635603, CAST(N'2021-01-18' AS Date), 320947, 1502, 868);
INSERT into traffic VALUES (648635603, CAST(N'2021-01-19' AS Date), 320947, 2643, 889);
INSERT into traffic VALUES (648635603, CAST(N'2021-01-20' AS Date), 320947, 1676, 606);
INSERT into traffic VALUES (648635603, CAST(N'2021-01-21' AS Date), 320947, 1438, 753);
INSERT into traffic VALUES (648635603, CAST(N'2021-01-22' AS Date), 320947, 1343, 455);
INSERT into traffic VALUES (648635603, CAST(N'2021-01-23' AS Date), 320947, 2915, 538);
INSERT into traffic VALUES (648635603, CAST(N'2021-01-24' AS Date), 320947, 1612, 740);
INSERT into traffic VALUES (648635603, CAST(N'2021-01-25' AS Date), 320947, 2556, 281);
INSERT into traffic VALUES (648635603, CAST(N'2021-01-26' AS Date), 320947, 2771, 593);
INSERT into traffic VALUES (648635603, CAST(N'2021-01-27' AS Date), 320947, 2709, 425);
INSERT into traffic VALUES (648635603, CAST(N'2021-01-28' AS Date), 320947, 1015, 544);
INSERT into traffic VALUES (648635603, CAST(N'2021-01-29' AS Date), 320947, 1687, 383);
INSERT into traffic VALUES (648635603, CAST(N'2021-01-30' AS Date), 320947, 2118, 517);
INSERT into traffic VALUES (656418756, CAST(N'2021-01-01' AS Date), 324798, 2846, 228);
INSERT into traffic VALUES (656418756, CAST(N'2021-01-02' AS Date), 324798, 2693, 370);
INSERT into traffic VALUES (656418756, CAST(N'2021-01-03' AS Date), 324798, 2190, 684);
INSERT into traffic VALUES (656418756, CAST(N'2021-01-04' AS Date), 324798, 2408, 744);
INSERT into traffic VALUES (656418756, CAST(N'2021-01-05' AS Date), 324798, 1249, 523);
INSERT into traffic VALUES (656418756, CAST(N'2021-01-06' AS Date), 324798, 1947, 777);
INSERT into traffic VALUES (656418756, CAST(N'2021-01-07' AS Date), 324798, 2938, 435);
INSERT into traffic VALUES (656418756, CAST(N'2021-01-08' AS Date), 324798, 2186, 381);
INSERT into traffic VALUES (656418756, CAST(N'2021-01-09' AS Date), 324798, 2658, 315);
INSERT into traffic VALUES (656418756, CAST(N'2021-01-10' AS Date), 324798, 2755, 657);
INSERT into traffic VALUES (656418756, CAST(N'2021-01-11' AS Date), 324798, 1693, 529);
INSERT into traffic VALUES (656418756, CAST(N'2021-01-12' AS Date), 324798, 2785, 671);
INSERT into traffic VALUES (656418756, CAST(N'2021-01-13' AS Date), 324798, 1318, 588);
INSERT into traffic VALUES (656418756, CAST(N'2021-01-14' AS Date), 324798, 2090, 607);
INSERT into traffic VALUES (656418756, CAST(N'2021-01-15' AS Date), 324798, 1863, 677);
INSERT into traffic VALUES (656418756, CAST(N'2021-01-16' AS Date), 324798, 2032, 465);
INSERT into traffic VALUES (656418756, CAST(N'2021-01-17' AS Date), 324798, 2465, 263);
INSERT into traffic VALUES (656418756, CAST(N'2021-01-18' AS Date), 324798, 2516, 579);
INSERT into traffic VALUES (656418756, CAST(N'2021-01-19' AS Date), 324798, 1682, 683);
INSERT into traffic VALUES (656418756, CAST(N'2021-01-20' AS Date), 324798, 1367, 228);
INSERT into traffic VALUES (656418756, CAST(N'2021-01-21' AS Date), 324798, 1645, 374);
INSERT into traffic VALUES (656418756, CAST(N'2021-01-22' AS Date), 324798, 1523, 428);
INSERT into traffic VALUES (656418756, CAST(N'2021-01-23' AS Date), 324798, 2851, 273);
INSERT into traffic VALUES (656418756, CAST(N'2021-01-24' AS Date), 324798, 2495, 670);
INSERT into traffic VALUES (656418756, CAST(N'2021-01-25' AS Date), 324798, 2704, 580);
INSERT into traffic VALUES (656418756, CAST(N'2021-01-26' AS Date), 324798, 1846, 726);
INSERT into traffic VALUES (656418756, CAST(N'2021-01-27' AS Date), 324798, 2366, 745);
INSERT into traffic VALUES (656418756, CAST(N'2021-01-28' AS Date), 324798, 1413, 709);
INSERT into traffic VALUES (656418756, CAST(N'2021-01-29' AS Date), 324798, 2684, 324);
INSERT into traffic VALUES (656418756, CAST(N'2021-01-30' AS Date), 324798, 2589, 775);
INSERT into traffic VALUES (656418772, CAST(N'2021-01-01' AS Date), 324798, 1034, 203);
INSERT into traffic VALUES (656418772, CAST(N'2021-01-02' AS Date), 324798, 1615, 746);
INSERT into traffic VALUES (656418772, CAST(N'2021-01-03' AS Date), 324798, 2190, 674);
INSERT into traffic VALUES (656418772, CAST(N'2021-01-04' AS Date), 324798, 1274, 668);
INSERT into traffic VALUES (656418772, CAST(N'2021-01-05' AS Date), 324798, 1151, 236);
INSERT into traffic VALUES (656418772, CAST(N'2021-01-06' AS Date), 324798, 2250, 780);
INSERT into traffic VALUES (656418772, CAST(N'2021-01-07' AS Date), 324798, 1704, 471);
INSERT into traffic VALUES (656418772, CAST(N'2021-01-08' AS Date), 324798, 2038, 399);
INSERT into traffic VALUES (656418772, CAST(N'2021-01-09' AS Date), 324798, 2358, 403);
INSERT into traffic VALUES (656418772, CAST(N'2021-01-10' AS Date), 324798, 1218, 206);
INSERT into traffic VALUES (656418772, CAST(N'2021-01-11' AS Date), 324798, 1619, 475);
INSERT into traffic VALUES (656418772, CAST(N'2021-01-12' AS Date), 324798, 1443, 308);
INSERT into traffic VALUES (656418772, CAST(N'2021-01-13' AS Date), 324798, 1407, 339);
INSERT into traffic VALUES (656418772, CAST(N'2021-01-14' AS Date), 324798, 1882, 365);
INSERT into traffic VALUES (656418772, CAST(N'2021-01-15' AS Date), 324798, 2412, 750);
INSERT into traffic VALUES (656418772, CAST(N'2021-01-16' AS Date), 324798, 2174, 647);
INSERT into traffic VALUES (656418772, CAST(N'2021-01-17' AS Date), 324798, 1315, 200);
INSERT into traffic VALUES (656418772, CAST(N'2021-01-18' AS Date), 324798, 2301, 449);
INSERT into traffic VALUES (656418772, CAST(N'2021-01-19' AS Date), 324798, 1840, 452);
INSERT into traffic VALUES (656418772, CAST(N'2021-01-20' AS Date), 324798, 2036, 777);
INSERT into traffic VALUES (656418772, CAST(N'2021-01-21' AS Date), 324798, 1076, 314);
INSERT into traffic VALUES (656418772, CAST(N'2021-01-22' AS Date), 324798, 2830, 405);
INSERT into traffic VALUES (656418772, CAST(N'2021-01-23' AS Date), 324798, 2802, 756);
INSERT into traffic VALUES (656418772, CAST(N'2021-01-24' AS Date), 324798, 1223, 722);
INSERT into traffic VALUES (656418772, CAST(N'2021-01-25' AS Date), 324798, 2773, 351);
INSERT into traffic VALUES (656418772, CAST(N'2021-01-26' AS Date), 324798, 2644, 279);
INSERT into traffic VALUES (656418772, CAST(N'2021-01-27' AS Date), 324798, 1897, 256);
INSERT into traffic VALUES (656418772, CAST(N'2021-01-28' AS Date), 324798, 2739, 488);
INSERT into traffic VALUES (656418772, CAST(N'2021-01-29' AS Date), 324798, 2104, 766);
INSERT into traffic VALUES (656418772, CAST(N'2021-01-30' AS Date), 324798, 2597, 222);
INSERT into traffic VALUES (656418803, CAST(N'2021-01-01' AS Date), 324799, 2734, 666);
INSERT into traffic VALUES (656418803, CAST(N'2021-01-02' AS Date), 324799, 2172, 877);
INSERT into traffic VALUES (656418803, CAST(N'2021-01-03' AS Date), 324799, 2249, 223);
INSERT into traffic VALUES (656418803, CAST(N'2021-01-04' AS Date), 324799, 1170, 770);
INSERT into traffic VALUES (656418803, CAST(N'2021-01-05' AS Date), 324799, 2389, 405);
INSERT into traffic VALUES (656418803, CAST(N'2021-01-06' AS Date), 324799, 1060, 890);
INSERT into traffic VALUES (656418803, CAST(N'2021-01-07' AS Date), 324799, 1270, 652);
INSERT into traffic VALUES (656418803, CAST(N'2021-01-08' AS Date), 324799, 1671, 915);
INSERT into traffic VALUES (656418803, CAST(N'2021-01-09' AS Date), 324799, 1587, 596);
INSERT into traffic VALUES (656418803, CAST(N'2021-01-10' AS Date), 324799, 2969, 265);
INSERT into traffic VALUES (656418803, CAST(N'2021-01-11' AS Date), 324799, 1332, 397);
INSERT into traffic VALUES (656418803, CAST(N'2021-01-12' AS Date), 324799, 1387, 743);
INSERT into traffic VALUES (656418803, CAST(N'2021-01-13' AS Date), 324799, 2212, 525);
INSERT into traffic VALUES (656418803, CAST(N'2021-01-14' AS Date), 324799, 1698, 485);
INSERT into traffic VALUES (656418803, CAST(N'2021-01-15' AS Date), 324799, 1923, 510);
INSERT into traffic VALUES (656418803, CAST(N'2021-01-16' AS Date), 324799, 2184, 905);
INSERT into traffic VALUES (656418803, CAST(N'2021-01-17' AS Date), 324799, 2223, 391);
INSERT into traffic VALUES (656418803, CAST(N'2021-01-18' AS Date), 324799, 2096, 509);
INSERT into traffic VALUES (656418803, CAST(N'2021-01-19' AS Date), 324799, 1660, 673);
INSERT into traffic VALUES (656418803, CAST(N'2021-01-20' AS Date), 324799, 2135, 801);
INSERT into traffic VALUES (656418803, CAST(N'2021-01-21' AS Date), 324799, 2387, 436);
INSERT into traffic VALUES (656418803, CAST(N'2021-01-22' AS Date), 324799, 1028, 641);
INSERT into traffic VALUES (656418803, CAST(N'2021-01-23' AS Date), 324799, 2336, 623);
INSERT into traffic VALUES (656418803, CAST(N'2021-01-24' AS Date), 324799, 2919, 343);
INSERT into traffic VALUES (656418803, CAST(N'2021-01-25' AS Date), 324799, 1951, 719);
INSERT into traffic VALUES (656418803, CAST(N'2021-01-26' AS Date), 324799, 2300, 338);
INSERT into traffic VALUES (656418803, CAST(N'2021-01-27' AS Date), 324799, 2744, 368);
INSERT into traffic VALUES (656418803, CAST(N'2021-01-28' AS Date), 324799, 1268, 298);
INSERT into traffic VALUES (656418803, CAST(N'2021-01-29' AS Date), 324799, 2762, 754);
INSERT into traffic VALUES (656418803, CAST(N'2021-01-30' AS Date), 324799, 2054, 532);
INSERT into traffic VALUES (675071955, CAST(N'2021-01-01' AS Date), 334028, 2730, 663);
INSERT into traffic VALUES (675071955, CAST(N'2021-01-02' AS Date), 334028, 2311, 776);
INSERT into traffic VALUES (675071955, CAST(N'2021-01-03' AS Date), 334028, 1898, 522);
INSERT into traffic VALUES (675071955, CAST(N'2021-01-04' AS Date), 334028, 2485, 656);
INSERT into traffic VALUES (675071955, CAST(N'2021-01-05' AS Date), 334028, 2667, 626);
INSERT into traffic VALUES (675071955, CAST(N'2021-01-06' AS Date), 334028, 1390, 253);
INSERT into traffic VALUES (675071955, CAST(N'2021-01-07' AS Date), 334028, 1426, 257);
INSERT into traffic VALUES (675071955, CAST(N'2021-01-08' AS Date), 334028, 1735, 248);
INSERT into traffic VALUES (675071955, CAST(N'2021-01-09' AS Date), 334028, 1707, 215);
INSERT into traffic VALUES (675071955, CAST(N'2021-01-10' AS Date), 334028, 2496, 336);
INSERT into traffic VALUES (675071955, CAST(N'2021-01-11' AS Date), 334028, 2624, 245);
INSERT into traffic VALUES (675071955, CAST(N'2021-01-12' AS Date), 334028, 2129, 731);
INSERT into traffic VALUES (675071955, CAST(N'2021-01-13' AS Date), 334028, 2431, 641);
INSERT into traffic VALUES (675071955, CAST(N'2021-01-14' AS Date), 334028, 2412, 258);
INSERT into traffic VALUES (675071955, CAST(N'2021-01-15' AS Date), 334028, 1523, 276);
INSERT into traffic VALUES (675071955, CAST(N'2021-01-16' AS Date), 334028, 2895, 737);
INSERT into traffic VALUES (675071955, CAST(N'2021-01-17' AS Date), 334028, 1698, 793);
INSERT into traffic VALUES (675071955, CAST(N'2021-01-18' AS Date), 334028, 2426, 468);
INSERT into traffic VALUES (675071955, CAST(N'2021-01-19' AS Date), 334028, 2024, 200);
INSERT into traffic VALUES (675071955, CAST(N'2021-01-20' AS Date), 334028, 1966, 486);
INSERT into traffic VALUES (675071955, CAST(N'2021-01-21' AS Date), 334028, 1753, 290);
INSERT into traffic VALUES (675071955, CAST(N'2021-01-22' AS Date), 334028, 2089, 596);
INSERT into traffic VALUES (675071955, CAST(N'2021-01-23' AS Date), 334028, 2794, 580);
INSERT into traffic VALUES (675071955, CAST(N'2021-01-24' AS Date), 334028, 2994, 691);
INSERT into traffic VALUES (675071955, CAST(N'2021-01-25' AS Date), 334028, 1570, 727);
INSERT into traffic VALUES (675071955, CAST(N'2021-01-26' AS Date), 334028, 1568, 257);
INSERT into traffic VALUES (675071955, CAST(N'2021-01-27' AS Date), 334028, 2840, 210);
INSERT into traffic VALUES (675071955, CAST(N'2021-01-28' AS Date), 334028, 1579, 448);
INSERT into traffic VALUES (675071955, CAST(N'2021-01-29' AS Date), 334028, 2590, 286);
INSERT into traffic VALUES (675071955, CAST(N'2021-01-30' AS Date), 334028, 2733, 697);
INSERT into traffic VALUES (691354531, CAST(N'2021-01-01' AS Date), 342085, 1602, 234);
INSERT into traffic VALUES (691354531, CAST(N'2021-01-02' AS Date), 342085, 2275, 332);
INSERT into traffic VALUES (691354531, CAST(N'2021-01-03' AS Date), 342085, 1902, 507);
INSERT into traffic VALUES (691354531, CAST(N'2021-01-04' AS Date), 342085, 1636, 574);
INSERT into traffic VALUES (691354531, CAST(N'2021-01-05' AS Date), 342085, 2754, 482);
INSERT into traffic VALUES (691354531, CAST(N'2021-01-06' AS Date), 342085, 2791, 522);
INSERT into traffic VALUES (691354531, CAST(N'2021-01-07' AS Date), 342085, 1980, 282);
INSERT into traffic VALUES (691354531, CAST(N'2021-01-08' AS Date), 342085, 2819, 337);
INSERT into traffic VALUES (691354531, CAST(N'2021-01-09' AS Date), 342085, 1959, 211);
INSERT into traffic VALUES (691354531, CAST(N'2021-01-10' AS Date), 342085, 1867, 209);
INSERT into traffic VALUES (691354531, CAST(N'2021-01-11' AS Date), 342085, 1063, 388);
INSERT into traffic VALUES (691354531, CAST(N'2021-01-12' AS Date), 342085, 1740, 324);
INSERT into traffic VALUES (691354531, CAST(N'2021-01-13' AS Date), 342085, 2731, 252);
INSERT into traffic VALUES (691354531, CAST(N'2021-01-14' AS Date), 342085, 1880, 430);
INSERT into traffic VALUES (691354531, CAST(N'2021-01-15' AS Date), 342085, 2423, 383);
INSERT into traffic VALUES (691354531, CAST(N'2021-01-16' AS Date), 342085, 1913, 291);
INSERT into traffic VALUES (691354531, CAST(N'2021-01-17' AS Date), 342085, 2036, 325);
INSERT into traffic VALUES (691354531, CAST(N'2021-01-18' AS Date), 342085, 1815, 567);
INSERT into traffic VALUES (691354531, CAST(N'2021-01-19' AS Date), 342085, 1624, 391);
INSERT into traffic VALUES (691354531, CAST(N'2021-01-20' AS Date), 342085, 2615, 333);
INSERT into traffic VALUES (691354531, CAST(N'2021-01-21' AS Date), 342085, 1284, 486);
INSERT into traffic VALUES (691354531, CAST(N'2021-01-22' AS Date), 342085, 2529, 379);
INSERT into traffic VALUES (691354531, CAST(N'2021-01-23' AS Date), 342085, 2850, 369);
INSERT into traffic VALUES (691354531, CAST(N'2021-01-24' AS Date), 342085, 2479, 273);
INSERT into traffic VALUES (691354531, CAST(N'2021-01-25' AS Date), 342085, 1174, 550);
INSERT into traffic VALUES (691354531, CAST(N'2021-01-26' AS Date), 342085, 1487, 267);
INSERT into traffic VALUES (691354531, CAST(N'2021-01-27' AS Date), 342085, 2424, 348);
INSERT into traffic VALUES (691354531, CAST(N'2021-01-28' AS Date), 342085, 1734, 307);
INSERT into traffic VALUES (691354531, CAST(N'2021-01-29' AS Date), 342085, 1417, 392);
INSERT into traffic VALUES (691354531, CAST(N'2021-01-30' AS Date), 342085, 2266, 369);
INSERT into traffic VALUES (727861626, CAST(N'2021-01-01' AS Date), 360149, 1180, 211);
INSERT into traffic VALUES (727861626, CAST(N'2021-01-02' AS Date), 360149, 1493, 209);
INSERT into traffic VALUES (727861626, CAST(N'2021-01-03' AS Date), 360149, 1748, 216);
INSERT into traffic VALUES (727861626, CAST(N'2021-01-04' AS Date), 360149, 1097, 366);
INSERT into traffic VALUES (727861626, CAST(N'2021-01-05' AS Date), 360149, 1314, 238);
INSERT into traffic VALUES (727861626, CAST(N'2021-01-06' AS Date), 360149, 2509, 344);
INSERT into traffic VALUES (727861626, CAST(N'2021-01-07' AS Date), 360149, 2826, 301);
INSERT into traffic VALUES (727861626, CAST(N'2021-01-08' AS Date), 360149, 2715, 387);
INSERT into traffic VALUES (727861626, CAST(N'2021-01-09' AS Date), 360149, 2243, 372);
INSERT into traffic VALUES (727861626, CAST(N'2021-01-10' AS Date), 360149, 1059, 244);
INSERT into traffic VALUES (727861626, CAST(N'2021-01-11' AS Date), 360149, 2289, 271);
INSERT into traffic VALUES (727861626, CAST(N'2021-01-12' AS Date), 360149, 2226, 353);
INSERT into traffic VALUES (727861626, CAST(N'2021-01-13' AS Date), 360149, 2813, 209);
INSERT into traffic VALUES (727861626, CAST(N'2021-01-14' AS Date), 360149, 2033, 375);
INSERT into traffic VALUES (727861626, CAST(N'2021-01-15' AS Date), 360149, 1257, 366);
INSERT into traffic VALUES (727861626, CAST(N'2021-01-16' AS Date), 360149, 1013, 278);
INSERT into traffic VALUES (727861626, CAST(N'2021-01-17' AS Date), 360149, 2088, 266);
INSERT into traffic VALUES (727861626, CAST(N'2021-01-18' AS Date), 360149, 1560, 326);
INSERT into traffic VALUES (727861626, CAST(N'2021-01-19' AS Date), 360149, 2917, 385);
INSERT into traffic VALUES (727861626, CAST(N'2021-01-20' AS Date), 360149, 2801, 319);
INSERT into traffic VALUES (727861626, CAST(N'2021-01-21' AS Date), 360149, 1165, 291);
INSERT into traffic VALUES (727861626, CAST(N'2021-01-22' AS Date), 360149, 1661, 323);
INSERT into traffic VALUES (727861626, CAST(N'2021-01-23' AS Date), 360149, 2244, 221);
INSERT into traffic VALUES (727861626, CAST(N'2021-01-24' AS Date), 360149, 2901, 288);
INSERT into traffic VALUES (727861626, CAST(N'2021-01-25' AS Date), 360149, 2700, 247);
INSERT into traffic VALUES (727861626, CAST(N'2021-01-26' AS Date), 360149, 2097, 385);
INSERT into traffic VALUES (727861626, CAST(N'2021-01-27' AS Date), 360149, 1288, 260);
INSERT into traffic VALUES (727861626, CAST(N'2021-01-28' AS Date), 360149, 1875, 300);
INSERT into traffic VALUES (727861626, CAST(N'2021-01-29' AS Date), 360149, 2677, 373);
INSERT into traffic VALUES (727861626, CAST(N'2021-01-30' AS Date), 360149, 2741, 211);
INSERT into traffic VALUES (730661949, CAST(N'2021-01-01' AS Date), 361534, 1992, 678);
INSERT into traffic VALUES (730661949, CAST(N'2021-01-02' AS Date), 361534, 2292, 414);
INSERT into traffic VALUES (730661949, CAST(N'2021-01-03' AS Date), 361534, 1090, 679);
INSERT into traffic VALUES (730661949, CAST(N'2021-01-04' AS Date), 361534, 2128, 365);
INSERT into traffic VALUES (730661949, CAST(N'2021-01-05' AS Date), 361534, 1613, 267);
INSERT into traffic VALUES (730661949, CAST(N'2021-01-06' AS Date), 361534, 2603, 452);
INSERT into traffic VALUES (730661949, CAST(N'2021-01-07' AS Date), 361534, 1008, 603);
INSERT into traffic VALUES (730661949, CAST(N'2021-01-08' AS Date), 361534, 2803, 390);
INSERT into traffic VALUES (730661949, CAST(N'2021-01-09' AS Date), 361534, 2906, 229);
INSERT into traffic VALUES (730661949, CAST(N'2021-01-10' AS Date), 361534, 2465, 581);
INSERT into traffic VALUES (730661949, CAST(N'2021-01-11' AS Date), 361534, 1781, 456);
INSERT into traffic VALUES (730661949, CAST(N'2021-01-12' AS Date), 361534, 1475, 656);
INSERT into traffic VALUES (730661949, CAST(N'2021-01-13' AS Date), 361534, 2867, 442);
INSERT into traffic VALUES (730661949, CAST(N'2021-01-14' AS Date), 361534, 1164, 382);
INSERT into traffic VALUES (730661949, CAST(N'2021-01-15' AS Date), 361534, 1773, 282);
INSERT into traffic VALUES (730661949, CAST(N'2021-01-16' AS Date), 361534, 2928, 381);
INSERT into traffic VALUES (730661949, CAST(N'2021-01-17' AS Date), 361534, 2441, 623);
INSERT into traffic VALUES (730661949, CAST(N'2021-01-18' AS Date), 361534, 1786, 767);
INSERT into traffic VALUES (730661949, CAST(N'2021-01-19' AS Date), 361534, 2887, 507);
INSERT into traffic VALUES (730661949, CAST(N'2021-01-20' AS Date), 361534, 2970, 740);
INSERT into traffic VALUES (730661949, CAST(N'2021-01-21' AS Date), 361534, 2730, 456);
INSERT into traffic VALUES (730661949, CAST(N'2021-01-22' AS Date), 361534, 2497, 361);
INSERT into traffic VALUES (730661949, CAST(N'2021-01-23' AS Date), 361534, 2062, 766);
INSERT into traffic VALUES (730661949, CAST(N'2021-01-24' AS Date), 361534, 2239, 557);
INSERT into traffic VALUES (730661949, CAST(N'2021-01-25' AS Date), 361534, 2999, 228);
INSERT into traffic VALUES (730661949, CAST(N'2021-01-26' AS Date), 361534, 1889, 306);
INSERT into traffic VALUES (730661949, CAST(N'2021-01-27' AS Date), 361534, 1864, 266);
INSERT into traffic VALUES (730661949, CAST(N'2021-01-28' AS Date), 361534, 2779, 548);
INSERT into traffic VALUES (730661949, CAST(N'2021-01-29' AS Date), 361534, 1284, 577);
INSERT into traffic VALUES (730661949, CAST(N'2021-01-30' AS Date), 361534, 1545, 313);
INSERT into traffic VALUES (730661954, CAST(N'2021-01-01' AS Date), 361534, 1634, 610);
INSERT into traffic VALUES (730661954, CAST(N'2021-01-02' AS Date), 361534, 2057, 496);
INSERT into traffic VALUES (730661954, CAST(N'2021-01-03' AS Date), 361534, 2126, 768);
INSERT into traffic VALUES (730661954, CAST(N'2021-01-04' AS Date), 361534, 2257, 583);
INSERT into traffic VALUES (730661954, CAST(N'2021-01-05' AS Date), 361534, 1250, 528);
INSERT into traffic VALUES (730661954, CAST(N'2021-01-06' AS Date), 361534, 2805, 490);
INSERT into traffic VALUES (730661954, CAST(N'2021-01-07' AS Date), 361534, 2192, 240);
INSERT into traffic VALUES (730661954, CAST(N'2021-01-08' AS Date), 361534, 1488, 546);
INSERT into traffic VALUES (730661954, CAST(N'2021-01-09' AS Date), 361534, 1178, 701);
INSERT into traffic VALUES (730661954, CAST(N'2021-01-10' AS Date), 361534, 2853, 223);
INSERT into traffic VALUES (730661954, CAST(N'2021-01-11' AS Date), 361534, 1128, 365);
INSERT into traffic VALUES (730661954, CAST(N'2021-01-12' AS Date), 361534, 2580, 672);
INSERT into traffic VALUES (730661954, CAST(N'2021-01-13' AS Date), 361534, 2857, 548);
INSERT into traffic VALUES (730661954, CAST(N'2021-01-14' AS Date), 361534, 2333, 743);
INSERT into traffic VALUES (730661954, CAST(N'2021-01-15' AS Date), 361534, 2976, 661);
INSERT into traffic VALUES (730661954, CAST(N'2021-01-16' AS Date), 361534, 2265, 721);
INSERT into traffic VALUES (730661954, CAST(N'2021-01-17' AS Date), 361534, 1651, 520);
INSERT into traffic VALUES (730661954, CAST(N'2021-01-18' AS Date), 361534, 2580, 564);
INSERT into traffic VALUES (730661954, CAST(N'2021-01-19' AS Date), 361534, 2510, 389);
INSERT into traffic VALUES (730661954, CAST(N'2021-01-20' AS Date), 361534, 1881, 393);
INSERT into traffic VALUES (730661954, CAST(N'2021-01-21' AS Date), 361534, 2418, 425);
INSERT into traffic VALUES (730661954, CAST(N'2021-01-22' AS Date), 361534, 1064, 381);
INSERT into traffic VALUES (730661954, CAST(N'2021-01-23' AS Date), 361534, 1303, 643);
INSERT into traffic VALUES (730661954, CAST(N'2021-01-24' AS Date), 361534, 2965, 599);
INSERT into traffic VALUES (730661954, CAST(N'2021-01-25' AS Date), 361534, 2212, 704);
INSERT into traffic VALUES (730661954, CAST(N'2021-01-26' AS Date), 361534, 2880, 400);
INSERT into traffic VALUES (730661954, CAST(N'2021-01-27' AS Date), 361534, 1542, 644);
INSERT into traffic VALUES (730661954, CAST(N'2021-01-28' AS Date), 361534, 1421, 477);
INSERT into traffic VALUES (730661954, CAST(N'2021-01-29' AS Date), 361534, 2168, 392);
INSERT into traffic VALUES (730661954, CAST(N'2021-01-30' AS Date), 361534, 2435, 787);
INSERT into traffic VALUES (750892984, CAST(N'2021-01-01' AS Date), 371545, 1043, 297);
INSERT into traffic VALUES (750892984, CAST(N'2021-01-02' AS Date), 371545, 1390, 226);
INSERT into traffic VALUES (750892984, CAST(N'2021-01-03' AS Date), 371545, 2254, 327);
INSERT into traffic VALUES (750892984, CAST(N'2021-01-04' AS Date), 371545, 2071, 399);
INSERT into traffic VALUES (750892984, CAST(N'2021-01-05' AS Date), 371545, 2226, 278);
INSERT into traffic VALUES (750892984, CAST(N'2021-01-06' AS Date), 371545, 1354, 220);
INSERT into traffic VALUES (750892984, CAST(N'2021-01-07' AS Date), 371545, 2910, 304);
INSERT into traffic VALUES (750892984, CAST(N'2021-01-08' AS Date), 371545, 1654, 297);
INSERT into traffic VALUES (750892984, CAST(N'2021-01-09' AS Date), 371545, 1389, 326);
INSERT into traffic VALUES (750892984, CAST(N'2021-01-10' AS Date), 371545, 1365, 206);
INSERT into traffic VALUES (750892984, CAST(N'2021-01-11' AS Date), 371545, 1519, 264);
INSERT into traffic VALUES (750892984, CAST(N'2021-01-12' AS Date), 371545, 2901, 211);
INSERT into traffic VALUES (750892984, CAST(N'2021-01-13' AS Date), 371545, 2543, 256);
INSERT into traffic VALUES (750892984, CAST(N'2021-01-14' AS Date), 371545, 2462, 209);
INSERT into traffic VALUES (750892984, CAST(N'2021-01-15' AS Date), 371545, 1447, 363);
INSERT into traffic VALUES (750892984, CAST(N'2021-01-16' AS Date), 371545, 2362, 308);
INSERT into traffic VALUES (750892984, CAST(N'2021-01-17' AS Date), 371545, 1535, 211);
INSERT into traffic VALUES (750892984, CAST(N'2021-01-18' AS Date), 371545, 2345, 238);
INSERT into traffic VALUES (750892984, CAST(N'2021-01-19' AS Date), 371545, 1286, 272);
INSERT into traffic VALUES (750892984, CAST(N'2021-01-20' AS Date), 371545, 2353, 229);
INSERT into traffic VALUES (750892984, CAST(N'2021-01-21' AS Date), 371545, 1224, 225);
INSERT into traffic VALUES (750892984, CAST(N'2021-01-22' AS Date), 371545, 1462, 327);
INSERT into traffic VALUES (750892984, CAST(N'2021-01-23' AS Date), 371545, 2329, 200);
INSERT into traffic VALUES (750892984, CAST(N'2021-01-24' AS Date), 371545, 2280, 348);
INSERT into traffic VALUES (750892984, CAST(N'2021-01-25' AS Date), 371545, 1998, 391);
INSERT into traffic VALUES (750892984, CAST(N'2021-01-26' AS Date), 371545, 2598, 219);
INSERT into traffic VALUES (750892984, CAST(N'2021-01-27' AS Date), 371545, 1328, 226);
INSERT into traffic VALUES (750892984, CAST(N'2021-01-28' AS Date), 371545, 2977, 346);
INSERT into traffic VALUES (750892984, CAST(N'2021-01-29' AS Date), 371545, 2013, 279);
INSERT into traffic VALUES (750892984, CAST(N'2021-01-30' AS Date), 371545, 1485, 346);
INSERT into traffic VALUES (753955616, CAST(N'2021-01-01' AS Date), 373060, 2926, 686);
INSERT into traffic VALUES (753955616, CAST(N'2021-01-02' AS Date), 373060, 2614, 671);
INSERT into traffic VALUES (753955616, CAST(N'2021-01-03' AS Date), 373060, 2455, 475);
INSERT into traffic VALUES (753955616, CAST(N'2021-01-04' AS Date), 373060, 2638, 600);
INSERT into traffic VALUES (753955616, CAST(N'2021-01-05' AS Date), 373060, 2133, 263);
INSERT into traffic VALUES (753955616, CAST(N'2021-01-06' AS Date), 373060, 2655, 407);
INSERT into traffic VALUES (753955616, CAST(N'2021-01-07' AS Date), 373060, 1970, 466);
INSERT into traffic VALUES (753955616, CAST(N'2021-01-08' AS Date), 373060, 1059, 321);
INSERT into traffic VALUES (753955616, CAST(N'2021-01-09' AS Date), 373060, 2638, 451);
INSERT into traffic VALUES (753955616, CAST(N'2021-01-10' AS Date), 373060, 2758, 336);
INSERT into traffic VALUES (753955616, CAST(N'2021-01-11' AS Date), 373060, 1208, 572);
INSERT into traffic VALUES (753955616, CAST(N'2021-01-12' AS Date), 373060, 1118, 289);
INSERT into traffic VALUES (753955616, CAST(N'2021-01-13' AS Date), 373060, 1655, 693);
INSERT into traffic VALUES (753955616, CAST(N'2021-01-14' AS Date), 373060, 2434, 502);
INSERT into traffic VALUES (753955616, CAST(N'2021-01-15' AS Date), 373060, 2707, 218);
INSERT into traffic VALUES (753955616, CAST(N'2021-01-16' AS Date), 373060, 2955, 769);
INSERT into traffic VALUES (753955616, CAST(N'2021-01-17' AS Date), 373060, 1454, 640);
INSERT into traffic VALUES (753955616, CAST(N'2021-01-18' AS Date), 373060, 1266, 722);
INSERT into traffic VALUES (753955616, CAST(N'2021-01-19' AS Date), 373060, 2690, 462);
INSERT into traffic VALUES (753955616, CAST(N'2021-01-20' AS Date), 373060, 2722, 437);
INSERT into traffic VALUES (753955616, CAST(N'2021-01-21' AS Date), 373060, 2368, 209);
INSERT into traffic VALUES (753955616, CAST(N'2021-01-22' AS Date), 373060, 1233, 325);
INSERT into traffic VALUES (753955616, CAST(N'2021-01-23' AS Date), 373060, 2569, 291);
INSERT into traffic VALUES (753955616, CAST(N'2021-01-24' AS Date), 373060, 1153, 694);
INSERT into traffic VALUES (753955616, CAST(N'2021-01-25' AS Date), 373060, 2153, 340);
INSERT into traffic VALUES (753955616, CAST(N'2021-01-26' AS Date), 373060, 1296, 373);
INSERT into traffic VALUES (753955616, CAST(N'2021-01-27' AS Date), 373060, 2032, 480);
INSERT into traffic VALUES (753955616, CAST(N'2021-01-28' AS Date), 373060, 2925, 419);
INSERT into traffic VALUES (753955616, CAST(N'2021-01-29' AS Date), 373060, 1260, 435);
INSERT into traffic VALUES (753955616, CAST(N'2021-01-30' AS Date), 373060, 2098, 377);
INSERT into traffic VALUES (753955626, CAST(N'2021-01-01' AS Date), 373060, 1909, 285);
INSERT into traffic VALUES (753955626, CAST(N'2021-01-02' AS Date), 373060, 2983, 547);
INSERT into traffic VALUES (753955626, CAST(N'2021-01-03' AS Date), 373060, 2527, 753);
INSERT into traffic VALUES (753955626, CAST(N'2021-01-04' AS Date), 373060, 2931, 513);
INSERT into traffic VALUES (753955626, CAST(N'2021-01-05' AS Date), 373060, 2856, 720);
INSERT into traffic VALUES (753955626, CAST(N'2021-01-06' AS Date), 373060, 1617, 493);
INSERT into traffic VALUES (753955626, CAST(N'2021-01-07' AS Date), 373060, 1072, 577);
INSERT into traffic VALUES (753955626, CAST(N'2021-01-08' AS Date), 373060, 1895, 498);
INSERT into traffic VALUES (753955626, CAST(N'2021-01-09' AS Date), 373060, 2855, 373);
INSERT into traffic VALUES (753955626, CAST(N'2021-01-10' AS Date), 373060, 2701, 654);
INSERT into traffic VALUES (753955626, CAST(N'2021-01-11' AS Date), 373060, 2956, 604);
INSERT into traffic VALUES (753955626, CAST(N'2021-01-12' AS Date), 373060, 1044, 532);
INSERT into traffic VALUES (753955626, CAST(N'2021-01-13' AS Date), 373060, 2947, 214);
INSERT into traffic VALUES (753955626, CAST(N'2021-01-14' AS Date), 373060, 1099, 345);
INSERT into traffic VALUES (753955626, CAST(N'2021-01-15' AS Date), 373060, 2935, 251);
INSERT into traffic VALUES (753955626, CAST(N'2021-01-16' AS Date), 373060, 2650, 703);
INSERT into traffic VALUES (753955626, CAST(N'2021-01-17' AS Date), 373060, 2455, 240);
INSERT into traffic VALUES (753955626, CAST(N'2021-01-18' AS Date), 373060, 2340, 310);
INSERT into traffic VALUES (753955626, CAST(N'2021-01-19' AS Date), 373060, 2808, 578);
INSERT into traffic VALUES (753955626, CAST(N'2021-01-20' AS Date), 373060, 2002, 629);
INSERT into traffic VALUES (753955626, CAST(N'2021-01-21' AS Date), 373060, 1393, 404);
INSERT into traffic VALUES (753955626, CAST(N'2021-01-22' AS Date), 373060, 1694, 475);
INSERT into traffic VALUES (753955626, CAST(N'2021-01-23' AS Date), 373060, 1220, 268);
INSERT into traffic VALUES (753955626, CAST(N'2021-01-24' AS Date), 373060, 1751, 621);
INSERT into traffic VALUES (753955626, CAST(N'2021-01-25' AS Date), 373060, 2171, 661);
INSERT into traffic VALUES (753955626, CAST(N'2021-01-26' AS Date), 373060, 2822, 799);
INSERT into traffic VALUES (753955626, CAST(N'2021-01-27' AS Date), 373060, 1524, 416);
INSERT into traffic VALUES (753955626, CAST(N'2021-01-28' AS Date), 373060, 1947, 716);
INSERT into traffic VALUES (753955626, CAST(N'2021-01-29' AS Date), 373060, 2295, 488);
INSERT into traffic VALUES (753955626, CAST(N'2021-01-30' AS Date), 373060, 1169, 496);
INSERT into traffic VALUES (753955674, CAST(N'2021-01-01' AS Date), 373060, 2756, 642);
INSERT into traffic VALUES (753955674, CAST(N'2021-01-02' AS Date), 373060, 1796, 476);
INSERT into traffic VALUES (753955674, CAST(N'2021-01-03' AS Date), 373060, 2242, 723);
INSERT into traffic VALUES (753955674, CAST(N'2021-01-04' AS Date), 373060, 1955, 260);
INSERT into traffic VALUES (753955674, CAST(N'2021-01-05' AS Date), 373060, 1209, 489);
INSERT into traffic VALUES (753955674, CAST(N'2021-01-06' AS Date), 373060, 2532, 434);
INSERT into traffic VALUES (753955674, CAST(N'2021-01-07' AS Date), 373060, 2089, 427);
INSERT into traffic VALUES (753955674, CAST(N'2021-01-08' AS Date), 373060, 2763, 759);
INSERT into traffic VALUES (753955674, CAST(N'2021-01-09' AS Date), 373060, 1497, 537);
INSERT into traffic VALUES (753955674, CAST(N'2021-01-10' AS Date), 373060, 2665, 658);
INSERT into traffic VALUES (753955674, CAST(N'2021-01-11' AS Date), 373060, 1465, 485);
INSERT into traffic VALUES (753955674, CAST(N'2021-01-12' AS Date), 373060, 2481, 575);
INSERT into traffic VALUES (753955674, CAST(N'2021-01-13' AS Date), 373060, 2198, 737);
INSERT into traffic VALUES (753955674, CAST(N'2021-01-14' AS Date), 373060, 2300, 325);
INSERT into traffic VALUES (753955674, CAST(N'2021-01-15' AS Date), 373060, 2391, 450);
INSERT into traffic VALUES (753955674, CAST(N'2021-01-16' AS Date), 373060, 2754, 445);
INSERT into traffic VALUES (753955674, CAST(N'2021-01-17' AS Date), 373060, 2502, 406);
INSERT into traffic VALUES (753955674, CAST(N'2021-01-18' AS Date), 373060, 1186, 292);
INSERT into traffic VALUES (753955674, CAST(N'2021-01-19' AS Date), 373060, 1880, 273);
INSERT into traffic VALUES (753955674, CAST(N'2021-01-20' AS Date), 373060, 2136, 725);
INSERT into traffic VALUES (753955674, CAST(N'2021-01-21' AS Date), 373060, 1412, 563);
INSERT into traffic VALUES (753955674, CAST(N'2021-01-22' AS Date), 373060, 1891, 450);
INSERT into traffic VALUES (753955674, CAST(N'2021-01-23' AS Date), 373060, 1534, 295);
INSERT into traffic VALUES (753955674, CAST(N'2021-01-24' AS Date), 373060, 2625, 795);
INSERT into traffic VALUES (753955674, CAST(N'2021-01-25' AS Date), 373060, 1202, 644);
INSERT into traffic VALUES (753955674, CAST(N'2021-01-26' AS Date), 373060, 1442, 420);
INSERT into traffic VALUES (753955674, CAST(N'2021-01-27' AS Date), 373060, 2066, 298);
INSERT into traffic VALUES (753955674, CAST(N'2021-01-28' AS Date), 373060, 2992, 520);
INSERT into traffic VALUES (753955674, CAST(N'2021-01-29' AS Date), 373060, 1516, 731);
INSERT into traffic VALUES (753955674, CAST(N'2021-01-30' AS Date), 373060, 2933, 746);
INSERT into traffic VALUES (758461201, CAST(N'2021-01-01' AS Date), 375290, 2625, 771);
INSERT into traffic VALUES (758461201, CAST(N'2021-01-02' AS Date), 375290, 1382, 702);
INSERT into traffic VALUES (758461201, CAST(N'2021-01-03' AS Date), 375290, 2604, 646);
INSERT into traffic VALUES (758461201, CAST(N'2021-01-04' AS Date), 375290, 2143, 216);
INSERT into traffic VALUES (758461201, CAST(N'2021-01-05' AS Date), 375290, 1030, 321);
INSERT into traffic VALUES (758461201, CAST(N'2021-01-06' AS Date), 375290, 2469, 443);
INSERT into traffic VALUES (758461201, CAST(N'2021-01-07' AS Date), 375290, 1124, 535);
INSERT into traffic VALUES (758461201, CAST(N'2021-01-08' AS Date), 375290, 2152, 495);
INSERT into traffic VALUES (758461201, CAST(N'2021-01-09' AS Date), 375290, 2310, 346);
INSERT into traffic VALUES (758461201, CAST(N'2021-01-10' AS Date), 375290, 1188, 418);
INSERT into traffic VALUES (758461201, CAST(N'2021-01-11' AS Date), 375290, 2525, 449);
INSERT into traffic VALUES (758461201, CAST(N'2021-01-12' AS Date), 375290, 1763, 785);
INSERT into traffic VALUES (758461201, CAST(N'2021-01-13' AS Date), 375290, 2139, 787);
INSERT into traffic VALUES (758461201, CAST(N'2021-01-14' AS Date), 375290, 2778, 641);
INSERT into traffic VALUES (758461201, CAST(N'2021-01-15' AS Date), 375290, 1024, 366);
INSERT into traffic VALUES (758461201, CAST(N'2021-01-16' AS Date), 375290, 2589, 478);
INSERT into traffic VALUES (758461201, CAST(N'2021-01-17' AS Date), 375290, 1610, 460);
INSERT into traffic VALUES (758461201, CAST(N'2021-01-18' AS Date), 375290, 2165, 219);
INSERT into traffic VALUES (758461201, CAST(N'2021-01-19' AS Date), 375290, 1549, 530);
INSERT into traffic VALUES (758461201, CAST(N'2021-01-20' AS Date), 375290, 1701, 760);
INSERT into traffic VALUES (758461201, CAST(N'2021-01-21' AS Date), 375290, 1605, 520);
INSERT into traffic VALUES (758461201, CAST(N'2021-01-22' AS Date), 375290, 1596, 779);
INSERT into traffic VALUES (758461201, CAST(N'2021-01-23' AS Date), 375290, 2777, 227);
INSERT into traffic VALUES (758461201, CAST(N'2021-01-24' AS Date), 375290, 1508, 263);
INSERT into traffic VALUES (758461201, CAST(N'2021-01-25' AS Date), 375290, 1449, 730);
INSERT into traffic VALUES (758461201, CAST(N'2021-01-26' AS Date), 375290, 2058, 591);
INSERT into traffic VALUES (758461201, CAST(N'2021-01-27' AS Date), 375290, 2944, 781);
INSERT into traffic VALUES (758461201, CAST(N'2021-01-28' AS Date), 375290, 2616, 676);
INSERT into traffic VALUES (758461201, CAST(N'2021-01-29' AS Date), 375290, 1326, 572);
INSERT into traffic VALUES (758461201, CAST(N'2021-01-30' AS Date), 375290, 2390, 450);
INSERT into traffic VALUES (768951755, CAST(N'2021-01-01' AS Date), 380480, 1343, 313);
INSERT into traffic VALUES (768951755, CAST(N'2021-01-02' AS Date), 380480, 1648, 235);
INSERT into traffic VALUES (768951755, CAST(N'2021-01-03' AS Date), 380480, 2138, 292);
INSERT into traffic VALUES (768951755, CAST(N'2021-01-04' AS Date), 380480, 1510, 224);
INSERT into traffic VALUES (768951755, CAST(N'2021-01-05' AS Date), 380480, 2940, 310);
INSERT into traffic VALUES (768951755, CAST(N'2021-01-06' AS Date), 380480, 2486, 336);
INSERT into traffic VALUES (768951755, CAST(N'2021-01-07' AS Date), 380480, 2568, 304);
INSERT into traffic VALUES (768951755, CAST(N'2021-01-08' AS Date), 380480, 1865, 269);
INSERT into traffic VALUES (768951755, CAST(N'2021-01-09' AS Date), 380480, 1103, 331);
INSERT into traffic VALUES (768951755, CAST(N'2021-01-10' AS Date), 380480, 2517, 348);
INSERT into traffic VALUES (768951755, CAST(N'2021-01-11' AS Date), 380480, 2096, 342);
INSERT into traffic VALUES (768951755, CAST(N'2021-01-12' AS Date), 380480, 2334, 298);
INSERT into traffic VALUES (768951755, CAST(N'2021-01-13' AS Date), 380480, 1496, 376);
INSERT into traffic VALUES (768951755, CAST(N'2021-01-14' AS Date), 380480, 2140, 364);
INSERT into traffic VALUES (768951755, CAST(N'2021-01-15' AS Date), 380480, 2624, 337);
INSERT into traffic VALUES (768951755, CAST(N'2021-01-16' AS Date), 380480, 1347, 260);
INSERT into traffic VALUES (768951755, CAST(N'2021-01-17' AS Date), 380480, 2507, 291);
INSERT into traffic VALUES (768951755, CAST(N'2021-01-18' AS Date), 380480, 1605, 390);
INSERT into traffic VALUES (768951755, CAST(N'2021-01-19' AS Date), 380480, 2348, 398);
INSERT into traffic VALUES (768951755, CAST(N'2021-01-20' AS Date), 380480, 2763, 289);
INSERT into traffic VALUES (768951755, CAST(N'2021-01-21' AS Date), 380480, 2940, 374);
INSERT into traffic VALUES (768951755, CAST(N'2021-01-22' AS Date), 380480, 2784, 307);
INSERT into traffic VALUES (768951755, CAST(N'2021-01-23' AS Date), 380480, 2914, 331);
INSERT into traffic VALUES (768951755, CAST(N'2021-01-24' AS Date), 380480, 2857, 227);
INSERT into traffic VALUES (768951755, CAST(N'2021-01-25' AS Date), 380480, 1363, 245);
INSERT into traffic VALUES (768951755, CAST(N'2021-01-26' AS Date), 380480, 2991, 276);
INSERT into traffic VALUES (768951755, CAST(N'2021-01-27' AS Date), 380480, 2375, 268);
INSERT into traffic VALUES (768951755, CAST(N'2021-01-28' AS Date), 380480, 2815, 338);
INSERT into traffic VALUES (768951755, CAST(N'2021-01-29' AS Date), 380480, 2133, 361);
INSERT into traffic VALUES (768951755, CAST(N'2021-01-30' AS Date), 380480, 1791, 282);
INSERT into traffic VALUES (774394013, CAST(N'2021-01-01' AS Date), 383173, 1245, 499);
INSERT into traffic VALUES (774394013, CAST(N'2021-01-02' AS Date), 383173, 2737, 441);
INSERT into traffic VALUES (774394013, CAST(N'2021-01-03' AS Date), 383173, 1881, 293);
INSERT into traffic VALUES (774394013, CAST(N'2021-01-04' AS Date), 383173, 1453, 771);
INSERT into traffic VALUES (774394013, CAST(N'2021-01-05' AS Date), 383173, 1760, 292);
INSERT into traffic VALUES (774394013, CAST(N'2021-01-06' AS Date), 383173, 1935, 392);
INSERT into traffic VALUES (774394013, CAST(N'2021-01-07' AS Date), 383173, 1408, 600);
INSERT into traffic VALUES (774394013, CAST(N'2021-01-08' AS Date), 383173, 1287, 560);
INSERT into traffic VALUES (774394013, CAST(N'2021-01-09' AS Date), 383173, 2041, 706);
INSERT into traffic VALUES (774394013, CAST(N'2021-01-10' AS Date), 383173, 1685, 513);
INSERT into traffic VALUES (774394013, CAST(N'2021-01-11' AS Date), 383173, 1278, 745);
INSERT into traffic VALUES (774394013, CAST(N'2021-01-12' AS Date), 383173, 1053, 439);
INSERT into traffic VALUES (774394013, CAST(N'2021-01-13' AS Date), 383173, 1210, 512);
INSERT into traffic VALUES (774394013, CAST(N'2021-01-14' AS Date), 383173, 1527, 461);
INSERT into traffic VALUES (774394013, CAST(N'2021-01-15' AS Date), 383173, 2379, 596);
INSERT into traffic VALUES (774394013, CAST(N'2021-01-16' AS Date), 383173, 1205, 512);
INSERT into traffic VALUES (774394013, CAST(N'2021-01-17' AS Date), 383173, 1888, 221);
INSERT into traffic VALUES (774394013, CAST(N'2021-01-18' AS Date), 383173, 1797, 423);
INSERT into traffic VALUES (774394013, CAST(N'2021-01-19' AS Date), 383173, 2207, 536);
INSERT into traffic VALUES (774394013, CAST(N'2021-01-20' AS Date), 383173, 1476, 447);
INSERT into traffic VALUES (774394013, CAST(N'2021-01-21' AS Date), 383173, 1150, 608);
INSERT into traffic VALUES (774394013, CAST(N'2021-01-22' AS Date), 383173, 2254, 432);
INSERT into traffic VALUES (774394013, CAST(N'2021-01-23' AS Date), 383173, 1634, 319);
INSERT into traffic VALUES (774394013, CAST(N'2021-01-24' AS Date), 383173, 1052, 389);
INSERT into traffic VALUES (774394013, CAST(N'2021-01-25' AS Date), 383173, 2574, 790);
INSERT into traffic VALUES (774394013, CAST(N'2021-01-26' AS Date), 383173, 1407, 420);
INSERT into traffic VALUES (774394013, CAST(N'2021-01-27' AS Date), 383173, 1389, 593);
INSERT into traffic VALUES (774394013, CAST(N'2021-01-28' AS Date), 383173, 2798, 382);
INSERT into traffic VALUES (774394013, CAST(N'2021-01-29' AS Date), 383173, 1655, 693);
INSERT into traffic VALUES (774394013, CAST(N'2021-01-30' AS Date), 383173, 2437, 340);
INSERT into traffic VALUES (774394064, CAST(N'2021-01-01' AS Date), 383173, 2149, 436);
INSERT into traffic VALUES (774394064, CAST(N'2021-01-02' AS Date), 383173, 2227, 653);
INSERT into traffic VALUES (774394064, CAST(N'2021-01-03' AS Date), 383173, 1068, 796);
INSERT into traffic VALUES (774394064, CAST(N'2021-01-04' AS Date), 383173, 1566, 247);
INSERT into traffic VALUES (774394064, CAST(N'2021-01-05' AS Date), 383173, 1822, 262);
INSERT into traffic VALUES (774394064, CAST(N'2021-01-06' AS Date), 383173, 2004, 582);
INSERT into traffic VALUES (774394064, CAST(N'2021-01-07' AS Date), 383173, 1340, 476);
INSERT into traffic VALUES (774394064, CAST(N'2021-01-08' AS Date), 383173, 2421, 522);
INSERT into traffic VALUES (774394064, CAST(N'2021-01-09' AS Date), 383173, 1708, 671);
INSERT into traffic VALUES (774394064, CAST(N'2021-01-10' AS Date), 383173, 1092, 436);
INSERT into traffic VALUES (774394064, CAST(N'2021-01-11' AS Date), 383173, 1327, 645);
INSERT into traffic VALUES (774394064, CAST(N'2021-01-12' AS Date), 383173, 2007, 416);
INSERT into traffic VALUES (774394064, CAST(N'2021-01-13' AS Date), 383173, 1930, 711);
INSERT into traffic VALUES (774394064, CAST(N'2021-01-14' AS Date), 383173, 1353, 206);
INSERT into traffic VALUES (774394064, CAST(N'2021-01-15' AS Date), 383173, 2004, 686);
INSERT into traffic VALUES (774394064, CAST(N'2021-01-16' AS Date), 383173, 2232, 433);
INSERT into traffic VALUES (774394064, CAST(N'2021-01-17' AS Date), 383173, 1914, 736);
INSERT into traffic VALUES (774394064, CAST(N'2021-01-18' AS Date), 383173, 2975, 782);
INSERT into traffic VALUES (774394064, CAST(N'2021-01-19' AS Date), 383173, 2619, 544);
INSERT into traffic VALUES (774394064, CAST(N'2021-01-20' AS Date), 383173, 1770, 259);
INSERT into traffic VALUES (774394064, CAST(N'2021-01-21' AS Date), 383173, 1731, 626);
INSERT into traffic VALUES (774394064, CAST(N'2021-01-22' AS Date), 383173, 2807, 485);
INSERT into traffic VALUES (774394064, CAST(N'2021-01-23' AS Date), 383173, 2631, 626);
INSERT into traffic VALUES (774394064, CAST(N'2021-01-24' AS Date), 383173, 1824, 565);
INSERT into traffic VALUES (774394064, CAST(N'2021-01-25' AS Date), 383173, 1936, 275);
INSERT into traffic VALUES (774394064, CAST(N'2021-01-26' AS Date), 383173, 2136, 492);
INSERT into traffic VALUES (774394064, CAST(N'2021-01-27' AS Date), 383173, 2500, 329);
INSERT into traffic VALUES (774394064, CAST(N'2021-01-28' AS Date), 383173, 2280, 572);
INSERT into traffic VALUES (774394064, CAST(N'2021-01-29' AS Date), 383173, 2979, 789);
INSERT into traffic VALUES (774394064, CAST(N'2021-01-30' AS Date), 383173, 1226, 657);
INSERT into traffic VALUES (774394094, CAST(N'2021-01-01' AS Date), 383173, 2204, 298);
INSERT into traffic VALUES (774394094, CAST(N'2021-01-02' AS Date), 383173, 1137, 766);
INSERT into traffic VALUES (774394094, CAST(N'2021-01-03' AS Date), 383173, 1284, 445);
INSERT into traffic VALUES (774394094, CAST(N'2021-01-04' AS Date), 383173, 2352, 280);
INSERT into traffic VALUES (774394094, CAST(N'2021-01-05' AS Date), 383173, 1908, 719);
INSERT into traffic VALUES (774394094, CAST(N'2021-01-06' AS Date), 383173, 2955, 426);
INSERT into traffic VALUES (774394094, CAST(N'2021-01-07' AS Date), 383173, 2109, 556);
INSERT into traffic VALUES (774394094, CAST(N'2021-01-08' AS Date), 383173, 1667, 747);
INSERT into traffic VALUES (774394094, CAST(N'2021-01-09' AS Date), 383173, 2854, 254);
INSERT into traffic VALUES (774394094, CAST(N'2021-01-10' AS Date), 383173, 2771, 611);
INSERT into traffic VALUES (774394094, CAST(N'2021-01-11' AS Date), 383173, 2228, 756);
INSERT into traffic VALUES (774394094, CAST(N'2021-01-12' AS Date), 383173, 1953, 799);
INSERT into traffic VALUES (774394094, CAST(N'2021-01-13' AS Date), 383173, 2539, 657);
INSERT into traffic VALUES (774394094, CAST(N'2021-01-14' AS Date), 383173, 1148, 579);
INSERT into traffic VALUES (774394094, CAST(N'2021-01-15' AS Date), 383173, 1666, 224);
INSERT into traffic VALUES (774394094, CAST(N'2021-01-16' AS Date), 383173, 1915, 421);
INSERT into traffic VALUES (774394094, CAST(N'2021-01-17' AS Date), 383173, 1448, 632);
INSERT into traffic VALUES (774394094, CAST(N'2021-01-18' AS Date), 383173, 1394, 322);
INSERT into traffic VALUES (774394094, CAST(N'2021-01-19' AS Date), 383173, 2508, 312);
INSERT into traffic VALUES (774394094, CAST(N'2021-01-20' AS Date), 383173, 1379, 646);
INSERT into traffic VALUES (774394094, CAST(N'2021-01-21' AS Date), 383173, 1608, 328);
INSERT into traffic VALUES (774394094, CAST(N'2021-01-22' AS Date), 383173, 1533, 373);
INSERT into traffic VALUES (774394094, CAST(N'2021-01-23' AS Date), 383173, 1260, 771);
INSERT into traffic VALUES (774394094, CAST(N'2021-01-24' AS Date), 383173, 1157, 436);
INSERT into traffic VALUES (774394094, CAST(N'2021-01-25' AS Date), 383173, 1850, 760);
INSERT into traffic VALUES (774394094, CAST(N'2021-01-26' AS Date), 383173, 2175, 666);
INSERT into traffic VALUES (774394094, CAST(N'2021-01-27' AS Date), 383173, 2529, 724);
INSERT into traffic VALUES (774394094, CAST(N'2021-01-28' AS Date), 383173, 1468, 530);
INSERT into traffic VALUES (774394094, CAST(N'2021-01-29' AS Date), 383173, 1746, 635);
INSERT into traffic VALUES (774394094, CAST(N'2021-01-30' AS Date), 383173, 2433, 421);
INSERT into traffic VALUES (784518455, CAST(N'2021-01-01' AS Date), 388183, 2031, 276);
INSERT into traffic VALUES (784518455, CAST(N'2021-01-02' AS Date), 388183, 1505, 333);
INSERT into traffic VALUES (784518455, CAST(N'2021-01-03' AS Date), 388183, 2418, 281);
INSERT into traffic VALUES (784518455, CAST(N'2021-01-04' AS Date), 388183, 2949, 531);
INSERT into traffic VALUES (784518455, CAST(N'2021-01-05' AS Date), 388183, 2435, 368);
INSERT into traffic VALUES (784518455, CAST(N'2021-01-06' AS Date), 388183, 2018, 282);
INSERT into traffic VALUES (784518455, CAST(N'2021-01-07' AS Date), 388183, 1162, 377);
INSERT into traffic VALUES (784518455, CAST(N'2021-01-08' AS Date), 388183, 2751, 364);
INSERT into traffic VALUES (784518455, CAST(N'2021-01-09' AS Date), 388183, 1978, 362);
INSERT into traffic VALUES (784518455, CAST(N'2021-01-10' AS Date), 388183, 1454, 512);
INSERT into traffic VALUES (784518455, CAST(N'2021-01-11' AS Date), 388183, 1552, 459);
INSERT into traffic VALUES (784518455, CAST(N'2021-01-12' AS Date), 388183, 1159, 479);
INSERT into traffic VALUES (784518455, CAST(N'2021-01-13' AS Date), 388183, 1218, 722);
INSERT into traffic VALUES (784518455, CAST(N'2021-01-14' AS Date), 388183, 2635, 869);
INSERT into traffic VALUES (784518455, CAST(N'2021-01-15' AS Date), 388183, 1402, 678);
INSERT into traffic VALUES (784518455, CAST(N'2021-01-16' AS Date), 388183, 2636, 382);
INSERT into traffic VALUES (784518455, CAST(N'2021-01-17' AS Date), 388183, 1955, 949);
INSERT into traffic VALUES (784518455, CAST(N'2021-01-18' AS Date), 388183, 2350, 647);
INSERT into traffic VALUES (784518455, CAST(N'2021-01-19' AS Date), 388183, 2422, 211);
INSERT into traffic VALUES (784518455, CAST(N'2021-01-20' AS Date), 388183, 2301, 623);
INSERT into traffic VALUES (784518455, CAST(N'2021-01-21' AS Date), 388183, 2050, 816);
INSERT into traffic VALUES (784518455, CAST(N'2021-01-22' AS Date), 388183, 2243, 331);
INSERT into traffic VALUES (784518455, CAST(N'2021-01-23' AS Date), 388183, 1974, 638);
INSERT into traffic VALUES (784518455, CAST(N'2021-01-24' AS Date), 388183, 2999, 230);
INSERT into traffic VALUES (784518455, CAST(N'2021-01-25' AS Date), 388183, 2216, 747);
INSERT into traffic VALUES (784518455, CAST(N'2021-01-26' AS Date), 388183, 1694, 948);
INSERT into traffic VALUES (784518455, CAST(N'2021-01-27' AS Date), 388183, 2417, 397);
INSERT into traffic VALUES (784518455, CAST(N'2021-01-28' AS Date), 388183, 1138, 218);
INSERT into traffic VALUES (784518455, CAST(N'2021-01-29' AS Date), 388183, 2182, 428);
INSERT into traffic VALUES (784518455, CAST(N'2021-01-30' AS Date), 388183, 1657, 671);
INSERT into traffic VALUES (791421737, CAST(N'2021-01-01' AS Date), 391599, 1075, 233);
INSERT into traffic VALUES (791421737, CAST(N'2021-01-02' AS Date), 391599, 1892, 319);
INSERT into traffic VALUES (791421737, CAST(N'2021-01-03' AS Date), 391599, 1690, 342);
INSERT into traffic VALUES (791421737, CAST(N'2021-01-04' AS Date), 391599, 1013, 220);
INSERT into traffic VALUES (791421737, CAST(N'2021-01-05' AS Date), 391599, 1076, 341);
INSERT into traffic VALUES (791421737, CAST(N'2021-01-06' AS Date), 391599, 1359, 367);
INSERT into traffic VALUES (791421737, CAST(N'2021-01-07' AS Date), 391599, 2616, 251);
INSERT into traffic VALUES (791421737, CAST(N'2021-01-08' AS Date), 391599, 2187, 213);
INSERT into traffic VALUES (791421737, CAST(N'2021-01-09' AS Date), 391599, 1622, 326);
INSERT into traffic VALUES (791421737, CAST(N'2021-01-10' AS Date), 391599, 2648, 370);
INSERT into traffic VALUES (791421737, CAST(N'2021-01-11' AS Date), 391599, 2635, 333);
INSERT into traffic VALUES (791421737, CAST(N'2021-01-12' AS Date), 391599, 1164, 238);
INSERT into traffic VALUES (791421737, CAST(N'2021-01-13' AS Date), 391599, 1838, 328);
INSERT into traffic VALUES (791421737, CAST(N'2021-01-14' AS Date), 391599, 1013, 258);
INSERT into traffic VALUES (791421737, CAST(N'2021-01-15' AS Date), 391599, 1142, 270);
INSERT into traffic VALUES (791421737, CAST(N'2021-01-16' AS Date), 391599, 2281, 251);
INSERT into traffic VALUES (791421737, CAST(N'2021-01-17' AS Date), 391599, 1453, 384);
INSERT into traffic VALUES (791421737, CAST(N'2021-01-18' AS Date), 391599, 1835, 386);
INSERT into traffic VALUES (791421737, CAST(N'2021-01-19' AS Date), 391599, 2542, 335);
INSERT into traffic VALUES (791421737, CAST(N'2021-01-20' AS Date), 391599, 1292, 301);
INSERT into traffic VALUES (791421737, CAST(N'2021-01-21' AS Date), 391599, 1785, 321);
INSERT into traffic VALUES (791421737, CAST(N'2021-01-22' AS Date), 391599, 2976, 234);
INSERT into traffic VALUES (791421737, CAST(N'2021-01-23' AS Date), 391599, 1436, 252);
INSERT into traffic VALUES (791421737, CAST(N'2021-01-24' AS Date), 391599, 1087, 329);
INSERT into traffic VALUES (791421737, CAST(N'2021-01-25' AS Date), 391599, 1488, 238);
INSERT into traffic VALUES (791421737, CAST(N'2021-01-26' AS Date), 391599, 2036, 370);
INSERT into traffic VALUES (791421737, CAST(N'2021-01-27' AS Date), 391599, 2055, 273);
INSERT into traffic VALUES (791421737, CAST(N'2021-01-28' AS Date), 391599, 1741, 317);
INSERT into traffic VALUES (791421737, CAST(N'2021-01-29' AS Date), 391599, 2487, 262);
INSERT into traffic VALUES (791421737, CAST(N'2021-01-30' AS Date), 391599, 1206, 286);
INSERT into traffic VALUES (796863247, CAST(N'2021-01-01' AS Date), 394291, 2288, 305);
INSERT into traffic VALUES (796863247, CAST(N'2021-01-02' AS Date), 394291, 2592, 475);
INSERT into traffic VALUES (796863247, CAST(N'2021-01-03' AS Date), 394291, 2948, 575);
INSERT into traffic VALUES (796863247, CAST(N'2021-01-04' AS Date), 394291, 2360, 228);
INSERT into traffic VALUES (796863247, CAST(N'2021-01-05' AS Date), 394291, 1644, 376);
INSERT into traffic VALUES (796863247, CAST(N'2021-01-06' AS Date), 394291, 1283, 345);
INSERT into traffic VALUES (796863247, CAST(N'2021-01-07' AS Date), 394291, 1606, 425);
INSERT into traffic VALUES (796863247, CAST(N'2021-01-08' AS Date), 394291, 2060, 266);
INSERT into traffic VALUES (796863247, CAST(N'2021-01-09' AS Date), 394291, 2301, 373);
INSERT into traffic VALUES (796863247, CAST(N'2021-01-10' AS Date), 394291, 1400, 445);
INSERT into traffic VALUES (796863247, CAST(N'2021-01-11' AS Date), 394291, 1073, 254);
INSERT into traffic VALUES (796863247, CAST(N'2021-01-12' AS Date), 394291, 1764, 416);
INSERT into traffic VALUES (796863247, CAST(N'2021-01-13' AS Date), 394291, 1876, 355);
INSERT into traffic VALUES (796863247, CAST(N'2021-01-14' AS Date), 394291, 1783, 313);
INSERT into traffic VALUES (796863247, CAST(N'2021-01-15' AS Date), 394291, 1195, 312);
INSERT into traffic VALUES (796863247, CAST(N'2021-01-16' AS Date), 394291, 2288, 442);
INSERT into traffic VALUES (796863247, CAST(N'2021-01-17' AS Date), 394291, 2930, 410);
INSERT into traffic VALUES (796863247, CAST(N'2021-01-18' AS Date), 394291, 2650, 267);
INSERT into traffic VALUES (796863247, CAST(N'2021-01-19' AS Date), 394291, 2968, 225);
INSERT into traffic VALUES (796863247, CAST(N'2021-01-20' AS Date), 394291, 2189, 499);
INSERT into traffic VALUES (796863247, CAST(N'2021-01-21' AS Date), 394291, 2804, 509);
INSERT into traffic VALUES (796863247, CAST(N'2021-01-22' AS Date), 394291, 1365, 223);
INSERT into traffic VALUES (796863247, CAST(N'2021-01-23' AS Date), 394291, 1609, 262);
INSERT into traffic VALUES (796863247, CAST(N'2021-01-24' AS Date), 394291, 1753, 372);
INSERT into traffic VALUES (796863247, CAST(N'2021-01-25' AS Date), 394291, 2347, 538);
INSERT into traffic VALUES (796863247, CAST(N'2021-01-26' AS Date), 394291, 1281, 239);
INSERT into traffic VALUES (796863247, CAST(N'2021-01-27' AS Date), 394291, 2151, 471);
INSERT into traffic VALUES (796863247, CAST(N'2021-01-28' AS Date), 394291, 1339, 495);
INSERT into traffic VALUES (796863247, CAST(N'2021-01-29' AS Date), 394291, 1076, 521);
INSERT into traffic VALUES (796863247, CAST(N'2021-01-30' AS Date), 394291, 1437, 330);
INSERT into traffic VALUES (799747284, CAST(N'2021-01-01' AS Date), 395718, 1691, 609);
INSERT into traffic VALUES (799747284, CAST(N'2021-01-02' AS Date), 395718, 1106, 247);
INSERT into traffic VALUES (799747284, CAST(N'2021-01-03' AS Date), 395718, 2118, 498);
INSERT into traffic VALUES (799747284, CAST(N'2021-01-04' AS Date), 395718, 1662, 516);
INSERT into traffic VALUES (799747284, CAST(N'2021-01-05' AS Date), 395718, 1151, 765);
INSERT into traffic VALUES (799747284, CAST(N'2021-01-06' AS Date), 395718, 2327, 458);
INSERT into traffic VALUES (799747284, CAST(N'2021-01-07' AS Date), 395718, 2021, 482);
INSERT into traffic VALUES (799747284, CAST(N'2021-01-08' AS Date), 395718, 2580, 553);
INSERT into traffic VALUES (799747284, CAST(N'2021-01-09' AS Date), 395718, 1915, 383);
INSERT into traffic VALUES (799747284, CAST(N'2021-01-10' AS Date), 395718, 2709, 893);
INSERT into traffic VALUES (799747284, CAST(N'2021-01-11' AS Date), 395718, 2863, 700);
INSERT into traffic VALUES (799747284, CAST(N'2021-01-12' AS Date), 395718, 1445, 446);
INSERT into traffic VALUES (799747284, CAST(N'2021-01-13' AS Date), 395718, 2950, 298);
INSERT into traffic VALUES (799747284, CAST(N'2021-01-14' AS Date), 395718, 2628, 320);
INSERT into traffic VALUES (799747284, CAST(N'2021-01-15' AS Date), 395718, 1304, 300);
INSERT into traffic VALUES (799747284, CAST(N'2021-01-16' AS Date), 395718, 2807, 727);
INSERT into traffic VALUES (799747284, CAST(N'2021-01-17' AS Date), 395718, 1559, 666);
INSERT into traffic VALUES (799747284, CAST(N'2021-01-18' AS Date), 395718, 1499, 934);
INSERT into traffic VALUES (799747284, CAST(N'2021-01-19' AS Date), 395718, 2944, 579);
INSERT into traffic VALUES (799747284, CAST(N'2021-01-20' AS Date), 395718, 2032, 628);
INSERT into traffic VALUES (799747284, CAST(N'2021-01-21' AS Date), 395718, 2893, 784);
INSERT into traffic VALUES (799747284, CAST(N'2021-01-22' AS Date), 395718, 2853, 837);
INSERT into traffic VALUES (799747284, CAST(N'2021-01-23' AS Date), 395718, 1736, 547);
INSERT into traffic VALUES (799747284, CAST(N'2021-01-24' AS Date), 395718, 2220, 554);
INSERT into traffic VALUES (799747284, CAST(N'2021-01-25' AS Date), 395718, 1241, 375);
INSERT into traffic VALUES (799747284, CAST(N'2021-01-26' AS Date), 395718, 1288, 899);
INSERT into traffic VALUES (799747284, CAST(N'2021-01-27' AS Date), 395718, 2730, 877);
INSERT into traffic VALUES (799747284, CAST(N'2021-01-28' AS Date), 395718, 2486, 609);
INSERT into traffic VALUES (799747284, CAST(N'2021-01-29' AS Date), 395718, 2982, 243);
INSERT into traffic VALUES (799747284, CAST(N'2021-01-30' AS Date), 395718, 2173, 293);
INSERT into traffic VALUES (831146073, CAST(N'2021-01-01' AS Date), 411254, 2751, 634);
INSERT into traffic VALUES (831146073, CAST(N'2021-01-02' AS Date), 411254, 2821, 250);
INSERT into traffic VALUES (831146073, CAST(N'2021-01-03' AS Date), 411254, 2168, 402);
INSERT into traffic VALUES (831146073, CAST(N'2021-01-04' AS Date), 411254, 2208, 601);
INSERT into traffic VALUES (831146073, CAST(N'2021-01-05' AS Date), 411254, 2098, 309);
INSERT into traffic VALUES (831146073, CAST(N'2021-01-06' AS Date), 411254, 2616, 559);
INSERT into traffic VALUES (831146073, CAST(N'2021-01-07' AS Date), 411254, 1929, 703);
INSERT into traffic VALUES (831146073, CAST(N'2021-01-08' AS Date), 411254, 2883, 275);
INSERT into traffic VALUES (831146073, CAST(N'2021-01-09' AS Date), 411254, 1929, 746);
INSERT into traffic VALUES (831146073, CAST(N'2021-01-10' AS Date), 411254, 1682, 525);
INSERT into traffic VALUES (831146073, CAST(N'2021-01-11' AS Date), 411254, 2692, 224);
INSERT into traffic VALUES (831146073, CAST(N'2021-01-12' AS Date), 411254, 2080, 520);
INSERT into traffic VALUES (831146073, CAST(N'2021-01-13' AS Date), 411254, 2204, 606);
INSERT into traffic VALUES (831146073, CAST(N'2021-01-14' AS Date), 411254, 2816, 496);
INSERT into traffic VALUES (831146073, CAST(N'2021-01-15' AS Date), 411254, 1474, 283);
INSERT into traffic VALUES (831146073, CAST(N'2021-01-16' AS Date), 411254, 1341, 617);
INSERT into traffic VALUES (831146073, CAST(N'2021-01-17' AS Date), 411254, 1497, 318);
INSERT into traffic VALUES (831146073, CAST(N'2021-01-18' AS Date), 411254, 2586, 260);
INSERT into traffic VALUES (831146073, CAST(N'2021-01-19' AS Date), 411254, 1752, 294);
INSERT into traffic VALUES (831146073, CAST(N'2021-01-20' AS Date), 411254, 1333, 351);
INSERT into traffic VALUES (831146073, CAST(N'2021-01-21' AS Date), 411254, 2233, 397);
INSERT into traffic VALUES (831146073, CAST(N'2021-01-22' AS Date), 411254, 1499, 218);
INSERT into traffic VALUES (831146073, CAST(N'2021-01-23' AS Date), 411254, 2337, 550);
INSERT into traffic VALUES (831146073, CAST(N'2021-01-24' AS Date), 411254, 2208, 411);
INSERT into traffic VALUES (831146073, CAST(N'2021-01-25' AS Date), 411254, 2406, 265);
INSERT into traffic VALUES (831146073, CAST(N'2021-01-26' AS Date), 411254, 1279, 563);
INSERT into traffic VALUES (831146073, CAST(N'2021-01-27' AS Date), 411254, 2213, 482);
INSERT into traffic VALUES (831146073, CAST(N'2021-01-28' AS Date), 411254, 2774, 692);
INSERT into traffic VALUES (831146073, CAST(N'2021-01-29' AS Date), 411254, 2812, 771);
INSERT into traffic VALUES (831146073, CAST(N'2021-01-30' AS Date), 411254, 2239, 240);
INSERT into traffic VALUES (833946749, CAST(N'2021-01-01' AS Date), 412640, 2028, 225);
INSERT into traffic VALUES (833946749, CAST(N'2021-01-02' AS Date), 412640, 2040, 240);
INSERT into traffic VALUES (833946749, CAST(N'2021-01-03' AS Date), 412640, 2851, 492);
INSERT into traffic VALUES (833946749, CAST(N'2021-01-04' AS Date), 412640, 2405, 358);
INSERT into traffic VALUES (833946749, CAST(N'2021-01-05' AS Date), 412640, 1879, 437);
INSERT into traffic VALUES (833946749, CAST(N'2021-01-06' AS Date), 412640, 2384, 424);
INSERT into traffic VALUES (833946749, CAST(N'2021-01-07' AS Date), 412640, 1649, 526);
INSERT into traffic VALUES (833946749, CAST(N'2021-01-08' AS Date), 412640, 1999, 290);
INSERT into traffic VALUES (833946749, CAST(N'2021-01-09' AS Date), 412640, 2148, 304);
INSERT into traffic VALUES (833946749, CAST(N'2021-01-10' AS Date), 412640, 2673, 324);
INSERT into traffic VALUES (833946749, CAST(N'2021-01-11' AS Date), 412640, 2170, 482);
INSERT into traffic VALUES (833946749, CAST(N'2021-01-12' AS Date), 412640, 2378, 376);
INSERT into traffic VALUES (833946749, CAST(N'2021-01-13' AS Date), 412640, 2184, 208);
INSERT into traffic VALUES (833946749, CAST(N'2021-01-14' AS Date), 412640, 2276, 356);
INSERT into traffic VALUES (833946749, CAST(N'2021-01-15' AS Date), 412640, 1563, 515);
INSERT into traffic VALUES (833946749, CAST(N'2021-01-16' AS Date), 412640, 2765, 555);
INSERT into traffic VALUES (833946749, CAST(N'2021-01-17' AS Date), 412640, 1369, 321);
INSERT into traffic VALUES (833946749, CAST(N'2021-01-18' AS Date), 412640, 2704, 505);
INSERT into traffic VALUES (833946749, CAST(N'2021-01-19' AS Date), 412640, 1104, 264);
INSERT into traffic VALUES (833946749, CAST(N'2021-01-20' AS Date), 412640, 2036, 295);
INSERT into traffic VALUES (833946749, CAST(N'2021-01-21' AS Date), 412640, 2759, 481);
INSERT into traffic VALUES (833946749, CAST(N'2021-01-22' AS Date), 412640, 2008, 565);
INSERT into traffic VALUES (833946749, CAST(N'2021-01-23' AS Date), 412640, 1347, 412);
INSERT into traffic VALUES (833946749, CAST(N'2021-01-24' AS Date), 412640, 1091, 445);
INSERT into traffic VALUES (833946749, CAST(N'2021-01-25' AS Date), 412640, 2278, 276);
INSERT into traffic VALUES (833946749, CAST(N'2021-01-26' AS Date), 412640, 2109, 236);
INSERT into traffic VALUES (833946749, CAST(N'2021-01-27' AS Date), 412640, 2372, 417);
INSERT into traffic VALUES (833946749, CAST(N'2021-01-28' AS Date), 412640, 2311, 251);
INSERT into traffic VALUES (833946749, CAST(N'2021-01-29' AS Date), 412640, 1118, 406);
INSERT into traffic VALUES (833946749, CAST(N'2021-01-30' AS Date), 412640, 1027, 267);
INSERT into traffic VALUES (835128280, CAST(N'2021-01-01' AS Date), 413225, 2623, 564);
INSERT into traffic VALUES (835128280, CAST(N'2021-01-02' AS Date), 413225, 1048, 475);
INSERT into traffic VALUES (835128280, CAST(N'2021-01-03' AS Date), 413225, 1624, 545);
INSERT into traffic VALUES (835128280, CAST(N'2021-01-04' AS Date), 413225, 2150, 244);
INSERT into traffic VALUES (835128280, CAST(N'2021-01-05' AS Date), 413225, 1606, 382);
INSERT into traffic VALUES (835128280, CAST(N'2021-01-06' AS Date), 413225, 2082, 541);
INSERT into traffic VALUES (835128280, CAST(N'2021-01-07' AS Date), 413225, 1408, 419);
INSERT into traffic VALUES (835128280, CAST(N'2021-01-08' AS Date), 413225, 1429, 395);
INSERT into traffic VALUES (835128280, CAST(N'2021-01-09' AS Date), 413225, 1414, 354);
INSERT into traffic VALUES (835128280, CAST(N'2021-01-10' AS Date), 413225, 1799, 317);
INSERT into traffic VALUES (835128280, CAST(N'2021-01-11' AS Date), 413225, 1673, 579);
INSERT into traffic VALUES (835128280, CAST(N'2021-01-12' AS Date), 413225, 1547, 471);
INSERT into traffic VALUES (835128280, CAST(N'2021-01-13' AS Date), 413225, 1401, 530);
INSERT into traffic VALUES (835128280, CAST(N'2021-01-14' AS Date), 413225, 1456, 531);
INSERT into traffic VALUES (835128280, CAST(N'2021-01-15' AS Date), 413225, 1822, 202);
INSERT into traffic VALUES (835128280, CAST(N'2021-01-16' AS Date), 413225, 1154, 314);
INSERT into traffic VALUES (835128280, CAST(N'2021-01-17' AS Date), 413225, 2999, 523);
INSERT into traffic VALUES (835128280, CAST(N'2021-01-18' AS Date), 413225, 1857, 223);
INSERT into traffic VALUES (835128280, CAST(N'2021-01-19' AS Date), 413225, 1343, 352);
INSERT into traffic VALUES (835128280, CAST(N'2021-01-20' AS Date), 413225, 2878, 542);
INSERT into traffic VALUES (835128280, CAST(N'2021-01-21' AS Date), 413225, 1463, 235);
INSERT into traffic VALUES (835128280, CAST(N'2021-01-22' AS Date), 413225, 1477, 265);
INSERT into traffic VALUES (835128280, CAST(N'2021-01-23' AS Date), 413225, 2833, 514);
INSERT into traffic VALUES (835128280, CAST(N'2021-01-24' AS Date), 413225, 1531, 308);
INSERT into traffic VALUES (835128280, CAST(N'2021-01-25' AS Date), 413225, 2964, 215);
INSERT into traffic VALUES (835128280, CAST(N'2021-01-26' AS Date), 413225, 1386, 498);
INSERT into traffic VALUES (835128280, CAST(N'2021-01-27' AS Date), 413225, 2823, 210);
INSERT into traffic VALUES (835128280, CAST(N'2021-01-28' AS Date), 413225, 1776, 493);
INSERT into traffic VALUES (835128280, CAST(N'2021-01-29' AS Date), 413225, 2538, 415);
INSERT into traffic VALUES (835128280, CAST(N'2021-01-30' AS Date), 413225, 2791, 457);
INSERT into traffic VALUES (835128315, CAST(N'2021-01-01' AS Date), 413225, 1869, 494);
INSERT into traffic VALUES (835128315, CAST(N'2021-01-02' AS Date), 413225, 1479, 381);
INSERT into traffic VALUES (835128315, CAST(N'2021-01-03' AS Date), 413225, 1985, 549);
INSERT into traffic VALUES (835128315, CAST(N'2021-01-04' AS Date), 413225, 1936, 224);
INSERT into traffic VALUES (835128315, CAST(N'2021-01-05' AS Date), 413225, 2887, 338);
INSERT into traffic VALUES (835128315, CAST(N'2021-01-06' AS Date), 413225, 1955, 537);
INSERT into traffic VALUES (835128315, CAST(N'2021-01-07' AS Date), 413225, 2167, 303);
INSERT into traffic VALUES (835128315, CAST(N'2021-01-08' AS Date), 413225, 1084, 506);
INSERT into traffic VALUES (835128315, CAST(N'2021-01-09' AS Date), 413225, 1356, 582);
INSERT into traffic VALUES (835128315, CAST(N'2021-01-10' AS Date), 413225, 2402, 298);
INSERT into traffic VALUES (835128315, CAST(N'2021-01-11' AS Date), 413225, 2863, 525);
INSERT into traffic VALUES (835128315, CAST(N'2021-01-12' AS Date), 413225, 2191, 293);
INSERT into traffic VALUES (835128315, CAST(N'2021-01-13' AS Date), 413225, 1502, 272);
INSERT into traffic VALUES (835128315, CAST(N'2021-01-14' AS Date), 413225, 2473, 566);
INSERT into traffic VALUES (835128315, CAST(N'2021-01-15' AS Date), 413225, 1691, 371);
INSERT into traffic VALUES (835128315, CAST(N'2021-01-16' AS Date), 413225, 1920, 598);
INSERT into traffic VALUES (835128315, CAST(N'2021-01-17' AS Date), 413225, 2959, 257);
INSERT into traffic VALUES (835128315, CAST(N'2021-01-18' AS Date), 413225, 1173, 204);
INSERT into traffic VALUES (835128315, CAST(N'2021-01-19' AS Date), 413225, 1189, 430);
INSERT into traffic VALUES (835128315, CAST(N'2021-01-20' AS Date), 413225, 1559, 373);
INSERT into traffic VALUES (835128315, CAST(N'2021-01-21' AS Date), 413225, 1849, 412);
INSERT into traffic VALUES (835128315, CAST(N'2021-01-22' AS Date), 413225, 2501, 483);
INSERT into traffic VALUES (835128315, CAST(N'2021-01-23' AS Date), 413225, 1972, 360);
INSERT into traffic VALUES (835128315, CAST(N'2021-01-24' AS Date), 413225, 1697, 552);
INSERT into traffic VALUES (835128315, CAST(N'2021-01-25' AS Date), 413225, 1848, 411);
INSERT into traffic VALUES (835128315, CAST(N'2021-01-26' AS Date), 413225, 2810, 299);
INSERT into traffic VALUES (835128315, CAST(N'2021-01-27' AS Date), 413225, 1930, 519);
INSERT into traffic VALUES (835128315, CAST(N'2021-01-28' AS Date), 413225, 1500, 397);
INSERT into traffic VALUES (835128315, CAST(N'2021-01-29' AS Date), 413225, 1991, 539);
INSERT into traffic VALUES (835128315, CAST(N'2021-01-30' AS Date), 413225, 1120, 576);
INSERT into traffic VALUES (850232864, CAST(N'2021-01-01' AS Date), 420699, 1570, 380);
INSERT into traffic VALUES (850232864, CAST(N'2021-01-02' AS Date), 420699, 2646, 249);
INSERT into traffic VALUES (850232864, CAST(N'2021-01-03' AS Date), 420699, 2703, 463);
INSERT into traffic VALUES (850232864, CAST(N'2021-01-04' AS Date), 420699, 2779, 597);
INSERT into traffic VALUES (850232864, CAST(N'2021-01-05' AS Date), 420699, 1499, 407);
INSERT into traffic VALUES (850232864, CAST(N'2021-01-06' AS Date), 420699, 2159, 396);
INSERT into traffic VALUES (850232864, CAST(N'2021-01-07' AS Date), 420699, 1288, 321);
INSERT into traffic VALUES (850232864, CAST(N'2021-01-08' AS Date), 420699, 2128, 205);
INSERT into traffic VALUES (850232864, CAST(N'2021-01-09' AS Date), 420699, 1927, 581);
INSERT into traffic VALUES (850232864, CAST(N'2021-01-10' AS Date), 420699, 1529, 480);
INSERT into traffic VALUES (850232864, CAST(N'2021-01-11' AS Date), 420699, 2393, 382);
INSERT into traffic VALUES (850232864, CAST(N'2021-01-12' AS Date), 420699, 1507, 581);
INSERT into traffic VALUES (850232864, CAST(N'2021-01-13' AS Date), 420699, 1082, 564);
INSERT into traffic VALUES (850232864, CAST(N'2021-01-14' AS Date), 420699, 2763, 355);
INSERT into traffic VALUES (850232864, CAST(N'2021-01-15' AS Date), 420699, 2416, 436);
INSERT into traffic VALUES (850232864, CAST(N'2021-01-16' AS Date), 420699, 1156, 439);
INSERT into traffic VALUES (850232864, CAST(N'2021-01-17' AS Date), 420699, 1581, 411);
INSERT into traffic VALUES (850232864, CAST(N'2021-01-18' AS Date), 420699, 1291, 394);
INSERT into traffic VALUES (850232864, CAST(N'2021-01-19' AS Date), 420699, 2430, 393);
INSERT into traffic VALUES (850232864, CAST(N'2021-01-20' AS Date), 420699, 1821, 325);
INSERT into traffic VALUES (850232864, CAST(N'2021-01-21' AS Date), 420699, 1731, 251);
INSERT into traffic VALUES (850232864, CAST(N'2021-01-22' AS Date), 420699, 2704, 373);
INSERT into traffic VALUES (850232864, CAST(N'2021-01-23' AS Date), 420699, 2317, 358);
INSERT into traffic VALUES (850232864, CAST(N'2021-01-24' AS Date), 420699, 1301, 480);
INSERT into traffic VALUES (850232864, CAST(N'2021-01-25' AS Date), 420699, 2907, 573);
INSERT into traffic VALUES (850232864, CAST(N'2021-01-26' AS Date), 420699, 1296, 541);
INSERT into traffic VALUES (850232864, CAST(N'2021-01-27' AS Date), 420699, 1071, 448);
INSERT into traffic VALUES (850232864, CAST(N'2021-01-28' AS Date), 420699, 2948, 420);
INSERT into traffic VALUES (850232864, CAST(N'2021-01-29' AS Date), 420699, 2802, 482);
INSERT into traffic VALUES (850232864, CAST(N'2021-01-30' AS Date), 420699, 1517, 395);
INSERT into traffic VALUES (853885023, CAST(N'2021-01-01' AS Date), 422506, 2696, 501);
INSERT into traffic VALUES (853885023, CAST(N'2021-01-02' AS Date), 422506, 1669, 220);
INSERT into traffic VALUES (853885023, CAST(N'2021-01-03' AS Date), 422506, 1383, 268);
INSERT into traffic VALUES (853885023, CAST(N'2021-01-04' AS Date), 422506, 1526, 562);
INSERT into traffic VALUES (853885023, CAST(N'2021-01-05' AS Date), 422506, 1975, 385);
INSERT into traffic VALUES (853885023, CAST(N'2021-01-06' AS Date), 422506, 1192, 362);
INSERT into traffic VALUES (853885023, CAST(N'2021-01-07' AS Date), 422506, 2839, 574);
INSERT into traffic VALUES (853885023, CAST(N'2021-01-08' AS Date), 422506, 1783, 486);
INSERT into traffic VALUES (853885023, CAST(N'2021-01-09' AS Date), 422506, 2166, 520);
INSERT into traffic VALUES (853885023, CAST(N'2021-01-10' AS Date), 422506, 2872, 588);
INSERT into traffic VALUES (853885023, CAST(N'2021-01-11' AS Date), 422506, 1690, 555);
INSERT into traffic VALUES (853885023, CAST(N'2021-01-12' AS Date), 422506, 2930, 449);
INSERT into traffic VALUES (853885023, CAST(N'2021-01-13' AS Date), 422506, 2720, 321);
INSERT into traffic VALUES (853885023, CAST(N'2021-01-14' AS Date), 422506, 1159, 295);
INSERT into traffic VALUES (853885023, CAST(N'2021-01-15' AS Date), 422506, 2359, 263);
INSERT into traffic VALUES (853885023, CAST(N'2021-01-16' AS Date), 422506, 2230, 259);
INSERT into traffic VALUES (853885023, CAST(N'2021-01-17' AS Date), 422506, 1577, 584);
INSERT into traffic VALUES (853885023, CAST(N'2021-01-18' AS Date), 422506, 2448, 244);
INSERT into traffic VALUES (853885023, CAST(N'2021-01-19' AS Date), 422506, 2789, 536);
INSERT into traffic VALUES (853885023, CAST(N'2021-01-20' AS Date), 422506, 1591, 481);
INSERT into traffic VALUES (853885023, CAST(N'2021-01-21' AS Date), 422506, 1480, 577);
INSERT into traffic VALUES (853885023, CAST(N'2021-01-22' AS Date), 422506, 2528, 488);
INSERT into traffic VALUES (853885023, CAST(N'2021-01-23' AS Date), 422506, 1330, 562);
INSERT into traffic VALUES (853885023, CAST(N'2021-01-24' AS Date), 422506, 2208, 206);
INSERT into traffic VALUES (853885023, CAST(N'2021-01-25' AS Date), 422506, 1117, 324);
INSERT into traffic VALUES (853885023, CAST(N'2021-01-26' AS Date), 422506, 2500, 230);
INSERT into traffic VALUES (853885023, CAST(N'2021-01-27' AS Date), 422506, 2336, 466);
INSERT into traffic VALUES (853885023, CAST(N'2021-01-28' AS Date), 422506, 1111, 449);
INSERT into traffic VALUES (853885023, CAST(N'2021-01-29' AS Date), 422506, 2810, 304);
INSERT into traffic VALUES (853885023, CAST(N'2021-01-30' AS Date), 422506, 2746, 239);
INSERT into traffic VALUES (873886520, CAST(N'2021-01-01' AS Date), 432403, 1105, 224);
INSERT into traffic VALUES (873886520, CAST(N'2021-01-02' AS Date), 432403, 2457, 344);
INSERT into traffic VALUES (873886520, CAST(N'2021-01-03' AS Date), 432403, 2693, 267);
INSERT into traffic VALUES (873886520, CAST(N'2021-01-04' AS Date), 432403, 1569, 346);
INSERT into traffic VALUES (873886520, CAST(N'2021-01-05' AS Date), 432403, 2799, 279);
INSERT into traffic VALUES (873886520, CAST(N'2021-01-06' AS Date), 432403, 2371, 236);
INSERT into traffic VALUES (873886520, CAST(N'2021-01-07' AS Date), 432403, 2719, 260);
INSERT into traffic VALUES (873886520, CAST(N'2021-01-08' AS Date), 432403, 1582, 257);
INSERT into traffic VALUES (873886520, CAST(N'2021-01-09' AS Date), 432403, 2659, 241);
INSERT into traffic VALUES (873886520, CAST(N'2021-01-10' AS Date), 432403, 1954, 302);
INSERT into traffic VALUES (873886520, CAST(N'2021-01-11' AS Date), 432403, 2959, 339);
INSERT into traffic VALUES (873886520, CAST(N'2021-01-12' AS Date), 432403, 2515, 376);
INSERT into traffic VALUES (873886520, CAST(N'2021-01-13' AS Date), 432403, 1423, 250);
INSERT into traffic VALUES (873886520, CAST(N'2021-01-14' AS Date), 432403, 1675, 286);
INSERT into traffic VALUES (873886520, CAST(N'2021-01-15' AS Date), 432403, 2250, 333);
INSERT into traffic VALUES (873886520, CAST(N'2021-01-16' AS Date), 432403, 1841, 393);
INSERT into traffic VALUES (873886520, CAST(N'2021-01-17' AS Date), 432403, 2582, 397);
INSERT into traffic VALUES (873886520, CAST(N'2021-01-18' AS Date), 432403, 1769, 281);
INSERT into traffic VALUES (873886520, CAST(N'2021-01-19' AS Date), 432403, 2513, 360);
INSERT into traffic VALUES (873886520, CAST(N'2021-01-20' AS Date), 432403, 1072, 342);
INSERT into traffic VALUES (873886520, CAST(N'2021-01-21' AS Date), 432403, 2629, 253);
INSERT into traffic VALUES (873886520, CAST(N'2021-01-22' AS Date), 432403, 2507, 363);
INSERT into traffic VALUES (873886520, CAST(N'2021-01-23' AS Date), 432403, 2522, 226);
INSERT into traffic VALUES (873886520, CAST(N'2021-01-24' AS Date), 432403, 1324, 279);
INSERT into traffic VALUES (873886520, CAST(N'2021-01-25' AS Date), 432403, 1506, 323);
INSERT into traffic VALUES (873886520, CAST(N'2021-01-26' AS Date), 432403, 1698, 339);
INSERT into traffic VALUES (873886520, CAST(N'2021-01-27' AS Date), 432403, 2895, 257);
INSERT into traffic VALUES (873886520, CAST(N'2021-01-28' AS Date), 432403, 1346, 364);
INSERT into traffic VALUES (873886520, CAST(N'2021-01-29' AS Date), 432403, 1624, 219);
INSERT into traffic VALUES (873886520, CAST(N'2021-01-30' AS Date), 432403, 2829, 268);
INSERT into traffic VALUES (884424913, CAST(N'2021-01-01' AS Date), 437617, 1339, 265);
INSERT into traffic VALUES (884424913, CAST(N'2021-01-02' AS Date), 437617, 1075, 208);
INSERT into traffic VALUES (884424913, CAST(N'2021-01-03' AS Date), 437617, 1422, 276);
INSERT into traffic VALUES (884424913, CAST(N'2021-01-04' AS Date), 437617, 1273, 236);
INSERT into traffic VALUES (884424913, CAST(N'2021-01-05' AS Date), 437617, 1749, 373);
INSERT into traffic VALUES (884424913, CAST(N'2021-01-06' AS Date), 437617, 2069, 399);
INSERT into traffic VALUES (884424913, CAST(N'2021-01-07' AS Date), 437617, 1430, 256);
INSERT into traffic VALUES (884424913, CAST(N'2021-01-08' AS Date), 437617, 2580, 267);
INSERT into traffic VALUES (884424913, CAST(N'2021-01-09' AS Date), 437617, 1531, 278);
INSERT into traffic VALUES (884424913, CAST(N'2021-01-10' AS Date), 437617, 1888, 321);
INSERT into traffic VALUES (884424913, CAST(N'2021-01-11' AS Date), 437617, 1191, 243);
INSERT into traffic VALUES (884424913, CAST(N'2021-01-12' AS Date), 437617, 2509, 340);
INSERT into traffic VALUES (884424913, CAST(N'2021-01-13' AS Date), 437617, 2769, 226);
INSERT into traffic VALUES (884424913, CAST(N'2021-01-14' AS Date), 437617, 1321, 259);
INSERT into traffic VALUES (884424913, CAST(N'2021-01-15' AS Date), 437617, 1966, 332);
INSERT into traffic VALUES (884424913, CAST(N'2021-01-16' AS Date), 437617, 1321, 215);
INSERT into traffic VALUES (884424913, CAST(N'2021-01-17' AS Date), 437617, 2935, 221);
INSERT into traffic VALUES (884424913, CAST(N'2021-01-18' AS Date), 437617, 1290, 397);
INSERT into traffic VALUES (884424913, CAST(N'2021-01-19' AS Date), 437617, 1400, 288);
INSERT into traffic VALUES (884424913, CAST(N'2021-01-20' AS Date), 437617, 1941, 348);
INSERT into traffic VALUES (884424913, CAST(N'2021-01-21' AS Date), 437617, 1418, 327);
INSERT into traffic VALUES (884424913, CAST(N'2021-01-22' AS Date), 437617, 2939, 330);
INSERT into traffic VALUES (884424913, CAST(N'2021-01-23' AS Date), 437617, 2640, 384);
INSERT into traffic VALUES (884424913, CAST(N'2021-01-24' AS Date), 437617, 2193, 212);
INSERT into traffic VALUES (884424913, CAST(N'2021-01-25' AS Date), 437617, 2023, 269);
INSERT into traffic VALUES (884424913, CAST(N'2021-01-26' AS Date), 437617, 1720, 277);
INSERT into traffic VALUES (884424913, CAST(N'2021-01-27' AS Date), 437617, 2281, 250);
INSERT into traffic VALUES (884424913, CAST(N'2021-01-28' AS Date), 437617, 1246, 222);
INSERT into traffic VALUES (884424913, CAST(N'2021-01-29' AS Date), 437617, 2965, 370);
INSERT into traffic VALUES (884424913, CAST(N'2021-01-30' AS Date), 437617, 2153, 299);
INSERT into traffic VALUES (896327908, CAST(N'2021-01-01' AS Date), 443507, 1902, 255);
INSERT into traffic VALUES (896327908, CAST(N'2021-01-02' AS Date), 443507, 1495, 213);
INSERT into traffic VALUES (896327908, CAST(N'2021-01-03' AS Date), 443507, 1005, 235);
INSERT into traffic VALUES (896327908, CAST(N'2021-01-04' AS Date), 443507, 1854, 566);
INSERT into traffic VALUES (896327908, CAST(N'2021-01-05' AS Date), 443507, 2791, 290);
INSERT into traffic VALUES (896327908, CAST(N'2021-01-06' AS Date), 443507, 1475, 272);
INSERT into traffic VALUES (896327908, CAST(N'2021-01-07' AS Date), 443507, 2284, 316);
INSERT into traffic VALUES (896327908, CAST(N'2021-01-08' AS Date), 443507, 1764, 367);
INSERT into traffic VALUES (896327908, CAST(N'2021-01-09' AS Date), 443507, 1096, 536);
INSERT into traffic VALUES (896327908, CAST(N'2021-01-10' AS Date), 443507, 2052, 309);
INSERT into traffic VALUES (896327908, CAST(N'2021-01-11' AS Date), 443507, 1629, 214);
INSERT into traffic VALUES (896327908, CAST(N'2021-01-12' AS Date), 443507, 1370, 436);
INSERT into traffic VALUES (896327908, CAST(N'2021-01-13' AS Date), 443507, 2466, 256);
INSERT into traffic VALUES (896327908, CAST(N'2021-01-14' AS Date), 443507, 1416, 418);
INSERT into traffic VALUES (896327908, CAST(N'2021-01-15' AS Date), 443507, 1840, 580);
INSERT into traffic VALUES (896327908, CAST(N'2021-01-16' AS Date), 443507, 1555, 319);
INSERT into traffic VALUES (896327908, CAST(N'2021-01-17' AS Date), 443507, 1069, 592);
INSERT into traffic VALUES (896327908, CAST(N'2021-01-18' AS Date), 443507, 2814, 316);
INSERT into traffic VALUES (896327908, CAST(N'2021-01-19' AS Date), 443507, 1204, 506);
INSERT into traffic VALUES (896327908, CAST(N'2021-01-20' AS Date), 443507, 2357, 381);
INSERT into traffic VALUES (896327908, CAST(N'2021-01-21' AS Date), 443507, 1448, 551);
INSERT into traffic VALUES (896327908, CAST(N'2021-01-22' AS Date), 443507, 2427, 597);
INSERT into traffic VALUES (896327908, CAST(N'2021-01-23' AS Date), 443507, 2535, 563);
INSERT into traffic VALUES (896327908, CAST(N'2021-01-24' AS Date), 443507, 1790, 239);
INSERT into traffic VALUES (896327908, CAST(N'2021-01-25' AS Date), 443507, 2187, 274);
INSERT into traffic VALUES (896327908, CAST(N'2021-01-26' AS Date), 443507, 2854, 325);
INSERT into traffic VALUES (896327908, CAST(N'2021-01-27' AS Date), 443507, 1396, 539);
INSERT into traffic VALUES (896327908, CAST(N'2021-01-28' AS Date), 443507, 1295, 590);
INSERT into traffic VALUES (896327908, CAST(N'2021-01-29' AS Date), 443507, 1464, 214);
INSERT into traffic VALUES (896327908, CAST(N'2021-01-30' AS Date), 443507, 1099, 544);
INSERT into traffic VALUES (902527885, CAST(N'2021-01-01' AS Date), 446574, 1671, 272);
INSERT into traffic VALUES (902527885, CAST(N'2021-01-02' AS Date), 446574, 2280, 201);
INSERT into traffic VALUES (902527885, CAST(N'2021-01-03' AS Date), 446574, 2699, 341);
INSERT into traffic VALUES (902527885, CAST(N'2021-01-04' AS Date), 446574, 1561, 303);
INSERT into traffic VALUES (902527885, CAST(N'2021-01-05' AS Date), 446574, 2056, 334);
INSERT into traffic VALUES (902527885, CAST(N'2021-01-06' AS Date), 446574, 1232, 308);
INSERT into traffic VALUES (902527885, CAST(N'2021-01-07' AS Date), 446574, 1468, 236);
INSERT into traffic VALUES (902527885, CAST(N'2021-01-08' AS Date), 446574, 2675, 326);
INSERT into traffic VALUES (902527885, CAST(N'2021-01-09' AS Date), 446574, 2507, 292);
INSERT into traffic VALUES (902527885, CAST(N'2021-01-10' AS Date), 446574, 1358, 243);
INSERT into traffic VALUES (902527885, CAST(N'2021-01-11' AS Date), 446574, 1278, 331);
INSERT into traffic VALUES (902527885, CAST(N'2021-01-12' AS Date), 446574, 1700, 210);
INSERT into traffic VALUES (902527885, CAST(N'2021-01-13' AS Date), 446574, 1570, 350);
INSERT into traffic VALUES (902527885, CAST(N'2021-01-14' AS Date), 446574, 2327, 288);
INSERT into traffic VALUES (902527885, CAST(N'2021-01-15' AS Date), 446574, 1991, 214);
INSERT into traffic VALUES (902527885, CAST(N'2021-01-16' AS Date), 446574, 2948, 246);
INSERT into traffic VALUES (902527885, CAST(N'2021-01-17' AS Date), 446574, 1953, 233);
INSERT into traffic VALUES (902527885, CAST(N'2021-01-18' AS Date), 446574, 2586, 244);
INSERT into traffic VALUES (902527885, CAST(N'2021-01-19' AS Date), 446574, 1120, 248);
INSERT into traffic VALUES (902527885, CAST(N'2021-01-20' AS Date), 446574, 1121, 289);
INSERT into traffic VALUES (902527885, CAST(N'2021-01-21' AS Date), 446574, 1802, 338);
INSERT into traffic VALUES (902527885, CAST(N'2021-01-22' AS Date), 446574, 1630, 370);
INSERT into traffic VALUES (902527885, CAST(N'2021-01-23' AS Date), 446574, 2205, 250);
INSERT into traffic VALUES (902527885, CAST(N'2021-01-24' AS Date), 446574, 1154, 209);
INSERT into traffic VALUES (902527885, CAST(N'2021-01-25' AS Date), 446574, 1253, 341);
INSERT into traffic VALUES (902527885, CAST(N'2021-01-26' AS Date), 446574, 2855, 264);
INSERT into traffic VALUES (902527885, CAST(N'2021-01-27' AS Date), 446574, 2054, 249);
INSERT into traffic VALUES (902527885, CAST(N'2021-01-28' AS Date), 446574, 1718, 232);
INSERT into traffic VALUES (902527885, CAST(N'2021-01-29' AS Date), 446574, 2189, 290);
INSERT into traffic VALUES (902527885, CAST(N'2021-01-30' AS Date), 446574, 2125, 348);
INSERT into traffic VALUES (904548534, CAST(N'2021-01-01' AS Date), 447574, 1148, 333);
INSERT into traffic VALUES (904548534, CAST(N'2021-01-02' AS Date), 447574, 2807, 333);
INSERT into traffic VALUES (904548534, CAST(N'2021-01-03' AS Date), 447574, 1911, 323);
INSERT into traffic VALUES (904548534, CAST(N'2021-01-04' AS Date), 447574, 2210, 295);
INSERT into traffic VALUES (904548534, CAST(N'2021-01-05' AS Date), 447574, 1440, 278);
INSERT into traffic VALUES (904548534, CAST(N'2021-01-06' AS Date), 447574, 1856, 381);
INSERT into traffic VALUES (904548534, CAST(N'2021-01-07' AS Date), 447574, 1813, 286);
INSERT into traffic VALUES (904548534, CAST(N'2021-01-08' AS Date), 447574, 1537, 382);
INSERT into traffic VALUES (904548534, CAST(N'2021-01-09' AS Date), 447574, 1601, 312);
INSERT into traffic VALUES (904548534, CAST(N'2021-01-10' AS Date), 447574, 2174, 296);
INSERT into traffic VALUES (904548534, CAST(N'2021-01-11' AS Date), 447574, 2848, 322);
INSERT into traffic VALUES (904548534, CAST(N'2021-01-12' AS Date), 447574, 1804, 213);
INSERT into traffic VALUES (904548534, CAST(N'2021-01-13' AS Date), 447574, 1219, 379);
INSERT into traffic VALUES (904548534, CAST(N'2021-01-14' AS Date), 447574, 2107, 203);
INSERT into traffic VALUES (904548534, CAST(N'2021-01-15' AS Date), 447574, 2595, 305);
INSERT into traffic VALUES (904548534, CAST(N'2021-01-16' AS Date), 447574, 2456, 336);
INSERT into traffic VALUES (904548534, CAST(N'2021-01-17' AS Date), 447574, 2334, 254);
INSERT into traffic VALUES (904548534, CAST(N'2021-01-18' AS Date), 447574, 1893, 311);
INSERT into traffic VALUES (904548534, CAST(N'2021-01-19' AS Date), 447574, 2344, 370);
INSERT into traffic VALUES (904548534, CAST(N'2021-01-20' AS Date), 447574, 2508, 261);
INSERT into traffic VALUES (904548534, CAST(N'2021-01-21' AS Date), 447574, 2251, 299);
INSERT into traffic VALUES (904548534, CAST(N'2021-01-22' AS Date), 447574, 2940, 349);
INSERT into traffic VALUES (904548534, CAST(N'2021-01-23' AS Date), 447574, 1299, 360);
INSERT into traffic VALUES (904548534, CAST(N'2021-01-24' AS Date), 447574, 1179, 230);
INSERT into traffic VALUES (904548534, CAST(N'2021-01-25' AS Date), 447574, 1293, 305);
INSERT into traffic VALUES (904548534, CAST(N'2021-01-26' AS Date), 447574, 2783, 212);
INSERT into traffic VALUES (904548534, CAST(N'2021-01-27' AS Date), 447574, 2188, 381);
INSERT into traffic VALUES (904548534, CAST(N'2021-01-28' AS Date), 447574, 2115, 245);
INSERT into traffic VALUES (904548534, CAST(N'2021-01-29' AS Date), 447574, 2526, 379);
INSERT into traffic VALUES (904548534, CAST(N'2021-01-30' AS Date), 447574, 1469, 280);
INSERT into traffic VALUES (905034529, CAST(N'2021-01-01' AS Date), 447815, 1542, 355);
INSERT into traffic VALUES (905034529, CAST(N'2021-01-02' AS Date), 447815, 2773, 374);
INSERT into traffic VALUES (905034529, CAST(N'2021-01-03' AS Date), 447815, 1391, 285);
INSERT into traffic VALUES (905034529, CAST(N'2021-01-04' AS Date), 447815, 2611, 203);
INSERT into traffic VALUES (905034529, CAST(N'2021-01-05' AS Date), 447815, 2740, 268);
INSERT into traffic VALUES (905034529, CAST(N'2021-01-06' AS Date), 447815, 1888, 237);
INSERT into traffic VALUES (905034529, CAST(N'2021-01-07' AS Date), 447815, 2606, 323);
INSERT into traffic VALUES (905034529, CAST(N'2021-01-08' AS Date), 447815, 2854, 214);
INSERT into traffic VALUES (905034529, CAST(N'2021-01-09' AS Date), 447815, 2157, 370);
INSERT into traffic VALUES (905034529, CAST(N'2021-01-10' AS Date), 447815, 2327, 260);
INSERT into traffic VALUES (905034529, CAST(N'2021-01-11' AS Date), 447815, 1642, 299);
INSERT into traffic VALUES (905034529, CAST(N'2021-01-12' AS Date), 447815, 2211, 303);
INSERT into traffic VALUES (905034529, CAST(N'2021-01-13' AS Date), 447815, 2848, 235);
INSERT into traffic VALUES (905034529, CAST(N'2021-01-14' AS Date), 447815, 1248, 309);
INSERT into traffic VALUES (905034529, CAST(N'2021-01-15' AS Date), 447815, 1917, 353);
INSERT into traffic VALUES (905034529, CAST(N'2021-01-16' AS Date), 447815, 2386, 391);
INSERT into traffic VALUES (905034529, CAST(N'2021-01-17' AS Date), 447815, 1553, 388);
INSERT into traffic VALUES (905034529, CAST(N'2021-01-18' AS Date), 447815, 2804, 319);
INSERT into traffic VALUES (905034529, CAST(N'2021-01-19' AS Date), 447815, 1451, 258);
INSERT into traffic VALUES (905034529, CAST(N'2021-01-20' AS Date), 447815, 1320, 384);
INSERT into traffic VALUES (905034529, CAST(N'2021-01-21' AS Date), 447815, 2567, 291);
INSERT into traffic VALUES (905034529, CAST(N'2021-01-22' AS Date), 447815, 1574, 231);
INSERT into traffic VALUES (905034529, CAST(N'2021-01-23' AS Date), 447815, 2389, 344);
INSERT into traffic VALUES (905034529, CAST(N'2021-01-24' AS Date), 447815, 1401, 281);
INSERT into traffic VALUES (905034529, CAST(N'2021-01-25' AS Date), 447815, 1594, 394);
INSERT into traffic VALUES (905034529, CAST(N'2021-01-26' AS Date), 447815, 1749, 208);
INSERT into traffic VALUES (905034529, CAST(N'2021-01-27' AS Date), 447815, 2782, 355);
INSERT into traffic VALUES (905034529, CAST(N'2021-01-28' AS Date), 447815, 1509, 367);
INSERT into traffic VALUES (905034529, CAST(N'2021-01-29' AS Date), 447815, 2204, 240);
INSERT into traffic VALUES (905034529, CAST(N'2021-01-30' AS Date), 447815, 1723, 376);
INSERT into traffic VALUES (911006639, CAST(N'2021-01-01' AS Date), 450770, 1932, 480);
INSERT into traffic VALUES (911006639, CAST(N'2021-01-02' AS Date), 450770, 1592, 747);
INSERT into traffic VALUES (911006639, CAST(N'2021-01-03' AS Date), 450770, 1440, 274);
INSERT into traffic VALUES (911006639, CAST(N'2021-01-04' AS Date), 450770, 1042, 296);
INSERT into traffic VALUES (911006639, CAST(N'2021-01-05' AS Date), 450770, 2897, 494);
INSERT into traffic VALUES (911006639, CAST(N'2021-01-06' AS Date), 450770, 2004, 606);
INSERT into traffic VALUES (911006639, CAST(N'2021-01-07' AS Date), 450770, 1290, 668);
INSERT into traffic VALUES (911006639, CAST(N'2021-01-08' AS Date), 450770, 2347, 436);
INSERT into traffic VALUES (911006639, CAST(N'2021-01-09' AS Date), 450770, 2766, 402);
INSERT into traffic VALUES (911006639, CAST(N'2021-01-10' AS Date), 450770, 1035, 321);
INSERT into traffic VALUES (911006639, CAST(N'2021-01-11' AS Date), 450770, 1565, 299);
INSERT into traffic VALUES (911006639, CAST(N'2021-01-12' AS Date), 450770, 1071, 494);
INSERT into traffic VALUES (911006639, CAST(N'2021-01-13' AS Date), 450770, 1065, 606);
INSERT into traffic VALUES (911006639, CAST(N'2021-01-14' AS Date), 450770, 1522, 248);
INSERT into traffic VALUES (911006639, CAST(N'2021-01-15' AS Date), 450770, 1633, 744);
INSERT into traffic VALUES (911006639, CAST(N'2021-01-16' AS Date), 450770, 2209, 571);
INSERT into traffic VALUES (911006639, CAST(N'2021-01-17' AS Date), 450770, 1660, 433);
INSERT into traffic VALUES (911006639, CAST(N'2021-01-18' AS Date), 450770, 2564, 461);
INSERT into traffic VALUES (911006639, CAST(N'2021-01-19' AS Date), 450770, 1968, 521);
INSERT into traffic VALUES (911006639, CAST(N'2021-01-20' AS Date), 450770, 2947, 451);
INSERT into traffic VALUES (911006639, CAST(N'2021-01-21' AS Date), 450770, 1376, 691);
INSERT into traffic VALUES (911006639, CAST(N'2021-01-22' AS Date), 450770, 1687, 751);
INSERT into traffic VALUES (911006639, CAST(N'2021-01-23' AS Date), 450770, 2788, 271);
INSERT into traffic VALUES (911006639, CAST(N'2021-01-24' AS Date), 450770, 2639, 645);
INSERT into traffic VALUES (911006639, CAST(N'2021-01-25' AS Date), 450770, 2331, 708);
INSERT into traffic VALUES (911006639, CAST(N'2021-01-26' AS Date), 450770, 2919, 495);
INSERT into traffic VALUES (911006639, CAST(N'2021-01-27' AS Date), 450770, 2622, 322);
INSERT into traffic VALUES (911006639, CAST(N'2021-01-28' AS Date), 450770, 1413, 754);
INSERT into traffic VALUES (911006639, CAST(N'2021-01-29' AS Date), 450770, 2046, 748);
INSERT into traffic VALUES (911006639, CAST(N'2021-01-30' AS Date), 450770, 2457, 201);
INSERT into traffic VALUES (916299759, CAST(N'2021-01-01' AS Date), 453389, 1649, 238);
INSERT into traffic VALUES (916299759, CAST(N'2021-01-02' AS Date), 453389, 2230, 294);
INSERT into traffic VALUES (916299759, CAST(N'2021-01-03' AS Date), 453389, 1024, 263);
INSERT into traffic VALUES (916299759, CAST(N'2021-01-04' AS Date), 453389, 2585, 316);
INSERT into traffic VALUES (916299759, CAST(N'2021-01-05' AS Date), 453389, 1649, 233);
INSERT into traffic VALUES (916299759, CAST(N'2021-01-06' AS Date), 453389, 2321, 216);
INSERT into traffic VALUES (916299759, CAST(N'2021-01-07' AS Date), 453389, 1001, 214);
INSERT into traffic VALUES (916299759, CAST(N'2021-01-08' AS Date), 453389, 2553, 392);
INSERT into traffic VALUES (916299759, CAST(N'2021-01-09' AS Date), 453389, 1172, 254);
INSERT into traffic VALUES (916299759, CAST(N'2021-01-10' AS Date), 453389, 1211, 265);
INSERT into traffic VALUES (916299759, CAST(N'2021-01-11' AS Date), 453389, 1557, 358);
INSERT into traffic VALUES (916299759, CAST(N'2021-01-12' AS Date), 453389, 2944, 381);
INSERT into traffic VALUES (916299759, CAST(N'2021-01-13' AS Date), 453389, 1350, 369);
INSERT into traffic VALUES (916299759, CAST(N'2021-01-14' AS Date), 453389, 1401, 380);
INSERT into traffic VALUES (916299759, CAST(N'2021-01-15' AS Date), 453389, 1654, 314);
INSERT into traffic VALUES (916299759, CAST(N'2021-01-16' AS Date), 453389, 2967, 253);
INSERT into traffic VALUES (916299759, CAST(N'2021-01-17' AS Date), 453389, 1602, 253);
INSERT into traffic VALUES (916299759, CAST(N'2021-01-18' AS Date), 453389, 2184, 311);
INSERT into traffic VALUES (916299759, CAST(N'2021-01-19' AS Date), 453389, 2546, 341);
INSERT into traffic VALUES (916299759, CAST(N'2021-01-20' AS Date), 453389, 2463, 295);
INSERT into traffic VALUES (916299759, CAST(N'2021-01-21' AS Date), 453389, 2658, 211);
INSERT into traffic VALUES (916299759, CAST(N'2021-01-22' AS Date), 453389, 2474, 266);
INSERT into traffic VALUES (916299759, CAST(N'2021-01-23' AS Date), 453389, 1216, 335);
INSERT into traffic VALUES (916299759, CAST(N'2021-01-24' AS Date), 453389, 2826, 377);
INSERT into traffic VALUES (916299759, CAST(N'2021-01-25' AS Date), 453389, 2086, 297);
INSERT into traffic VALUES (916299759, CAST(N'2021-01-26' AS Date), 453389, 2251, 386);
INSERT into traffic VALUES (916299759, CAST(N'2021-01-27' AS Date), 453389, 1749, 246);
INSERT into traffic VALUES (916299759, CAST(N'2021-01-28' AS Date), 453389, 2729, 394);
INSERT into traffic VALUES (916299759, CAST(N'2021-01-29' AS Date), 453389, 1630, 263);
INSERT into traffic VALUES (916299759, CAST(N'2021-01-30' AS Date), 453389, 1294, 279);
INSERT into traffic VALUES (933436434, CAST(N'2021-01-01' AS Date), 461868, 2523, 480);
INSERT into traffic VALUES (933436434, CAST(N'2021-01-02' AS Date), 461868, 2523, 288);
INSERT into traffic VALUES (933436434, CAST(N'2021-01-03' AS Date), 461868, 2084, 275);
INSERT into traffic VALUES (933436434, CAST(N'2021-01-04' AS Date), 461868, 1262, 410);
INSERT into traffic VALUES (933436434, CAST(N'2021-01-05' AS Date), 461868, 2057, 345);
INSERT into traffic VALUES (933436434, CAST(N'2021-01-06' AS Date), 461868, 2888, 451);
INSERT into traffic VALUES (933436434, CAST(N'2021-01-07' AS Date), 461868, 2239, 414);
INSERT into traffic VALUES (933436434, CAST(N'2021-01-08' AS Date), 461868, 1827, 276);
INSERT into traffic VALUES (933436434, CAST(N'2021-01-09' AS Date), 461868, 2589, 387);
INSERT into traffic VALUES (933436434, CAST(N'2021-01-10' AS Date), 461868, 1915, 491);
INSERT into traffic VALUES (933436434, CAST(N'2021-01-11' AS Date), 461868, 2912, 365);
INSERT into traffic VALUES (933436434, CAST(N'2021-01-12' AS Date), 461868, 1164, 205);
INSERT into traffic VALUES (933436434, CAST(N'2021-01-13' AS Date), 461868, 2890, 490);
INSERT into traffic VALUES (933436434, CAST(N'2021-01-14' AS Date), 461868, 2523, 361);
INSERT into traffic VALUES (933436434, CAST(N'2021-01-15' AS Date), 461868, 1245, 448);
INSERT into traffic VALUES (933436434, CAST(N'2021-01-16' AS Date), 461868, 2467, 505);
INSERT into traffic VALUES (933436434, CAST(N'2021-01-17' AS Date), 461868, 1082, 503);
INSERT into traffic VALUES (933436434, CAST(N'2021-01-18' AS Date), 461868, 2466, 557);
INSERT into traffic VALUES (933436434, CAST(N'2021-01-19' AS Date), 461868, 2915, 422);
INSERT into traffic VALUES (933436434, CAST(N'2021-01-20' AS Date), 461868, 2368, 314);
INSERT into traffic VALUES (933436434, CAST(N'2021-01-21' AS Date), 461868, 1771, 427);
INSERT into traffic VALUES (933436434, CAST(N'2021-01-22' AS Date), 461868, 2934, 468);
INSERT into traffic VALUES (933436434, CAST(N'2021-01-23' AS Date), 461868, 1860, 391);
INSERT into traffic VALUES (933436434, CAST(N'2021-01-24' AS Date), 461868, 1731, 222);
INSERT into traffic VALUES (933436434, CAST(N'2021-01-25' AS Date), 461868, 1410, 331);
INSERT into traffic VALUES (933436434, CAST(N'2021-01-26' AS Date), 461868, 2228, 575);
INSERT into traffic VALUES (933436434, CAST(N'2021-01-27' AS Date), 461868, 2653, 424);
INSERT into traffic VALUES (933436434, CAST(N'2021-01-28' AS Date), 461868, 2521, 313);
INSERT into traffic VALUES (933436434, CAST(N'2021-01-29' AS Date), 461868, 2681, 537);
INSERT into traffic VALUES (933436434, CAST(N'2021-01-30' AS Date), 461868, 2179, 379);
INSERT into traffic VALUES (934557786, CAST(N'2021-01-01' AS Date), 462423, 1551, 507);
INSERT into traffic VALUES (934557786, CAST(N'2021-01-02' AS Date), 462423, 2298, 310);
INSERT into traffic VALUES (934557786, CAST(N'2021-01-03' AS Date), 462423, 1170, 298);
INSERT into traffic VALUES (934557786, CAST(N'2021-01-04' AS Date), 462423, 1150, 555);
INSERT into traffic VALUES (934557786, CAST(N'2021-01-05' AS Date), 462423, 1742, 466);
INSERT into traffic VALUES (934557786, CAST(N'2021-01-06' AS Date), 462423, 2959, 471);
INSERT into traffic VALUES (934557786, CAST(N'2021-01-07' AS Date), 462423, 1007, 558);
INSERT into traffic VALUES (934557786, CAST(N'2021-01-08' AS Date), 462423, 1685, 495);
INSERT into traffic VALUES (934557786, CAST(N'2021-01-09' AS Date), 462423, 2825, 511);
INSERT into traffic VALUES (934557786, CAST(N'2021-01-10' AS Date), 462423, 2088, 357);
INSERT into traffic VALUES (934557786, CAST(N'2021-01-11' AS Date), 462423, 2639, 261);
INSERT into traffic VALUES (934557786, CAST(N'2021-01-12' AS Date), 462423, 2107, 205);
INSERT into traffic VALUES (934557786, CAST(N'2021-01-13' AS Date), 462423, 1581, 333);
INSERT into traffic VALUES (934557786, CAST(N'2021-01-14' AS Date), 462423, 2923, 553);
INSERT into traffic VALUES (934557786, CAST(N'2021-01-15' AS Date), 462423, 2985, 340);
INSERT into traffic VALUES (934557786, CAST(N'2021-01-16' AS Date), 462423, 2998, 353);
INSERT into traffic VALUES (934557786, CAST(N'2021-01-17' AS Date), 462423, 1111, 327);
INSERT into traffic VALUES (934557786, CAST(N'2021-01-18' AS Date), 462423, 1617, 403);
INSERT into traffic VALUES (934557786, CAST(N'2021-01-19' AS Date), 462423, 2870, 349);
INSERT into traffic VALUES (934557786, CAST(N'2021-01-20' AS Date), 462423, 1047, 544);
INSERT into traffic VALUES (934557786, CAST(N'2021-01-21' AS Date), 462423, 1983, 481);
INSERT into traffic VALUES (934557786, CAST(N'2021-01-22' AS Date), 462423, 2550, 565);
INSERT into traffic VALUES (934557786, CAST(N'2021-01-23' AS Date), 462423, 1302, 393);
INSERT into traffic VALUES (934557786, CAST(N'2021-01-24' AS Date), 462423, 2797, 481);
INSERT into traffic VALUES (934557786, CAST(N'2021-01-25' AS Date), 462423, 2332, 210);
INSERT into traffic VALUES (934557786, CAST(N'2021-01-26' AS Date), 462423, 1150, 518);
INSERT into traffic VALUES (934557786, CAST(N'2021-01-27' AS Date), 462423, 1413, 485);
INSERT into traffic VALUES (934557786, CAST(N'2021-01-28' AS Date), 462423, 1895, 208);
INSERT into traffic VALUES (934557786, CAST(N'2021-01-29' AS Date), 462423, 2489, 277);
INSERT into traffic VALUES (934557786, CAST(N'2021-01-30' AS Date), 462423, 2683, 563);
INSERT into traffic VALUES (987032531, CAST(N'2021-01-01' AS Date), 488388, 2672, 331);
INSERT into traffic VALUES (987032531, CAST(N'2021-01-02' AS Date), 488388, 2539, 692);
INSERT into traffic VALUES (987032531, CAST(N'2021-01-03' AS Date), 488388, 2954, 821);
INSERT into traffic VALUES (987032531, CAST(N'2021-01-04' AS Date), 488388, 1698, 372);
INSERT into traffic VALUES (987032531, CAST(N'2021-01-05' AS Date), 488388, 1648, 746);
INSERT into traffic VALUES (987032531, CAST(N'2021-01-06' AS Date), 488388, 2861, 407);
INSERT into traffic VALUES (987032531, CAST(N'2021-01-07' AS Date), 488388, 2581, 491);
INSERT into traffic VALUES (987032531, CAST(N'2021-01-08' AS Date), 488388, 1166, 432);
INSERT into traffic VALUES (987032531, CAST(N'2021-01-09' AS Date), 488388, 1568, 835);
INSERT into traffic VALUES (987032531, CAST(N'2021-01-10' AS Date), 488388, 2811, 427);
INSERT into traffic VALUES (987032531, CAST(N'2021-01-11' AS Date), 488388, 2061, 384);
INSERT into traffic VALUES (987032531, CAST(N'2021-01-12' AS Date), 488388, 2567, 674);
INSERT into traffic VALUES (987032531, CAST(N'2021-01-13' AS Date), 488388, 1271, 519);
INSERT into traffic VALUES (987032531, CAST(N'2021-01-14' AS Date), 488388, 2528, 395);
INSERT into traffic VALUES (987032531, CAST(N'2021-01-15' AS Date), 488388, 1424, 703);
INSERT into traffic VALUES (987032531, CAST(N'2021-01-16' AS Date), 488388, 2738, 729);
INSERT into traffic VALUES (987032531, CAST(N'2021-01-17' AS Date), 488388, 2976, 791);
INSERT into traffic VALUES (987032531, CAST(N'2021-01-18' AS Date), 488388, 2157, 558);
INSERT into traffic VALUES (987032531, CAST(N'2021-01-19' AS Date), 488388, 2725, 479);
INSERT into traffic VALUES (987032531, CAST(N'2021-01-20' AS Date), 488388, 1882, 389);
INSERT into traffic VALUES (987032531, CAST(N'2021-01-21' AS Date), 488388, 2397, 675);
INSERT into traffic VALUES (987032531, CAST(N'2021-01-22' AS Date), 488388, 2677, 822);
INSERT into traffic VALUES (987032531, CAST(N'2021-01-23' AS Date), 488388, 1681, 648);
INSERT into traffic VALUES (987032531, CAST(N'2021-01-24' AS Date), 488388, 2470, 555);
INSERT into traffic VALUES (987032531, CAST(N'2021-01-25' AS Date), 488388, 1680, 855);
INSERT into traffic VALUES (987032531, CAST(N'2021-01-26' AS Date), 488388, 1821, 800);
INSERT into traffic VALUES (987032531, CAST(N'2021-01-27' AS Date), 488388, 1079, 381);
INSERT into traffic VALUES (987032531, CAST(N'2021-01-28' AS Date), 488388, 2800, 867);
INSERT into traffic VALUES (987032531, CAST(N'2021-01-29' AS Date), 488388, 2920, 387);
INSERT into traffic VALUES (987032531, CAST(N'2021-01-30' AS Date), 488388, 2838, 517);
INSERT into traffic VALUES (987032533, CAST(N'2021-01-01' AS Date), 488388, 2798, 240);
INSERT into traffic VALUES (987032533, CAST(N'2021-01-02' AS Date), 488388, 1354, 258);
INSERT into traffic VALUES (987032533, CAST(N'2021-01-03' AS Date), 488388, 1028, 214);
INSERT into traffic VALUES (987032533, CAST(N'2021-01-04' AS Date), 488388, 1986, 519);
INSERT into traffic VALUES (987032533, CAST(N'2021-01-05' AS Date), 488388, 2703, 837);
INSERT into traffic VALUES (987032533, CAST(N'2021-01-06' AS Date), 488388, 2775, 333);
INSERT into traffic VALUES (987032533, CAST(N'2021-01-07' AS Date), 488388, 2315, 213);
INSERT into traffic VALUES (987032533, CAST(N'2021-01-08' AS Date), 488388, 1251, 721);
INSERT into traffic VALUES (987032533, CAST(N'2021-01-09' AS Date), 488388, 1941, 680);
INSERT into traffic VALUES (987032533, CAST(N'2021-01-10' AS Date), 488388, 1059, 208);
INSERT into traffic VALUES (987032533, CAST(N'2021-01-11' AS Date), 488388, 1258, 847);
INSERT into traffic VALUES (987032533, CAST(N'2021-01-12' AS Date), 488388, 2437, 317);
INSERT into traffic VALUES (987032533, CAST(N'2021-01-13' AS Date), 488388, 1626, 350);
INSERT into traffic VALUES (987032533, CAST(N'2021-01-14' AS Date), 488388, 2861, 477);
INSERT into traffic VALUES (987032533, CAST(N'2021-01-15' AS Date), 488388, 2762, 510);
INSERT into traffic VALUES (987032533, CAST(N'2021-01-16' AS Date), 488388, 1021, 938);
INSERT into traffic VALUES (987032533, CAST(N'2021-01-17' AS Date), 488388, 2700, 603);
INSERT into traffic VALUES (987032533, CAST(N'2021-01-18' AS Date), 488388, 1924, 322);
INSERT into traffic VALUES (987032533, CAST(N'2021-01-19' AS Date), 488388, 1722, 330);
INSERT into traffic VALUES (987032533, CAST(N'2021-01-20' AS Date), 488388, 2046, 602);
INSERT into traffic VALUES (987032533, CAST(N'2021-01-21' AS Date), 488388, 2015, 332);
INSERT into traffic VALUES (987032533, CAST(N'2021-01-22' AS Date), 488388, 2056, 597);
INSERT into traffic VALUES (987032533, CAST(N'2021-01-23' AS Date), 488388, 1855, 602);
INSERT into traffic VALUES (987032533, CAST(N'2021-01-24' AS Date), 488388, 2604, 255);
INSERT into traffic VALUES (987032533, CAST(N'2021-01-25' AS Date), 488388, 1117, 723);
INSERT into traffic VALUES (987032533, CAST(N'2021-01-26' AS Date), 488388, 2718, 939);
INSERT into traffic VALUES (987032533, CAST(N'2021-01-27' AS Date), 488388, 2251, 248);
INSERT into traffic VALUES (987032533, CAST(N'2021-01-28' AS Date), 488388, 2871, 355);
INSERT into traffic VALUES (987032533, CAST(N'2021-01-29' AS Date), 488388, 1216, 412);
INSERT into traffic VALUES (987032533, CAST(N'2021-01-30' AS Date), 488388, 2886, 729);
INSERT into traffic VALUES (987032553, CAST(N'2021-01-01' AS Date), 488388, 1663, 436);
INSERT into traffic VALUES (987032553, CAST(N'2021-01-02' AS Date), 488388, 2999, 451);
INSERT into traffic VALUES (987032553, CAST(N'2021-01-03' AS Date), 488388, 2935, 497);
INSERT into traffic VALUES (987032553, CAST(N'2021-01-04' AS Date), 488388, 1034, 363);
INSERT into traffic VALUES (987032553, CAST(N'2021-01-05' AS Date), 488388, 2461, 566);
INSERT into traffic VALUES (987032553, CAST(N'2021-01-06' AS Date), 488388, 1812, 480);
INSERT into traffic VALUES (987032553, CAST(N'2021-01-07' AS Date), 488388, 1445, 776);
INSERT into traffic VALUES (987032553, CAST(N'2021-01-08' AS Date), 488388, 2169, 327);
INSERT into traffic VALUES (987032553, CAST(N'2021-01-09' AS Date), 488388, 2855, 615);
INSERT into traffic VALUES (987032553, CAST(N'2021-01-10' AS Date), 488388, 1839, 731);
INSERT into traffic VALUES (987032553, CAST(N'2021-01-11' AS Date), 488388, 1207, 393);
INSERT into traffic VALUES (987032553, CAST(N'2021-01-12' AS Date), 488388, 1368, 348);
INSERT into traffic VALUES (987032553, CAST(N'2021-01-13' AS Date), 488388, 1453, 744);
INSERT into traffic VALUES (987032553, CAST(N'2021-01-14' AS Date), 488388, 1999, 301);
INSERT into traffic VALUES (987032553, CAST(N'2021-01-15' AS Date), 488388, 2133, 928);
INSERT into traffic VALUES (987032553, CAST(N'2021-01-16' AS Date), 488388, 1591, 229);
INSERT into traffic VALUES (987032553, CAST(N'2021-01-17' AS Date), 488388, 2330, 460);
INSERT into traffic VALUES (987032553, CAST(N'2021-01-18' AS Date), 488388, 2191, 440);
INSERT into traffic VALUES (987032553, CAST(N'2021-01-19' AS Date), 488388, 1308, 526);
INSERT into traffic VALUES (987032553, CAST(N'2021-01-20' AS Date), 488388, 2895, 489);
INSERT into traffic VALUES (987032553, CAST(N'2021-01-21' AS Date), 488388, 2416, 681);
INSERT into traffic VALUES (987032553, CAST(N'2021-01-22' AS Date), 488388, 1831, 791);
INSERT into traffic VALUES (987032553, CAST(N'2021-01-23' AS Date), 488388, 1743, 548);
INSERT into traffic VALUES (987032553, CAST(N'2021-01-24' AS Date), 488388, 2307, 876);
INSERT into traffic VALUES (987032553, CAST(N'2021-01-25' AS Date), 488388, 2841, 206);
INSERT into traffic VALUES (987032553, CAST(N'2021-01-26' AS Date), 488388, 2991, 880);
INSERT into traffic VALUES (987032553, CAST(N'2021-01-27' AS Date), 488388, 2389, 698);
INSERT into traffic VALUES (987032553, CAST(N'2021-01-28' AS Date), 488388, 2206, 527);
INSERT into traffic VALUES (987032553, CAST(N'2021-01-29' AS Date), 488388, 2405, 654);
INSERT into traffic VALUES (987032553, CAST(N'2021-01-30' AS Date), 488388, 1906, 944);
INSERT into traffic VALUES (991687733, CAST(N'2021-01-01' AS Date), 490691, 2733, 329);
INSERT into traffic VALUES (991687733, CAST(N'2021-01-02' AS Date), 490691, 1185, 353);
INSERT into traffic VALUES (991687733, CAST(N'2021-01-03' AS Date), 490691, 1848, 636);
INSERT into traffic VALUES (991687733, CAST(N'2021-01-04' AS Date), 490691, 2354, 722);
INSERT into traffic VALUES (991687733, CAST(N'2021-01-05' AS Date), 490691, 2751, 524);
INSERT into traffic VALUES (991687733, CAST(N'2021-01-06' AS Date), 490691, 1978, 632);
INSERT into traffic VALUES (991687733, CAST(N'2021-01-07' AS Date), 490691, 2731, 296);
INSERT into traffic VALUES (991687733, CAST(N'2021-01-08' AS Date), 490691, 2016, 695);
INSERT into traffic VALUES (991687733, CAST(N'2021-01-09' AS Date), 490691, 1519, 793);
INSERT into traffic VALUES (991687733, CAST(N'2021-01-10' AS Date), 490691, 2464, 611);
INSERT into traffic VALUES (991687733, CAST(N'2021-01-11' AS Date), 490691, 2751, 451);
INSERT into traffic VALUES (991687733, CAST(N'2021-01-12' AS Date), 490691, 1106, 799);
INSERT into traffic VALUES (991687733, CAST(N'2021-01-13' AS Date), 490691, 2425, 523);
INSERT into traffic VALUES (991687733, CAST(N'2021-01-14' AS Date), 490691, 1792, 216);
INSERT into traffic VALUES (991687733, CAST(N'2021-01-15' AS Date), 490691, 1879, 689);
INSERT into traffic VALUES (991687733, CAST(N'2021-01-16' AS Date), 490691, 1033, 519);
INSERT into traffic VALUES (991687733, CAST(N'2021-01-17' AS Date), 490691, 1049, 248);
INSERT into traffic VALUES (991687733, CAST(N'2021-01-18' AS Date), 490691, 2525, 355);
INSERT into traffic VALUES (991687733, CAST(N'2021-01-19' AS Date), 490691, 2781, 772);
INSERT into traffic VALUES (991687733, CAST(N'2021-01-20' AS Date), 490691, 1065, 591);
INSERT into traffic VALUES (991687733, CAST(N'2021-01-21' AS Date), 490691, 2070, 299);
INSERT into traffic VALUES (991687733, CAST(N'2021-01-22' AS Date), 490691, 1620, 389);
INSERT into traffic VALUES (991687733, CAST(N'2021-01-23' AS Date), 490691, 1629, 679);
INSERT into traffic VALUES (991687733, CAST(N'2021-01-24' AS Date), 490691, 2001, 330);
INSERT into traffic VALUES (991687733, CAST(N'2021-01-25' AS Date), 490691, 1449, 581);
INSERT into traffic VALUES (991687733, CAST(N'2021-01-26' AS Date), 490691, 1076, 636);
INSERT into traffic VALUES (991687733, CAST(N'2021-01-27' AS Date), 490691, 1986, 619);
INSERT into traffic VALUES (991687733, CAST(N'2021-01-28' AS Date), 490691, 1057, 705);
INSERT into traffic VALUES (991687733, CAST(N'2021-01-29' AS Date), 490691, 1140, 719);
INSERT into traffic VALUES (991687733, CAST(N'2021-01-30' AS Date), 490691, 1489, 732);
INSERT into traffic VALUES (991687737, CAST(N'2021-01-01' AS Date), 490691, 2591, 493);
INSERT into traffic VALUES (991687737, CAST(N'2021-01-02' AS Date), 490691, 2721, 239);
INSERT into traffic VALUES (991687737, CAST(N'2021-01-03' AS Date), 490691, 2171, 364);
INSERT into traffic VALUES (991687737, CAST(N'2021-01-04' AS Date), 490691, 2362, 492);
INSERT into traffic VALUES (991687737, CAST(N'2021-01-05' AS Date), 490691, 2388, 316);
INSERT into traffic VALUES (991687737, CAST(N'2021-01-06' AS Date), 490691, 2267, 349);
INSERT into traffic VALUES (991687737, CAST(N'2021-01-07' AS Date), 490691, 2709, 317);
INSERT into traffic VALUES (991687737, CAST(N'2021-01-08' AS Date), 490691, 1050, 345);
INSERT into traffic VALUES (991687737, CAST(N'2021-01-09' AS Date), 490691, 2871, 335);
INSERT into traffic VALUES (991687737, CAST(N'2021-01-10' AS Date), 490691, 2038, 719);
INSERT into traffic VALUES (991687737, CAST(N'2021-01-11' AS Date), 490691, 2038, 468);
INSERT into traffic VALUES (991687737, CAST(N'2021-01-12' AS Date), 490691, 2169, 392);
INSERT into traffic VALUES (991687737, CAST(N'2021-01-13' AS Date), 490691, 2542, 362);
INSERT into traffic VALUES (991687737, CAST(N'2021-01-14' AS Date), 490691, 1352, 448);
INSERT into traffic VALUES (991687737, CAST(N'2021-01-15' AS Date), 490691, 2767, 516);
INSERT into traffic VALUES (991687737, CAST(N'2021-01-16' AS Date), 490691, 2436, 437);
INSERT into traffic VALUES (991687737, CAST(N'2021-01-17' AS Date), 490691, 2853, 597);
INSERT into traffic VALUES (991687737, CAST(N'2021-01-18' AS Date), 490691, 1016, 386);
INSERT into traffic VALUES (991687737, CAST(N'2021-01-19' AS Date), 490691, 1778, 322);
INSERT into traffic VALUES (991687737, CAST(N'2021-01-20' AS Date), 490691, 1618, 628);
INSERT into traffic VALUES (991687737, CAST(N'2021-01-21' AS Date), 490691, 1005, 283);
INSERT into traffic VALUES (991687737, CAST(N'2021-01-22' AS Date), 490691, 2751, 654);
INSERT into traffic VALUES (991687737, CAST(N'2021-01-23' AS Date), 490691, 2466, 721);
INSERT into traffic VALUES (991687737, CAST(N'2021-01-24' AS Date), 490691, 2700, 266);
INSERT into traffic VALUES (991687737, CAST(N'2021-01-25' AS Date), 490691, 1568, 208);
INSERT into traffic VALUES (991687737, CAST(N'2021-01-26' AS Date), 490691, 2164, 761);
INSERT into traffic VALUES (991687737, CAST(N'2021-01-27' AS Date), 490691, 2431, 604);
INSERT into traffic VALUES (991687737, CAST(N'2021-01-28' AS Date), 490691, 1704, 729);
INSERT into traffic VALUES (991687737, CAST(N'2021-01-29' AS Date), 490691, 1378, 733);
INSERT into traffic VALUES (991687737, CAST(N'2021-01-30' AS Date), 490691, 1735, 791);
INSERT into traffic VALUES (991687765, CAST(N'2021-01-01' AS Date), 490691, 1738, 528);
INSERT into traffic VALUES (991687765, CAST(N'2021-01-02' AS Date), 490691, 1884, 732);
INSERT into traffic VALUES (991687765, CAST(N'2021-01-03' AS Date), 490691, 2096, 212);
INSERT into traffic VALUES (991687765, CAST(N'2021-01-04' AS Date), 490691, 2165, 353);
INSERT into traffic VALUES (991687765, CAST(N'2021-01-05' AS Date), 490691, 2835, 736);
INSERT into traffic VALUES (991687765, CAST(N'2021-01-06' AS Date), 490691, 1060, 740);
INSERT into traffic VALUES (991687765, CAST(N'2021-01-07' AS Date), 490691, 2944, 618);
INSERT into traffic VALUES (991687765, CAST(N'2021-01-08' AS Date), 490691, 1700, 789);
INSERT into traffic VALUES (991687765, CAST(N'2021-01-09' AS Date), 490691, 2372, 419);
INSERT into traffic VALUES (991687765, CAST(N'2021-01-10' AS Date), 490691, 2021, 786);
INSERT into traffic VALUES (991687765, CAST(N'2021-01-11' AS Date), 490691, 2042, 232);
INSERT into traffic VALUES (991687765, CAST(N'2021-01-12' AS Date), 490691, 2159, 408);
INSERT into traffic VALUES (991687765, CAST(N'2021-01-13' AS Date), 490691, 1055, 460);
INSERT into traffic VALUES (991687765, CAST(N'2021-01-14' AS Date), 490691, 2450, 451);
INSERT into traffic VALUES (991687765, CAST(N'2021-01-15' AS Date), 490691, 2924, 651);
INSERT into traffic VALUES (991687765, CAST(N'2021-01-16' AS Date), 490691, 2661, 232);
INSERT into traffic VALUES (991687765, CAST(N'2021-01-17' AS Date), 490691, 2328, 465);
INSERT into traffic VALUES (991687765, CAST(N'2021-01-18' AS Date), 490691, 2873, 323);
INSERT into traffic VALUES (991687765, CAST(N'2021-01-19' AS Date), 490691, 2002, 440);
INSERT into traffic VALUES (991687765, CAST(N'2021-01-20' AS Date), 490691, 1215, 437);
INSERT into traffic VALUES (991687765, CAST(N'2021-01-21' AS Date), 490691, 2155, 422);
INSERT into traffic VALUES (991687765, CAST(N'2021-01-22' AS Date), 490691, 1982, 722);
INSERT into traffic VALUES (991687765, CAST(N'2021-01-23' AS Date), 490691, 2926, 626);
INSERT into traffic VALUES (991687765, CAST(N'2021-01-24' AS Date), 490691, 1225, 673);
INSERT into traffic VALUES (991687765, CAST(N'2021-01-25' AS Date), 490691, 2737, 381);
INSERT into traffic VALUES (991687765, CAST(N'2021-01-26' AS Date), 490691, 1483, 788);
INSERT into traffic VALUES (991687765, CAST(N'2021-01-27' AS Date), 490691, 2628, 214);
INSERT into traffic VALUES (991687765, CAST(N'2021-01-28' AS Date), 490691, 1400, 599);
INSERT into traffic VALUES (991687765, CAST(N'2021-01-29' AS Date), 490691, 1032, 284);
INSERT into traffic VALUES (991687765, CAST(N'2021-01-30' AS Date), 490691, 1824, 381);
INSERT into traffic VALUES (991687767, CAST(N'2021-01-01' AS Date), 490691, 1658, 574);
INSERT into traffic VALUES (991687767, CAST(N'2021-01-02' AS Date), 490691, 1361, 774);
INSERT into traffic VALUES (991687767, CAST(N'2021-01-03' AS Date), 490691, 2427, 691);
INSERT into traffic VALUES (991687767, CAST(N'2021-01-04' AS Date), 490691, 2709, 526);
INSERT into traffic VALUES (991687767, CAST(N'2021-01-05' AS Date), 490691, 1584, 208);
INSERT into traffic VALUES (991687767, CAST(N'2021-01-06' AS Date), 490691, 2947, 683);
INSERT into traffic VALUES (991687767, CAST(N'2021-01-07' AS Date), 490691, 1760, 200);
INSERT into traffic VALUES (991687767, CAST(N'2021-01-08' AS Date), 490691, 1617, 283);
INSERT into traffic VALUES (991687767, CAST(N'2021-01-09' AS Date), 490691, 2444, 216);
INSERT into traffic VALUES (991687767, CAST(N'2021-01-10' AS Date), 490691, 2462, 584);
INSERT into traffic VALUES (991687767, CAST(N'2021-01-11' AS Date), 490691, 2268, 677);
INSERT into traffic VALUES (991687767, CAST(N'2021-01-12' AS Date), 490691, 2692, 328);
INSERT into traffic VALUES (991687767, CAST(N'2021-01-13' AS Date), 490691, 2974, 788);
INSERT into traffic VALUES (991687767, CAST(N'2021-01-14' AS Date), 490691, 2499, 265);
INSERT into traffic VALUES (991687767, CAST(N'2021-01-15' AS Date), 490691, 2320, 329);
INSERT into traffic VALUES (991687767, CAST(N'2021-01-16' AS Date), 490691, 2235, 677);
INSERT into traffic VALUES (991687767, CAST(N'2021-01-17' AS Date), 490691, 2014, 517);
INSERT into traffic VALUES (991687767, CAST(N'2021-01-18' AS Date), 490691, 1899, 396);
INSERT into traffic VALUES (991687767, CAST(N'2021-01-19' AS Date), 490691, 2368, 642);
INSERT into traffic VALUES (991687767, CAST(N'2021-01-20' AS Date), 490691, 2010, 752);
INSERT into traffic VALUES (991687767, CAST(N'2021-01-21' AS Date), 490691, 2687, 204);
INSERT into traffic VALUES (991687767, CAST(N'2021-01-22' AS Date), 490691, 1479, 208);
INSERT into traffic VALUES (991687767, CAST(N'2021-01-23' AS Date), 490691, 2198, 680);
INSERT into traffic VALUES (991687767, CAST(N'2021-01-24' AS Date), 490691, 2666, 294);
INSERT into traffic VALUES (991687767, CAST(N'2021-01-25' AS Date), 490691, 2063, 211);
INSERT into traffic VALUES (991687767, CAST(N'2021-01-26' AS Date), 490691, 2659, 689);
INSERT into traffic VALUES (991687767, CAST(N'2021-01-27' AS Date), 490691, 2113, 363);
INSERT into traffic VALUES (991687767, CAST(N'2021-01-28' AS Date), 490691, 2940, 296);
INSERT into traffic VALUES (991687767, CAST(N'2021-01-29' AS Date), 490691, 2977, 711);
INSERT into traffic VALUES (991687767, CAST(N'2021-01-30' AS Date), 490691, 1254, 539);
INSERT into traffic VALUES (991687768, CAST(N'2021-01-01' AS Date), 490691, 1041, 577);
INSERT into traffic VALUES (991687768, CAST(N'2021-01-02' AS Date), 490691, 1660, 681);
INSERT into traffic VALUES (991687768, CAST(N'2021-01-03' AS Date), 490691, 2415, 662);
INSERT into traffic VALUES (991687768, CAST(N'2021-01-04' AS Date), 490691, 2386, 290);
INSERT into traffic VALUES (991687768, CAST(N'2021-01-05' AS Date), 490691, 1371, 406);
INSERT into traffic VALUES (991687768, CAST(N'2021-01-06' AS Date), 490691, 1214, 590);
INSERT into traffic VALUES (991687768, CAST(N'2021-01-07' AS Date), 490691, 1379, 336);
INSERT into traffic VALUES (991687768, CAST(N'2021-01-08' AS Date), 490691, 2538, 276);
INSERT into traffic VALUES (991687768, CAST(N'2021-01-09' AS Date), 490691, 1488, 318);
INSERT into traffic VALUES (991687768, CAST(N'2021-01-10' AS Date), 490691, 1613, 472);
INSERT into traffic VALUES (991687768, CAST(N'2021-01-11' AS Date), 490691, 1080, 210);
INSERT into traffic VALUES (991687768, CAST(N'2021-01-12' AS Date), 490691, 2110, 688);
INSERT into traffic VALUES (991687768, CAST(N'2021-01-13' AS Date), 490691, 1133, 370);
INSERT into traffic VALUES (991687768, CAST(N'2021-01-14' AS Date), 490691, 2702, 550);
INSERT into traffic VALUES (991687768, CAST(N'2021-01-15' AS Date), 490691, 2687, 213);
INSERT into traffic VALUES (991687768, CAST(N'2021-01-16' AS Date), 490691, 1105, 511);
INSERT into traffic VALUES (991687768, CAST(N'2021-01-17' AS Date), 490691, 2647, 588);
INSERT into traffic VALUES (991687768, CAST(N'2021-01-18' AS Date), 490691, 1572, 454);
INSERT into traffic VALUES (991687768, CAST(N'2021-01-19' AS Date), 490691, 1214, 362);
INSERT into traffic VALUES (991687768, CAST(N'2021-01-20' AS Date), 490691, 2987, 426);
INSERT into traffic VALUES (991687768, CAST(N'2021-01-21' AS Date), 490691, 2985, 410);
INSERT into traffic VALUES (991687768, CAST(N'2021-01-22' AS Date), 490691, 2083, 508);
INSERT into traffic VALUES (991687768, CAST(N'2021-01-23' AS Date), 490691, 1823, 606);
INSERT into traffic VALUES (991687768, CAST(N'2021-01-24' AS Date), 490691, 1481, 721);
INSERT into traffic VALUES (991687768, CAST(N'2021-01-25' AS Date), 490691, 2489, 462);
INSERT into traffic VALUES (991687768, CAST(N'2021-01-26' AS Date), 490691, 1138, 425);
INSERT into traffic VALUES (991687768, CAST(N'2021-01-27' AS Date), 490691, 1502, 766);
INSERT into traffic VALUES (991687768, CAST(N'2021-01-28' AS Date), 490691, 2289, 695);
INSERT into traffic VALUES (991687768, CAST(N'2021-01-29' AS Date), 490691, 2127, 754);
INSERT into traffic VALUES (991687768, CAST(N'2021-01-30' AS Date), 490691, 1740, 226);
INSERT into traffic VALUES (992100994, CAST(N'2021-01-01' AS Date), 490896, 2048, 272);
INSERT into traffic VALUES (992100994, CAST(N'2021-01-02' AS Date), 490896, 2703, 561);
INSERT into traffic VALUES (992100994, CAST(N'2021-01-03' AS Date), 490896, 1487, 459);
INSERT into traffic VALUES (992100994, CAST(N'2021-01-04' AS Date), 490896, 1453, 525);
INSERT into traffic VALUES (992100994, CAST(N'2021-01-05' AS Date), 490896, 2603, 432);
INSERT into traffic VALUES (992100994, CAST(N'2021-01-06' AS Date), 490896, 2089, 227);
INSERT into traffic VALUES (992100994, CAST(N'2021-01-07' AS Date), 490896, 1933, 283);
INSERT into traffic VALUES (992100994, CAST(N'2021-01-08' AS Date), 490896, 2756, 596);
INSERT into traffic VALUES (992100994, CAST(N'2021-01-09' AS Date), 490896, 1943, 201);
INSERT into traffic VALUES (992100994, CAST(N'2021-01-10' AS Date), 490896, 1739, 227);
INSERT into traffic VALUES (992100994, CAST(N'2021-01-11' AS Date), 490896, 1529, 431);
INSERT into traffic VALUES (992100994, CAST(N'2021-01-12' AS Date), 490896, 1264, 535);
INSERT into traffic VALUES (992100994, CAST(N'2021-01-13' AS Date), 490896, 2442, 565);
INSERT into traffic VALUES (992100994, CAST(N'2021-01-14' AS Date), 490896, 1662, 518);
INSERT into traffic VALUES (992100994, CAST(N'2021-01-15' AS Date), 490896, 1548, 237);
INSERT into traffic VALUES (992100994, CAST(N'2021-01-16' AS Date), 490896, 2716, 535);
INSERT into traffic VALUES (992100994, CAST(N'2021-01-17' AS Date), 490896, 1197, 478);
INSERT into traffic VALUES (992100994, CAST(N'2021-01-18' AS Date), 490896, 1313, 339);
INSERT into traffic VALUES (992100994, CAST(N'2021-01-19' AS Date), 490896, 2797, 499);
INSERT into traffic VALUES (992100994, CAST(N'2021-01-20' AS Date), 490896, 1810, 357);
INSERT into traffic VALUES (992100994, CAST(N'2021-01-21' AS Date), 490896, 2689, 495);
INSERT into traffic VALUES (992100994, CAST(N'2021-01-22' AS Date), 490896, 1053, 231);
INSERT into traffic VALUES (992100994, CAST(N'2021-01-23' AS Date), 490896, 2418, 505);
INSERT into traffic VALUES (992100994, CAST(N'2021-01-24' AS Date), 490896, 1025, 537);
INSERT into traffic VALUES (992100994, CAST(N'2021-01-25' AS Date), 490896, 1435, 464);
INSERT into traffic VALUES (992100994, CAST(N'2021-01-26' AS Date), 490896, 2473, 586);
INSERT into traffic VALUES (992100994, CAST(N'2021-01-27' AS Date), 490896, 1806, 492);
INSERT into traffic VALUES (992100994, CAST(N'2021-01-28' AS Date), 490896, 2980, 243);
INSERT into traffic VALUES (992100994, CAST(N'2021-01-29' AS Date), 490896, 1501, 222);
INSERT into traffic VALUES (992100994, CAST(N'2021-01-30' AS Date), 490896, 2504, 421);
INSERT into traffic VALUES (1009826987, CAST(N'2021-01-01' AS Date), 499666, 1667, 718);
INSERT into traffic VALUES (1009826987, CAST(N'2021-01-02' AS Date), 499666, 1153, 277);
INSERT into traffic VALUES (1009826987, CAST(N'2021-01-03' AS Date), 499666, 1273, 390);
INSERT into traffic VALUES (1009826987, CAST(N'2021-01-04' AS Date), 499666, 2306, 267);
INSERT into traffic VALUES (1009826987, CAST(N'2021-01-05' AS Date), 499666, 1520, 345);
INSERT into traffic VALUES (1009826987, CAST(N'2021-01-06' AS Date), 499666, 2307, 349);
INSERT into traffic VALUES (1009826987, CAST(N'2021-01-07' AS Date), 499666, 1746, 262);
INSERT into traffic VALUES (1009826987, CAST(N'2021-01-08' AS Date), 499666, 1983, 602);
INSERT into traffic VALUES (1009826987, CAST(N'2021-01-09' AS Date), 499666, 1100, 795);
INSERT into traffic VALUES (1009826987, CAST(N'2021-01-10' AS Date), 499666, 1984, 463);
INSERT into traffic VALUES (1009826987, CAST(N'2021-01-11' AS Date), 499666, 2314, 661);
INSERT into traffic VALUES (1009826987, CAST(N'2021-01-12' AS Date), 499666, 1196, 566);
INSERT into traffic VALUES (1009826987, CAST(N'2021-01-13' AS Date), 499666, 2628, 715);
INSERT into traffic VALUES (1009826987, CAST(N'2021-01-14' AS Date), 499666, 2963, 521);
INSERT into traffic VALUES (1009826987, CAST(N'2021-01-15' AS Date), 499666, 2206, 370);
INSERT into traffic VALUES (1009826987, CAST(N'2021-01-16' AS Date), 499666, 2201, 774);
INSERT into traffic VALUES (1009826987, CAST(N'2021-01-17' AS Date), 499666, 2422, 621);
INSERT into traffic VALUES (1009826987, CAST(N'2021-01-18' AS Date), 499666, 1123, 653);
INSERT into traffic VALUES (1009826987, CAST(N'2021-01-19' AS Date), 499666, 2436, 465);
INSERT into traffic VALUES (1009826987, CAST(N'2021-01-20' AS Date), 499666, 1492, 310);
INSERT into traffic VALUES (1009826987, CAST(N'2021-01-21' AS Date), 499666, 2276, 238);
INSERT into traffic VALUES (1009826987, CAST(N'2021-01-22' AS Date), 499666, 2428, 288);
INSERT into traffic VALUES (1009826987, CAST(N'2021-01-23' AS Date), 499666, 1317, 780);
INSERT into traffic VALUES (1009826987, CAST(N'2021-01-24' AS Date), 499666, 2657, 545);
INSERT into traffic VALUES (1009826987, CAST(N'2021-01-25' AS Date), 499666, 2620, 787);
INSERT into traffic VALUES (1009826987, CAST(N'2021-01-26' AS Date), 499666, 1749, 229);
INSERT into traffic VALUES (1009826987, CAST(N'2021-01-27' AS Date), 499666, 2854, 534);
INSERT into traffic VALUES (1009826987, CAST(N'2021-01-28' AS Date), 499666, 1588, 754);
INSERT into traffic VALUES (1009826987, CAST(N'2021-01-29' AS Date), 499666, 2007, 200);
INSERT into traffic VALUES (1009826987, CAST(N'2021-01-30' AS Date), 499666, 2674, 451);
INSERT into traffic VALUES (1015284765, CAST(N'2021-01-01' AS Date), 502367, 1163, 319);
INSERT into traffic VALUES (1015284765, CAST(N'2021-01-02' AS Date), 502367, 1182, 309);
INSERT into traffic VALUES (1015284765, CAST(N'2021-01-03' AS Date), 502367, 2442, 247);
INSERT into traffic VALUES (1015284765, CAST(N'2021-01-04' AS Date), 502367, 2834, 384);
INSERT into traffic VALUES (1015284765, CAST(N'2021-01-05' AS Date), 502367, 1830, 309);
INSERT into traffic VALUES (1015284765, CAST(N'2021-01-06' AS Date), 502367, 1578, 230);
INSERT into traffic VALUES (1015284765, CAST(N'2021-01-07' AS Date), 502367, 1875, 287);
INSERT into traffic VALUES (1015284765, CAST(N'2021-01-08' AS Date), 502367, 2695, 295);
INSERT into traffic VALUES (1015284765, CAST(N'2021-01-09' AS Date), 502367, 2198, 364);
INSERT into traffic VALUES (1015284765, CAST(N'2021-01-10' AS Date), 502367, 2262, 373);
INSERT into traffic VALUES (1015284765, CAST(N'2021-01-11' AS Date), 502367, 2147, 313);
INSERT into traffic VALUES (1015284765, CAST(N'2021-01-12' AS Date), 502367, 1056, 262);
INSERT into traffic VALUES (1015284765, CAST(N'2021-01-13' AS Date), 502367, 2589, 329);
INSERT into traffic VALUES (1015284765, CAST(N'2021-01-14' AS Date), 502367, 1547, 200);
INSERT into traffic VALUES (1015284765, CAST(N'2021-01-15' AS Date), 502367, 1009, 335);
INSERT into traffic VALUES (1015284765, CAST(N'2021-01-16' AS Date), 502367, 2625, 212);
INSERT into traffic VALUES (1015284765, CAST(N'2021-01-17' AS Date), 502367, 2490, 202);
INSERT into traffic VALUES (1015284765, CAST(N'2021-01-18' AS Date), 502367, 1733, 331);
INSERT into traffic VALUES (1015284765, CAST(N'2021-01-19' AS Date), 502367, 1281, 288);
INSERT into traffic VALUES (1015284765, CAST(N'2021-01-20' AS Date), 502367, 2856, 286);
INSERT into traffic VALUES (1015284765, CAST(N'2021-01-21' AS Date), 502367, 1262, 302);
INSERT into traffic VALUES (1015284765, CAST(N'2021-01-22' AS Date), 502367, 1628, 372);
INSERT into traffic VALUES (1015284765, CAST(N'2021-01-23' AS Date), 502367, 1980, 370);
INSERT into traffic VALUES (1015284765, CAST(N'2021-01-24' AS Date), 502367, 2621, 215);
INSERT into traffic VALUES (1015284765, CAST(N'2021-01-25' AS Date), 502367, 2242, 348);
INSERT into traffic VALUES (1015284765, CAST(N'2021-01-26' AS Date), 502367, 2122, 205);
INSERT into traffic VALUES (1015284765, CAST(N'2021-01-27' AS Date), 502367, 1916, 316);
INSERT into traffic VALUES (1015284765, CAST(N'2021-01-28' AS Date), 502367, 1039, 321);
INSERT into traffic VALUES (1015284765, CAST(N'2021-01-29' AS Date), 502367, 1045, 293);
INSERT into traffic VALUES (1015284765, CAST(N'2021-01-30' AS Date), 502367, 2330, 318);
INSERT into traffic VALUES (1019167369, CAST(N'2021-01-01' AS Date), 504288, 2848, 250);
INSERT into traffic VALUES (1019167369, CAST(N'2021-01-02' AS Date), 504288, 2114, 336);
INSERT into traffic VALUES (1019167369, CAST(N'2021-01-03' AS Date), 504288, 1708, 325);
INSERT into traffic VALUES (1019167369, CAST(N'2021-01-04' AS Date), 504288, 2970, 560);
INSERT into traffic VALUES (1019167369, CAST(N'2021-01-05' AS Date), 504288, 1625, 583);
INSERT into traffic VALUES (1019167369, CAST(N'2021-01-06' AS Date), 504288, 2140, 496);
INSERT into traffic VALUES (1019167369, CAST(N'2021-01-07' AS Date), 504288, 1603, 267);
INSERT into traffic VALUES (1019167369, CAST(N'2021-01-08' AS Date), 504288, 2437, 489);
INSERT into traffic VALUES (1019167369, CAST(N'2021-01-09' AS Date), 504288, 1606, 223);
INSERT into traffic VALUES (1019167369, CAST(N'2021-01-10' AS Date), 504288, 1234, 514);
INSERT into traffic VALUES (1019167369, CAST(N'2021-01-11' AS Date), 504288, 1945, 541);
INSERT into traffic VALUES (1019167369, CAST(N'2021-01-12' AS Date), 504288, 2305, 300);
INSERT into traffic VALUES (1019167369, CAST(N'2021-01-13' AS Date), 504288, 1718, 575);
INSERT into traffic VALUES (1019167369, CAST(N'2021-01-14' AS Date), 504288, 2667, 416);
INSERT into traffic VALUES (1019167369, CAST(N'2021-01-15' AS Date), 504288, 1557, 460);
INSERT into traffic VALUES (1019167369, CAST(N'2021-01-16' AS Date), 504288, 2155, 589);
INSERT into traffic VALUES (1019167369, CAST(N'2021-01-17' AS Date), 504288, 2698, 573);
INSERT into traffic VALUES (1019167369, CAST(N'2021-01-18' AS Date), 504288, 2767, 433);
INSERT into traffic VALUES (1019167369, CAST(N'2021-01-19' AS Date), 504288, 2273, 389);
INSERT into traffic VALUES (1019167369, CAST(N'2021-01-20' AS Date), 504288, 2078, 522);
INSERT into traffic VALUES (1019167369, CAST(N'2021-01-21' AS Date), 504288, 1652, 578);
INSERT into traffic VALUES (1019167369, CAST(N'2021-01-22' AS Date), 504288, 1911, 534);
INSERT into traffic VALUES (1019167369, CAST(N'2021-01-23' AS Date), 504288, 1352, 333);
INSERT into traffic VALUES (1019167369, CAST(N'2021-01-24' AS Date), 504288, 1957, 305);
INSERT into traffic VALUES (1019167369, CAST(N'2021-01-25' AS Date), 504288, 2958, 208);
INSERT into traffic VALUES (1019167369, CAST(N'2021-01-26' AS Date), 504288, 1758, 205);
INSERT into traffic VALUES (1019167369, CAST(N'2021-01-27' AS Date), 504288, 1923, 256);
INSERT into traffic VALUES (1019167369, CAST(N'2021-01-28' AS Date), 504288, 2893, 313);
INSERT into traffic VALUES (1019167369, CAST(N'2021-01-29' AS Date), 504288, 2135, 201);
INSERT into traffic VALUES (1019167369, CAST(N'2021-01-30' AS Date), 504288, 2938, 394);
INSERT into traffic VALUES (1019167426, CAST(N'2021-01-01' AS Date), 504288, 1390, 541);
INSERT into traffic VALUES (1019167426, CAST(N'2021-01-02' AS Date), 504288, 1237, 352);
INSERT into traffic VALUES (1019167426, CAST(N'2021-01-03' AS Date), 504288, 2740, 267);
INSERT into traffic VALUES (1019167426, CAST(N'2021-01-04' AS Date), 504288, 1958, 447);
INSERT into traffic VALUES (1019167426, CAST(N'2021-01-05' AS Date), 504288, 1561, 433);
INSERT into traffic VALUES (1019167426, CAST(N'2021-01-06' AS Date), 504288, 2619, 373);
INSERT into traffic VALUES (1019167426, CAST(N'2021-01-07' AS Date), 504288, 1395, 520);
INSERT into traffic VALUES (1019167426, CAST(N'2021-01-08' AS Date), 504288, 2434, 505);
INSERT into traffic VALUES (1019167426, CAST(N'2021-01-09' AS Date), 504288, 1078, 428);
INSERT into traffic VALUES (1019167426, CAST(N'2021-01-10' AS Date), 504288, 2217, 501);
INSERT into traffic VALUES (1019167426, CAST(N'2021-01-11' AS Date), 504288, 2806, 588);
INSERT into traffic VALUES (1019167426, CAST(N'2021-01-12' AS Date), 504288, 2207, 511);
INSERT into traffic VALUES (1019167426, CAST(N'2021-01-13' AS Date), 504288, 1921, 386);
INSERT into traffic VALUES (1019167426, CAST(N'2021-01-14' AS Date), 504288, 2776, 433);
INSERT into traffic VALUES (1019167426, CAST(N'2021-01-15' AS Date), 504288, 1757, 249);
INSERT into traffic VALUES (1019167426, CAST(N'2021-01-16' AS Date), 504288, 2815, 586);
INSERT into traffic VALUES (1019167426, CAST(N'2021-01-17' AS Date), 504288, 1329, 546);
INSERT into traffic VALUES (1019167426, CAST(N'2021-01-18' AS Date), 504288, 1398, 555);
INSERT into traffic VALUES (1019167426, CAST(N'2021-01-19' AS Date), 504288, 2474, 424);
INSERT into traffic VALUES (1019167426, CAST(N'2021-01-20' AS Date), 504288, 2760, 308);
INSERT into traffic VALUES (1019167426, CAST(N'2021-01-21' AS Date), 504288, 2865, 235);
INSERT into traffic VALUES (1019167426, CAST(N'2021-01-22' AS Date), 504288, 2551, 273);
INSERT into traffic VALUES (1019167426, CAST(N'2021-01-23' AS Date), 504288, 2585, 238);
INSERT into traffic VALUES (1019167426, CAST(N'2021-01-24' AS Date), 504288, 1746, 447);
INSERT into traffic VALUES (1019167426, CAST(N'2021-01-25' AS Date), 504288, 1281, 381);
INSERT into traffic VALUES (1019167426, CAST(N'2021-01-26' AS Date), 504288, 1851, 521);
INSERT into traffic VALUES (1019167426, CAST(N'2021-01-27' AS Date), 504288, 1334, 360);
INSERT into traffic VALUES (1019167426, CAST(N'2021-01-28' AS Date), 504288, 2114, 309);
INSERT into traffic VALUES (1019167426, CAST(N'2021-01-29' AS Date), 504288, 2403, 574);
INSERT into traffic VALUES (1019167426, CAST(N'2021-01-30' AS Date), 504288, 1068, 355);
INSERT into traffic VALUES (1019167436, CAST(N'2021-01-01' AS Date), 504288, 2606, 583);
INSERT into traffic VALUES (1019167436, CAST(N'2021-01-02' AS Date), 504288, 1987, 451);
INSERT into traffic VALUES (1019167436, CAST(N'2021-01-03' AS Date), 504288, 2470, 557);
INSERT into traffic VALUES (1019167436, CAST(N'2021-01-04' AS Date), 504288, 1440, 397);
INSERT into traffic VALUES (1019167436, CAST(N'2021-01-05' AS Date), 504288, 2786, 477);
INSERT into traffic VALUES (1019167436, CAST(N'2021-01-06' AS Date), 504288, 1709, 468);
INSERT into traffic VALUES (1019167436, CAST(N'2021-01-07' AS Date), 504288, 1911, 376);
INSERT into traffic VALUES (1019167436, CAST(N'2021-01-08' AS Date), 504288, 1110, 487);
INSERT into traffic VALUES (1019167436, CAST(N'2021-01-09' AS Date), 504288, 2123, 272);
INSERT into traffic VALUES (1019167436, CAST(N'2021-01-10' AS Date), 504288, 1149, 236);
INSERT into traffic VALUES (1019167436, CAST(N'2021-01-11' AS Date), 504288, 1771, 271);
INSERT into traffic VALUES (1019167436, CAST(N'2021-01-12' AS Date), 504288, 1382, 358);
INSERT into traffic VALUES (1019167436, CAST(N'2021-01-13' AS Date), 504288, 2606, 513);
INSERT into traffic VALUES (1019167436, CAST(N'2021-01-14' AS Date), 504288, 1648, 208);
INSERT into traffic VALUES (1019167436, CAST(N'2021-01-15' AS Date), 504288, 2001, 272);
INSERT into traffic VALUES (1019167436, CAST(N'2021-01-16' AS Date), 504288, 2718, 366);
INSERT into traffic VALUES (1019167436, CAST(N'2021-01-17' AS Date), 504288, 1373, 407);
INSERT into traffic VALUES (1019167436, CAST(N'2021-01-18' AS Date), 504288, 1963, 448);
INSERT into traffic VALUES (1019167436, CAST(N'2021-01-19' AS Date), 504288, 2159, 488);
INSERT into traffic VALUES (1019167436, CAST(N'2021-01-20' AS Date), 504288, 2399, 349);
INSERT into traffic VALUES (1019167436, CAST(N'2021-01-21' AS Date), 504288, 1759, 343);
INSERT into traffic VALUES (1019167436, CAST(N'2021-01-22' AS Date), 504288, 1083, 436);
INSERT into traffic VALUES (1019167436, CAST(N'2021-01-23' AS Date), 504288, 1190, 208);
INSERT into traffic VALUES (1019167436, CAST(N'2021-01-24' AS Date), 504288, 2035, 296);
INSERT into traffic VALUES (1019167436, CAST(N'2021-01-25' AS Date), 504288, 2539, 266);
INSERT into traffic VALUES (1019167436, CAST(N'2021-01-26' AS Date), 504288, 2828, 407);
INSERT into traffic VALUES (1019167436, CAST(N'2021-01-27' AS Date), 504288, 2507, 454);
INSERT into traffic VALUES (1019167436, CAST(N'2021-01-28' AS Date), 504288, 2758, 479);
INSERT into traffic VALUES (1019167436, CAST(N'2021-01-29' AS Date), 504288, 1890, 413);
INSERT into traffic VALUES (1019167436, CAST(N'2021-01-30' AS Date), 504288, 1070, 239);
INSERT into traffic VALUES (1020795724, CAST(N'2021-01-01' AS Date), 505094, 2882, 530);
INSERT into traffic VALUES (1020795724, CAST(N'2021-01-02' AS Date), 505094, 2159, 625);
INSERT into traffic VALUES (1020795724, CAST(N'2021-01-03' AS Date), 505094, 2413, 422);
INSERT into traffic VALUES (1020795724, CAST(N'2021-01-04' AS Date), 505094, 1481, 338);
INSERT into traffic VALUES (1020795724, CAST(N'2021-01-05' AS Date), 505094, 2608, 682);
INSERT into traffic VALUES (1020795724, CAST(N'2021-01-06' AS Date), 505094, 1731, 288);
INSERT into traffic VALUES (1020795724, CAST(N'2021-01-07' AS Date), 505094, 1957, 632);
INSERT into traffic VALUES (1020795724, CAST(N'2021-01-08' AS Date), 505094, 1218, 727);
INSERT into traffic VALUES (1020795724, CAST(N'2021-01-09' AS Date), 505094, 2172, 245);
INSERT into traffic VALUES (1020795724, CAST(N'2021-01-10' AS Date), 505094, 2735, 278);
INSERT into traffic VALUES (1020795724, CAST(N'2021-01-11' AS Date), 505094, 1265, 684);
INSERT into traffic VALUES (1020795724, CAST(N'2021-01-12' AS Date), 505094, 2680, 245);
INSERT into traffic VALUES (1020795724, CAST(N'2021-01-13' AS Date), 505094, 1312, 508);
INSERT into traffic VALUES (1020795724, CAST(N'2021-01-14' AS Date), 505094, 1270, 286);
INSERT into traffic VALUES (1020795724, CAST(N'2021-01-15' AS Date), 505094, 2386, 765);
INSERT into traffic VALUES (1020795724, CAST(N'2021-01-16' AS Date), 505094, 2306, 278);
INSERT into traffic VALUES (1020795724, CAST(N'2021-01-17' AS Date), 505094, 2792, 232);
INSERT into traffic VALUES (1020795724, CAST(N'2021-01-18' AS Date), 505094, 2756, 395);
INSERT into traffic VALUES (1020795724, CAST(N'2021-01-19' AS Date), 505094, 1722, 433);
INSERT into traffic VALUES (1020795724, CAST(N'2021-01-20' AS Date), 505094, 2046, 303);
INSERT into traffic VALUES (1020795724, CAST(N'2021-01-21' AS Date), 505094, 1159, 679);
INSERT into traffic VALUES (1020795724, CAST(N'2021-01-22' AS Date), 505094, 2698, 231);
INSERT into traffic VALUES (1020795724, CAST(N'2021-01-23' AS Date), 505094, 2553, 478);
INSERT into traffic VALUES (1020795724, CAST(N'2021-01-24' AS Date), 505094, 1642, 594);
INSERT into traffic VALUES (1020795724, CAST(N'2021-01-25' AS Date), 505094, 2726, 642);
INSERT into traffic VALUES (1020795724, CAST(N'2021-01-26' AS Date), 505094, 2681, 256);
INSERT into traffic VALUES (1020795724, CAST(N'2021-01-27' AS Date), 505094, 1175, 714);
INSERT into traffic VALUES (1020795724, CAST(N'2021-01-28' AS Date), 505094, 2746, 410);
INSERT into traffic VALUES (1020795724, CAST(N'2021-01-29' AS Date), 505094, 1667, 376);
INSERT into traffic VALUES (1020795724, CAST(N'2021-01-30' AS Date), 505094, 1239, 462);
INSERT into traffic VALUES (1020795750, CAST(N'2021-01-01' AS Date), 505094, 1736, 722);
INSERT into traffic VALUES (1020795750, CAST(N'2021-01-02' AS Date), 505094, 1992, 598);
INSERT into traffic VALUES (1020795750, CAST(N'2021-01-03' AS Date), 505094, 1847, 607);
INSERT into traffic VALUES (1020795750, CAST(N'2021-01-04' AS Date), 505094, 2493, 415);
INSERT into traffic VALUES (1020795750, CAST(N'2021-01-05' AS Date), 505094, 2597, 290);
INSERT into traffic VALUES (1020795750, CAST(N'2021-01-06' AS Date), 505094, 1324, 426);
INSERT into traffic VALUES (1020795750, CAST(N'2021-01-07' AS Date), 505094, 2282, 732);
INSERT into traffic VALUES (1020795750, CAST(N'2021-01-08' AS Date), 505094, 2560, 327);
INSERT into traffic VALUES (1020795750, CAST(N'2021-01-09' AS Date), 505094, 1381, 652);
INSERT into traffic VALUES (1020795750, CAST(N'2021-01-10' AS Date), 505094, 2862, 587);
INSERT into traffic VALUES (1020795750, CAST(N'2021-01-11' AS Date), 505094, 2016, 713);
INSERT into traffic VALUES (1020795750, CAST(N'2021-01-12' AS Date), 505094, 2934, 645);
INSERT into traffic VALUES (1020795750, CAST(N'2021-01-13' AS Date), 505094, 2228, 791);
INSERT into traffic VALUES (1020795750, CAST(N'2021-01-14' AS Date), 505094, 1997, 635);
INSERT into traffic VALUES (1020795750, CAST(N'2021-01-15' AS Date), 505094, 2695, 267);
INSERT into traffic VALUES (1020795750, CAST(N'2021-01-16' AS Date), 505094, 1614, 622);
INSERT into traffic VALUES (1020795750, CAST(N'2021-01-17' AS Date), 505094, 2331, 676);
INSERT into traffic VALUES (1020795750, CAST(N'2021-01-18' AS Date), 505094, 2822, 634);
INSERT into traffic VALUES (1020795750, CAST(N'2021-01-19' AS Date), 505094, 2986, 285);
INSERT into traffic VALUES (1020795750, CAST(N'2021-01-20' AS Date), 505094, 1385, 490);
INSERT into traffic VALUES (1020795750, CAST(N'2021-01-21' AS Date), 505094, 2071, 674);
INSERT into traffic VALUES (1020795750, CAST(N'2021-01-22' AS Date), 505094, 2512, 424);
INSERT into traffic VALUES (1020795750, CAST(N'2021-01-23' AS Date), 505094, 1427, 434);
INSERT into traffic VALUES (1020795750, CAST(N'2021-01-24' AS Date), 505094, 1178, 416);
INSERT into traffic VALUES (1020795750, CAST(N'2021-01-25' AS Date), 505094, 2508, 794);
INSERT into traffic VALUES (1020795750, CAST(N'2021-01-26' AS Date), 505094, 2469, 732);
INSERT into traffic VALUES (1020795750, CAST(N'2021-01-27' AS Date), 505094, 2118, 394);
INSERT into traffic VALUES (1020795750, CAST(N'2021-01-28' AS Date), 505094, 2216, 353);
INSERT into traffic VALUES (1020795750, CAST(N'2021-01-29' AS Date), 505094, 1094, 245);
INSERT into traffic VALUES (1020795750, CAST(N'2021-01-30' AS Date), 505094, 1720, 620);
INSERT into traffic VALUES (1020795757, CAST(N'2021-01-01' AS Date), 505094, 1644, 471);
INSERT into traffic VALUES (1020795757, CAST(N'2021-01-02' AS Date), 505094, 1724, 599);
INSERT into traffic VALUES (1020795757, CAST(N'2021-01-03' AS Date), 505094, 2634, 430);
INSERT into traffic VALUES (1020795757, CAST(N'2021-01-04' AS Date), 505094, 2164, 759);
INSERT into traffic VALUES (1020795757, CAST(N'2021-01-05' AS Date), 505094, 2866, 733);
INSERT into traffic VALUES (1020795757, CAST(N'2021-01-06' AS Date), 505094, 1601, 528);
INSERT into traffic VALUES (1020795757, CAST(N'2021-01-07' AS Date), 505094, 2973, 323);
INSERT into traffic VALUES (1020795757, CAST(N'2021-01-08' AS Date), 505094, 2131, 237);
INSERT into traffic VALUES (1020795757, CAST(N'2021-01-09' AS Date), 505094, 2352, 378);
INSERT into traffic VALUES (1020795757, CAST(N'2021-01-10' AS Date), 505094, 2271, 785);
INSERT into traffic VALUES (1020795757, CAST(N'2021-01-11' AS Date), 505094, 1290, 332);
INSERT into traffic VALUES (1020795757, CAST(N'2021-01-12' AS Date), 505094, 2831, 364);
INSERT into traffic VALUES (1020795757, CAST(N'2021-01-13' AS Date), 505094, 2890, 362);
INSERT into traffic VALUES (1020795757, CAST(N'2021-01-14' AS Date), 505094, 1314, 451);
INSERT into traffic VALUES (1020795757, CAST(N'2021-01-15' AS Date), 505094, 1447, 581);
INSERT into traffic VALUES (1020795757, CAST(N'2021-01-16' AS Date), 505094, 2486, 286);
INSERT into traffic VALUES (1020795757, CAST(N'2021-01-17' AS Date), 505094, 1050, 465);
INSERT into traffic VALUES (1020795757, CAST(N'2021-01-18' AS Date), 505094, 1048, 388);
INSERT into traffic VALUES (1020795757, CAST(N'2021-01-19' AS Date), 505094, 2107, 565);
INSERT into traffic VALUES (1020795757, CAST(N'2021-01-20' AS Date), 505094, 1917, 706);
INSERT into traffic VALUES (1020795757, CAST(N'2021-01-21' AS Date), 505094, 1930, 359);
INSERT into traffic VALUES (1020795757, CAST(N'2021-01-22' AS Date), 505094, 2577, 641);
INSERT into traffic VALUES (1020795757, CAST(N'2021-01-23' AS Date), 505094, 2671, 528);
INSERT into traffic VALUES (1020795757, CAST(N'2021-01-24' AS Date), 505094, 2147, 409);
INSERT into traffic VALUES (1020795757, CAST(N'2021-01-25' AS Date), 505094, 1153, 761);
INSERT into traffic VALUES (1020795757, CAST(N'2021-01-26' AS Date), 505094, 1661, 656);
INSERT into traffic VALUES (1020795757, CAST(N'2021-01-27' AS Date), 505094, 1610, 399);
INSERT into traffic VALUES (1020795757, CAST(N'2021-01-28' AS Date), 505094, 2594, 250);
INSERT into traffic VALUES (1020795757, CAST(N'2021-01-29' AS Date), 505094, 1757, 729);
INSERT into traffic VALUES (1020795757, CAST(N'2021-01-30' AS Date), 505094, 1056, 453);
INSERT into traffic VALUES (1024850325, CAST(N'2021-01-01' AS Date), 507100, 2812, 212);
INSERT into traffic VALUES (1024850325, CAST(N'2021-01-02' AS Date), 507100, 2610, 412);
INSERT into traffic VALUES (1024850325, CAST(N'2021-01-03' AS Date), 507100, 2929, 322);
INSERT into traffic VALUES (1024850325, CAST(N'2021-01-04' AS Date), 507100, 1152, 483);
INSERT into traffic VALUES (1024850325, CAST(N'2021-01-05' AS Date), 507100, 2417, 776);
INSERT into traffic VALUES (1024850325, CAST(N'2021-01-06' AS Date), 507100, 1092, 278);
INSERT into traffic VALUES (1024850325, CAST(N'2021-01-07' AS Date), 507100, 1023, 744);
INSERT into traffic VALUES (1024850325, CAST(N'2021-01-08' AS Date), 507100, 2546, 784);
INSERT into traffic VALUES (1024850325, CAST(N'2021-01-09' AS Date), 507100, 2555, 538);
INSERT into traffic VALUES (1024850325, CAST(N'2021-01-10' AS Date), 507100, 2307, 560);
INSERT into traffic VALUES (1024850325, CAST(N'2021-01-11' AS Date), 507100, 1866, 580);
INSERT into traffic VALUES (1024850325, CAST(N'2021-01-12' AS Date), 507100, 1001, 462);
INSERT into traffic VALUES (1024850325, CAST(N'2021-01-13' AS Date), 507100, 2290, 538);
INSERT into traffic VALUES (1024850325, CAST(N'2021-01-14' AS Date), 507100, 1864, 200);
INSERT into traffic VALUES (1024850325, CAST(N'2021-01-15' AS Date), 507100, 2798, 745);
INSERT into traffic VALUES (1024850325, CAST(N'2021-01-16' AS Date), 507100, 2347, 253);
INSERT into traffic VALUES (1024850325, CAST(N'2021-01-17' AS Date), 507100, 1459, 263);
INSERT into traffic VALUES (1024850325, CAST(N'2021-01-18' AS Date), 507100, 2914, 461);
INSERT into traffic VALUES (1024850325, CAST(N'2021-01-19' AS Date), 507100, 2417, 670);
INSERT into traffic VALUES (1024850325, CAST(N'2021-01-20' AS Date), 507100, 1720, 326);
INSERT into traffic VALUES (1024850325, CAST(N'2021-01-21' AS Date), 507100, 2714, 402);
INSERT into traffic VALUES (1024850325, CAST(N'2021-01-22' AS Date), 507100, 2743, 615);
INSERT into traffic VALUES (1024850325, CAST(N'2021-01-23' AS Date), 507100, 2503, 451);
INSERT into traffic VALUES (1024850325, CAST(N'2021-01-24' AS Date), 507100, 1059, 484);
INSERT into traffic VALUES (1024850325, CAST(N'2021-01-25' AS Date), 507100, 2688, 390);
INSERT into traffic VALUES (1024850325, CAST(N'2021-01-26' AS Date), 507100, 2717, 225);
INSERT into traffic VALUES (1024850325, CAST(N'2021-01-27' AS Date), 507100, 2842, 674);
INSERT into traffic VALUES (1024850325, CAST(N'2021-01-28' AS Date), 507100, 1062, 384);
INSERT into traffic VALUES (1024850325, CAST(N'2021-01-29' AS Date), 507100, 2795, 498);
INSERT into traffic VALUES (1024850325, CAST(N'2021-01-30' AS Date), 507100, 1615, 673);
INSERT into traffic VALUES (1030835679, CAST(N'2021-01-01' AS Date), 510062, 1474, 482);
INSERT into traffic VALUES (1030835679, CAST(N'2021-01-02' AS Date), 510062, 2100, 604);
INSERT into traffic VALUES (1030835679, CAST(N'2021-01-03' AS Date), 510062, 2637, 264);
INSERT into traffic VALUES (1030835679, CAST(N'2021-01-04' AS Date), 510062, 1308, 788);
INSERT into traffic VALUES (1030835679, CAST(N'2021-01-05' AS Date), 510062, 1491, 586);
INSERT into traffic VALUES (1030835679, CAST(N'2021-01-06' AS Date), 510062, 1632, 642);
INSERT into traffic VALUES (1030835679, CAST(N'2021-01-07' AS Date), 510062, 1589, 229);
INSERT into traffic VALUES (1030835679, CAST(N'2021-01-08' AS Date), 510062, 2198, 593);
INSERT into traffic VALUES (1030835679, CAST(N'2021-01-09' AS Date), 510062, 2792, 241);
INSERT into traffic VALUES (1030835679, CAST(N'2021-01-10' AS Date), 510062, 2317, 678);
INSERT into traffic VALUES (1030835679, CAST(N'2021-01-11' AS Date), 510062, 2478, 388);
INSERT into traffic VALUES (1030835679, CAST(N'2021-01-12' AS Date), 510062, 1782, 526);
INSERT into traffic VALUES (1030835679, CAST(N'2021-01-13' AS Date), 510062, 2079, 724);
INSERT into traffic VALUES (1030835679, CAST(N'2021-01-14' AS Date), 510062, 2160, 207);
INSERT into traffic VALUES (1030835679, CAST(N'2021-01-15' AS Date), 510062, 2448, 357);
INSERT into traffic VALUES (1030835679, CAST(N'2021-01-16' AS Date), 510062, 1142, 288);
INSERT into traffic VALUES (1030835679, CAST(N'2021-01-17' AS Date), 510062, 1960, 677);
INSERT into traffic VALUES (1030835679, CAST(N'2021-01-18' AS Date), 510062, 1251, 661);
INSERT into traffic VALUES (1030835679, CAST(N'2021-01-19' AS Date), 510062, 1990, 707);
INSERT into traffic VALUES (1030835679, CAST(N'2021-01-20' AS Date), 510062, 2073, 302);
INSERT into traffic VALUES (1030835679, CAST(N'2021-01-21' AS Date), 510062, 1132, 685);
INSERT into traffic VALUES (1030835679, CAST(N'2021-01-22' AS Date), 510062, 2082, 497);
INSERT into traffic VALUES (1030835679, CAST(N'2021-01-23' AS Date), 510062, 2718, 776);
INSERT into traffic VALUES (1030835679, CAST(N'2021-01-24' AS Date), 510062, 1044, 224);
INSERT into traffic VALUES (1030835679, CAST(N'2021-01-25' AS Date), 510062, 1783, 385);
INSERT into traffic VALUES (1030835679, CAST(N'2021-01-26' AS Date), 510062, 1619, 712);
INSERT into traffic VALUES (1030835679, CAST(N'2021-01-27' AS Date), 510062, 1861, 788);
INSERT into traffic VALUES (1030835679, CAST(N'2021-01-28' AS Date), 510062, 2817, 601);
INSERT into traffic VALUES (1030835679, CAST(N'2021-01-29' AS Date), 510062, 2491, 226);
INSERT into traffic VALUES (1030835679, CAST(N'2021-01-30' AS Date), 510062, 1425, 490);
INSERT into traffic VALUES (1046197785, CAST(N'2021-01-01' AS Date), 517663, 2824, 357);
INSERT into traffic VALUES (1046197785, CAST(N'2021-01-02' AS Date), 517663, 1969, 587);
INSERT into traffic VALUES (1046197785, CAST(N'2021-01-03' AS Date), 517663, 1263, 344);
INSERT into traffic VALUES (1046197785, CAST(N'2021-01-04' AS Date), 517663, 2342, 221);
INSERT into traffic VALUES (1046197785, CAST(N'2021-01-05' AS Date), 517663, 2343, 297);
INSERT into traffic VALUES (1046197785, CAST(N'2021-01-06' AS Date), 517663, 2839, 506);
INSERT into traffic VALUES (1046197785, CAST(N'2021-01-07' AS Date), 517663, 2147, 478);
INSERT into traffic VALUES (1046197785, CAST(N'2021-01-08' AS Date), 517663, 1385, 430);
INSERT into traffic VALUES (1046197785, CAST(N'2021-01-09' AS Date), 517663, 1607, 328);
INSERT into traffic VALUES (1046197785, CAST(N'2021-01-10' AS Date), 517663, 2811, 378);
INSERT into traffic VALUES (1046197785, CAST(N'2021-01-11' AS Date), 517663, 1129, 353);
INSERT into traffic VALUES (1046197785, CAST(N'2021-01-12' AS Date), 517663, 2645, 409);
INSERT into traffic VALUES (1046197785, CAST(N'2021-01-13' AS Date), 517663, 1907, 464);
INSERT into traffic VALUES (1046197785, CAST(N'2021-01-14' AS Date), 517663, 1086, 502);
INSERT into traffic VALUES (1046197785, CAST(N'2021-01-15' AS Date), 517663, 2887, 351);
INSERT into traffic VALUES (1046197785, CAST(N'2021-01-16' AS Date), 517663, 2651, 374);
INSERT into traffic VALUES (1046197785, CAST(N'2021-01-17' AS Date), 517663, 1237, 505);
INSERT into traffic VALUES (1046197785, CAST(N'2021-01-18' AS Date), 517663, 1486, 455);
INSERT into traffic VALUES (1046197785, CAST(N'2021-01-19' AS Date), 517663, 2602, 427);
INSERT into traffic VALUES (1046197785, CAST(N'2021-01-20' AS Date), 517663, 1745, 539);
INSERT into traffic VALUES (1046197785, CAST(N'2021-01-21' AS Date), 517663, 1679, 350);
INSERT into traffic VALUES (1046197785, CAST(N'2021-01-22' AS Date), 517663, 1178, 328);
INSERT into traffic VALUES (1046197785, CAST(N'2021-01-23' AS Date), 517663, 2249, 221);
INSERT into traffic VALUES (1046197785, CAST(N'2021-01-24' AS Date), 517663, 1482, 556);
INSERT into traffic VALUES (1046197785, CAST(N'2021-01-25' AS Date), 517663, 1338, 344);
INSERT into traffic VALUES (1046197785, CAST(N'2021-01-26' AS Date), 517663, 1940, 428);
INSERT into traffic VALUES (1046197785, CAST(N'2021-01-27' AS Date), 517663, 1605, 379);
INSERT into traffic VALUES (1046197785, CAST(N'2021-01-28' AS Date), 517663, 1896, 313);
INSERT into traffic VALUES (1046197785, CAST(N'2021-01-29' AS Date), 517663, 1156, 544);
INSERT into traffic VALUES (1046197785, CAST(N'2021-01-30' AS Date), 517663, 2022, 322);
INSERT into traffic VALUES (1046197846, CAST(N'2021-01-01' AS Date), 517663, 1920, 216);
INSERT into traffic VALUES (1046197846, CAST(N'2021-01-02' AS Date), 517663, 1463, 557);
INSERT into traffic VALUES (1046197846, CAST(N'2021-01-03' AS Date), 517663, 2971, 406);
INSERT into traffic VALUES (1046197846, CAST(N'2021-01-04' AS Date), 517663, 2207, 502);
INSERT into traffic VALUES (1046197846, CAST(N'2021-01-05' AS Date), 517663, 1052, 389);
INSERT into traffic VALUES (1046197846, CAST(N'2021-01-06' AS Date), 517663, 1328, 266);
INSERT into traffic VALUES (1046197846, CAST(N'2021-01-07' AS Date), 517663, 2647, 331);
INSERT into traffic VALUES (1046197846, CAST(N'2021-01-08' AS Date), 517663, 1851, 490);
INSERT into traffic VALUES (1046197846, CAST(N'2021-01-09' AS Date), 517663, 2295, 367);
INSERT into traffic VALUES (1046197846, CAST(N'2021-01-10' AS Date), 517663, 1552, 579);
INSERT into traffic VALUES (1046197846, CAST(N'2021-01-11' AS Date), 517663, 1447, 533);
INSERT into traffic VALUES (1046197846, CAST(N'2021-01-12' AS Date), 517663, 1014, 513);
INSERT into traffic VALUES (1046197846, CAST(N'2021-01-13' AS Date), 517663, 2263, 545);
INSERT into traffic VALUES (1046197846, CAST(N'2021-01-14' AS Date), 517663, 2357, 268);
INSERT into traffic VALUES (1046197846, CAST(N'2021-01-15' AS Date), 517663, 2159, 563);
INSERT into traffic VALUES (1046197846, CAST(N'2021-01-16' AS Date), 517663, 2760, 579);
INSERT into traffic VALUES (1046197846, CAST(N'2021-01-17' AS Date), 517663, 1062, 226);
INSERT into traffic VALUES (1046197846, CAST(N'2021-01-18' AS Date), 517663, 1243, 389);
INSERT into traffic VALUES (1046197846, CAST(N'2021-01-19' AS Date), 517663, 2543, 562);
INSERT into traffic VALUES (1046197846, CAST(N'2021-01-20' AS Date), 517663, 2390, 380);
INSERT into traffic VALUES (1046197846, CAST(N'2021-01-21' AS Date), 517663, 2912, 403);
INSERT into traffic VALUES (1046197846, CAST(N'2021-01-22' AS Date), 517663, 1811, 271);
INSERT into traffic VALUES (1046197846, CAST(N'2021-01-23' AS Date), 517663, 1330, 525);
INSERT into traffic VALUES (1046197846, CAST(N'2021-01-24' AS Date), 517663, 2814, 362);
INSERT into traffic VALUES (1046197846, CAST(N'2021-01-25' AS Date), 517663, 1544, 216);
INSERT into traffic VALUES (1046197846, CAST(N'2021-01-26' AS Date), 517663, 2006, 456);
INSERT into traffic VALUES (1046197846, CAST(N'2021-01-27' AS Date), 517663, 1043, 297);
INSERT into traffic VALUES (1046197846, CAST(N'2021-01-28' AS Date), 517663, 2240, 585);
INSERT into traffic VALUES (1046197846, CAST(N'2021-01-29' AS Date), 517663, 2098, 205);
INSERT into traffic VALUES (1046197846, CAST(N'2021-01-30' AS Date), 517663, 1263, 335);
INSERT into traffic VALUES (1052989964, CAST(N'2021-01-01' AS Date), 521024, 1069, 276);
INSERT into traffic VALUES (1052989964, CAST(N'2021-01-02' AS Date), 521024, 1286, 318);
INSERT into traffic VALUES (1052989964, CAST(N'2021-01-03' AS Date), 521024, 1463, 247);
INSERT into traffic VALUES (1052989964, CAST(N'2021-01-04' AS Date), 521024, 2975, 300);
INSERT into traffic VALUES (1052989964, CAST(N'2021-01-05' AS Date), 521024, 2004, 384);
INSERT into traffic VALUES (1052989964, CAST(N'2021-01-06' AS Date), 521024, 1908, 380);
INSERT into traffic VALUES (1052989964, CAST(N'2021-01-07' AS Date), 521024, 1409, 207);
INSERT into traffic VALUES (1052989964, CAST(N'2021-01-08' AS Date), 521024, 1889, 268);
INSERT into traffic VALUES (1052989964, CAST(N'2021-01-09' AS Date), 521024, 1524, 346);
INSERT into traffic VALUES (1052989964, CAST(N'2021-01-10' AS Date), 521024, 2672, 243);
INSERT into traffic VALUES (1052989964, CAST(N'2021-01-11' AS Date), 521024, 2840, 261);
INSERT into traffic VALUES (1052989964, CAST(N'2021-01-12' AS Date), 521024, 2766, 368);
INSERT into traffic VALUES (1052989964, CAST(N'2021-01-13' AS Date), 521024, 2018, 314);
INSERT into traffic VALUES (1052989964, CAST(N'2021-01-14' AS Date), 521024, 1655, 319);
INSERT into traffic VALUES (1052989964, CAST(N'2021-01-15' AS Date), 521024, 1302, 316);
INSERT into traffic VALUES (1052989964, CAST(N'2021-01-16' AS Date), 521024, 2909, 304);
INSERT into traffic VALUES (1052989964, CAST(N'2021-01-17' AS Date), 521024, 2954, 353);
INSERT into traffic VALUES (1052989964, CAST(N'2021-01-18' AS Date), 521024, 1992, 242);
INSERT into traffic VALUES (1052989964, CAST(N'2021-01-19' AS Date), 521024, 1520, 346);
INSERT into traffic VALUES (1052989964, CAST(N'2021-01-20' AS Date), 521024, 1144, 335);
INSERT into traffic VALUES (1052989964, CAST(N'2021-01-21' AS Date), 521024, 1592, 241);
INSERT into traffic VALUES (1052989964, CAST(N'2021-01-22' AS Date), 521024, 2263, 261);
INSERT into traffic VALUES (1052989964, CAST(N'2021-01-23' AS Date), 521024, 2465, 299);
INSERT into traffic VALUES (1052989964, CAST(N'2021-01-24' AS Date), 521024, 1862, 250);
INSERT into traffic VALUES (1052989964, CAST(N'2021-01-25' AS Date), 521024, 1943, 339);
INSERT into traffic VALUES (1052989964, CAST(N'2021-01-26' AS Date), 521024, 2085, 362);
INSERT into traffic VALUES (1052989964, CAST(N'2021-01-27' AS Date), 521024, 1588, 398);
INSERT into traffic VALUES (1052989964, CAST(N'2021-01-28' AS Date), 521024, 1672, 398);
INSERT into traffic VALUES (1052989964, CAST(N'2021-01-29' AS Date), 521024, 1866, 359);
INSERT into traffic VALUES (1052989964, CAST(N'2021-01-30' AS Date), 521024, 1910, 247);
INSERT into traffic VALUES (1058786214, CAST(N'2021-01-01' AS Date), 523892, 1431, 462);
INSERT into traffic VALUES (1058786214, CAST(N'2021-01-02' AS Date), 523892, 2748, 238);
INSERT into traffic VALUES (1058786214, CAST(N'2021-01-03' AS Date), 523892, 1495, 456);
INSERT into traffic VALUES (1058786214, CAST(N'2021-01-04' AS Date), 523892, 1524, 453);
INSERT into traffic VALUES (1058786214, CAST(N'2021-01-05' AS Date), 523892, 2243, 538);
INSERT into traffic VALUES (1058786214, CAST(N'2021-01-06' AS Date), 523892, 1458, 510);
INSERT into traffic VALUES (1058786214, CAST(N'2021-01-07' AS Date), 523892, 2132, 325);
INSERT into traffic VALUES (1058786214, CAST(N'2021-01-08' AS Date), 523892, 2701, 350);
INSERT into traffic VALUES (1058786214, CAST(N'2021-01-09' AS Date), 523892, 1581, 418);
INSERT into traffic VALUES (1058786214, CAST(N'2021-01-10' AS Date), 523892, 2941, 558);
INSERT into traffic VALUES (1058786214, CAST(N'2021-01-11' AS Date), 523892, 1947, 415);
INSERT into traffic VALUES (1058786214, CAST(N'2021-01-12' AS Date), 523892, 2840, 227);
INSERT into traffic VALUES (1058786214, CAST(N'2021-01-13' AS Date), 523892, 1582, 435);
INSERT into traffic VALUES (1058786214, CAST(N'2021-01-14' AS Date), 523892, 1543, 218);
INSERT into traffic VALUES (1058786214, CAST(N'2021-01-15' AS Date), 523892, 1734, 503);
INSERT into traffic VALUES (1058786214, CAST(N'2021-01-16' AS Date), 523892, 1541, 209);
INSERT into traffic VALUES (1058786214, CAST(N'2021-01-17' AS Date), 523892, 2194, 390);
INSERT into traffic VALUES (1058786214, CAST(N'2021-01-18' AS Date), 523892, 2729, 468);
INSERT into traffic VALUES (1058786214, CAST(N'2021-01-19' AS Date), 523892, 1171, 547);
INSERT into traffic VALUES (1058786214, CAST(N'2021-01-20' AS Date), 523892, 2804, 253);
INSERT into traffic VALUES (1058786214, CAST(N'2021-01-21' AS Date), 523892, 1420, 431);
INSERT into traffic VALUES (1058786214, CAST(N'2021-01-22' AS Date), 523892, 1929, 481);
INSERT into traffic VALUES (1058786214, CAST(N'2021-01-23' AS Date), 523892, 2469, 419);
INSERT into traffic VALUES (1058786214, CAST(N'2021-01-24' AS Date), 523892, 2057, 408);
INSERT into traffic VALUES (1058786214, CAST(N'2021-01-25' AS Date), 523892, 1124, 226);
INSERT into traffic VALUES (1058786214, CAST(N'2021-01-26' AS Date), 523892, 1555, 452);
INSERT into traffic VALUES (1058786214, CAST(N'2021-01-27' AS Date), 523892, 1398, 518);
INSERT into traffic VALUES (1058786214, CAST(N'2021-01-28' AS Date), 523892, 2733, 308);
INSERT into traffic VALUES (1058786214, CAST(N'2021-01-29' AS Date), 523892, 2111, 323);
INSERT into traffic VALUES (1058786214, CAST(N'2021-01-30' AS Date), 523892, 1844, 383);
INSERT into traffic VALUES (1061832583, CAST(N'2021-01-01' AS Date), 525399, 1169, 300);
INSERT into traffic VALUES (1061832583, CAST(N'2021-01-02' AS Date), 525399, 1872, 366);
INSERT into traffic VALUES (1061832583, CAST(N'2021-01-03' AS Date), 525399, 2923, 359);
INSERT into traffic VALUES (1061832583, CAST(N'2021-01-04' AS Date), 525399, 1359, 341);
INSERT into traffic VALUES (1061832583, CAST(N'2021-01-05' AS Date), 525399, 2706, 211);
INSERT into traffic VALUES (1061832583, CAST(N'2021-01-06' AS Date), 525399, 2388, 352);
INSERT into traffic VALUES (1061832583, CAST(N'2021-01-07' AS Date), 525399, 1541, 320);
INSERT into traffic VALUES (1061832583, CAST(N'2021-01-08' AS Date), 525399, 2238, 312);
INSERT into traffic VALUES (1061832583, CAST(N'2021-01-09' AS Date), 525399, 1548, 306);
INSERT into traffic VALUES (1061832583, CAST(N'2021-01-10' AS Date), 525399, 2673, 210);
INSERT into traffic VALUES (1061832583, CAST(N'2021-01-11' AS Date), 525399, 1863, 337);
INSERT into traffic VALUES (1061832583, CAST(N'2021-01-12' AS Date), 525399, 1680, 335);
INSERT into traffic VALUES (1061832583, CAST(N'2021-01-13' AS Date), 525399, 2973, 399);
INSERT into traffic VALUES (1061832583, CAST(N'2021-01-14' AS Date), 525399, 1951, 230);
INSERT into traffic VALUES (1061832583, CAST(N'2021-01-15' AS Date), 525399, 1483, 364);
INSERT into traffic VALUES (1061832583, CAST(N'2021-01-16' AS Date), 525399, 2967, 298);
INSERT into traffic VALUES (1061832583, CAST(N'2021-01-17' AS Date), 525399, 1995, 228);
INSERT into traffic VALUES (1061832583, CAST(N'2021-01-18' AS Date), 525399, 2747, 356);
INSERT into traffic VALUES (1061832583, CAST(N'2021-01-19' AS Date), 525399, 1579, 382);
INSERT into traffic VALUES (1061832583, CAST(N'2021-01-20' AS Date), 525399, 1530, 399);
INSERT into traffic VALUES (1061832583, CAST(N'2021-01-21' AS Date), 525399, 1280, 254);
INSERT into traffic VALUES (1061832583, CAST(N'2021-01-22' AS Date), 525399, 1084, 397);
INSERT into traffic VALUES (1061832583, CAST(N'2021-01-23' AS Date), 525399, 1975, 299);
INSERT into traffic VALUES (1061832583, CAST(N'2021-01-24' AS Date), 525399, 2779, 327);
INSERT into traffic VALUES (1061832583, CAST(N'2021-01-25' AS Date), 525399, 1737, 275);
INSERT into traffic VALUES (1061832583, CAST(N'2021-01-26' AS Date), 525399, 1236, 254);
INSERT into traffic VALUES (1061832583, CAST(N'2021-01-27' AS Date), 525399, 1125, 367);
INSERT into traffic VALUES (1061832583, CAST(N'2021-01-28' AS Date), 525399, 2654, 385);
INSERT into traffic VALUES (1061832583, CAST(N'2021-01-29' AS Date), 525399, 1152, 392);
INSERT into traffic VALUES (1061832583, CAST(N'2021-01-30' AS Date), 525399, 1683, 222);
INSERT into traffic VALUES (1077504210, CAST(N'2021-01-01' AS Date), 533153, 1989, 260);
INSERT into traffic VALUES (1077504210, CAST(N'2021-01-02' AS Date), 533153, 2918, 258);
INSERT into traffic VALUES (1077504210, CAST(N'2021-01-03' AS Date), 533153, 2939, 349);
INSERT into traffic VALUES (1077504210, CAST(N'2021-01-04' AS Date), 533153, 1033, 338);
INSERT into traffic VALUES (1077504210, CAST(N'2021-01-05' AS Date), 533153, 2943, 351);
INSERT into traffic VALUES (1077504210, CAST(N'2021-01-06' AS Date), 533153, 2841, 360);
INSERT into traffic VALUES (1077504210, CAST(N'2021-01-07' AS Date), 533153, 2083, 280);
INSERT into traffic VALUES (1077504210, CAST(N'2021-01-08' AS Date), 533153, 2282, 353);
INSERT into traffic VALUES (1077504210, CAST(N'2021-01-09' AS Date), 533153, 1265, 310);
INSERT into traffic VALUES (1077504210, CAST(N'2021-01-10' AS Date), 533153, 2605, 367);
INSERT into traffic VALUES (1077504210, CAST(N'2021-01-11' AS Date), 533153, 2602, 206);
INSERT into traffic VALUES (1077504210, CAST(N'2021-01-12' AS Date), 533153, 2077, 204);
INSERT into traffic VALUES (1077504210, CAST(N'2021-01-13' AS Date), 533153, 1833, 240);
INSERT into traffic VALUES (1077504210, CAST(N'2021-01-14' AS Date), 533153, 2179, 269);
INSERT into traffic VALUES (1077504210, CAST(N'2021-01-15' AS Date), 533153, 2668, 247);
INSERT into traffic VALUES (1077504210, CAST(N'2021-01-16' AS Date), 533153, 2325, 377);
INSERT into traffic VALUES (1077504210, CAST(N'2021-01-17' AS Date), 533153, 1314, 270);
INSERT into traffic VALUES (1077504210, CAST(N'2021-01-18' AS Date), 533153, 2218, 219);
INSERT into traffic VALUES (1077504210, CAST(N'2021-01-19' AS Date), 533153, 1072, 370);
INSERT into traffic VALUES (1077504210, CAST(N'2021-01-20' AS Date), 533153, 1876, 316);
INSERT into traffic VALUES (1077504210, CAST(N'2021-01-21' AS Date), 533153, 2567, 214);
INSERT into traffic VALUES (1077504210, CAST(N'2021-01-22' AS Date), 533153, 2813, 364);
INSERT into traffic VALUES (1077504210, CAST(N'2021-01-23' AS Date), 533153, 1886, 362);
INSERT into traffic VALUES (1077504210, CAST(N'2021-01-24' AS Date), 533153, 2250, 330);
INSERT into traffic VALUES (1077504210, CAST(N'2021-01-25' AS Date), 533153, 1526, 230);
INSERT into traffic VALUES (1077504210, CAST(N'2021-01-26' AS Date), 533153, 2968, 318);
INSERT into traffic VALUES (1077504210, CAST(N'2021-01-27' AS Date), 533153, 2508, 236);
INSERT into traffic VALUES (1077504210, CAST(N'2021-01-28' AS Date), 533153, 2791, 295);
INSERT into traffic VALUES (1077504210, CAST(N'2021-01-29' AS Date), 533153, 2445, 323);
INSERT into traffic VALUES (1077504210, CAST(N'2021-01-30' AS Date), 533153, 2684, 293);
INSERT into traffic VALUES (1081886992, CAST(N'2021-01-01' AS Date), 535322, 2110, 285);
INSERT into traffic VALUES (1081886992, CAST(N'2021-01-02' AS Date), 535322, 2509, 235);
INSERT into traffic VALUES (1081886992, CAST(N'2021-01-03' AS Date), 535322, 1379, 231);
INSERT into traffic VALUES (1081886992, CAST(N'2021-01-04' AS Date), 535322, 2636, 388);
INSERT into traffic VALUES (1081886992, CAST(N'2021-01-05' AS Date), 535322, 2843, 272);
INSERT into traffic VALUES (1081886992, CAST(N'2021-01-06' AS Date), 535322, 2691, 273);
INSERT into traffic VALUES (1081886992, CAST(N'2021-01-07' AS Date), 535322, 1516, 201);
INSERT into traffic VALUES (1081886992, CAST(N'2021-01-08' AS Date), 535322, 2655, 255);
INSERT into traffic VALUES (1081886992, CAST(N'2021-01-09' AS Date), 535322, 2680, 333);
INSERT into traffic VALUES (1081886992, CAST(N'2021-01-10' AS Date), 535322, 2855, 374);
INSERT into traffic VALUES (1081886992, CAST(N'2021-01-11' AS Date), 535322, 2623, 248);
INSERT into traffic VALUES (1081886992, CAST(N'2021-01-12' AS Date), 535322, 1178, 379);
INSERT into traffic VALUES (1081886992, CAST(N'2021-01-13' AS Date), 535322, 1209, 382);
INSERT into traffic VALUES (1081886992, CAST(N'2021-01-14' AS Date), 535322, 2531, 349);
INSERT into traffic VALUES (1081886992, CAST(N'2021-01-15' AS Date), 535322, 2066, 387);
INSERT into traffic VALUES (1081886992, CAST(N'2021-01-16' AS Date), 535322, 1634, 285);
INSERT into traffic VALUES (1081886992, CAST(N'2021-01-17' AS Date), 535322, 2358, 295);
INSERT into traffic VALUES (1081886992, CAST(N'2021-01-18' AS Date), 535322, 2704, 386);
INSERT into traffic VALUES (1081886992, CAST(N'2021-01-19' AS Date), 535322, 1262, 298);
INSERT into traffic VALUES (1081886992, CAST(N'2021-01-20' AS Date), 535322, 1099, 298);
INSERT into traffic VALUES (1081886992, CAST(N'2021-01-21' AS Date), 535322, 1741, 290);
INSERT into traffic VALUES (1081886992, CAST(N'2021-01-22' AS Date), 535322, 2010, 225);
INSERT into traffic VALUES (1081886992, CAST(N'2021-01-23' AS Date), 535322, 2961, 236);
INSERT into traffic VALUES (1081886992, CAST(N'2021-01-24' AS Date), 535322, 1864, 242);
INSERT into traffic VALUES (1081886992, CAST(N'2021-01-25' AS Date), 535322, 1527, 236);
INSERT into traffic VALUES (1081886992, CAST(N'2021-01-26' AS Date), 535322, 2001, 255);
INSERT into traffic VALUES (1081886992, CAST(N'2021-01-27' AS Date), 535322, 1184, 255);
INSERT into traffic VALUES (1081886992, CAST(N'2021-01-28' AS Date), 535322, 2188, 368);
INSERT into traffic VALUES (1081886992, CAST(N'2021-01-29' AS Date), 535322, 1341, 234);
INSERT into traffic VALUES (1081886992, CAST(N'2021-01-30' AS Date), 535322, 1101, 217);
INSERT into traffic VALUES (1081886999, CAST(N'2021-01-01' AS Date), 535322, 2722, 203);
INSERT into traffic VALUES (1081886999, CAST(N'2021-01-02' AS Date), 535322, 2609, 371);
INSERT into traffic VALUES (1081886999, CAST(N'2021-01-03' AS Date), 535322, 2455, 334);
INSERT into traffic VALUES (1081886999, CAST(N'2021-01-04' AS Date), 535322, 2726, 288);
INSERT into traffic VALUES (1081886999, CAST(N'2021-01-05' AS Date), 535322, 2910, 299);
INSERT into traffic VALUES (1081886999, CAST(N'2021-01-06' AS Date), 535322, 1098, 363);
INSERT into traffic VALUES (1081886999, CAST(N'2021-01-07' AS Date), 535322, 1403, 213);
INSERT into traffic VALUES (1081886999, CAST(N'2021-01-08' AS Date), 535322, 2806, 334);
INSERT into traffic VALUES (1081886999, CAST(N'2021-01-09' AS Date), 535322, 2708, 246);
INSERT into traffic VALUES (1081886999, CAST(N'2021-01-10' AS Date), 535322, 1021, 269);
INSERT into traffic VALUES (1081886999, CAST(N'2021-01-11' AS Date), 535322, 2880, 274);
INSERT into traffic VALUES (1081886999, CAST(N'2021-01-12' AS Date), 535322, 1884, 209);
INSERT into traffic VALUES (1081886999, CAST(N'2021-01-13' AS Date), 535322, 2401, 306);
INSERT into traffic VALUES (1081886999, CAST(N'2021-01-14' AS Date), 535322, 2792, 319);
INSERT into traffic VALUES (1081886999, CAST(N'2021-01-15' AS Date), 535322, 1307, 388);
INSERT into traffic VALUES (1081886999, CAST(N'2021-01-16' AS Date), 535322, 1643, 320);
INSERT into traffic VALUES (1081886999, CAST(N'2021-01-17' AS Date), 535322, 1080, 317);
INSERT into traffic VALUES (1081886999, CAST(N'2021-01-18' AS Date), 535322, 2034, 353);
INSERT into traffic VALUES (1081886999, CAST(N'2021-01-19' AS Date), 535322, 2767, 276);
INSERT into traffic VALUES (1081886999, CAST(N'2021-01-20' AS Date), 535322, 1847, 354);
INSERT into traffic VALUES (1081886999, CAST(N'2021-01-21' AS Date), 535322, 1885, 234);
INSERT into traffic VALUES (1081886999, CAST(N'2021-01-22' AS Date), 535322, 2016, 299);
INSERT into traffic VALUES (1081886999, CAST(N'2021-01-23' AS Date), 535322, 1344, 300);
INSERT into traffic VALUES (1081886999, CAST(N'2021-01-24' AS Date), 535322, 1212, 268);
INSERT into traffic VALUES (1081886999, CAST(N'2021-01-25' AS Date), 535322, 1372, 317);
INSERT into traffic VALUES (1081886999, CAST(N'2021-01-26' AS Date), 535322, 1605, 372);
INSERT into traffic VALUES (1081886999, CAST(N'2021-01-27' AS Date), 535322, 2362, 225);
INSERT into traffic VALUES (1081886999, CAST(N'2021-01-28' AS Date), 535322, 2277, 340);
INSERT into traffic VALUES (1081886999, CAST(N'2021-01-29' AS Date), 535322, 2414, 399);
INSERT into traffic VALUES (1081886999, CAST(N'2021-01-30' AS Date), 535322, 2825, 269);
INSERT into traffic VALUES (1095985601, CAST(N'2021-01-01' AS Date), 542298, 1128, 351);
INSERT into traffic VALUES (1095985601, CAST(N'2021-01-02' AS Date), 542298, 1424, 217);
INSERT into traffic VALUES (1095985601, CAST(N'2021-01-03' AS Date), 542298, 2281, 286);
INSERT into traffic VALUES (1095985601, CAST(N'2021-01-04' AS Date), 542298, 1933, 256);
INSERT into traffic VALUES (1095985601, CAST(N'2021-01-05' AS Date), 542298, 1970, 342);
INSERT into traffic VALUES (1095985601, CAST(N'2021-01-06' AS Date), 542298, 1097, 308);
INSERT into traffic VALUES (1095985601, CAST(N'2021-01-07' AS Date), 542298, 2848, 352);
INSERT into traffic VALUES (1095985601, CAST(N'2021-01-08' AS Date), 542298, 2970, 308);
INSERT into traffic VALUES (1095985601, CAST(N'2021-01-09' AS Date), 542298, 1382, 248);
INSERT into traffic VALUES (1095985601, CAST(N'2021-01-10' AS Date), 542298, 1256, 310);
INSERT into traffic VALUES (1095985601, CAST(N'2021-01-11' AS Date), 542298, 2907, 290);
INSERT into traffic VALUES (1095985601, CAST(N'2021-01-12' AS Date), 542298, 2300, 224);
INSERT into traffic VALUES (1095985601, CAST(N'2021-01-13' AS Date), 542298, 1078, 218);
INSERT into traffic VALUES (1095985601, CAST(N'2021-01-14' AS Date), 542298, 1119, 351);
INSERT into traffic VALUES (1095985601, CAST(N'2021-01-15' AS Date), 542298, 1017, 259);
INSERT into traffic VALUES (1095985601, CAST(N'2021-01-16' AS Date), 542298, 2550, 215);
INSERT into traffic VALUES (1095985601, CAST(N'2021-01-17' AS Date), 542298, 1355, 329);
INSERT into traffic VALUES (1095985601, CAST(N'2021-01-18' AS Date), 542298, 1712, 297);
INSERT into traffic VALUES (1095985601, CAST(N'2021-01-19' AS Date), 542298, 1840, 297);
INSERT into traffic VALUES (1095985601, CAST(N'2021-01-20' AS Date), 542298, 2417, 231);
INSERT into traffic VALUES (1095985601, CAST(N'2021-01-21' AS Date), 542298, 1593, 295);
INSERT into traffic VALUES (1095985601, CAST(N'2021-01-22' AS Date), 542298, 2169, 202);
INSERT into traffic VALUES (1095985601, CAST(N'2021-01-23' AS Date), 542298, 1716, 368);
INSERT into traffic VALUES (1095985601, CAST(N'2021-01-24' AS Date), 542298, 2337, 346);
INSERT into traffic VALUES (1095985601, CAST(N'2021-01-25' AS Date), 542298, 2991, 366);
INSERT into traffic VALUES (1095985601, CAST(N'2021-01-26' AS Date), 542298, 2399, 245);
INSERT into traffic VALUES (1095985601, CAST(N'2021-01-27' AS Date), 542298, 1184, 378);
INSERT into traffic VALUES (1095985601, CAST(N'2021-01-28' AS Date), 542298, 2703, 278);
INSERT into traffic VALUES (1095985601, CAST(N'2021-01-29' AS Date), 542298, 2430, 329);
INSERT into traffic VALUES (1095985601, CAST(N'2021-01-30' AS Date), 542298, 1610, 325);
INSERT into traffic VALUES (1095985654, CAST(N'2021-01-01' AS Date), 542298, 1277, 234);
INSERT into traffic VALUES (1095985654, CAST(N'2021-01-02' AS Date), 542298, 2955, 397);
INSERT into traffic VALUES (1095985654, CAST(N'2021-01-03' AS Date), 542298, 2895, 283);
INSERT into traffic VALUES (1095985654, CAST(N'2021-01-04' AS Date), 542298, 2291, 273);
INSERT into traffic VALUES (1095985654, CAST(N'2021-01-05' AS Date), 542298, 1069, 319);
INSERT into traffic VALUES (1095985654, CAST(N'2021-01-06' AS Date), 542298, 2277, 279);
INSERT into traffic VALUES (1095985654, CAST(N'2021-01-07' AS Date), 542298, 1015, 218);
INSERT into traffic VALUES (1095985654, CAST(N'2021-01-08' AS Date), 542298, 2536, 228);
INSERT into traffic VALUES (1095985654, CAST(N'2021-01-09' AS Date), 542298, 2902, 317);
INSERT into traffic VALUES (1095985654, CAST(N'2021-01-10' AS Date), 542298, 1564, 360);
INSERT into traffic VALUES (1095985654, CAST(N'2021-01-11' AS Date), 542298, 1444, 356);
INSERT into traffic VALUES (1095985654, CAST(N'2021-01-12' AS Date), 542298, 2085, 333);
INSERT into traffic VALUES (1095985654, CAST(N'2021-01-13' AS Date), 542298, 1932, 342);
INSERT into traffic VALUES (1095985654, CAST(N'2021-01-14' AS Date), 542298, 2009, 259);
INSERT into traffic VALUES (1095985654, CAST(N'2021-01-15' AS Date), 542298, 2311, 317);
INSERT into traffic VALUES (1095985654, CAST(N'2021-01-16' AS Date), 542298, 2072, 240);
INSERT into traffic VALUES (1095985654, CAST(N'2021-01-17' AS Date), 542298, 2295, 363);
INSERT into traffic VALUES (1095985654, CAST(N'2021-01-18' AS Date), 542298, 2213, 367);
INSERT into traffic VALUES (1095985654, CAST(N'2021-01-19' AS Date), 542298, 1036, 329);
INSERT into traffic VALUES (1095985654, CAST(N'2021-01-20' AS Date), 542298, 2258, 311);
INSERT into traffic VALUES (1095985654, CAST(N'2021-01-21' AS Date), 542298, 2619, 343);
INSERT into traffic VALUES (1095985654, CAST(N'2021-01-22' AS Date), 542298, 1794, 281);
INSERT into traffic VALUES (1095985654, CAST(N'2021-01-23' AS Date), 542298, 1422, 342);
INSERT into traffic VALUES (1095985654, CAST(N'2021-01-24' AS Date), 542298, 1063, 208);
INSERT into traffic VALUES (1095985654, CAST(N'2021-01-25' AS Date), 542298, 1004, 283);
INSERT into traffic VALUES (1095985654, CAST(N'2021-01-26' AS Date), 542298, 2985, 288);
INSERT into traffic VALUES (1095985654, CAST(N'2021-01-27' AS Date), 542298, 1046, 268);
INSERT into traffic VALUES (1095985654, CAST(N'2021-01-28' AS Date), 542298, 1730, 254);
INSERT into traffic VALUES (1095985654, CAST(N'2021-01-29' AS Date), 542298, 2604, 250);
INSERT into traffic VALUES (1095985654, CAST(N'2021-01-30' AS Date), 542298, 1699, 290);
INSERT into traffic VALUES (1098695305, CAST(N'2021-01-01' AS Date), 543639, 2867, 303);
INSERT into traffic VALUES (1098695305, CAST(N'2021-01-02' AS Date), 543639, 2315, 202);
INSERT into traffic VALUES (1098695305, CAST(N'2021-01-03' AS Date), 543639, 1338, 701);
INSERT into traffic VALUES (1098695305, CAST(N'2021-01-04' AS Date), 543639, 2645, 578);
INSERT into traffic VALUES (1098695305, CAST(N'2021-01-05' AS Date), 543639, 2059, 208);
INSERT into traffic VALUES (1098695305, CAST(N'2021-01-06' AS Date), 543639, 1786, 533);
INSERT into traffic VALUES (1098695305, CAST(N'2021-01-07' AS Date), 543639, 1433, 718);
INSERT into traffic VALUES (1098695305, CAST(N'2021-01-08' AS Date), 543639, 1588, 450);
INSERT into traffic VALUES (1098695305, CAST(N'2021-01-09' AS Date), 543639, 1069, 771);
INSERT into traffic VALUES (1098695305, CAST(N'2021-01-10' AS Date), 543639, 1091, 577);
INSERT into traffic VALUES (1098695305, CAST(N'2021-01-11' AS Date), 543639, 2519, 248);
INSERT into traffic VALUES (1098695305, CAST(N'2021-01-12' AS Date), 543639, 1517, 748);
INSERT into traffic VALUES (1098695305, CAST(N'2021-01-13' AS Date), 543639, 1617, 418);
INSERT into traffic VALUES (1098695305, CAST(N'2021-01-14' AS Date), 543639, 1924, 282);
INSERT into traffic VALUES (1098695305, CAST(N'2021-01-15' AS Date), 543639, 2847, 481);
INSERT into traffic VALUES (1098695305, CAST(N'2021-01-16' AS Date), 543639, 1067, 787);
INSERT into traffic VALUES (1098695305, CAST(N'2021-01-17' AS Date), 543639, 1192, 701);
INSERT into traffic VALUES (1098695305, CAST(N'2021-01-18' AS Date), 543639, 1709, 714);
INSERT into traffic VALUES (1098695305, CAST(N'2021-01-19' AS Date), 543639, 1433, 581);
INSERT into traffic VALUES (1098695305, CAST(N'2021-01-20' AS Date), 543639, 2359, 600);
INSERT into traffic VALUES (1098695305, CAST(N'2021-01-21' AS Date), 543639, 1677, 304);
INSERT into traffic VALUES (1098695305, CAST(N'2021-01-22' AS Date), 543639, 2931, 214);
INSERT into traffic VALUES (1098695305, CAST(N'2021-01-23' AS Date), 543639, 2815, 203);
INSERT into traffic VALUES (1098695305, CAST(N'2021-01-24' AS Date), 543639, 2594, 713);
INSERT into traffic VALUES (1098695305, CAST(N'2021-01-25' AS Date), 543639, 2020, 407);
INSERT into traffic VALUES (1098695305, CAST(N'2021-01-26' AS Date), 543639, 1869, 543);
INSERT into traffic VALUES (1098695305, CAST(N'2021-01-27' AS Date), 543639, 1160, 361);
INSERT into traffic VALUES (1098695305, CAST(N'2021-01-28' AS Date), 543639, 2021, 316);
INSERT into traffic VALUES (1098695305, CAST(N'2021-01-29' AS Date), 543639, 2352, 591);
INSERT into traffic VALUES (1098695305, CAST(N'2021-01-30' AS Date), 543639, 2866, 782);
INSERT into traffic VALUES (1110651540, CAST(N'2021-01-01' AS Date), 549555, 1725, 296);
INSERT into traffic VALUES (1110651540, CAST(N'2021-01-02' AS Date), 549555, 2112, 312);
INSERT into traffic VALUES (1110651540, CAST(N'2021-01-03' AS Date), 549555, 2559, 243);
INSERT into traffic VALUES (1110651540, CAST(N'2021-01-04' AS Date), 549555, 2573, 466);
INSERT into traffic VALUES (1110651540, CAST(N'2021-01-05' AS Date), 549555, 1941, 544);
INSERT into traffic VALUES (1110651540, CAST(N'2021-01-06' AS Date), 549555, 1709, 520);
INSERT into traffic VALUES (1110651540, CAST(N'2021-01-07' AS Date), 549555, 1019, 489);
INSERT into traffic VALUES (1110651540, CAST(N'2021-01-08' AS Date), 549555, 1415, 203);
INSERT into traffic VALUES (1110651540, CAST(N'2021-01-09' AS Date), 549555, 2735, 307);
INSERT into traffic VALUES (1110651540, CAST(N'2021-01-10' AS Date), 549555, 1734, 553);
INSERT into traffic VALUES (1110651540, CAST(N'2021-01-11' AS Date), 549555, 1997, 228);
INSERT into traffic VALUES (1110651540, CAST(N'2021-01-12' AS Date), 549555, 2971, 496);
INSERT into traffic VALUES (1110651540, CAST(N'2021-01-13' AS Date), 549555, 1146, 498);
INSERT into traffic VALUES (1110651540, CAST(N'2021-01-14' AS Date), 549555, 2466, 328);
INSERT into traffic VALUES (1110651540, CAST(N'2021-01-15' AS Date), 549555, 2469, 210);
INSERT into traffic VALUES (1110651540, CAST(N'2021-01-16' AS Date), 549555, 1307, 536);
INSERT into traffic VALUES (1110651540, CAST(N'2021-01-17' AS Date), 549555, 1611, 319);
INSERT into traffic VALUES (1110651540, CAST(N'2021-01-18' AS Date), 549555, 2447, 410);
INSERT into traffic VALUES (1110651540, CAST(N'2021-01-19' AS Date), 549555, 2101, 370);
INSERT into traffic VALUES (1110651540, CAST(N'2021-01-20' AS Date), 549555, 1876, 397);
INSERT into traffic VALUES (1110651540, CAST(N'2021-01-21' AS Date), 549555, 2843, 571);
INSERT into traffic VALUES (1110651540, CAST(N'2021-01-22' AS Date), 549555, 2014, 548);
INSERT into traffic VALUES (1110651540, CAST(N'2021-01-23' AS Date), 549555, 2219, 456);
INSERT into traffic VALUES (1110651540, CAST(N'2021-01-24' AS Date), 549555, 2500, 356);
INSERT into traffic VALUES (1110651540, CAST(N'2021-01-25' AS Date), 549555, 2607, 223);
INSERT into traffic VALUES (1110651540, CAST(N'2021-01-26' AS Date), 549555, 2671, 476);
INSERT into traffic VALUES (1110651540, CAST(N'2021-01-27' AS Date), 549555, 1315, 467);
INSERT into traffic VALUES (1110651540, CAST(N'2021-01-28' AS Date), 549555, 1260, 496);
INSERT into traffic VALUES (1110651540, CAST(N'2021-01-29' AS Date), 549555, 2084, 574);
INSERT into traffic VALUES (1110651540, CAST(N'2021-01-30' AS Date), 549555, 2406, 241);
INSERT into traffic VALUES (1113366432, CAST(N'2021-01-01' AS Date), 550898, 1495, 597);
INSERT into traffic VALUES (1113366432, CAST(N'2021-01-02' AS Date), 550898, 1688, 465);
INSERT into traffic VALUES (1113366432, CAST(N'2021-01-03' AS Date), 550898, 2564, 359);
INSERT into traffic VALUES (1113366432, CAST(N'2021-01-04' AS Date), 550898, 1106, 426);
INSERT into traffic VALUES (1113366432, CAST(N'2021-01-05' AS Date), 550898, 1107, 597);
INSERT into traffic VALUES (1113366432, CAST(N'2021-01-06' AS Date), 550898, 1813, 746);
INSERT into traffic VALUES (1113366432, CAST(N'2021-01-07' AS Date), 550898, 2943, 386);
INSERT into traffic VALUES (1113366432, CAST(N'2021-01-08' AS Date), 550898, 1096, 773);
INSERT into traffic VALUES (1113366432, CAST(N'2021-01-09' AS Date), 550898, 1734, 656);
INSERT into traffic VALUES (1113366432, CAST(N'2021-01-10' AS Date), 550898, 1768, 592);
INSERT into traffic VALUES (1113366432, CAST(N'2021-01-11' AS Date), 550898, 2830, 526);
INSERT into traffic VALUES (1113366432, CAST(N'2021-01-12' AS Date), 550898, 2520, 580);
INSERT into traffic VALUES (1113366432, CAST(N'2021-01-13' AS Date), 550898, 1460, 587);
INSERT into traffic VALUES (1113366432, CAST(N'2021-01-14' AS Date), 550898, 1146, 505);
INSERT into traffic VALUES (1113366432, CAST(N'2021-01-15' AS Date), 550898, 2736, 767);
INSERT into traffic VALUES (1113366432, CAST(N'2021-01-16' AS Date), 550898, 1407, 670);
INSERT into traffic VALUES (1113366432, CAST(N'2021-01-17' AS Date), 550898, 2610, 390);
INSERT into traffic VALUES (1113366432, CAST(N'2021-01-18' AS Date), 550898, 1212, 206);
INSERT into traffic VALUES (1113366432, CAST(N'2021-01-19' AS Date), 550898, 1913, 474);
INSERT into traffic VALUES (1113366432, CAST(N'2021-01-20' AS Date), 550898, 2756, 586);
INSERT into traffic VALUES (1113366432, CAST(N'2021-01-21' AS Date), 550898, 1839, 600);
INSERT into traffic VALUES (1113366432, CAST(N'2021-01-22' AS Date), 550898, 1874, 291);
INSERT into traffic VALUES (1113366432, CAST(N'2021-01-23' AS Date), 550898, 1934, 580);
INSERT into traffic VALUES (1113366432, CAST(N'2021-01-24' AS Date), 550898, 2082, 704);
INSERT into traffic VALUES (1113366432, CAST(N'2021-01-25' AS Date), 550898, 2660, 357);
INSERT into traffic VALUES (1113366432, CAST(N'2021-01-26' AS Date), 550898, 2542, 651);
INSERT into traffic VALUES (1113366432, CAST(N'2021-01-27' AS Date), 550898, 1913, 278);
INSERT into traffic VALUES (1113366432, CAST(N'2021-01-28' AS Date), 550898, 2292, 648);
INSERT into traffic VALUES (1113366432, CAST(N'2021-01-29' AS Date), 550898, 2192, 646);
INSERT into traffic VALUES (1113366432, CAST(N'2021-01-30' AS Date), 550898, 2760, 345);
INSERT into traffic VALUES (1113366467, CAST(N'2021-01-01' AS Date), 550898, 1858, 497);
INSERT into traffic VALUES (1113366467, CAST(N'2021-01-02' AS Date), 550898, 2188, 566);
INSERT into traffic VALUES (1113366467, CAST(N'2021-01-03' AS Date), 550898, 2720, 208);
INSERT into traffic VALUES (1113366467, CAST(N'2021-01-04' AS Date), 550898, 1042, 257);
INSERT into traffic VALUES (1113366467, CAST(N'2021-01-05' AS Date), 550898, 2237, 429);
INSERT into traffic VALUES (1113366467, CAST(N'2021-01-06' AS Date), 550898, 2533, 206);
INSERT into traffic VALUES (1113366467, CAST(N'2021-01-07' AS Date), 550898, 2381, 563);
INSERT into traffic VALUES (1113366467, CAST(N'2021-01-08' AS Date), 550898, 2928, 319);
INSERT into traffic VALUES (1113366467, CAST(N'2021-01-09' AS Date), 550898, 2803, 488);
INSERT into traffic VALUES (1113366467, CAST(N'2021-01-10' AS Date), 550898, 2028, 438);
INSERT into traffic VALUES (1113366467, CAST(N'2021-01-11' AS Date), 550898, 2403, 599);
INSERT into traffic VALUES (1113366467, CAST(N'2021-01-12' AS Date), 550898, 1611, 259);
INSERT into traffic VALUES (1113366467, CAST(N'2021-01-13' AS Date), 550898, 2958, 669);
INSERT into traffic VALUES (1113366467, CAST(N'2021-01-14' AS Date), 550898, 1609, 344);
INSERT into traffic VALUES (1113366467, CAST(N'2021-01-15' AS Date), 550898, 1387, 357);
INSERT into traffic VALUES (1113366467, CAST(N'2021-01-16' AS Date), 550898, 1551, 596);
INSERT into traffic VALUES (1113366467, CAST(N'2021-01-17' AS Date), 550898, 1694, 372);
INSERT into traffic VALUES (1113366467, CAST(N'2021-01-18' AS Date), 550898, 2552, 201);
INSERT into traffic VALUES (1113366467, CAST(N'2021-01-19' AS Date), 550898, 2392, 210);
INSERT into traffic VALUES (1113366467, CAST(N'2021-01-20' AS Date), 550898, 2158, 504);
INSERT into traffic VALUES (1113366467, CAST(N'2021-01-21' AS Date), 550898, 2660, 325);
INSERT into traffic VALUES (1113366467, CAST(N'2021-01-22' AS Date), 550898, 2642, 207);
INSERT into traffic VALUES (1113366467, CAST(N'2021-01-23' AS Date), 550898, 1002, 305);
INSERT into traffic VALUES (1113366467, CAST(N'2021-01-24' AS Date), 550898, 1854, 782);
INSERT into traffic VALUES (1113366467, CAST(N'2021-01-25' AS Date), 550898, 2400, 335);
INSERT into traffic VALUES (1113366467, CAST(N'2021-01-26' AS Date), 550898, 2554, 438);
INSERT into traffic VALUES (1113366467, CAST(N'2021-01-27' AS Date), 550898, 1677, 697);
INSERT into traffic VALUES (1113366467, CAST(N'2021-01-28' AS Date), 550898, 1456, 692);
INSERT into traffic VALUES (1113366467, CAST(N'2021-01-29' AS Date), 550898, 1526, 575);
INSERT into traffic VALUES (1113366467, CAST(N'2021-01-30' AS Date), 550898, 1373, 314);
INSERT into traffic VALUES (1122103191, CAST(N'2021-01-01' AS Date), 555221, 2609, 369);
INSERT into traffic VALUES (1122103191, CAST(N'2021-01-02' AS Date), 555221, 2839, 348);
INSERT into traffic VALUES (1122103191, CAST(N'2021-01-03' AS Date), 555221, 2593, 292);
INSERT into traffic VALUES (1122103191, CAST(N'2021-01-04' AS Date), 555221, 1576, 362);
INSERT into traffic VALUES (1122103191, CAST(N'2021-01-05' AS Date), 555221, 1415, 330);
INSERT into traffic VALUES (1122103191, CAST(N'2021-01-06' AS Date), 555221, 1106, 393);
INSERT into traffic VALUES (1122103191, CAST(N'2021-01-07' AS Date), 555221, 2465, 203);
INSERT into traffic VALUES (1122103191, CAST(N'2021-01-08' AS Date), 555221, 2212, 207);
INSERT into traffic VALUES (1122103191, CAST(N'2021-01-09' AS Date), 555221, 2803, 371);
INSERT into traffic VALUES (1122103191, CAST(N'2021-01-10' AS Date), 555221, 1283, 218);
INSERT into traffic VALUES (1122103191, CAST(N'2021-01-11' AS Date), 555221, 2568, 263);
INSERT into traffic VALUES (1122103191, CAST(N'2021-01-12' AS Date), 555221, 2607, 244);
INSERT into traffic VALUES (1122103191, CAST(N'2021-01-13' AS Date), 555221, 2075, 297);
INSERT into traffic VALUES (1122103191, CAST(N'2021-01-14' AS Date), 555221, 1679, 288);
INSERT into traffic VALUES (1122103191, CAST(N'2021-01-15' AS Date), 555221, 1562, 245);
INSERT into traffic VALUES (1122103191, CAST(N'2021-01-16' AS Date), 555221, 2275, 206);
INSERT into traffic VALUES (1122103191, CAST(N'2021-01-17' AS Date), 555221, 1298, 255);
INSERT into traffic VALUES (1122103191, CAST(N'2021-01-18' AS Date), 555221, 2532, 215);
INSERT into traffic VALUES (1122103191, CAST(N'2021-01-19' AS Date), 555221, 1739, 327);
INSERT into traffic VALUES (1122103191, CAST(N'2021-01-20' AS Date), 555221, 2139, 352);
INSERT into traffic VALUES (1122103191, CAST(N'2021-01-21' AS Date), 555221, 1259, 280);
INSERT into traffic VALUES (1122103191, CAST(N'2021-01-22' AS Date), 555221, 1454, 221);
INSERT into traffic VALUES (1122103191, CAST(N'2021-01-23' AS Date), 555221, 1629, 200);
INSERT into traffic VALUES (1122103191, CAST(N'2021-01-24' AS Date), 555221, 2433, 286);
INSERT into traffic VALUES (1122103191, CAST(N'2021-01-25' AS Date), 555221, 2147, 260);
INSERT into traffic VALUES (1122103191, CAST(N'2021-01-26' AS Date), 555221, 1190, 261);
INSERT into traffic VALUES (1122103191, CAST(N'2021-01-27' AS Date), 555221, 1591, 216);
INSERT into traffic VALUES (1122103191, CAST(N'2021-01-28' AS Date), 555221, 1341, 207);
INSERT into traffic VALUES (1122103191, CAST(N'2021-01-29' AS Date), 555221, 1905, 304);
INSERT into traffic VALUES (1122103191, CAST(N'2021-01-30' AS Date), 555221, 2183, 249);
INSERT into traffic VALUES (1131584185, CAST(N'2021-01-01' AS Date), 559913, 2563, 569);
INSERT into traffic VALUES (1131584185, CAST(N'2021-01-02' AS Date), 559913, 1012, 355);
INSERT into traffic VALUES (1131584185, CAST(N'2021-01-03' AS Date), 559913, 1658, 586);
INSERT into traffic VALUES (1131584185, CAST(N'2021-01-04' AS Date), 559913, 2116, 431);
INSERT into traffic VALUES (1131584185, CAST(N'2021-01-05' AS Date), 559913, 2912, 442);
INSERT into traffic VALUES (1131584185, CAST(N'2021-01-06' AS Date), 559913, 1457, 380);
INSERT into traffic VALUES (1131584185, CAST(N'2021-01-07' AS Date), 559913, 2302, 691);
INSERT into traffic VALUES (1131584185, CAST(N'2021-01-08' AS Date), 559913, 2780, 757);
INSERT into traffic VALUES (1131584185, CAST(N'2021-01-09' AS Date), 559913, 2278, 667);
INSERT into traffic VALUES (1131584185, CAST(N'2021-01-10' AS Date), 559913, 1246, 599);
INSERT into traffic VALUES (1131584185, CAST(N'2021-01-11' AS Date), 559913, 1404, 610);
INSERT into traffic VALUES (1131584185, CAST(N'2021-01-12' AS Date), 559913, 1540, 242);
INSERT into traffic VALUES (1131584185, CAST(N'2021-01-13' AS Date), 559913, 2031, 415);
INSERT into traffic VALUES (1131584185, CAST(N'2021-01-14' AS Date), 559913, 2415, 367);
INSERT into traffic VALUES (1131584185, CAST(N'2021-01-15' AS Date), 559913, 1889, 704);
INSERT into traffic VALUES (1131584185, CAST(N'2021-01-16' AS Date), 559913, 1945, 578);
INSERT into traffic VALUES (1131584185, CAST(N'2021-01-17' AS Date), 559913, 2524, 225);
INSERT into traffic VALUES (1131584185, CAST(N'2021-01-18' AS Date), 559913, 1937, 712);
INSERT into traffic VALUES (1131584185, CAST(N'2021-01-19' AS Date), 559913, 1186, 589);
INSERT into traffic VALUES (1131584185, CAST(N'2021-01-20' AS Date), 559913, 2531, 772);
INSERT into traffic VALUES (1131584185, CAST(N'2021-01-21' AS Date), 559913, 2060, 732);
INSERT into traffic VALUES (1131584185, CAST(N'2021-01-22' AS Date), 559913, 2528, 613);
INSERT into traffic VALUES (1131584185, CAST(N'2021-01-23' AS Date), 559913, 2070, 388);
INSERT into traffic VALUES (1131584185, CAST(N'2021-01-24' AS Date), 559913, 1217, 486);
INSERT into traffic VALUES (1131584185, CAST(N'2021-01-25' AS Date), 559913, 2281, 380);
INSERT into traffic VALUES (1131584185, CAST(N'2021-01-26' AS Date), 559913, 2448, 227);
INSERT into traffic VALUES (1131584185, CAST(N'2021-01-27' AS Date), 559913, 1237, 510);
INSERT into traffic VALUES (1131584185, CAST(N'2021-01-28' AS Date), 559913, 1376, 537);
INSERT into traffic VALUES (1131584185, CAST(N'2021-01-29' AS Date), 559913, 1786, 517);
INSERT into traffic VALUES (1131584185, CAST(N'2021-01-30' AS Date), 559913, 2878, 676);
INSERT into traffic VALUES (1131584299, CAST(N'2021-01-01' AS Date), 559913, 2820, 368);
INSERT into traffic VALUES (1131584299, CAST(N'2021-01-02' AS Date), 559913, 1103, 202);
INSERT into traffic VALUES (1131584299, CAST(N'2021-01-03' AS Date), 559913, 2086, 555);
INSERT into traffic VALUES (1131584299, CAST(N'2021-01-04' AS Date), 559913, 2512, 784);
INSERT into traffic VALUES (1131584299, CAST(N'2021-01-05' AS Date), 559913, 2733, 735);
INSERT into traffic VALUES (1131584299, CAST(N'2021-01-06' AS Date), 559913, 2348, 415);
INSERT into traffic VALUES (1131584299, CAST(N'2021-01-07' AS Date), 559913, 1609, 764);
INSERT into traffic VALUES (1131584299, CAST(N'2021-01-08' AS Date), 559913, 1843, 737);
INSERT into traffic VALUES (1131584299, CAST(N'2021-01-09' AS Date), 559913, 2078, 692);
INSERT into traffic VALUES (1131584299, CAST(N'2021-01-10' AS Date), 559913, 2222, 323);
INSERT into traffic VALUES (1131584299, CAST(N'2021-01-11' AS Date), 559913, 1805, 596);
INSERT into traffic VALUES (1131584299, CAST(N'2021-01-12' AS Date), 559913, 1391, 490);
INSERT into traffic VALUES (1131584299, CAST(N'2021-01-13' AS Date), 559913, 1065, 591);
INSERT into traffic VALUES (1131584299, CAST(N'2021-01-14' AS Date), 559913, 1567, 286);
INSERT into traffic VALUES (1131584299, CAST(N'2021-01-15' AS Date), 559913, 2019, 516);
INSERT into traffic VALUES (1131584299, CAST(N'2021-01-16' AS Date), 559913, 1006, 300);
INSERT into traffic VALUES (1131584299, CAST(N'2021-01-17' AS Date), 559913, 2621, 468);
INSERT into traffic VALUES (1131584299, CAST(N'2021-01-18' AS Date), 559913, 1688, 435);
INSERT into traffic VALUES (1131584299, CAST(N'2021-01-19' AS Date), 559913, 1140, 526);
INSERT into traffic VALUES (1131584299, CAST(N'2021-01-20' AS Date), 559913, 2227, 694);
INSERT into traffic VALUES (1131584299, CAST(N'2021-01-21' AS Date), 559913, 1331, 443);
INSERT into traffic VALUES (1131584299, CAST(N'2021-01-22' AS Date), 559913, 1355, 504);
INSERT into traffic VALUES (1131584299, CAST(N'2021-01-23' AS Date), 559913, 2543, 527);
INSERT into traffic VALUES (1131584299, CAST(N'2021-01-24' AS Date), 559913, 2841, 509);
INSERT into traffic VALUES (1131584299, CAST(N'2021-01-25' AS Date), 559913, 1495, 598);
INSERT into traffic VALUES (1131584299, CAST(N'2021-01-26' AS Date), 559913, 2747, 211);
INSERT into traffic VALUES (1131584299, CAST(N'2021-01-27' AS Date), 559913, 1418, 546);
INSERT into traffic VALUES (1131584299, CAST(N'2021-01-28' AS Date), 559913, 2898, 697);
INSERT into traffic VALUES (1131584299, CAST(N'2021-01-29' AS Date), 559913, 1945, 261);
INSERT into traffic VALUES (1131584299, CAST(N'2021-01-30' AS Date), 559913, 1137, 351);
INSERT into traffic VALUES (1132511551, CAST(N'2021-01-01' AS Date), 560371, 1593, 302);
INSERT into traffic VALUES (1132511551, CAST(N'2021-01-02' AS Date), 560371, 1204, 215);
INSERT into traffic VALUES (1132511551, CAST(N'2021-01-03' AS Date), 560371, 2953, 295);
INSERT into traffic VALUES (1132511551, CAST(N'2021-01-04' AS Date), 560371, 1519, 216);
INSERT into traffic VALUES (1132511551, CAST(N'2021-01-05' AS Date), 560371, 2985, 333);
INSERT into traffic VALUES (1132511551, CAST(N'2021-01-06' AS Date), 560371, 2783, 293);
INSERT into traffic VALUES (1132511551, CAST(N'2021-01-07' AS Date), 560371, 2173, 233);
INSERT into traffic VALUES (1132511551, CAST(N'2021-01-08' AS Date), 560371, 1367, 239);
INSERT into traffic VALUES (1132511551, CAST(N'2021-01-09' AS Date), 560371, 1981, 303);
INSERT into traffic VALUES (1132511551, CAST(N'2021-01-10' AS Date), 560371, 2985, 211);
INSERT into traffic VALUES (1132511551, CAST(N'2021-01-11' AS Date), 560371, 1662, 393);
INSERT into traffic VALUES (1132511551, CAST(N'2021-01-12' AS Date), 560371, 1920, 215);
INSERT into traffic VALUES (1132511551, CAST(N'2021-01-13' AS Date), 560371, 2194, 262);
INSERT into traffic VALUES (1132511551, CAST(N'2021-01-14' AS Date), 560371, 2107, 287);
INSERT into traffic VALUES (1132511551, CAST(N'2021-01-15' AS Date), 560371, 1575, 208);
INSERT into traffic VALUES (1132511551, CAST(N'2021-01-16' AS Date), 560371, 2390, 249);
INSERT into traffic VALUES (1132511551, CAST(N'2021-01-17' AS Date), 560371, 2036, 275);
INSERT into traffic VALUES (1132511551, CAST(N'2021-01-18' AS Date), 560371, 2634, 207);
INSERT into traffic VALUES (1132511551, CAST(N'2021-01-19' AS Date), 560371, 1726, 394);
INSERT into traffic VALUES (1132511551, CAST(N'2021-01-20' AS Date), 560371, 2538, 306);
INSERT into traffic VALUES (1132511551, CAST(N'2021-01-21' AS Date), 560371, 2588, 324);
INSERT into traffic VALUES (1132511551, CAST(N'2021-01-22' AS Date), 560371, 1898, 380);
INSERT into traffic VALUES (1132511551, CAST(N'2021-01-23' AS Date), 560371, 1944, 270);
INSERT into traffic VALUES (1132511551, CAST(N'2021-01-24' AS Date), 560371, 1280, 380);
INSERT into traffic VALUES (1132511551, CAST(N'2021-01-25' AS Date), 560371, 1690, 247);
INSERT into traffic VALUES (1132511551, CAST(N'2021-01-26' AS Date), 560371, 2554, 268);
INSERT into traffic VALUES (1132511551, CAST(N'2021-01-27' AS Date), 560371, 2197, 228);
INSERT into traffic VALUES (1132511551, CAST(N'2021-01-28' AS Date), 560371, 1379, 212);
INSERT into traffic VALUES (1132511551, CAST(N'2021-01-29' AS Date), 560371, 2669, 305);
INSERT into traffic VALUES (1132511551, CAST(N'2021-01-30' AS Date), 560371, 1424, 280);
INSERT into traffic VALUES (1134707844, CAST(N'2021-01-01' AS Date), 561458, 1019, 551);
INSERT into traffic VALUES (1134707844, CAST(N'2021-01-02' AS Date), 561458, 1081, 634);
INSERT into traffic VALUES (1134707844, CAST(N'2021-01-03' AS Date), 561458, 1204, 688);
INSERT into traffic VALUES (1134707844, CAST(N'2021-01-04' AS Date), 561458, 2530, 331);
INSERT into traffic VALUES (1134707844, CAST(N'2021-01-05' AS Date), 561458, 2191, 566);
INSERT into traffic VALUES (1134707844, CAST(N'2021-01-06' AS Date), 561458, 1241, 661);
INSERT into traffic VALUES (1134707844, CAST(N'2021-01-07' AS Date), 561458, 2821, 349);
INSERT into traffic VALUES (1134707844, CAST(N'2021-01-08' AS Date), 561458, 1943, 543);
INSERT into traffic VALUES (1134707844, CAST(N'2021-01-09' AS Date), 561458, 1914, 729);
INSERT into traffic VALUES (1134707844, CAST(N'2021-01-10' AS Date), 561458, 2278, 584);
INSERT into traffic VALUES (1134707844, CAST(N'2021-01-11' AS Date), 561458, 2388, 828);
INSERT into traffic VALUES (1134707844, CAST(N'2021-01-12' AS Date), 561458, 1146, 333);
INSERT into traffic VALUES (1134707844, CAST(N'2021-01-13' AS Date), 561458, 2436, 876);
INSERT into traffic VALUES (1134707844, CAST(N'2021-01-14' AS Date), 561458, 2173, 634);
INSERT into traffic VALUES (1134707844, CAST(N'2021-01-15' AS Date), 561458, 2763, 560);
INSERT into traffic VALUES (1134707844, CAST(N'2021-01-16' AS Date), 561458, 2892, 895);
INSERT into traffic VALUES (1134707844, CAST(N'2021-01-17' AS Date), 561458, 2903, 390);
INSERT into traffic VALUES (1134707844, CAST(N'2021-01-18' AS Date), 561458, 2986, 530);
INSERT into traffic VALUES (1134707844, CAST(N'2021-01-19' AS Date), 561458, 1215, 732);
INSERT into traffic VALUES (1134707844, CAST(N'2021-01-20' AS Date), 561458, 2612, 942);
INSERT into traffic VALUES (1134707844, CAST(N'2021-01-21' AS Date), 561458, 2263, 749);
INSERT into traffic VALUES (1134707844, CAST(N'2021-01-22' AS Date), 561458, 1880, 349);
INSERT into traffic VALUES (1134707844, CAST(N'2021-01-23' AS Date), 561458, 1070, 552);
INSERT into traffic VALUES (1134707844, CAST(N'2021-01-24' AS Date), 561458, 1725, 936);
INSERT into traffic VALUES (1134707844, CAST(N'2021-01-25' AS Date), 561458, 2675, 759);
INSERT into traffic VALUES (1134707844, CAST(N'2021-01-26' AS Date), 561458, 2293, 440);
INSERT into traffic VALUES (1134707844, CAST(N'2021-01-27' AS Date), 561458, 2393, 449);
INSERT into traffic VALUES (1134707844, CAST(N'2021-01-28' AS Date), 561458, 1028, 605);
INSERT into traffic VALUES (1134707844, CAST(N'2021-01-29' AS Date), 561458, 2291, 776);
INSERT into traffic VALUES (1134707844, CAST(N'2021-01-30' AS Date), 561458, 2223, 242);
INSERT into traffic VALUES (1137826657, CAST(N'2021-01-01' AS Date), 563001, 1702, 220);
INSERT into traffic VALUES (1137826657, CAST(N'2021-01-02' AS Date), 563001, 2891, 376);
INSERT into traffic VALUES (1137826657, CAST(N'2021-01-03' AS Date), 563001, 2700, 228);
INSERT into traffic VALUES (1137826657, CAST(N'2021-01-04' AS Date), 563001, 2106, 315);
INSERT into traffic VALUES (1137826657, CAST(N'2021-01-05' AS Date), 563001, 1103, 362);
INSERT into traffic VALUES (1137826657, CAST(N'2021-01-06' AS Date), 563001, 2389, 271);
INSERT into traffic VALUES (1137826657, CAST(N'2021-01-07' AS Date), 563001, 2450, 391);
INSERT into traffic VALUES (1137826657, CAST(N'2021-01-08' AS Date), 563001, 2587, 285);
INSERT into traffic VALUES (1137826657, CAST(N'2021-01-09' AS Date), 563001, 2927, 396);
INSERT into traffic VALUES (1137826657, CAST(N'2021-01-10' AS Date), 563001, 1880, 277);
INSERT into traffic VALUES (1137826657, CAST(N'2021-01-11' AS Date), 563001, 1702, 217);
INSERT into traffic VALUES (1137826657, CAST(N'2021-01-12' AS Date), 563001, 1003, 286);
INSERT into traffic VALUES (1137826657, CAST(N'2021-01-13' AS Date), 563001, 2776, 212);
INSERT into traffic VALUES (1137826657, CAST(N'2021-01-14' AS Date), 563001, 2860, 228);
INSERT into traffic VALUES (1137826657, CAST(N'2021-01-15' AS Date), 563001, 1718, 293);
INSERT into traffic VALUES (1137826657, CAST(N'2021-01-16' AS Date), 563001, 2038, 344);
INSERT into traffic VALUES (1137826657, CAST(N'2021-01-17' AS Date), 563001, 2839, 346);
INSERT into traffic VALUES (1137826657, CAST(N'2021-01-18' AS Date), 563001, 2229, 211);
INSERT into traffic VALUES (1137826657, CAST(N'2021-01-19' AS Date), 563001, 1549, 215);
INSERT into traffic VALUES (1137826657, CAST(N'2021-01-20' AS Date), 563001, 1563, 375);
INSERT into traffic VALUES (1137826657, CAST(N'2021-01-21' AS Date), 563001, 2787, 261);
INSERT into traffic VALUES (1137826657, CAST(N'2021-01-22' AS Date), 563001, 1651, 237);
INSERT into traffic VALUES (1137826657, CAST(N'2021-01-23' AS Date), 563001, 1449, 250);
INSERT into traffic VALUES (1137826657, CAST(N'2021-01-24' AS Date), 563001, 1378, 306);
INSERT into traffic VALUES (1137826657, CAST(N'2021-01-25' AS Date), 563001, 1298, 250);
INSERT into traffic VALUES (1137826657, CAST(N'2021-01-26' AS Date), 563001, 2012, 254);
INSERT into traffic VALUES (1137826657, CAST(N'2021-01-27' AS Date), 563001, 2489, 351);
INSERT into traffic VALUES (1137826657, CAST(N'2021-01-28' AS Date), 563001, 2374, 316);
INSERT into traffic VALUES (1137826657, CAST(N'2021-01-29' AS Date), 563001, 2761, 343);
INSERT into traffic VALUES (1137826657, CAST(N'2021-01-30' AS Date), 563001, 1861, 259);
INSERT into traffic VALUES (1149001062, CAST(N'2021-01-01' AS Date), 568530, 2256, 266);
INSERT into traffic VALUES (1149001062, CAST(N'2021-01-02' AS Date), 568530, 2469, 293);
INSERT into traffic VALUES (1149001062, CAST(N'2021-01-03' AS Date), 568530, 2628, 282);
INSERT into traffic VALUES (1149001062, CAST(N'2021-01-04' AS Date), 568530, 1914, 215);
INSERT into traffic VALUES (1149001062, CAST(N'2021-01-05' AS Date), 568530, 1547, 354);
INSERT into traffic VALUES (1149001062, CAST(N'2021-01-06' AS Date), 568530, 2231, 361);
INSERT into traffic VALUES (1149001062, CAST(N'2021-01-07' AS Date), 568530, 1347, 348);
INSERT into traffic VALUES (1149001062, CAST(N'2021-01-08' AS Date), 568530, 2567, 376);
INSERT into traffic VALUES (1149001062, CAST(N'2021-01-09' AS Date), 568530, 2762, 286);
INSERT into traffic VALUES (1149001062, CAST(N'2021-01-10' AS Date), 568530, 2890, 349);
INSERT into traffic VALUES (1149001062, CAST(N'2021-01-11' AS Date), 568530, 2416, 379);
INSERT into traffic VALUES (1149001062, CAST(N'2021-01-12' AS Date), 568530, 2584, 205);
INSERT into traffic VALUES (1149001062, CAST(N'2021-01-13' AS Date), 568530, 1333, 321);
INSERT into traffic VALUES (1149001062, CAST(N'2021-01-14' AS Date), 568530, 1823, 312);
INSERT into traffic VALUES (1149001062, CAST(N'2021-01-15' AS Date), 568530, 1396, 385);
INSERT into traffic VALUES (1149001062, CAST(N'2021-01-16' AS Date), 568530, 1512, 301);
INSERT into traffic VALUES (1149001062, CAST(N'2021-01-17' AS Date), 568530, 2621, 366);
INSERT into traffic VALUES (1149001062, CAST(N'2021-01-18' AS Date), 568530, 2280, 392);
INSERT into traffic VALUES (1149001062, CAST(N'2021-01-19' AS Date), 568530, 1629, 390);
INSERT into traffic VALUES (1149001062, CAST(N'2021-01-20' AS Date), 568530, 2789, 211);
INSERT into traffic VALUES (1149001062, CAST(N'2021-01-21' AS Date), 568530, 2404, 394);
INSERT into traffic VALUES (1149001062, CAST(N'2021-01-22' AS Date), 568530, 2625, 391);
INSERT into traffic VALUES (1149001062, CAST(N'2021-01-23' AS Date), 568530, 2506, 372);
INSERT into traffic VALUES (1149001062, CAST(N'2021-01-24' AS Date), 568530, 2027, 366);
INSERT into traffic VALUES (1149001062, CAST(N'2021-01-25' AS Date), 568530, 2763, 226);
INSERT into traffic VALUES (1149001062, CAST(N'2021-01-26' AS Date), 568530, 2820, 322);
INSERT into traffic VALUES (1149001062, CAST(N'2021-01-27' AS Date), 568530, 1216, 236);
INSERT into traffic VALUES (1149001062, CAST(N'2021-01-28' AS Date), 568530, 1612, 255);
INSERT into traffic VALUES (1149001062, CAST(N'2021-01-29' AS Date), 568530, 1829, 294);
INSERT into traffic VALUES (1149001062, CAST(N'2021-01-30' AS Date), 568530, 2271, 339);
INSERT into traffic VALUES (1149001128, CAST(N'2021-01-01' AS Date), 568530, 1000, 219);
INSERT into traffic VALUES (1149001128, CAST(N'2021-01-02' AS Date), 568530, 1611, 234);
INSERT into traffic VALUES (1149001128, CAST(N'2021-01-03' AS Date), 568530, 1279, 264);
INSERT into traffic VALUES (1149001128, CAST(N'2021-01-04' AS Date), 568530, 1472, 222);
INSERT into traffic VALUES (1149001128, CAST(N'2021-01-05' AS Date), 568530, 2793, 360);
INSERT into traffic VALUES (1149001128, CAST(N'2021-01-06' AS Date), 568530, 1361, 212);
INSERT into traffic VALUES (1149001128, CAST(N'2021-01-07' AS Date), 568530, 1899, 343);
INSERT into traffic VALUES (1149001128, CAST(N'2021-01-08' AS Date), 568530, 1603, 326);
INSERT into traffic VALUES (1149001128, CAST(N'2021-01-09' AS Date), 568530, 1076, 211);
INSERT into traffic VALUES (1149001128, CAST(N'2021-01-10' AS Date), 568530, 1064, 381);
INSERT into traffic VALUES (1149001128, CAST(N'2021-01-11' AS Date), 568530, 2455, 315);
INSERT into traffic VALUES (1149001128, CAST(N'2021-01-12' AS Date), 568530, 2224, 235);
INSERT into traffic VALUES (1149001128, CAST(N'2021-01-13' AS Date), 568530, 1089, 396);
INSERT into traffic VALUES (1149001128, CAST(N'2021-01-14' AS Date), 568530, 1603, 251);
INSERT into traffic VALUES (1149001128, CAST(N'2021-01-15' AS Date), 568530, 2874, 220);
INSERT into traffic VALUES (1149001128, CAST(N'2021-01-16' AS Date), 568530, 2028, 383);
INSERT into traffic VALUES (1149001128, CAST(N'2021-01-17' AS Date), 568530, 2880, 321);
INSERT into traffic VALUES (1149001128, CAST(N'2021-01-18' AS Date), 568530, 1918, 364);
INSERT into traffic VALUES (1149001128, CAST(N'2021-01-19' AS Date), 568530, 1798, 240);
INSERT into traffic VALUES (1149001128, CAST(N'2021-01-20' AS Date), 568530, 1714, 303);
INSERT into traffic VALUES (1149001128, CAST(N'2021-01-21' AS Date), 568530, 2308, 204);
INSERT into traffic VALUES (1149001128, CAST(N'2021-01-22' AS Date), 568530, 2115, 276);
INSERT into traffic VALUES (1149001128, CAST(N'2021-01-23' AS Date), 568530, 1258, 317);
INSERT into traffic VALUES (1149001128, CAST(N'2021-01-24' AS Date), 568530, 1714, 275);
INSERT into traffic VALUES (1149001128, CAST(N'2021-01-25' AS Date), 568530, 1005, 329);
INSERT into traffic VALUES (1149001128, CAST(N'2021-01-26' AS Date), 568530, 1088, 319);
INSERT into traffic VALUES (1149001128, CAST(N'2021-01-27' AS Date), 568530, 1058, 286);
INSERT into traffic VALUES (1149001128, CAST(N'2021-01-28' AS Date), 568530, 2534, 246);
INSERT into traffic VALUES (1149001128, CAST(N'2021-01-29' AS Date), 568530, 2590, 234);
INSERT into traffic VALUES (1149001128, CAST(N'2021-01-30' AS Date), 568530, 2786, 226);
INSERT into traffic VALUES (1158161672, CAST(N'2021-01-01' AS Date), 573063, 1610, 664);
INSERT into traffic VALUES (1158161672, CAST(N'2021-01-02' AS Date), 573063, 1222, 256);
INSERT into traffic VALUES (1158161672, CAST(N'2021-01-03' AS Date), 573063, 1580, 891);
INSERT into traffic VALUES (1158161672, CAST(N'2021-01-04' AS Date), 573063, 2677, 671);
INSERT into traffic VALUES (1158161672, CAST(N'2021-01-05' AS Date), 573063, 1187, 254);
INSERT into traffic VALUES (1158161672, CAST(N'2021-01-06' AS Date), 573063, 2714, 549);
INSERT into traffic VALUES (1158161672, CAST(N'2021-01-07' AS Date), 573063, 2807, 541);
INSERT into traffic VALUES (1158161672, CAST(N'2021-01-08' AS Date), 573063, 1352, 610);
INSERT into traffic VALUES (1158161672, CAST(N'2021-01-09' AS Date), 573063, 1591, 225);
INSERT into traffic VALUES (1158161672, CAST(N'2021-01-10' AS Date), 573063, 1500, 727);
INSERT into traffic VALUES (1158161672, CAST(N'2021-01-11' AS Date), 573063, 1095, 311);
INSERT into traffic VALUES (1158161672, CAST(N'2021-01-12' AS Date), 573063, 2403, 515);
INSERT into traffic VALUES (1158161672, CAST(N'2021-01-13' AS Date), 573063, 2429, 894);
INSERT into traffic VALUES (1158161672, CAST(N'2021-01-14' AS Date), 573063, 2084, 244);
INSERT into traffic VALUES (1158161672, CAST(N'2021-01-15' AS Date), 573063, 1141, 916);
INSERT into traffic VALUES (1158161672, CAST(N'2021-01-16' AS Date), 573063, 1206, 777);
INSERT into traffic VALUES (1158161672, CAST(N'2021-01-17' AS Date), 573063, 2210, 604);
INSERT into traffic VALUES (1158161672, CAST(N'2021-01-18' AS Date), 573063, 1843, 459);
INSERT into traffic VALUES (1158161672, CAST(N'2021-01-19' AS Date), 573063, 2942, 732);
INSERT into traffic VALUES (1158161672, CAST(N'2021-01-20' AS Date), 573063, 1623, 480);
INSERT into traffic VALUES (1158161672, CAST(N'2021-01-21' AS Date), 573063, 1717, 512);
INSERT into traffic VALUES (1158161672, CAST(N'2021-01-22' AS Date), 573063, 2153, 567);
INSERT into traffic VALUES (1158161672, CAST(N'2021-01-23' AS Date), 573063, 2038, 764);
INSERT into traffic VALUES (1158161672, CAST(N'2021-01-24' AS Date), 573063, 1978, 890);
INSERT into traffic VALUES (1158161672, CAST(N'2021-01-25' AS Date), 573063, 1341, 464);
INSERT into traffic VALUES (1158161672, CAST(N'2021-01-26' AS Date), 573063, 2756, 711);
INSERT into traffic VALUES (1158161672, CAST(N'2021-01-27' AS Date), 573063, 2193, 773);
INSERT into traffic VALUES (1158161672, CAST(N'2021-01-28' AS Date), 573063, 2414, 704);
INSERT into traffic VALUES (1158161672, CAST(N'2021-01-29' AS Date), 573063, 1396, 239);
INSERT into traffic VALUES (1158161672, CAST(N'2021-01-30' AS Date), 573063, 1524, 354);
INSERT into traffic VALUES (1163144421, CAST(N'2021-01-01' AS Date), 575529, 2391, 374);
INSERT into traffic VALUES (1163144421, CAST(N'2021-01-02' AS Date), 575529, 1878, 408);
INSERT into traffic VALUES (1163144421, CAST(N'2021-01-03' AS Date), 575529, 2708, 780);
INSERT into traffic VALUES (1163144421, CAST(N'2021-01-04' AS Date), 575529, 2739, 303);
INSERT into traffic VALUES (1163144421, CAST(N'2021-01-05' AS Date), 575529, 1473, 326);
INSERT into traffic VALUES (1163144421, CAST(N'2021-01-06' AS Date), 575529, 2444, 413);
INSERT into traffic VALUES (1163144421, CAST(N'2021-01-07' AS Date), 575529, 1174, 380);
INSERT into traffic VALUES (1163144421, CAST(N'2021-01-08' AS Date), 575529, 1983, 231);
INSERT into traffic VALUES (1163144421, CAST(N'2021-01-09' AS Date), 575529, 2658, 696);
INSERT into traffic VALUES (1163144421, CAST(N'2021-01-10' AS Date), 575529, 1454, 416);
INSERT into traffic VALUES (1163144421, CAST(N'2021-01-11' AS Date), 575529, 1868, 416);
INSERT into traffic VALUES (1163144421, CAST(N'2021-01-12' AS Date), 575529, 1120, 201);
INSERT into traffic VALUES (1163144421, CAST(N'2021-01-13' AS Date), 575529, 1673, 515);
INSERT into traffic VALUES (1163144421, CAST(N'2021-01-14' AS Date), 575529, 1666, 711);
INSERT into traffic VALUES (1163144421, CAST(N'2021-01-15' AS Date), 575529, 1184, 286);
INSERT into traffic VALUES (1163144421, CAST(N'2021-01-16' AS Date), 575529, 2327, 266);
INSERT into traffic VALUES (1163144421, CAST(N'2021-01-17' AS Date), 575529, 2457, 590);
INSERT into traffic VALUES (1163144421, CAST(N'2021-01-18' AS Date), 575529, 2981, 489);
INSERT into traffic VALUES (1163144421, CAST(N'2021-01-19' AS Date), 575529, 2261, 737);
INSERT into traffic VALUES (1163144421, CAST(N'2021-01-20' AS Date), 575529, 1383, 478);
INSERT into traffic VALUES (1163144421, CAST(N'2021-01-21' AS Date), 575529, 2118, 751);
INSERT into traffic VALUES (1163144421, CAST(N'2021-01-22' AS Date), 575529, 1593, 256);
INSERT into traffic VALUES (1163144421, CAST(N'2021-01-23' AS Date), 575529, 2799, 529);
INSERT into traffic VALUES (1163144421, CAST(N'2021-01-24' AS Date), 575529, 2543, 370);
INSERT into traffic VALUES (1163144421, CAST(N'2021-01-25' AS Date), 575529, 2592, 391);
INSERT into traffic VALUES (1163144421, CAST(N'2021-01-26' AS Date), 575529, 1284, 487);
INSERT into traffic VALUES (1163144421, CAST(N'2021-01-27' AS Date), 575529, 1087, 513);
INSERT into traffic VALUES (1163144421, CAST(N'2021-01-28' AS Date), 575529, 1813, 528);
INSERT into traffic VALUES (1163144421, CAST(N'2021-01-29' AS Date), 575529, 2067, 206);
INSERT into traffic VALUES (1163144421, CAST(N'2021-01-30' AS Date), 575529, 1971, 678);
INSERT into traffic VALUES (1176472462, CAST(N'2021-01-01' AS Date), 582123, 1641, 484);
INSERT into traffic VALUES (1176472462, CAST(N'2021-01-02' AS Date), 582123, 1565, 287);
INSERT into traffic VALUES (1176472462, CAST(N'2021-01-03' AS Date), 582123, 1983, 665);
INSERT into traffic VALUES (1176472462, CAST(N'2021-01-04' AS Date), 582123, 2231, 663);
INSERT into traffic VALUES (1176472462, CAST(N'2021-01-05' AS Date), 582123, 1257, 845);
INSERT into traffic VALUES (1176472462, CAST(N'2021-01-06' AS Date), 582123, 2751, 708);
INSERT into traffic VALUES (1176472462, CAST(N'2021-01-07' AS Date), 582123, 1274, 580);
INSERT into traffic VALUES (1176472462, CAST(N'2021-01-08' AS Date), 582123, 2278, 634);
INSERT into traffic VALUES (1176472462, CAST(N'2021-01-09' AS Date), 582123, 1411, 304);
INSERT into traffic VALUES (1176472462, CAST(N'2021-01-10' AS Date), 582123, 1944, 620);
INSERT into traffic VALUES (1176472462, CAST(N'2021-01-11' AS Date), 582123, 2358, 834);
INSERT into traffic VALUES (1176472462, CAST(N'2021-01-12' AS Date), 582123, 2987, 786);
INSERT into traffic VALUES (1176472462, CAST(N'2021-01-13' AS Date), 582123, 2063, 601);
INSERT into traffic VALUES (1176472462, CAST(N'2021-01-14' AS Date), 582123, 2911, 350);
INSERT into traffic VALUES (1176472462, CAST(N'2021-01-15' AS Date), 582123, 2206, 630);
INSERT into traffic VALUES (1176472462, CAST(N'2021-01-16' AS Date), 582123, 2713, 617);
INSERT into traffic VALUES (1176472462, CAST(N'2021-01-17' AS Date), 582123, 1025, 552);
INSERT into traffic VALUES (1176472462, CAST(N'2021-01-18' AS Date), 582123, 2757, 701);
INSERT into traffic VALUES (1176472462, CAST(N'2021-01-19' AS Date), 582123, 1671, 484);
INSERT into traffic VALUES (1176472462, CAST(N'2021-01-20' AS Date), 582123, 1565, 474);
INSERT into traffic VALUES (1176472462, CAST(N'2021-01-21' AS Date), 582123, 1754, 925);
INSERT into traffic VALUES (1176472462, CAST(N'2021-01-22' AS Date), 582123, 2679, 530);
INSERT into traffic VALUES (1176472462, CAST(N'2021-01-23' AS Date), 582123, 1160, 410);
INSERT into traffic VALUES (1176472462, CAST(N'2021-01-24' AS Date), 582123, 1151, 682);
INSERT into traffic VALUES (1176472462, CAST(N'2021-01-25' AS Date), 582123, 1154, 622);
INSERT into traffic VALUES (1176472462, CAST(N'2021-01-26' AS Date), 582123, 1437, 696);
INSERT into traffic VALUES (1176472462, CAST(N'2021-01-27' AS Date), 582123, 2645, 517);
INSERT into traffic VALUES (1176472462, CAST(N'2021-01-28' AS Date), 582123, 1747, 835);
INSERT into traffic VALUES (1176472462, CAST(N'2021-01-29' AS Date), 582123, 1404, 835);
INSERT into traffic VALUES (1176472462, CAST(N'2021-01-30' AS Date), 582123, 2621, 505);
INSERT into traffic VALUES (1176472493, CAST(N'2021-01-01' AS Date), 582123, 2998, 245);
INSERT into traffic VALUES (1176472493, CAST(N'2021-01-02' AS Date), 582123, 2242, 696);
INSERT into traffic VALUES (1176472493, CAST(N'2021-01-03' AS Date), 582123, 2580, 375);
INSERT into traffic VALUES (1176472493, CAST(N'2021-01-04' AS Date), 582123, 1380, 936);
INSERT into traffic VALUES (1176472493, CAST(N'2021-01-05' AS Date), 582123, 2556, 217);
INSERT into traffic VALUES (1176472493, CAST(N'2021-01-06' AS Date), 582123, 2780, 702);
INSERT into traffic VALUES (1176472493, CAST(N'2021-01-07' AS Date), 582123, 2370, 403);
INSERT into traffic VALUES (1176472493, CAST(N'2021-01-08' AS Date), 582123, 1075, 603);
INSERT into traffic VALUES (1176472493, CAST(N'2021-01-09' AS Date), 582123, 1317, 765);
INSERT into traffic VALUES (1176472493, CAST(N'2021-01-10' AS Date), 582123, 2183, 713);
INSERT into traffic VALUES (1176472493, CAST(N'2021-01-11' AS Date), 582123, 1528, 214);
INSERT into traffic VALUES (1176472493, CAST(N'2021-01-12' AS Date), 582123, 1063, 836);
INSERT into traffic VALUES (1176472493, CAST(N'2021-01-13' AS Date), 582123, 2524, 498);
INSERT into traffic VALUES (1176472493, CAST(N'2021-01-14' AS Date), 582123, 2856, 359);
INSERT into traffic VALUES (1176472493, CAST(N'2021-01-15' AS Date), 582123, 2744, 805);
INSERT into traffic VALUES (1176472493, CAST(N'2021-01-16' AS Date), 582123, 2384, 348);
INSERT into traffic VALUES (1176472493, CAST(N'2021-01-17' AS Date), 582123, 1815, 843);
INSERT into traffic VALUES (1176472493, CAST(N'2021-01-18' AS Date), 582123, 2011, 651);
INSERT into traffic VALUES (1176472493, CAST(N'2021-01-19' AS Date), 582123, 1341, 595);
INSERT into traffic VALUES (1176472493, CAST(N'2021-01-20' AS Date), 582123, 2683, 815);
INSERT into traffic VALUES (1176472493, CAST(N'2021-01-21' AS Date), 582123, 1001, 414);
INSERT into traffic VALUES (1176472493, CAST(N'2021-01-22' AS Date), 582123, 2780, 257);
INSERT into traffic VALUES (1176472493, CAST(N'2021-01-23' AS Date), 582123, 2227, 879);
INSERT into traffic VALUES (1176472493, CAST(N'2021-01-24' AS Date), 582123, 1774, 329);
INSERT into traffic VALUES (1176472493, CAST(N'2021-01-25' AS Date), 582123, 1205, 341);
INSERT into traffic VALUES (1176472493, CAST(N'2021-01-26' AS Date), 582123, 2468, 231);
INSERT into traffic VALUES (1176472493, CAST(N'2021-01-27' AS Date), 582123, 2593, 375);
INSERT into traffic VALUES (1176472493, CAST(N'2021-01-28' AS Date), 582123, 2160, 704);
INSERT into traffic VALUES (1176472493, CAST(N'2021-01-29' AS Date), 582123, 2102, 400);
INSERT into traffic VALUES (1176472493, CAST(N'2021-01-30' AS Date), 582123, 1000, 625);
INSERT into traffic VALUES (1176472519, CAST(N'2021-01-01' AS Date), 582123, 2803, 818);
INSERT into traffic VALUES (1176472519, CAST(N'2021-01-02' AS Date), 582123, 2138, 329);
INSERT into traffic VALUES (1176472519, CAST(N'2021-01-03' AS Date), 582123, 2979, 932);
INSERT into traffic VALUES (1176472519, CAST(N'2021-01-04' AS Date), 582123, 2832, 329);
INSERT into traffic VALUES (1176472519, CAST(N'2021-01-05' AS Date), 582123, 2286, 331);
INSERT into traffic VALUES (1176472519, CAST(N'2021-01-06' AS Date), 582123, 1515, 627);
INSERT into traffic VALUES (1176472519, CAST(N'2021-01-07' AS Date), 582123, 1271, 459);
INSERT into traffic VALUES (1176472519, CAST(N'2021-01-08' AS Date), 582123, 2613, 259);
INSERT into traffic VALUES (1176472519, CAST(N'2021-01-09' AS Date), 582123, 1975, 750);
INSERT into traffic VALUES (1176472519, CAST(N'2021-01-10' AS Date), 582123, 1632, 311);
INSERT into traffic VALUES (1176472519, CAST(N'2021-01-11' AS Date), 582123, 1235, 832);
INSERT into traffic VALUES (1176472519, CAST(N'2021-01-12' AS Date), 582123, 1586, 440);
INSERT into traffic VALUES (1176472519, CAST(N'2021-01-13' AS Date), 582123, 1584, 870);
INSERT into traffic VALUES (1176472519, CAST(N'2021-01-14' AS Date), 582123, 1028, 582);
INSERT into traffic VALUES (1176472519, CAST(N'2021-01-15' AS Date), 582123, 1814, 510);
INSERT into traffic VALUES (1176472519, CAST(N'2021-01-16' AS Date), 582123, 2509, 718);
INSERT into traffic VALUES (1176472519, CAST(N'2021-01-17' AS Date), 582123, 2318, 667);
INSERT into traffic VALUES (1176472519, CAST(N'2021-01-18' AS Date), 582123, 2828, 697);
INSERT into traffic VALUES (1176472519, CAST(N'2021-01-19' AS Date), 582123, 2339, 451);
INSERT into traffic VALUES (1176472519, CAST(N'2021-01-20' AS Date), 582123, 2543, 593);
INSERT into traffic VALUES (1176472519, CAST(N'2021-01-21' AS Date), 582123, 2370, 544);
INSERT into traffic VALUES (1176472519, CAST(N'2021-01-22' AS Date), 582123, 2263, 357);
INSERT into traffic VALUES (1176472519, CAST(N'2021-01-23' AS Date), 582123, 1905, 298);
INSERT into traffic VALUES (1176472519, CAST(N'2021-01-24' AS Date), 582123, 2972, 650);
INSERT into traffic VALUES (1176472519, CAST(N'2021-01-25' AS Date), 582123, 2185, 565);
INSERT into traffic VALUES (1176472519, CAST(N'2021-01-26' AS Date), 582123, 2428, 948);
INSERT into traffic VALUES (1176472519, CAST(N'2021-01-27' AS Date), 582123, 2909, 384);
INSERT into traffic VALUES (1176472519, CAST(N'2021-01-28' AS Date), 582123, 1015, 888);
INSERT into traffic VALUES (1176472519, CAST(N'2021-01-29' AS Date), 582123, 2159, 547);
INSERT into traffic VALUES (1176472519, CAST(N'2021-01-30' AS Date), 582123, 2636, 316);
INSERT into traffic VALUES (1176472569, CAST(N'2021-01-01' AS Date), 582123, 2892, 797);
INSERT into traffic VALUES (1176472569, CAST(N'2021-01-02' AS Date), 582123, 2928, 459);
INSERT into traffic VALUES (1176472569, CAST(N'2021-01-03' AS Date), 582123, 2273, 677);
INSERT into traffic VALUES (1176472569, CAST(N'2021-01-04' AS Date), 582123, 2558, 483);
INSERT into traffic VALUES (1176472569, CAST(N'2021-01-05' AS Date), 582123, 2452, 739);
INSERT into traffic VALUES (1176472569, CAST(N'2021-01-06' AS Date), 582123, 1768, 579);
INSERT into traffic VALUES (1176472569, CAST(N'2021-01-07' AS Date), 582123, 1532, 240);
INSERT into traffic VALUES (1176472569, CAST(N'2021-01-08' AS Date), 582123, 1493, 910);
INSERT into traffic VALUES (1176472569, CAST(N'2021-01-09' AS Date), 582123, 1884, 627);
INSERT into traffic VALUES (1176472569, CAST(N'2021-01-10' AS Date), 582123, 1710, 431);
INSERT into traffic VALUES (1176472569, CAST(N'2021-01-11' AS Date), 582123, 2479, 594);
INSERT into traffic VALUES (1176472569, CAST(N'2021-01-12' AS Date), 582123, 2172, 916);
INSERT into traffic VALUES (1176472569, CAST(N'2021-01-13' AS Date), 582123, 2051, 340);
INSERT into traffic VALUES (1176472569, CAST(N'2021-01-14' AS Date), 582123, 2558, 455);
INSERT into traffic VALUES (1176472569, CAST(N'2021-01-15' AS Date), 582123, 2916, 388);
INSERT into traffic VALUES (1176472569, CAST(N'2021-01-16' AS Date), 582123, 2142, 331);
INSERT into traffic VALUES (1176472569, CAST(N'2021-01-17' AS Date), 582123, 2188, 509);
INSERT into traffic VALUES (1176472569, CAST(N'2021-01-18' AS Date), 582123, 1635, 499);
INSERT into traffic VALUES (1176472569, CAST(N'2021-01-19' AS Date), 582123, 1739, 211);
INSERT into traffic VALUES (1176472569, CAST(N'2021-01-20' AS Date), 582123, 1840, 344);
INSERT into traffic VALUES (1176472569, CAST(N'2021-01-21' AS Date), 582123, 1455, 233);
INSERT into traffic VALUES (1176472569, CAST(N'2021-01-22' AS Date), 582123, 1066, 925);
INSERT into traffic VALUES (1176472569, CAST(N'2021-01-23' AS Date), 582123, 2517, 430);
INSERT into traffic VALUES (1176472569, CAST(N'2021-01-24' AS Date), 582123, 2072, 923);
INSERT into traffic VALUES (1176472569, CAST(N'2021-01-25' AS Date), 582123, 1011, 425);
INSERT into traffic VALUES (1176472569, CAST(N'2021-01-26' AS Date), 582123, 1188, 497);
INSERT into traffic VALUES (1176472569, CAST(N'2021-01-27' AS Date), 582123, 2028, 555);
INSERT into traffic VALUES (1176472569, CAST(N'2021-01-28' AS Date), 582123, 1816, 296);
INSERT into traffic VALUES (1176472569, CAST(N'2021-01-29' AS Date), 582123, 1112, 814);
INSERT into traffic VALUES (1176472569, CAST(N'2021-01-30' AS Date), 582123, 2525, 474);
INSERT into traffic VALUES (1176472592, CAST(N'2021-01-01' AS Date), 582123, 1925, 506);
INSERT into traffic VALUES (1176472592, CAST(N'2021-01-02' AS Date), 582123, 2314, 757);
INSERT into traffic VALUES (1176472592, CAST(N'2021-01-03' AS Date), 582123, 2648, 480);
INSERT into traffic VALUES (1176472592, CAST(N'2021-01-04' AS Date), 582123, 1727, 596);
INSERT into traffic VALUES (1176472592, CAST(N'2021-01-05' AS Date), 582123, 2044, 901);
INSERT into traffic VALUES (1176472592, CAST(N'2021-01-06' AS Date), 582123, 2624, 617);
INSERT into traffic VALUES (1176472592, CAST(N'2021-01-07' AS Date), 582123, 1358, 344);
INSERT into traffic VALUES (1176472592, CAST(N'2021-01-08' AS Date), 582123, 1975, 249);
INSERT into traffic VALUES (1176472592, CAST(N'2021-01-09' AS Date), 582123, 2206, 332);
INSERT into traffic VALUES (1176472592, CAST(N'2021-01-10' AS Date), 582123, 1524, 814);
INSERT into traffic VALUES (1176472592, CAST(N'2021-01-11' AS Date), 582123, 2212, 657);
INSERT into traffic VALUES (1176472592, CAST(N'2021-01-12' AS Date), 582123, 1896, 710);
INSERT into traffic VALUES (1176472592, CAST(N'2021-01-13' AS Date), 582123, 1091, 375);
INSERT into traffic VALUES (1176472592, CAST(N'2021-01-14' AS Date), 582123, 2182, 551);
INSERT into traffic VALUES (1176472592, CAST(N'2021-01-15' AS Date), 582123, 1126, 457);
INSERT into traffic VALUES (1176472592, CAST(N'2021-01-16' AS Date), 582123, 1897, 633);
INSERT into traffic VALUES (1176472592, CAST(N'2021-01-17' AS Date), 582123, 2697, 818);
INSERT into traffic VALUES (1176472592, CAST(N'2021-01-18' AS Date), 582123, 2732, 704);
INSERT into traffic VALUES (1176472592, CAST(N'2021-01-19' AS Date), 582123, 1970, 451);
INSERT into traffic VALUES (1176472592, CAST(N'2021-01-20' AS Date), 582123, 1504, 678);
INSERT into traffic VALUES (1176472592, CAST(N'2021-01-21' AS Date), 582123, 2304, 620);
INSERT into traffic VALUES (1176472592, CAST(N'2021-01-22' AS Date), 582123, 1078, 694);
INSERT into traffic VALUES (1176472592, CAST(N'2021-01-23' AS Date), 582123, 1066, 470);
INSERT into traffic VALUES (1176472592, CAST(N'2021-01-24' AS Date), 582123, 2788, 488);
INSERT into traffic VALUES (1176472592, CAST(N'2021-01-25' AS Date), 582123, 1628, 641);
INSERT into traffic VALUES (1176472592, CAST(N'2021-01-26' AS Date), 582123, 2650, 888);
INSERT into traffic VALUES (1176472592, CAST(N'2021-01-27' AS Date), 582123, 2123, 933);
INSERT into traffic VALUES (1176472592, CAST(N'2021-01-28' AS Date), 582123, 1154, 525);
INSERT into traffic VALUES (1176472592, CAST(N'2021-01-29' AS Date), 582123, 2823, 237);
INSERT into traffic VALUES (1176472592, CAST(N'2021-01-30' AS Date), 582123, 2373, 294);
INSERT into traffic VALUES (1189895666, CAST(N'2021-01-01' AS Date), 588765, 1011, 406);
INSERT into traffic VALUES (1189895666, CAST(N'2021-01-02' AS Date), 588765, 2317, 546);
INSERT into traffic VALUES (1189895666, CAST(N'2021-01-03' AS Date), 588765, 1553, 513);
INSERT into traffic VALUES (1189895666, CAST(N'2021-01-04' AS Date), 588765, 1492, 324);
INSERT into traffic VALUES (1189895666, CAST(N'2021-01-05' AS Date), 588765, 2527, 713);
INSERT into traffic VALUES (1189895666, CAST(N'2021-01-06' AS Date), 588765, 1552, 407);
INSERT into traffic VALUES (1189895666, CAST(N'2021-01-07' AS Date), 588765, 2994, 763);
INSERT into traffic VALUES (1189895666, CAST(N'2021-01-08' AS Date), 588765, 2911, 232);
INSERT into traffic VALUES (1189895666, CAST(N'2021-01-09' AS Date), 588765, 2179, 450);
INSERT into traffic VALUES (1189895666, CAST(N'2021-01-10' AS Date), 588765, 1330, 793);
INSERT into traffic VALUES (1189895666, CAST(N'2021-01-11' AS Date), 588765, 2831, 707);
INSERT into traffic VALUES (1189895666, CAST(N'2021-01-12' AS Date), 588765, 1416, 314);
INSERT into traffic VALUES (1189895666, CAST(N'2021-01-13' AS Date), 588765, 1259, 296);
INSERT into traffic VALUES (1189895666, CAST(N'2021-01-14' AS Date), 588765, 1157, 504);
INSERT into traffic VALUES (1189895666, CAST(N'2021-01-15' AS Date), 588765, 2278, 630);
INSERT into traffic VALUES (1189895666, CAST(N'2021-01-16' AS Date), 588765, 2964, 230);
INSERT into traffic VALUES (1189895666, CAST(N'2021-01-17' AS Date), 588765, 2372, 541);
INSERT into traffic VALUES (1189895666, CAST(N'2021-01-18' AS Date), 588765, 2347, 587);
INSERT into traffic VALUES (1189895666, CAST(N'2021-01-19' AS Date), 588765, 2518, 299);
INSERT into traffic VALUES (1189895666, CAST(N'2021-01-20' AS Date), 588765, 1835, 482);
INSERT into traffic VALUES (1189895666, CAST(N'2021-01-21' AS Date), 588765, 1746, 239);
INSERT into traffic VALUES (1189895666, CAST(N'2021-01-22' AS Date), 588765, 2856, 737);
INSERT into traffic VALUES (1189895666, CAST(N'2021-01-23' AS Date), 588765, 1354, 733);
INSERT into traffic VALUES (1189895666, CAST(N'2021-01-24' AS Date), 588765, 2341, 662);
INSERT into traffic VALUES (1189895666, CAST(N'2021-01-25' AS Date), 588765, 1957, 724);
INSERT into traffic VALUES (1189895666, CAST(N'2021-01-26' AS Date), 588765, 1839, 267);
INSERT into traffic VALUES (1189895666, CAST(N'2021-01-27' AS Date), 588765, 2883, 715);
INSERT into traffic VALUES (1189895666, CAST(N'2021-01-28' AS Date), 588765, 1945, 520);
INSERT into traffic VALUES (1189895666, CAST(N'2021-01-29' AS Date), 588765, 2208, 436);
INSERT into traffic VALUES (1189895666, CAST(N'2021-01-30' AS Date), 588765, 2593, 617);
INSERT into traffic VALUES (1196033777, CAST(N'2021-01-01' AS Date), 591802, 1640, 301);
INSERT into traffic VALUES (1196033777, CAST(N'2021-01-02' AS Date), 591802, 2895, 388);
INSERT into traffic VALUES (1196033777, CAST(N'2021-01-03' AS Date), 591802, 1577, 221);
INSERT into traffic VALUES (1196033777, CAST(N'2021-01-04' AS Date), 591802, 1040, 301);
INSERT into traffic VALUES (1196033777, CAST(N'2021-01-05' AS Date), 591802, 1087, 288);
INSERT into traffic VALUES (1196033777, CAST(N'2021-01-06' AS Date), 591802, 1521, 314);
INSERT into traffic VALUES (1196033777, CAST(N'2021-01-07' AS Date), 591802, 2509, 393);
INSERT into traffic VALUES (1196033777, CAST(N'2021-01-08' AS Date), 591802, 1331, 389);
INSERT into traffic VALUES (1196033777, CAST(N'2021-01-09' AS Date), 591802, 2944, 351);
INSERT into traffic VALUES (1196033777, CAST(N'2021-01-10' AS Date), 591802, 2105, 248);
INSERT into traffic VALUES (1196033777, CAST(N'2021-01-11' AS Date), 591802, 1008, 399);
INSERT into traffic VALUES (1196033777, CAST(N'2021-01-12' AS Date), 591802, 2678, 306);
INSERT into traffic VALUES (1196033777, CAST(N'2021-01-13' AS Date), 591802, 2789, 397);
INSERT into traffic VALUES (1196033777, CAST(N'2021-01-14' AS Date), 591802, 2528, 345);
INSERT into traffic VALUES (1196033777, CAST(N'2021-01-15' AS Date), 591802, 2631, 291);
INSERT into traffic VALUES (1196033777, CAST(N'2021-01-16' AS Date), 591802, 1121, 268);
INSERT into traffic VALUES (1196033777, CAST(N'2021-01-17' AS Date), 591802, 1308, 229);
INSERT into traffic VALUES (1196033777, CAST(N'2021-01-18' AS Date), 591802, 2260, 366);
INSERT into traffic VALUES (1196033777, CAST(N'2021-01-19' AS Date), 591802, 1318, 249);
INSERT into traffic VALUES (1196033777, CAST(N'2021-01-20' AS Date), 591802, 1826, 200);
INSERT into traffic VALUES (1196033777, CAST(N'2021-01-21' AS Date), 591802, 1778, 341);
INSERT into traffic VALUES (1196033777, CAST(N'2021-01-22' AS Date), 591802, 1217, 278);
INSERT into traffic VALUES (1196033777, CAST(N'2021-01-23' AS Date), 591802, 1855, 281);
INSERT into traffic VALUES (1196033777, CAST(N'2021-01-24' AS Date), 591802, 2204, 345);
INSERT into traffic VALUES (1196033777, CAST(N'2021-01-25' AS Date), 591802, 1047, 308);
INSERT into traffic VALUES (1196033777, CAST(N'2021-01-26' AS Date), 591802, 1892, 356);
INSERT into traffic VALUES (1196033777, CAST(N'2021-01-27' AS Date), 591802, 1767, 313);
INSERT into traffic VALUES (1196033777, CAST(N'2021-01-28' AS Date), 591802, 1213, 237);
INSERT into traffic VALUES (1196033777, CAST(N'2021-01-29' AS Date), 591802, 1282, 375);
INSERT into traffic VALUES (1196033777, CAST(N'2021-01-30' AS Date), 591802, 2825, 295);
INSERT into traffic VALUES (1211800623, CAST(N'2021-01-01' AS Date), 599604, 2805, 339);
INSERT into traffic VALUES (1211800623, CAST(N'2021-01-02' AS Date), 599604, 2891, 524);
INSERT into traffic VALUES (1211800623, CAST(N'2021-01-03' AS Date), 599604, 2730, 555);
INSERT into traffic VALUES (1211800623, CAST(N'2021-01-04' AS Date), 599604, 1722, 303);
INSERT into traffic VALUES (1211800623, CAST(N'2021-01-05' AS Date), 599604, 2348, 327);
INSERT into traffic VALUES (1211800623, CAST(N'2021-01-06' AS Date), 599604, 1042, 583);
INSERT into traffic VALUES (1211800623, CAST(N'2021-01-07' AS Date), 599604, 1666, 234);
INSERT into traffic VALUES (1211800623, CAST(N'2021-01-08' AS Date), 599604, 1115, 722);
INSERT into traffic VALUES (1211800623, CAST(N'2021-01-09' AS Date), 599604, 2541, 674);
INSERT into traffic VALUES (1211800623, CAST(N'2021-01-10' AS Date), 599604, 2301, 348);
INSERT into traffic VALUES (1211800623, CAST(N'2021-01-11' AS Date), 599604, 2518, 299);
INSERT into traffic VALUES (1211800623, CAST(N'2021-01-12' AS Date), 599604, 2839, 596);
INSERT into traffic VALUES (1211800623, CAST(N'2021-01-13' AS Date), 599604, 1492, 236);
INSERT into traffic VALUES (1211800623, CAST(N'2021-01-14' AS Date), 599604, 2580, 749);
INSERT into traffic VALUES (1211800623, CAST(N'2021-01-15' AS Date), 599604, 1410, 352);
INSERT into traffic VALUES (1211800623, CAST(N'2021-01-16' AS Date), 599604, 1087, 798);
INSERT into traffic VALUES (1211800623, CAST(N'2021-01-17' AS Date), 599604, 1311, 635);
INSERT into traffic VALUES (1211800623, CAST(N'2021-01-18' AS Date), 599604, 1357, 311);
INSERT into traffic VALUES (1211800623, CAST(N'2021-01-19' AS Date), 599604, 2220, 299);
INSERT into traffic VALUES (1211800623, CAST(N'2021-01-20' AS Date), 599604, 1726, 272);
INSERT into traffic VALUES (1211800623, CAST(N'2021-01-21' AS Date), 599604, 2615, 624);
INSERT into traffic VALUES (1211800623, CAST(N'2021-01-22' AS Date), 599604, 1735, 360);
INSERT into traffic VALUES (1211800623, CAST(N'2021-01-23' AS Date), 599604, 2240, 214);
INSERT into traffic VALUES (1211800623, CAST(N'2021-01-24' AS Date), 599604, 1191, 489);
INSERT into traffic VALUES (1211800623, CAST(N'2021-01-25' AS Date), 599604, 2550, 328);
INSERT into traffic VALUES (1211800623, CAST(N'2021-01-26' AS Date), 599604, 1285, 272);
INSERT into traffic VALUES (1211800623, CAST(N'2021-01-27' AS Date), 599604, 1813, 791);
INSERT into traffic VALUES (1211800623, CAST(N'2021-01-28' AS Date), 599604, 2136, 237);
INSERT into traffic VALUES (1211800623, CAST(N'2021-01-29' AS Date), 599604, 2665, 727);
INSERT into traffic VALUES (1211800623, CAST(N'2021-01-30' AS Date), 599604, 1163, 285);
INSERT into traffic VALUES (1218725897, CAST(N'2021-01-01' AS Date), 603031, 2668, 343);
INSERT into traffic VALUES (1218725897, CAST(N'2021-01-02' AS Date), 603031, 2408, 343);
INSERT into traffic VALUES (1218725897, CAST(N'2021-01-03' AS Date), 603031, 2460, 417);
INSERT into traffic VALUES (1218725897, CAST(N'2021-01-04' AS Date), 603031, 1776, 329);
INSERT into traffic VALUES (1218725897, CAST(N'2021-01-05' AS Date), 603031, 1987, 373);
INSERT into traffic VALUES (1218725897, CAST(N'2021-01-06' AS Date), 603031, 2803, 233);
INSERT into traffic VALUES (1218725897, CAST(N'2021-01-07' AS Date), 603031, 2977, 446);
INSERT into traffic VALUES (1218725897, CAST(N'2021-01-08' AS Date), 603031, 2381, 435);
INSERT into traffic VALUES (1218725897, CAST(N'2021-01-09' AS Date), 603031, 2318, 377);
INSERT into traffic VALUES (1218725897, CAST(N'2021-01-10' AS Date), 603031, 1966, 542);
INSERT into traffic VALUES (1218725897, CAST(N'2021-01-11' AS Date), 603031, 1328, 402);
INSERT into traffic VALUES (1218725897, CAST(N'2021-01-12' AS Date), 603031, 1999, 516);
INSERT into traffic VALUES (1218725897, CAST(N'2021-01-13' AS Date), 603031, 2506, 513);
INSERT into traffic VALUES (1218725897, CAST(N'2021-01-14' AS Date), 603031, 2592, 279);
INSERT into traffic VALUES (1218725897, CAST(N'2021-01-15' AS Date), 603031, 2579, 447);
INSERT into traffic VALUES (1218725897, CAST(N'2021-01-16' AS Date), 603031, 2548, 419);
INSERT into traffic VALUES (1218725897, CAST(N'2021-01-17' AS Date), 603031, 1631, 349);
INSERT into traffic VALUES (1218725897, CAST(N'2021-01-18' AS Date), 603031, 1179, 230);
INSERT into traffic VALUES (1218725897, CAST(N'2021-01-19' AS Date), 603031, 2973, 367);
INSERT into traffic VALUES (1218725897, CAST(N'2021-01-20' AS Date), 603031, 1131, 275);
INSERT into traffic VALUES (1218725897, CAST(N'2021-01-21' AS Date), 603031, 1000, 320);
INSERT into traffic VALUES (1218725897, CAST(N'2021-01-22' AS Date), 603031, 1919, 492);
INSERT into traffic VALUES (1218725897, CAST(N'2021-01-23' AS Date), 603031, 1249, 444);
INSERT into traffic VALUES (1218725897, CAST(N'2021-01-24' AS Date), 603031, 1479, 287);
INSERT into traffic VALUES (1218725897, CAST(N'2021-01-25' AS Date), 603031, 1437, 382);
INSERT into traffic VALUES (1218725897, CAST(N'2021-01-26' AS Date), 603031, 2318, 571);
INSERT into traffic VALUES (1218725897, CAST(N'2021-01-27' AS Date), 603031, 2049, 429);
INSERT into traffic VALUES (1218725897, CAST(N'2021-01-28' AS Date), 603031, 2450, 425);
INSERT into traffic VALUES (1218725897, CAST(N'2021-01-29' AS Date), 603031, 1565, 335);
INSERT into traffic VALUES (1218725897, CAST(N'2021-01-30' AS Date), 603031, 1412, 212);
INSERT into traffic VALUES (1222538626, CAST(N'2021-01-01' AS Date), 604917, 1914, 776);
INSERT into traffic VALUES (1222538626, CAST(N'2021-01-02' AS Date), 604917, 2382, 503);
INSERT into traffic VALUES (1222538626, CAST(N'2021-01-03' AS Date), 604917, 1200, 631);
INSERT into traffic VALUES (1222538626, CAST(N'2021-01-04' AS Date), 604917, 1491, 796);
INSERT into traffic VALUES (1222538626, CAST(N'2021-01-05' AS Date), 604917, 2820, 269);
INSERT into traffic VALUES (1222538626, CAST(N'2021-01-06' AS Date), 604917, 1798, 537);
INSERT into traffic VALUES (1222538626, CAST(N'2021-01-07' AS Date), 604917, 2767, 458);
INSERT into traffic VALUES (1222538626, CAST(N'2021-01-08' AS Date), 604917, 1284, 707);
INSERT into traffic VALUES (1222538626, CAST(N'2021-01-09' AS Date), 604917, 2186, 582);
INSERT into traffic VALUES (1222538626, CAST(N'2021-01-10' AS Date), 604917, 1012, 723);
INSERT into traffic VALUES (1222538626, CAST(N'2021-01-11' AS Date), 604917, 1198, 510);
INSERT into traffic VALUES (1222538626, CAST(N'2021-01-12' AS Date), 604917, 2704, 405);
INSERT into traffic VALUES (1222538626, CAST(N'2021-01-13' AS Date), 604917, 2901, 473);
INSERT into traffic VALUES (1222538626, CAST(N'2021-01-14' AS Date), 604917, 2794, 276);
INSERT into traffic VALUES (1222538626, CAST(N'2021-01-15' AS Date), 604917, 2048, 748);
INSERT into traffic VALUES (1222538626, CAST(N'2021-01-16' AS Date), 604917, 1775, 752);
INSERT into traffic VALUES (1222538626, CAST(N'2021-01-17' AS Date), 604917, 1344, 362);
INSERT into traffic VALUES (1222538626, CAST(N'2021-01-18' AS Date), 604917, 1064, 776);
INSERT into traffic VALUES (1222538626, CAST(N'2021-01-19' AS Date), 604917, 1381, 721);
INSERT into traffic VALUES (1222538626, CAST(N'2021-01-20' AS Date), 604917, 2167, 735);
INSERT into traffic VALUES (1222538626, CAST(N'2021-01-21' AS Date), 604917, 1414, 662);
INSERT into traffic VALUES (1222538626, CAST(N'2021-01-22' AS Date), 604917, 1105, 640);
INSERT into traffic VALUES (1222538626, CAST(N'2021-01-23' AS Date), 604917, 2999, 361);
INSERT into traffic VALUES (1222538626, CAST(N'2021-01-24' AS Date), 604917, 1658, 683);
INSERT into traffic VALUES (1222538626, CAST(N'2021-01-25' AS Date), 604917, 1512, 212);
INSERT into traffic VALUES (1222538626, CAST(N'2021-01-26' AS Date), 604917, 1437, 356);
INSERT into traffic VALUES (1222538626, CAST(N'2021-01-27' AS Date), 604917, 1697, 202);
INSERT into traffic VALUES (1222538626, CAST(N'2021-01-28' AS Date), 604917, 1508, 791);
INSERT into traffic VALUES (1222538626, CAST(N'2021-01-29' AS Date), 604917, 2856, 596);
INSERT into traffic VALUES (1222538626, CAST(N'2021-01-30' AS Date), 604917, 2598, 480);
INSERT into traffic VALUES (1244558425, CAST(N'2021-01-01' AS Date), 615813, 2388, 475);
INSERT into traffic VALUES (1244558425, CAST(N'2021-01-02' AS Date), 615813, 2631, 611);
INSERT into traffic VALUES (1244558425, CAST(N'2021-01-03' AS Date), 615813, 2165, 324);
INSERT into traffic VALUES (1244558425, CAST(N'2021-01-04' AS Date), 615813, 1902, 769);
INSERT into traffic VALUES (1244558425, CAST(N'2021-01-05' AS Date), 615813, 1459, 500);
INSERT into traffic VALUES (1244558425, CAST(N'2021-01-06' AS Date), 615813, 1683, 399);
INSERT into traffic VALUES (1244558425, CAST(N'2021-01-07' AS Date), 615813, 1981, 651);
INSERT into traffic VALUES (1244558425, CAST(N'2021-01-08' AS Date), 615813, 1728, 369);
INSERT into traffic VALUES (1244558425, CAST(N'2021-01-09' AS Date), 615813, 2688, 247);
INSERT into traffic VALUES (1244558425, CAST(N'2021-01-10' AS Date), 615813, 2758, 747);
INSERT into traffic VALUES (1244558425, CAST(N'2021-01-11' AS Date), 615813, 2711, 370);
INSERT into traffic VALUES (1244558425, CAST(N'2021-01-12' AS Date), 615813, 1464, 487);
INSERT into traffic VALUES (1244558425, CAST(N'2021-01-13' AS Date), 615813, 1618, 700);
INSERT into traffic VALUES (1244558425, CAST(N'2021-01-14' AS Date), 615813, 1890, 711);
INSERT into traffic VALUES (1244558425, CAST(N'2021-01-15' AS Date), 615813, 1637, 418);
INSERT into traffic VALUES (1244558425, CAST(N'2021-01-16' AS Date), 615813, 2869, 515);
INSERT into traffic VALUES (1244558425, CAST(N'2021-01-17' AS Date), 615813, 1579, 790);
INSERT into traffic VALUES (1244558425, CAST(N'2021-01-18' AS Date), 615813, 1734, 238);
INSERT into traffic VALUES (1244558425, CAST(N'2021-01-19' AS Date), 615813, 2730, 473);
INSERT into traffic VALUES (1244558425, CAST(N'2021-01-20' AS Date), 615813, 2338, 431);
INSERT into traffic VALUES (1244558425, CAST(N'2021-01-21' AS Date), 615813, 1584, 772);
INSERT into traffic VALUES (1244558425, CAST(N'2021-01-22' AS Date), 615813, 2168, 716);
INSERT into traffic VALUES (1244558425, CAST(N'2021-01-23' AS Date), 615813, 2412, 565);
INSERT into traffic VALUES (1244558425, CAST(N'2021-01-24' AS Date), 615813, 2557, 681);
INSERT into traffic VALUES (1244558425, CAST(N'2021-01-25' AS Date), 615813, 1353, 336);
INSERT into traffic VALUES (1244558425, CAST(N'2021-01-26' AS Date), 615813, 1824, 530);
INSERT into traffic VALUES (1244558425, CAST(N'2021-01-27' AS Date), 615813, 1497, 787);
INSERT into traffic VALUES (1244558425, CAST(N'2021-01-28' AS Date), 615813, 1928, 370);
INSERT into traffic VALUES (1244558425, CAST(N'2021-01-29' AS Date), 615813, 2536, 759);
INSERT into traffic VALUES (1244558425, CAST(N'2021-01-30' AS Date), 615813, 1779, 350);
INSERT into traffic VALUES (1244558564, CAST(N'2021-01-01' AS Date), 615813, 1335, 759);
INSERT into traffic VALUES (1244558564, CAST(N'2021-01-02' AS Date), 615813, 1674, 720);
INSERT into traffic VALUES (1244558564, CAST(N'2021-01-03' AS Date), 615813, 1660, 586);
INSERT into traffic VALUES (1244558564, CAST(N'2021-01-04' AS Date), 615813, 2435, 721);
INSERT into traffic VALUES (1244558564, CAST(N'2021-01-05' AS Date), 615813, 1512, 715);
INSERT into traffic VALUES (1244558564, CAST(N'2021-01-06' AS Date), 615813, 1061, 671);
INSERT into traffic VALUES (1244558564, CAST(N'2021-01-07' AS Date), 615813, 2773, 645);
INSERT into traffic VALUES (1244558564, CAST(N'2021-01-08' AS Date), 615813, 1832, 714);
INSERT into traffic VALUES (1244558564, CAST(N'2021-01-09' AS Date), 615813, 1885, 595);
INSERT into traffic VALUES (1244558564, CAST(N'2021-01-10' AS Date), 615813, 2226, 709);
INSERT into traffic VALUES (1244558564, CAST(N'2021-01-11' AS Date), 615813, 1453, 671);
INSERT into traffic VALUES (1244558564, CAST(N'2021-01-12' AS Date), 615813, 2964, 712);
INSERT into traffic VALUES (1244558564, CAST(N'2021-01-13' AS Date), 615813, 1871, 310);
INSERT into traffic VALUES (1244558564, CAST(N'2021-01-14' AS Date), 615813, 1438, 659);
INSERT into traffic VALUES (1244558564, CAST(N'2021-01-15' AS Date), 615813, 1010, 442);
INSERT into traffic VALUES (1244558564, CAST(N'2021-01-16' AS Date), 615813, 1554, 643);
INSERT into traffic VALUES (1244558564, CAST(N'2021-01-17' AS Date), 615813, 2286, 253);
INSERT into traffic VALUES (1244558564, CAST(N'2021-01-18' AS Date), 615813, 1383, 331);
INSERT into traffic VALUES (1244558564, CAST(N'2021-01-19' AS Date), 615813, 2685, 292);
INSERT into traffic VALUES (1244558564, CAST(N'2021-01-20' AS Date), 615813, 2003, 704);
INSERT into traffic VALUES (1244558564, CAST(N'2021-01-21' AS Date), 615813, 1765, 284);
INSERT into traffic VALUES (1244558564, CAST(N'2021-01-22' AS Date), 615813, 2825, 676);
INSERT into traffic VALUES (1244558564, CAST(N'2021-01-23' AS Date), 615813, 2551, 475);
INSERT into traffic VALUES (1244558564, CAST(N'2021-01-24' AS Date), 615813, 2239, 522);
INSERT into traffic VALUES (1244558564, CAST(N'2021-01-25' AS Date), 615813, 2786, 317);
INSERT into traffic VALUES (1244558564, CAST(N'2021-01-26' AS Date), 615813, 1441, 535);
INSERT into traffic VALUES (1244558564, CAST(N'2021-01-27' AS Date), 615813, 2878, 651);
INSERT into traffic VALUES (1244558564, CAST(N'2021-01-28' AS Date), 615813, 1523, 350);
INSERT into traffic VALUES (1244558564, CAST(N'2021-01-29' AS Date), 615813, 2718, 651);
INSERT into traffic VALUES (1244558564, CAST(N'2021-01-30' AS Date), 615813, 2030, 385);
INSERT into traffic VALUES (1269262929, CAST(N'2021-01-01' AS Date), 628037, 1537, 471);
INSERT into traffic VALUES (1269262929, CAST(N'2021-01-02' AS Date), 628037, 1606, 495);
INSERT into traffic VALUES (1269262929, CAST(N'2021-01-03' AS Date), 628037, 1677, 567);
INSERT into traffic VALUES (1269262929, CAST(N'2021-01-04' AS Date), 628037, 2524, 544);
INSERT into traffic VALUES (1269262929, CAST(N'2021-01-05' AS Date), 628037, 2246, 373);
INSERT into traffic VALUES (1269262929, CAST(N'2021-01-06' AS Date), 628037, 2104, 340);
INSERT into traffic VALUES (1269262929, CAST(N'2021-01-07' AS Date), 628037, 1844, 457);
INSERT into traffic VALUES (1269262929, CAST(N'2021-01-08' AS Date), 628037, 2077, 336);
INSERT into traffic VALUES (1269262929, CAST(N'2021-01-09' AS Date), 628037, 2038, 525);
INSERT into traffic VALUES (1269262929, CAST(N'2021-01-10' AS Date), 628037, 2781, 248);
INSERT into traffic VALUES (1269262929, CAST(N'2021-01-11' AS Date), 628037, 2451, 441);
INSERT into traffic VALUES (1269262929, CAST(N'2021-01-12' AS Date), 628037, 1373, 502);
INSERT into traffic VALUES (1269262929, CAST(N'2021-01-13' AS Date), 628037, 2954, 486);
INSERT into traffic VALUES (1269262929, CAST(N'2021-01-14' AS Date), 628037, 1704, 441);
INSERT into traffic VALUES (1269262929, CAST(N'2021-01-15' AS Date), 628037, 2680, 212);
INSERT into traffic VALUES (1269262929, CAST(N'2021-01-16' AS Date), 628037, 2600, 491);
INSERT into traffic VALUES (1269262929, CAST(N'2021-01-17' AS Date), 628037, 2398, 403);
INSERT into traffic VALUES (1269262929, CAST(N'2021-01-18' AS Date), 628037, 2880, 292);
INSERT into traffic VALUES (1269262929, CAST(N'2021-01-19' AS Date), 628037, 1132, 321);
INSERT into traffic VALUES (1269262929, CAST(N'2021-01-20' AS Date), 628037, 2255, 359);
INSERT into traffic VALUES (1269262929, CAST(N'2021-01-21' AS Date), 628037, 2588, 448);
INSERT into traffic VALUES (1269262929, CAST(N'2021-01-22' AS Date), 628037, 1872, 493);
INSERT into traffic VALUES (1269262929, CAST(N'2021-01-23' AS Date), 628037, 1112, 597);
INSERT into traffic VALUES (1269262929, CAST(N'2021-01-24' AS Date), 628037, 1590, 399);
INSERT into traffic VALUES (1269262929, CAST(N'2021-01-25' AS Date), 628037, 2242, 433);
INSERT into traffic VALUES (1269262929, CAST(N'2021-01-26' AS Date), 628037, 2359, 215);
INSERT into traffic VALUES (1269262929, CAST(N'2021-01-27' AS Date), 628037, 1400, 407);
INSERT into traffic VALUES (1269262929, CAST(N'2021-01-28' AS Date), 628037, 1992, 565);
INSERT into traffic VALUES (1269262929, CAST(N'2021-01-29' AS Date), 628037, 2852, 472);
INSERT into traffic VALUES (1269262929, CAST(N'2021-01-30' AS Date), 628037, 2979, 339);
INSERT into traffic VALUES (1269263091, CAST(N'2021-01-01' AS Date), 628037, 2986, 353);
INSERT into traffic VALUES (1269263091, CAST(N'2021-01-02' AS Date), 628037, 1111, 207);
INSERT into traffic VALUES (1269263091, CAST(N'2021-01-03' AS Date), 628037, 1166, 338);
INSERT into traffic VALUES (1269263091, CAST(N'2021-01-04' AS Date), 628037, 1519, 213);
INSERT into traffic VALUES (1269263091, CAST(N'2021-01-05' AS Date), 628037, 2188, 386);
INSERT into traffic VALUES (1269263091, CAST(N'2021-01-06' AS Date), 628037, 1260, 268);
INSERT into traffic VALUES (1269263091, CAST(N'2021-01-07' AS Date), 628037, 1610, 509);
INSERT into traffic VALUES (1269263091, CAST(N'2021-01-08' AS Date), 628037, 1947, 388);
INSERT into traffic VALUES (1269263091, CAST(N'2021-01-09' AS Date), 628037, 2514, 552);
INSERT into traffic VALUES (1269263091, CAST(N'2021-01-10' AS Date), 628037, 2354, 355);
INSERT into traffic VALUES (1269263091, CAST(N'2021-01-11' AS Date), 628037, 1719, 463);
INSERT into traffic VALUES (1269263091, CAST(N'2021-01-12' AS Date), 628037, 1140, 205);
INSERT into traffic VALUES (1269263091, CAST(N'2021-01-13' AS Date), 628037, 1016, 475);
INSERT into traffic VALUES (1269263091, CAST(N'2021-01-14' AS Date), 628037, 2153, 346);
INSERT into traffic VALUES (1269263091, CAST(N'2021-01-15' AS Date), 628037, 2000, 427);
INSERT into traffic VALUES (1269263091, CAST(N'2021-01-16' AS Date), 628037, 1643, 324);
INSERT into traffic VALUES (1269263091, CAST(N'2021-01-17' AS Date), 628037, 1353, 407);
INSERT into traffic VALUES (1269263091, CAST(N'2021-01-18' AS Date), 628037, 1043, 451);
INSERT into traffic VALUES (1269263091, CAST(N'2021-01-19' AS Date), 628037, 2766, 334);
INSERT into traffic VALUES (1269263091, CAST(N'2021-01-20' AS Date), 628037, 1902, 534);
INSERT into traffic VALUES (1269263091, CAST(N'2021-01-21' AS Date), 628037, 1573, 241);
INSERT into traffic VALUES (1269263091, CAST(N'2021-01-22' AS Date), 628037, 2902, 411);
INSERT into traffic VALUES (1269263091, CAST(N'2021-01-23' AS Date), 628037, 1667, 361);
INSERT into traffic VALUES (1269263091, CAST(N'2021-01-24' AS Date), 628037, 1976, 477);
INSERT into traffic VALUES (1269263091, CAST(N'2021-01-25' AS Date), 628037, 1610, 274);
INSERT into traffic VALUES (1269263091, CAST(N'2021-01-26' AS Date), 628037, 2457, 313);
INSERT into traffic VALUES (1269263091, CAST(N'2021-01-27' AS Date), 628037, 1071, 241);
INSERT into traffic VALUES (1269263091, CAST(N'2021-01-28' AS Date), 628037, 1468, 336);
INSERT into traffic VALUES (1269263091, CAST(N'2021-01-29' AS Date), 628037, 1041, 559);
INSERT into traffic VALUES (1269263091, CAST(N'2021-01-30' AS Date), 628037, 2168, 536);
INSERT into traffic VALUES (1277808606, CAST(N'2021-01-01' AS Date), 632265, 1259, 336);
INSERT into traffic VALUES (1277808606, CAST(N'2021-01-02' AS Date), 632265, 2729, 300);
INSERT into traffic VALUES (1277808606, CAST(N'2021-01-03' AS Date), 632265, 1326, 393);
INSERT into traffic VALUES (1277808606, CAST(N'2021-01-04' AS Date), 632265, 1096, 325);
INSERT into traffic VALUES (1277808606, CAST(N'2021-01-05' AS Date), 632265, 1862, 366);
INSERT into traffic VALUES (1277808606, CAST(N'2021-01-06' AS Date), 632265, 1871, 221);
INSERT into traffic VALUES (1277808606, CAST(N'2021-01-07' AS Date), 632265, 1050, 340);
INSERT into traffic VALUES (1277808606, CAST(N'2021-01-08' AS Date), 632265, 1824, 293);
INSERT into traffic VALUES (1277808606, CAST(N'2021-01-09' AS Date), 632265, 1951, 385);
INSERT into traffic VALUES (1277808606, CAST(N'2021-01-10' AS Date), 632265, 1916, 285);
INSERT into traffic VALUES (1277808606, CAST(N'2021-01-11' AS Date), 632265, 1230, 357);
INSERT into traffic VALUES (1277808606, CAST(N'2021-01-12' AS Date), 632265, 2191, 345);
INSERT into traffic VALUES (1277808606, CAST(N'2021-01-13' AS Date), 632265, 2584, 278);
INSERT into traffic VALUES (1277808606, CAST(N'2021-01-14' AS Date), 632265, 1579, 213);
INSERT into traffic VALUES (1277808606, CAST(N'2021-01-15' AS Date), 632265, 1360, 309);
INSERT into traffic VALUES (1277808606, CAST(N'2021-01-16' AS Date), 632265, 1834, 322);
INSERT into traffic VALUES (1277808606, CAST(N'2021-01-17' AS Date), 632265, 1598, 363);
INSERT into traffic VALUES (1277808606, CAST(N'2021-01-18' AS Date), 632265, 1312, 282);
INSERT into traffic VALUES (1277808606, CAST(N'2021-01-19' AS Date), 632265, 1717, 395);
INSERT into traffic VALUES (1277808606, CAST(N'2021-01-20' AS Date), 632265, 1036, 248);
INSERT into traffic VALUES (1277808606, CAST(N'2021-01-21' AS Date), 632265, 1881, 284);
INSERT into traffic VALUES (1277808606, CAST(N'2021-01-22' AS Date), 632265, 2929, 218);
INSERT into traffic VALUES (1277808606, CAST(N'2021-01-23' AS Date), 632265, 1819, 262);
INSERT into traffic VALUES (1277808606, CAST(N'2021-01-24' AS Date), 632265, 1929, 343);
INSERT into traffic VALUES (1277808606, CAST(N'2021-01-25' AS Date), 632265, 2952, 274);
INSERT into traffic VALUES (1277808606, CAST(N'2021-01-26' AS Date), 632265, 1467, 346);
INSERT into traffic VALUES (1277808606, CAST(N'2021-01-27' AS Date), 632265, 2544, 293);
INSERT into traffic VALUES (1277808606, CAST(N'2021-01-28' AS Date), 632265, 2454, 256);
INSERT into traffic VALUES (1277808606, CAST(N'2021-01-29' AS Date), 632265, 2683, 268);
INSERT into traffic VALUES (1277808606, CAST(N'2021-01-30' AS Date), 632265, 1329, 330);
INSERT into traffic VALUES (1292305347, CAST(N'2021-01-01' AS Date), 639438, 1954, 296);
INSERT into traffic VALUES (1292305347, CAST(N'2021-01-02' AS Date), 639438, 2161, 327);
INSERT into traffic VALUES (1292305347, CAST(N'2021-01-03' AS Date), 639438, 2442, 493);
INSERT into traffic VALUES (1292305347, CAST(N'2021-01-04' AS Date), 639438, 1397, 830);
INSERT into traffic VALUES (1292305347, CAST(N'2021-01-05' AS Date), 639438, 1265, 875);
INSERT into traffic VALUES (1292305347, CAST(N'2021-01-06' AS Date), 639438, 2793, 643);
INSERT into traffic VALUES (1292305347, CAST(N'2021-01-07' AS Date), 639438, 2370, 435);
INSERT into traffic VALUES (1292305347, CAST(N'2021-01-08' AS Date), 639438, 2582, 414);
INSERT into traffic VALUES (1292305347, CAST(N'2021-01-09' AS Date), 639438, 2820, 450);
INSERT into traffic VALUES (1292305347, CAST(N'2021-01-10' AS Date), 639438, 1411, 236);
INSERT into traffic VALUES (1292305347, CAST(N'2021-01-11' AS Date), 639438, 1669, 835);
INSERT into traffic VALUES (1292305347, CAST(N'2021-01-12' AS Date), 639438, 2436, 506);
INSERT into traffic VALUES (1292305347, CAST(N'2021-01-13' AS Date), 639438, 2456, 286);
INSERT into traffic VALUES (1292305347, CAST(N'2021-01-14' AS Date), 639438, 1000, 446);
INSERT into traffic VALUES (1292305347, CAST(N'2021-01-15' AS Date), 639438, 2068, 567);
INSERT into traffic VALUES (1292305347, CAST(N'2021-01-16' AS Date), 639438, 1172, 486);
INSERT into traffic VALUES (1292305347, CAST(N'2021-01-17' AS Date), 639438, 1176, 414);
INSERT into traffic VALUES (1292305347, CAST(N'2021-01-18' AS Date), 639438, 1979, 648);
INSERT into traffic VALUES (1292305347, CAST(N'2021-01-19' AS Date), 639438, 1292, 822);
INSERT into traffic VALUES (1292305347, CAST(N'2021-01-20' AS Date), 639438, 2885, 521);
INSERT into traffic VALUES (1292305347, CAST(N'2021-01-21' AS Date), 639438, 1371, 675);
INSERT into traffic VALUES (1292305347, CAST(N'2021-01-22' AS Date), 639438, 1113, 922);
INSERT into traffic VALUES (1292305347, CAST(N'2021-01-23' AS Date), 639438, 2874, 910);
INSERT into traffic VALUES (1292305347, CAST(N'2021-01-24' AS Date), 639438, 2991, 712);
INSERT into traffic VALUES (1292305347, CAST(N'2021-01-25' AS Date), 639438, 2923, 215);
INSERT into traffic VALUES (1292305347, CAST(N'2021-01-26' AS Date), 639438, 2198, 757);
INSERT into traffic VALUES (1292305347, CAST(N'2021-01-27' AS Date), 639438, 1575, 824);
INSERT into traffic VALUES (1292305347, CAST(N'2021-01-28' AS Date), 639438, 2211, 515);
INSERT into traffic VALUES (1292305347, CAST(N'2021-01-29' AS Date), 639438, 1793, 340);
INSERT into traffic VALUES (1292305347, CAST(N'2021-01-30' AS Date), 639438, 1791, 745);
INSERT into traffic VALUES (1308631983, CAST(N'2021-01-01' AS Date), 647517, 2422, 307);
INSERT into traffic VALUES (1308631983, CAST(N'2021-01-02' AS Date), 647517, 1876, 274);
INSERT into traffic VALUES (1308631983, CAST(N'2021-01-03' AS Date), 647517, 2907, 326);
INSERT into traffic VALUES (1308631983, CAST(N'2021-01-04' AS Date), 647517, 2891, 380);
INSERT into traffic VALUES (1308631983, CAST(N'2021-01-05' AS Date), 647517, 1595, 277);
INSERT into traffic VALUES (1308631983, CAST(N'2021-01-06' AS Date), 647517, 1018, 212);
INSERT into traffic VALUES (1308631983, CAST(N'2021-01-07' AS Date), 647517, 2904, 350);
INSERT into traffic VALUES (1308631983, CAST(N'2021-01-08' AS Date), 647517, 2916, 356);
INSERT into traffic VALUES (1308631983, CAST(N'2021-01-09' AS Date), 647517, 1679, 327);
INSERT into traffic VALUES (1308631983, CAST(N'2021-01-10' AS Date), 647517, 2496, 308);
INSERT into traffic VALUES (1308631983, CAST(N'2021-01-11' AS Date), 647517, 1172, 318);
INSERT into traffic VALUES (1308631983, CAST(N'2021-01-12' AS Date), 647517, 1783, 308);
INSERT into traffic VALUES (1308631983, CAST(N'2021-01-13' AS Date), 647517, 1220, 280);
INSERT into traffic VALUES (1308631983, CAST(N'2021-01-14' AS Date), 647517, 2103, 256);
INSERT into traffic VALUES (1308631983, CAST(N'2021-01-15' AS Date), 647517, 2018, 342);
INSERT into traffic VALUES (1308631983, CAST(N'2021-01-16' AS Date), 647517, 2661, 249);
INSERT into traffic VALUES (1308631983, CAST(N'2021-01-17' AS Date), 647517, 2101, 244);
INSERT into traffic VALUES (1308631983, CAST(N'2021-01-18' AS Date), 647517, 2843, 399);
INSERT into traffic VALUES (1308631983, CAST(N'2021-01-19' AS Date), 647517, 1445, 240);
INSERT into traffic VALUES (1308631983, CAST(N'2021-01-20' AS Date), 647517, 1962, 207);
INSERT into traffic VALUES (1308631983, CAST(N'2021-01-21' AS Date), 647517, 1509, 314);
INSERT into traffic VALUES (1308631983, CAST(N'2021-01-22' AS Date), 647517, 2848, 375);
INSERT into traffic VALUES (1308631983, CAST(N'2021-01-23' AS Date), 647517, 1669, 200);
INSERT into traffic VALUES (1308631983, CAST(N'2021-01-24' AS Date), 647517, 2533, 387);
INSERT into traffic VALUES (1308631983, CAST(N'2021-01-25' AS Date), 647517, 2787, 295);
INSERT into traffic VALUES (1308631983, CAST(N'2021-01-26' AS Date), 647517, 2920, 374);
INSERT into traffic VALUES (1308631983, CAST(N'2021-01-27' AS Date), 647517, 2584, 219);
INSERT into traffic VALUES (1308631983, CAST(N'2021-01-28' AS Date), 647517, 1309, 253);
INSERT into traffic VALUES (1308631983, CAST(N'2021-01-29' AS Date), 647517, 2506, 372);
INSERT into traffic VALUES (1308631983, CAST(N'2021-01-30' AS Date), 647517, 2333, 344);
INSERT into traffic VALUES (1319180678, CAST(N'2021-01-01' AS Date), 652736, 2351, 338);
INSERT into traffic VALUES (1319180678, CAST(N'2021-01-02' AS Date), 652736, 2834, 524);
INSERT into traffic VALUES (1319180678, CAST(N'2021-01-03' AS Date), 652736, 2264, 542);
INSERT into traffic VALUES (1319180678, CAST(N'2021-01-04' AS Date), 652736, 2268, 231);
INSERT into traffic VALUES (1319180678, CAST(N'2021-01-05' AS Date), 652736, 2049, 246);
INSERT into traffic VALUES (1319180678, CAST(N'2021-01-06' AS Date), 652736, 2773, 424);
INSERT into traffic VALUES (1319180678, CAST(N'2021-01-07' AS Date), 652736, 2048, 329);
INSERT into traffic VALUES (1319180678, CAST(N'2021-01-08' AS Date), 652736, 2970, 337);
INSERT into traffic VALUES (1319180678, CAST(N'2021-01-09' AS Date), 652736, 1492, 355);
INSERT into traffic VALUES (1319180678, CAST(N'2021-01-10' AS Date), 652736, 1771, 404);
INSERT into traffic VALUES (1319180678, CAST(N'2021-01-11' AS Date), 652736, 1467, 209);
INSERT into traffic VALUES (1319180678, CAST(N'2021-01-12' AS Date), 652736, 1895, 531);
INSERT into traffic VALUES (1319180678, CAST(N'2021-01-13' AS Date), 652736, 2231, 511);
INSERT into traffic VALUES (1319180678, CAST(N'2021-01-14' AS Date), 652736, 2640, 318);
INSERT into traffic VALUES (1319180678, CAST(N'2021-01-15' AS Date), 652736, 2274, 578);
INSERT into traffic VALUES (1319180678, CAST(N'2021-01-16' AS Date), 652736, 1077, 285);
INSERT into traffic VALUES (1319180678, CAST(N'2021-01-17' AS Date), 652736, 2208, 542);
INSERT into traffic VALUES (1319180678, CAST(N'2021-01-18' AS Date), 652736, 2969, 382);
INSERT into traffic VALUES (1319180678, CAST(N'2021-01-19' AS Date), 652736, 2588, 592);
INSERT into traffic VALUES (1319180678, CAST(N'2021-01-20' AS Date), 652736, 2425, 379);
INSERT into traffic VALUES (1319180678, CAST(N'2021-01-21' AS Date), 652736, 1292, 408);
INSERT into traffic VALUES (1319180678, CAST(N'2021-01-22' AS Date), 652736, 2664, 207);
INSERT into traffic VALUES (1319180678, CAST(N'2021-01-23' AS Date), 652736, 1209, 217);
INSERT into traffic VALUES (1319180678, CAST(N'2021-01-24' AS Date), 652736, 1536, 565);
INSERT into traffic VALUES (1319180678, CAST(N'2021-01-25' AS Date), 652736, 1491, 419);
INSERT into traffic VALUES (1319180678, CAST(N'2021-01-26' AS Date), 652736, 2079, 200);
INSERT into traffic VALUES (1319180678, CAST(N'2021-01-27' AS Date), 652736, 1259, 400);
INSERT into traffic VALUES (1319180678, CAST(N'2021-01-28' AS Date), 652736, 1266, 262);
INSERT into traffic VALUES (1319180678, CAST(N'2021-01-29' AS Date), 652736, 2404, 557);
INSERT into traffic VALUES (1319180678, CAST(N'2021-01-30' AS Date), 652736, 1702, 562);
INSERT into traffic VALUES (1350742729, CAST(N'2021-01-01' AS Date), 668353, 1825, 255);
INSERT into traffic VALUES (1350742729, CAST(N'2021-01-02' AS Date), 668353, 1810, 376);
INSERT into traffic VALUES (1350742729, CAST(N'2021-01-03' AS Date), 668353, 2507, 351);
INSERT into traffic VALUES (1350742729, CAST(N'2021-01-04' AS Date), 668353, 1442, 212);
INSERT into traffic VALUES (1350742729, CAST(N'2021-01-05' AS Date), 668353, 1263, 388);
INSERT into traffic VALUES (1350742729, CAST(N'2021-01-06' AS Date), 668353, 2747, 386);
INSERT into traffic VALUES (1350742729, CAST(N'2021-01-07' AS Date), 668353, 2457, 263);
INSERT into traffic VALUES (1350742729, CAST(N'2021-01-08' AS Date), 668353, 2128, 397);
INSERT into traffic VALUES (1350742729, CAST(N'2021-01-09' AS Date), 668353, 1146, 368);
INSERT into traffic VALUES (1350742729, CAST(N'2021-01-10' AS Date), 668353, 1126, 357);
INSERT into traffic VALUES (1350742729, CAST(N'2021-01-11' AS Date), 668353, 1823, 244);
INSERT into traffic VALUES (1350742729, CAST(N'2021-01-12' AS Date), 668353, 1181, 251);
INSERT into traffic VALUES (1350742729, CAST(N'2021-01-13' AS Date), 668353, 1016, 266);
INSERT into traffic VALUES (1350742729, CAST(N'2021-01-14' AS Date), 668353, 2296, 344);
INSERT into traffic VALUES (1350742729, CAST(N'2021-01-15' AS Date), 668353, 2262, 319);
INSERT into traffic VALUES (1350742729, CAST(N'2021-01-16' AS Date), 668353, 2098, 239);
INSERT into traffic VALUES (1350742729, CAST(N'2021-01-17' AS Date), 668353, 2173, 229);
INSERT into traffic VALUES (1350742729, CAST(N'2021-01-18' AS Date), 668353, 2458, 397);
INSERT into traffic VALUES (1350742729, CAST(N'2021-01-19' AS Date), 668353, 2551, 327);
INSERT into traffic VALUES (1350742729, CAST(N'2021-01-20' AS Date), 668353, 2309, 327);
INSERT into traffic VALUES (1350742729, CAST(N'2021-01-21' AS Date), 668353, 1916, 324);
INSERT into traffic VALUES (1350742729, CAST(N'2021-01-22' AS Date), 668353, 2055, 324);
INSERT into traffic VALUES (1350742729, CAST(N'2021-01-23' AS Date), 668353, 2084, 300);
INSERT into traffic VALUES (1350742729, CAST(N'2021-01-24' AS Date), 668353, 2334, 374);
INSERT into traffic VALUES (1350742729, CAST(N'2021-01-25' AS Date), 668353, 2326, 371);
INSERT into traffic VALUES (1350742729, CAST(N'2021-01-26' AS Date), 668353, 2539, 252);
INSERT into traffic VALUES (1350742729, CAST(N'2021-01-27' AS Date), 668353, 2344, 261);
INSERT into traffic VALUES (1350742729, CAST(N'2021-01-28' AS Date), 668353, 2948, 316);
INSERT into traffic VALUES (1350742729, CAST(N'2021-01-29' AS Date), 668353, 2994, 242);
INSERT into traffic VALUES (1350742729, CAST(N'2021-01-30' AS Date), 668353, 1666, 378);
INSERT into traffic VALUES (1353762168, CAST(N'2021-01-01' AS Date), 669847, 1167, 323);
INSERT into traffic VALUES (1353762168, CAST(N'2021-01-02' AS Date), 669847, 1457, 466);
INSERT into traffic VALUES (1353762168, CAST(N'2021-01-03' AS Date), 669847, 2546, 508);
INSERT into traffic VALUES (1353762168, CAST(N'2021-01-04' AS Date), 669847, 1432, 459);
INSERT into traffic VALUES (1353762168, CAST(N'2021-01-05' AS Date), 669847, 1534, 461);
INSERT into traffic VALUES (1353762168, CAST(N'2021-01-06' AS Date), 669847, 1617, 294);
INSERT into traffic VALUES (1353762168, CAST(N'2021-01-07' AS Date), 669847, 1324, 337);
INSERT into traffic VALUES (1353762168, CAST(N'2021-01-08' AS Date), 669847, 2202, 426);
INSERT into traffic VALUES (1353762168, CAST(N'2021-01-09' AS Date), 669847, 2781, 250);
INSERT into traffic VALUES (1353762168, CAST(N'2021-01-10' AS Date), 669847, 2948, 476);
INSERT into traffic VALUES (1353762168, CAST(N'2021-01-11' AS Date), 669847, 1890, 218);
INSERT into traffic VALUES (1353762168, CAST(N'2021-01-12' AS Date), 669847, 2564, 439);
INSERT into traffic VALUES (1353762168, CAST(N'2021-01-13' AS Date), 669847, 1657, 378);
INSERT into traffic VALUES (1353762168, CAST(N'2021-01-14' AS Date), 669847, 2772, 374);
INSERT into traffic VALUES (1353762168, CAST(N'2021-01-15' AS Date), 669847, 2705, 212);
INSERT into traffic VALUES (1353762168, CAST(N'2021-01-16' AS Date), 669847, 1367, 366);
INSERT into traffic VALUES (1353762168, CAST(N'2021-01-17' AS Date), 669847, 1639, 575);
INSERT into traffic VALUES (1353762168, CAST(N'2021-01-18' AS Date), 669847, 1752, 361);
INSERT into traffic VALUES (1353762168, CAST(N'2021-01-19' AS Date), 669847, 2380, 494);
INSERT into traffic VALUES (1353762168, CAST(N'2021-01-20' AS Date), 669847, 2784, 328);
INSERT into traffic VALUES (1353762168, CAST(N'2021-01-21' AS Date), 669847, 1582, 412);
INSERT into traffic VALUES (1353762168, CAST(N'2021-01-22' AS Date), 669847, 1605, 479);
INSERT into traffic VALUES (1353762168, CAST(N'2021-01-23' AS Date), 669847, 1080, 285);
INSERT into traffic VALUES (1353762168, CAST(N'2021-01-24' AS Date), 669847, 1681, 527);
INSERT into traffic VALUES (1353762168, CAST(N'2021-01-25' AS Date), 669847, 1115, 541);
INSERT into traffic VALUES (1353762168, CAST(N'2021-01-26' AS Date), 669847, 1188, 378);
INSERT into traffic VALUES (1353762168, CAST(N'2021-01-27' AS Date), 669847, 1460, 589);
INSERT into traffic VALUES (1353762168, CAST(N'2021-01-28' AS Date), 669847, 1904, 584);
INSERT into traffic VALUES (1353762168, CAST(N'2021-01-29' AS Date), 669847, 2523, 561);
INSERT into traffic VALUES (1353762168, CAST(N'2021-01-30' AS Date), 669847, 1502, 228);
INSERT into traffic VALUES (1360064976, CAST(N'2021-01-01' AS Date), 672966, 1578, 394);
INSERT into traffic VALUES (1360064976, CAST(N'2021-01-02' AS Date), 672966, 2493, 685);
INSERT into traffic VALUES (1360064976, CAST(N'2021-01-03' AS Date), 672966, 1977, 239);
INSERT into traffic VALUES (1360064976, CAST(N'2021-01-04' AS Date), 672966, 1728, 554);
INSERT into traffic VALUES (1360064976, CAST(N'2021-01-05' AS Date), 672966, 2571, 247);
INSERT into traffic VALUES (1360064976, CAST(N'2021-01-06' AS Date), 672966, 1616, 632);
INSERT into traffic VALUES (1360064976, CAST(N'2021-01-07' AS Date), 672966, 1770, 411);
INSERT into traffic VALUES (1360064976, CAST(N'2021-01-08' AS Date), 672966, 1465, 315);
INSERT into traffic VALUES (1360064976, CAST(N'2021-01-09' AS Date), 672966, 2361, 713);
INSERT into traffic VALUES (1360064976, CAST(N'2021-01-10' AS Date), 672966, 1302, 229);
INSERT into traffic VALUES (1360064976, CAST(N'2021-01-11' AS Date), 672966, 1259, 627);
INSERT into traffic VALUES (1360064976, CAST(N'2021-01-12' AS Date), 672966, 1821, 320);
INSERT into traffic VALUES (1360064976, CAST(N'2021-01-13' AS Date), 672966, 2718, 387);
INSERT into traffic VALUES (1360064976, CAST(N'2021-01-14' AS Date), 672966, 2151, 724);
INSERT into traffic VALUES (1360064976, CAST(N'2021-01-15' AS Date), 672966, 2902, 561);
INSERT into traffic VALUES (1360064976, CAST(N'2021-01-16' AS Date), 672966, 2711, 491);
INSERT into traffic VALUES (1360064976, CAST(N'2021-01-17' AS Date), 672966, 1048, 528);
INSERT into traffic VALUES (1360064976, CAST(N'2021-01-18' AS Date), 672966, 2110, 657);
INSERT into traffic VALUES (1360064976, CAST(N'2021-01-19' AS Date), 672966, 1716, 281);
INSERT into traffic VALUES (1360064976, CAST(N'2021-01-20' AS Date), 672966, 2271, 628);
INSERT into traffic VALUES (1360064976, CAST(N'2021-01-21' AS Date), 672966, 1425, 447);
INSERT into traffic VALUES (1360064976, CAST(N'2021-01-22' AS Date), 672966, 1289, 437);
INSERT into traffic VALUES (1360064976, CAST(N'2021-01-23' AS Date), 672966, 1862, 528);
INSERT into traffic VALUES (1360064976, CAST(N'2021-01-24' AS Date), 672966, 2235, 705);
INSERT into traffic VALUES (1360064976, CAST(N'2021-01-25' AS Date), 672966, 2639, 530);
INSERT into traffic VALUES (1360064976, CAST(N'2021-01-26' AS Date), 672966, 1426, 221);
INSERT into traffic VALUES (1360064976, CAST(N'2021-01-27' AS Date), 672966, 2119, 734);
INSERT into traffic VALUES (1360064976, CAST(N'2021-01-28' AS Date), 672966, 1245, 301);
INSERT into traffic VALUES (1360064976, CAST(N'2021-01-29' AS Date), 672966, 1222, 654);
INSERT into traffic VALUES (1360064976, CAST(N'2021-01-30' AS Date), 672966, 2999, 247);
INSERT into traffic VALUES (1363013636, CAST(N'2021-01-01' AS Date), 674425, 1292, 375);
INSERT into traffic VALUES (1363013636, CAST(N'2021-01-02' AS Date), 674425, 2388, 236);
INSERT into traffic VALUES (1363013636, CAST(N'2021-01-03' AS Date), 674425, 2894, 273);
INSERT into traffic VALUES (1363013636, CAST(N'2021-01-04' AS Date), 674425, 1759, 214);
INSERT into traffic VALUES (1363013636, CAST(N'2021-01-05' AS Date), 674425, 1553, 262);
INSERT into traffic VALUES (1363013636, CAST(N'2021-01-06' AS Date), 674425, 2898, 256);
INSERT into traffic VALUES (1363013636, CAST(N'2021-01-07' AS Date), 674425, 1970, 256);
INSERT into traffic VALUES (1363013636, CAST(N'2021-01-08' AS Date), 674425, 1509, 218);
INSERT into traffic VALUES (1363013636, CAST(N'2021-01-09' AS Date), 674425, 2360, 246);
INSERT into traffic VALUES (1363013636, CAST(N'2021-01-10' AS Date), 674425, 1957, 246);
INSERT into traffic VALUES (1363013636, CAST(N'2021-01-11' AS Date), 674425, 2939, 358);
INSERT into traffic VALUES (1363013636, CAST(N'2021-01-12' AS Date), 674425, 2982, 367);
INSERT into traffic VALUES (1363013636, CAST(N'2021-01-13' AS Date), 674425, 1683, 278);
INSERT into traffic VALUES (1363013636, CAST(N'2021-01-14' AS Date), 674425, 2724, 345);
INSERT into traffic VALUES (1363013636, CAST(N'2021-01-15' AS Date), 674425, 1122, 206);
INSERT into traffic VALUES (1363013636, CAST(N'2021-01-16' AS Date), 674425, 1070, 280);
INSERT into traffic VALUES (1363013636, CAST(N'2021-01-17' AS Date), 674425, 1421, 241);
INSERT into traffic VALUES (1363013636, CAST(N'2021-01-18' AS Date), 674425, 2652, 338);
INSERT into traffic VALUES (1363013636, CAST(N'2021-01-19' AS Date), 674425, 2364, 269);
INSERT into traffic VALUES (1363013636, CAST(N'2021-01-20' AS Date), 674425, 1096, 341);
INSERT into traffic VALUES (1363013636, CAST(N'2021-01-21' AS Date), 674425, 1132, 324);
INSERT into traffic VALUES (1363013636, CAST(N'2021-01-22' AS Date), 674425, 2879, 274);
INSERT into traffic VALUES (1363013636, CAST(N'2021-01-23' AS Date), 674425, 1848, 347);
INSERT into traffic VALUES (1363013636, CAST(N'2021-01-24' AS Date), 674425, 1633, 345);
INSERT into traffic VALUES (1363013636, CAST(N'2021-01-25' AS Date), 674425, 2298, 331);
INSERT into traffic VALUES (1363013636, CAST(N'2021-01-26' AS Date), 674425, 2037, 293);
INSERT into traffic VALUES (1363013636, CAST(N'2021-01-27' AS Date), 674425, 2110, 330);
INSERT into traffic VALUES (1363013636, CAST(N'2021-01-28' AS Date), 674425, 2265, 339);
INSERT into traffic VALUES (1363013636, CAST(N'2021-01-29' AS Date), 674425, 2627, 205);
INSERT into traffic VALUES (1363013636, CAST(N'2021-01-30' AS Date), 674425, 2382, 397);
INSERT into traffic VALUES (1363699874, CAST(N'2021-01-01' AS Date), 674764, 1270, 267);
INSERT into traffic VALUES (1363699874, CAST(N'2021-01-02' AS Date), 674764, 1325, 513);
INSERT into traffic VALUES (1363699874, CAST(N'2021-01-03' AS Date), 674764, 2145, 666);
INSERT into traffic VALUES (1363699874, CAST(N'2021-01-04' AS Date), 674764, 2177, 881);
INSERT into traffic VALUES (1363699874, CAST(N'2021-01-05' AS Date), 674764, 1384, 202);
INSERT into traffic VALUES (1363699874, CAST(N'2021-01-06' AS Date), 674764, 2559, 472);
INSERT into traffic VALUES (1363699874, CAST(N'2021-01-07' AS Date), 674764, 2800, 577);
INSERT into traffic VALUES (1363699874, CAST(N'2021-01-08' AS Date), 674764, 2996, 829);
INSERT into traffic VALUES (1363699874, CAST(N'2021-01-09' AS Date), 674764, 1022, 722);
INSERT into traffic VALUES (1363699874, CAST(N'2021-01-10' AS Date), 674764, 2234, 383);
INSERT into traffic VALUES (1363699874, CAST(N'2021-01-11' AS Date), 674764, 2329, 285);
INSERT into traffic VALUES (1363699874, CAST(N'2021-01-12' AS Date), 674764, 1125, 812);
INSERT into traffic VALUES (1363699874, CAST(N'2021-01-13' AS Date), 674764, 2421, 639);
INSERT into traffic VALUES (1363699874, CAST(N'2021-01-14' AS Date), 674764, 2089, 921);
INSERT into traffic VALUES (1363699874, CAST(N'2021-01-15' AS Date), 674764, 1648, 938);
INSERT into traffic VALUES (1363699874, CAST(N'2021-01-16' AS Date), 674764, 2509, 452);
INSERT into traffic VALUES (1363699874, CAST(N'2021-01-17' AS Date), 674764, 2479, 867);
INSERT into traffic VALUES (1363699874, CAST(N'2021-01-18' AS Date), 674764, 1564, 602);
INSERT into traffic VALUES (1363699874, CAST(N'2021-01-19' AS Date), 674764, 1463, 241);
INSERT into traffic VALUES (1363699874, CAST(N'2021-01-20' AS Date), 674764, 1474, 314);
INSERT into traffic VALUES (1363699874, CAST(N'2021-01-21' AS Date), 674764, 2558, 386);
INSERT into traffic VALUES (1363699874, CAST(N'2021-01-22' AS Date), 674764, 2096, 260);
INSERT into traffic VALUES (1363699874, CAST(N'2021-01-23' AS Date), 674764, 2180, 540);
INSERT into traffic VALUES (1363699874, CAST(N'2021-01-24' AS Date), 674764, 1611, 244);
INSERT into traffic VALUES (1363699874, CAST(N'2021-01-25' AS Date), 674764, 2306, 702);
INSERT into traffic VALUES (1363699874, CAST(N'2021-01-26' AS Date), 674764, 2554, 555);
INSERT into traffic VALUES (1363699874, CAST(N'2021-01-27' AS Date), 674764, 2324, 614);
INSERT into traffic VALUES (1363699874, CAST(N'2021-01-28' AS Date), 674764, 2377, 726);
INSERT into traffic VALUES (1363699874, CAST(N'2021-01-29' AS Date), 674764, 1575, 528);
INSERT into traffic VALUES (1363699874, CAST(N'2021-01-30' AS Date), 674764, 2809, 789);
INSERT into traffic VALUES (1366044173, CAST(N'2021-01-01' AS Date), 675924, 1326, 899);
INSERT into traffic VALUES (1366044173, CAST(N'2021-01-02' AS Date), 675924, 2787, 790);
INSERT into traffic VALUES (1366044173, CAST(N'2021-01-03' AS Date), 675924, 1636, 330);
INSERT into traffic VALUES (1366044173, CAST(N'2021-01-04' AS Date), 675924, 1353, 533);
INSERT into traffic VALUES (1366044173, CAST(N'2021-01-05' AS Date), 675924, 2072, 513);
INSERT into traffic VALUES (1366044173, CAST(N'2021-01-06' AS Date), 675924, 1690, 242);
INSERT into traffic VALUES (1366044173, CAST(N'2021-01-07' AS Date), 675924, 1448, 539);
INSERT into traffic VALUES (1366044173, CAST(N'2021-01-08' AS Date), 675924, 1301, 534);
INSERT into traffic VALUES (1366044173, CAST(N'2021-01-09' AS Date), 675924, 1578, 299);
INSERT into traffic VALUES (1366044173, CAST(N'2021-01-10' AS Date), 675924, 2603, 313);
INSERT into traffic VALUES (1366044173, CAST(N'2021-01-11' AS Date), 675924, 2187, 827);
INSERT into traffic VALUES (1366044173, CAST(N'2021-01-12' AS Date), 675924, 2486, 430);
INSERT into traffic VALUES (1366044173, CAST(N'2021-01-13' AS Date), 675924, 2669, 314);
INSERT into traffic VALUES (1366044173, CAST(N'2021-01-14' AS Date), 675924, 1720, 286);
INSERT into traffic VALUES (1366044173, CAST(N'2021-01-15' AS Date), 675924, 1075, 435);
INSERT into traffic VALUES (1366044173, CAST(N'2021-01-16' AS Date), 675924, 2046, 356);
INSERT into traffic VALUES (1366044173, CAST(N'2021-01-17' AS Date), 675924, 2071, 418);
INSERT into traffic VALUES (1366044173, CAST(N'2021-01-18' AS Date), 675924, 2705, 458);
INSERT into traffic VALUES (1366044173, CAST(N'2021-01-19' AS Date), 675924, 2648, 238);
INSERT into traffic VALUES (1366044173, CAST(N'2021-01-20' AS Date), 675924, 2015, 600);
INSERT into traffic VALUES (1366044173, CAST(N'2021-01-21' AS Date), 675924, 2912, 602);
INSERT into traffic VALUES (1366044173, CAST(N'2021-01-22' AS Date), 675924, 2606, 270);
INSERT into traffic VALUES (1366044173, CAST(N'2021-01-23' AS Date), 675924, 2423, 841);
INSERT into traffic VALUES (1366044173, CAST(N'2021-01-24' AS Date), 675924, 1141, 527);
INSERT into traffic VALUES (1366044173, CAST(N'2021-01-25' AS Date), 675924, 2772, 367);
INSERT into traffic VALUES (1366044173, CAST(N'2021-01-26' AS Date), 675924, 2022, 845);
INSERT into traffic VALUES (1366044173, CAST(N'2021-01-27' AS Date), 675924, 2449, 745);
INSERT into traffic VALUES (1366044173, CAST(N'2021-01-28' AS Date), 675924, 1520, 367);
INSERT into traffic VALUES (1366044173, CAST(N'2021-01-29' AS Date), 675924, 2149, 760);
INSERT into traffic VALUES (1366044173, CAST(N'2021-01-30' AS Date), 675924, 1643, 602);
INSERT into traffic VALUES (1372167748, CAST(N'2021-01-01' AS Date), 678954, 1661, 312);
INSERT into traffic VALUES (1372167748, CAST(N'2021-01-02' AS Date), 678954, 1265, 367);
INSERT into traffic VALUES (1372167748, CAST(N'2021-01-03' AS Date), 678954, 2020, 383);
INSERT into traffic VALUES (1372167748, CAST(N'2021-01-04' AS Date), 678954, 2753, 311);
INSERT into traffic VALUES (1372167748, CAST(N'2021-01-05' AS Date), 678954, 1109, 358);
INSERT into traffic VALUES (1372167748, CAST(N'2021-01-06' AS Date), 678954, 1148, 318);
INSERT into traffic VALUES (1372167748, CAST(N'2021-01-07' AS Date), 678954, 2724, 293);
INSERT into traffic VALUES (1372167748, CAST(N'2021-01-08' AS Date), 678954, 1243, 258);
INSERT into traffic VALUES (1372167748, CAST(N'2021-01-09' AS Date), 678954, 1715, 357);
INSERT into traffic VALUES (1372167748, CAST(N'2021-01-10' AS Date), 678954, 1498, 344);
INSERT into traffic VALUES (1372167748, CAST(N'2021-01-11' AS Date), 678954, 2543, 254);
INSERT into traffic VALUES (1372167748, CAST(N'2021-01-12' AS Date), 678954, 1444, 320);
INSERT into traffic VALUES (1372167748, CAST(N'2021-01-13' AS Date), 678954, 1457, 321);
INSERT into traffic VALUES (1372167748, CAST(N'2021-01-14' AS Date), 678954, 1098, 322);
INSERT into traffic VALUES (1372167748, CAST(N'2021-01-15' AS Date), 678954, 2373, 235);
INSERT into traffic VALUES (1372167748, CAST(N'2021-01-16' AS Date), 678954, 2185, 372);
INSERT into traffic VALUES (1372167748, CAST(N'2021-01-17' AS Date), 678954, 2587, 359);
INSERT into traffic VALUES (1372167748, CAST(N'2021-01-18' AS Date), 678954, 2615, 268);
INSERT into traffic VALUES (1372167748, CAST(N'2021-01-19' AS Date), 678954, 2611, 310);
INSERT into traffic VALUES (1372167748, CAST(N'2021-01-20' AS Date), 678954, 2637, 217);
INSERT into traffic VALUES (1372167748, CAST(N'2021-01-21' AS Date), 678954, 2396, 317);
INSERT into traffic VALUES (1372167748, CAST(N'2021-01-22' AS Date), 678954, 1969, 372);
INSERT into traffic VALUES (1372167748, CAST(N'2021-01-23' AS Date), 678954, 1882, 239);
INSERT into traffic VALUES (1372167748, CAST(N'2021-01-24' AS Date), 678954, 2927, 344);
INSERT into traffic VALUES (1372167748, CAST(N'2021-01-25' AS Date), 678954, 2271, 328);
INSERT into traffic VALUES (1372167748, CAST(N'2021-01-26' AS Date), 678954, 1496, 370);
INSERT into traffic VALUES (1372167748, CAST(N'2021-01-27' AS Date), 678954, 1438, 217);
INSERT into traffic VALUES (1372167748, CAST(N'2021-01-28' AS Date), 678954, 1327, 380);
INSERT into traffic VALUES (1372167748, CAST(N'2021-01-29' AS Date), 678954, 1275, 386);
INSERT into traffic VALUES (1372167748, CAST(N'2021-01-30' AS Date), 678954, 2837, 228);
INSERT into traffic VALUES (1378647427, CAST(N'2021-01-01' AS Date), 682161, 2174, 411);
INSERT into traffic VALUES (1378647427, CAST(N'2021-01-02' AS Date), 682161, 2626, 371);
INSERT into traffic VALUES (1378647427, CAST(N'2021-01-03' AS Date), 682161, 2325, 415);
INSERT into traffic VALUES (1378647427, CAST(N'2021-01-04' AS Date), 682161, 2636, 465);
INSERT into traffic VALUES (1378647427, CAST(N'2021-01-05' AS Date), 682161, 2104, 295);
INSERT into traffic VALUES (1378647427, CAST(N'2021-01-06' AS Date), 682161, 2528, 246);
INSERT into traffic VALUES (1378647427, CAST(N'2021-01-07' AS Date), 682161, 2002, 259);
INSERT into traffic VALUES (1378647427, CAST(N'2021-01-08' AS Date), 682161, 1191, 510);
INSERT into traffic VALUES (1378647427, CAST(N'2021-01-09' AS Date), 682161, 2256, 456);
INSERT into traffic VALUES (1378647427, CAST(N'2021-01-10' AS Date), 682161, 1919, 482);
INSERT into traffic VALUES (1378647427, CAST(N'2021-01-11' AS Date), 682161, 2460, 561);
INSERT into traffic VALUES (1378647427, CAST(N'2021-01-12' AS Date), 682161, 1117, 486);
INSERT into traffic VALUES (1378647427, CAST(N'2021-01-13' AS Date), 682161, 2923, 570);
INSERT into traffic VALUES (1378647427, CAST(N'2021-01-14' AS Date), 682161, 2296, 217);
INSERT into traffic VALUES (1378647427, CAST(N'2021-01-15' AS Date), 682161, 2788, 361);
INSERT into traffic VALUES (1378647427, CAST(N'2021-01-16' AS Date), 682161, 2130, 247);
INSERT into traffic VALUES (1378647427, CAST(N'2021-01-17' AS Date), 682161, 2945, 580);
INSERT into traffic VALUES (1378647427, CAST(N'2021-01-18' AS Date), 682161, 1444, 378);
INSERT into traffic VALUES (1378647427, CAST(N'2021-01-19' AS Date), 682161, 2083, 292);
INSERT into traffic VALUES (1378647427, CAST(N'2021-01-20' AS Date), 682161, 1134, 344);
INSERT into traffic VALUES (1378647427, CAST(N'2021-01-21' AS Date), 682161, 2729, 248);
INSERT into traffic VALUES (1378647427, CAST(N'2021-01-22' AS Date), 682161, 2610, 335);
INSERT into traffic VALUES (1378647427, CAST(N'2021-01-23' AS Date), 682161, 1484, 246);
INSERT into traffic VALUES (1378647427, CAST(N'2021-01-24' AS Date), 682161, 2272, 398);
INSERT into traffic VALUES (1378647427, CAST(N'2021-01-25' AS Date), 682161, 2680, 297);
INSERT into traffic VALUES (1378647427, CAST(N'2021-01-26' AS Date), 682161, 2928, 526);
INSERT into traffic VALUES (1378647427, CAST(N'2021-01-27' AS Date), 682161, 2994, 387);
INSERT into traffic VALUES (1378647427, CAST(N'2021-01-28' AS Date), 682161, 1070, 300);
INSERT into traffic VALUES (1378647427, CAST(N'2021-01-29' AS Date), 682161, 2548, 248);
INSERT into traffic VALUES (1378647427, CAST(N'2021-01-30' AS Date), 682161, 2976, 572);
INSERT into traffic VALUES (1390598074, CAST(N'2021-01-01' AS Date), 688074, 2393, 457);
INSERT into traffic VALUES (1390598074, CAST(N'2021-01-02' AS Date), 688074, 2353, 331);
INSERT into traffic VALUES (1390598074, CAST(N'2021-01-03' AS Date), 688074, 1873, 538);
INSERT into traffic VALUES (1390598074, CAST(N'2021-01-04' AS Date), 688074, 2349, 378);
INSERT into traffic VALUES (1390598074, CAST(N'2021-01-05' AS Date), 688074, 1285, 424);
INSERT into traffic VALUES (1390598074, CAST(N'2021-01-06' AS Date), 688074, 1203, 223);
INSERT into traffic VALUES (1390598074, CAST(N'2021-01-07' AS Date), 688074, 1451, 344);
INSERT into traffic VALUES (1390598074, CAST(N'2021-01-08' AS Date), 688074, 1453, 555);
INSERT into traffic VALUES (1390598074, CAST(N'2021-01-09' AS Date), 688074, 1687, 339);
INSERT into traffic VALUES (1390598074, CAST(N'2021-01-10' AS Date), 688074, 2727, 393);
INSERT into traffic VALUES (1390598074, CAST(N'2021-01-11' AS Date), 688074, 2200, 499);
INSERT into traffic VALUES (1390598074, CAST(N'2021-01-12' AS Date), 688074, 1376, 220);
INSERT into traffic VALUES (1390598074, CAST(N'2021-01-13' AS Date), 688074, 1073, 423);
INSERT into traffic VALUES (1390598074, CAST(N'2021-01-14' AS Date), 688074, 2405, 302);
INSERT into traffic VALUES (1390598074, CAST(N'2021-01-15' AS Date), 688074, 1687, 393);
INSERT into traffic VALUES (1390598074, CAST(N'2021-01-16' AS Date), 688074, 2831, 203);
INSERT into traffic VALUES (1390598074, CAST(N'2021-01-17' AS Date), 688074, 2788, 255);
INSERT into traffic VALUES (1390598074, CAST(N'2021-01-18' AS Date), 688074, 1366, 368);
INSERT into traffic VALUES (1390598074, CAST(N'2021-01-19' AS Date), 688074, 2363, 425);
INSERT into traffic VALUES (1390598074, CAST(N'2021-01-20' AS Date), 688074, 1981, 393);
INSERT into traffic VALUES (1390598074, CAST(N'2021-01-21' AS Date), 688074, 2657, 485);
INSERT into traffic VALUES (1390598074, CAST(N'2021-01-22' AS Date), 688074, 2206, 367);
INSERT into traffic VALUES (1390598074, CAST(N'2021-01-23' AS Date), 688074, 1751, 287);
INSERT into traffic VALUES (1390598074, CAST(N'2021-01-24' AS Date), 688074, 1996, 361);
INSERT into traffic VALUES (1390598074, CAST(N'2021-01-25' AS Date), 688074, 2727, 343);
INSERT into traffic VALUES (1390598074, CAST(N'2021-01-26' AS Date), 688074, 1713, 363);
INSERT into traffic VALUES (1390598074, CAST(N'2021-01-27' AS Date), 688074, 2805, 471);
INSERT into traffic VALUES (1390598074, CAST(N'2021-01-28' AS Date), 688074, 1964, 428);
INSERT into traffic VALUES (1390598074, CAST(N'2021-01-29' AS Date), 688074, 1279, 576);
INSERT into traffic VALUES (1390598074, CAST(N'2021-01-30' AS Date), 688074, 1412, 412);
INSERT into traffic VALUES (1395562399, CAST(N'2021-01-01' AS Date), 690530, 2438, 266);
INSERT into traffic VALUES (1395562399, CAST(N'2021-01-02' AS Date), 690530, 2067, 585);
INSERT into traffic VALUES (1395562399, CAST(N'2021-01-03' AS Date), 690530, 2647, 595);
INSERT into traffic VALUES (1395562399, CAST(N'2021-01-04' AS Date), 690530, 1384, 466);
INSERT into traffic VALUES (1395562399, CAST(N'2021-01-05' AS Date), 690530, 2340, 348);
INSERT into traffic VALUES (1395562399, CAST(N'2021-01-06' AS Date), 690530, 2179, 425);
INSERT into traffic VALUES (1395562399, CAST(N'2021-01-07' AS Date), 690530, 1591, 393);
INSERT into traffic VALUES (1395562399, CAST(N'2021-01-08' AS Date), 690530, 1918, 265);
INSERT into traffic VALUES (1395562399, CAST(N'2021-01-09' AS Date), 690530, 1311, 413);
INSERT into traffic VALUES (1395562399, CAST(N'2021-01-10' AS Date), 690530, 2846, 406);
INSERT into traffic VALUES (1395562399, CAST(N'2021-01-11' AS Date), 690530, 2905, 533);
INSERT into traffic VALUES (1395562399, CAST(N'2021-01-12' AS Date), 690530, 2389, 365);
INSERT into traffic VALUES (1395562399, CAST(N'2021-01-13' AS Date), 690530, 2781, 214);
INSERT into traffic VALUES (1395562399, CAST(N'2021-01-14' AS Date), 690530, 2885, 559);
INSERT into traffic VALUES (1395562399, CAST(N'2021-01-15' AS Date), 690530, 2779, 480);
INSERT into traffic VALUES (1395562399, CAST(N'2021-01-16' AS Date), 690530, 2859, 236);
INSERT into traffic VALUES (1395562399, CAST(N'2021-01-17' AS Date), 690530, 1733, 211);
INSERT into traffic VALUES (1395562399, CAST(N'2021-01-18' AS Date), 690530, 1164, 594);
INSERT into traffic VALUES (1395562399, CAST(N'2021-01-19' AS Date), 690530, 2406, 228);
INSERT into traffic VALUES (1395562399, CAST(N'2021-01-20' AS Date), 690530, 2499, 471);
INSERT into traffic VALUES (1395562399, CAST(N'2021-01-21' AS Date), 690530, 2567, 304);
INSERT into traffic VALUES (1395562399, CAST(N'2021-01-22' AS Date), 690530, 2955, 554);
INSERT into traffic VALUES (1395562399, CAST(N'2021-01-23' AS Date), 690530, 1047, 353);
INSERT into traffic VALUES (1395562399, CAST(N'2021-01-24' AS Date), 690530, 2378, 415);
INSERT into traffic VALUES (1395562399, CAST(N'2021-01-25' AS Date), 690530, 2656, 488);
INSERT into traffic VALUES (1395562399, CAST(N'2021-01-26' AS Date), 690530, 1812, 408);
INSERT into traffic VALUES (1395562399, CAST(N'2021-01-27' AS Date), 690530, 1093, 499);
INSERT into traffic VALUES (1395562399, CAST(N'2021-01-28' AS Date), 690530, 1806, 205);
INSERT into traffic VALUES (1395562399, CAST(N'2021-01-29' AS Date), 690530, 1810, 226);
INSERT into traffic VALUES (1395562399, CAST(N'2021-01-30' AS Date), 690530, 1346, 290);
INSERT into traffic VALUES (1395562402, CAST(N'2021-01-01' AS Date), 690530, 1778, 349);
INSERT into traffic VALUES (1395562402, CAST(N'2021-01-02' AS Date), 690530, 1590, 216);
INSERT into traffic VALUES (1395562402, CAST(N'2021-01-03' AS Date), 690530, 2295, 429);
INSERT into traffic VALUES (1395562402, CAST(N'2021-01-04' AS Date), 690530, 2371, 310);
INSERT into traffic VALUES (1395562402, CAST(N'2021-01-05' AS Date), 690530, 2798, 547);
INSERT into traffic VALUES (1395562402, CAST(N'2021-01-06' AS Date), 690530, 1036, 539);
INSERT into traffic VALUES (1395562402, CAST(N'2021-01-07' AS Date), 690530, 1305, 395);
INSERT into traffic VALUES (1395562402, CAST(N'2021-01-08' AS Date), 690530, 1064, 296);
INSERT into traffic VALUES (1395562402, CAST(N'2021-01-09' AS Date), 690530, 2106, 572);
INSERT into traffic VALUES (1395562402, CAST(N'2021-01-10' AS Date), 690530, 1888, 471);
INSERT into traffic VALUES (1395562402, CAST(N'2021-01-11' AS Date), 690530, 2557, 508);
INSERT into traffic VALUES (1395562402, CAST(N'2021-01-12' AS Date), 690530, 1064, 535);
INSERT into traffic VALUES (1395562402, CAST(N'2021-01-13' AS Date), 690530, 1579, 423);
INSERT into traffic VALUES (1395562402, CAST(N'2021-01-14' AS Date), 690530, 2566, 560);
INSERT into traffic VALUES (1395562402, CAST(N'2021-01-15' AS Date), 690530, 2429, 582);
INSERT into traffic VALUES (1395562402, CAST(N'2021-01-16' AS Date), 690530, 2473, 433);
INSERT into traffic VALUES (1395562402, CAST(N'2021-01-17' AS Date), 690530, 2605, 362);
INSERT into traffic VALUES (1395562402, CAST(N'2021-01-18' AS Date), 690530, 1919, 278);
INSERT into traffic VALUES (1395562402, CAST(N'2021-01-19' AS Date), 690530, 1274, 394);
INSERT into traffic VALUES (1395562402, CAST(N'2021-01-20' AS Date), 690530, 1963, 227);
INSERT into traffic VALUES (1395562402, CAST(N'2021-01-21' AS Date), 690530, 2200, 546);
INSERT into traffic VALUES (1395562402, CAST(N'2021-01-22' AS Date), 690530, 1827, 568);
INSERT into traffic VALUES (1395562402, CAST(N'2021-01-23' AS Date), 690530, 2629, 351);
INSERT into traffic VALUES (1395562402, CAST(N'2021-01-24' AS Date), 690530, 2606, 293);
INSERT into traffic VALUES (1395562402, CAST(N'2021-01-25' AS Date), 690530, 2240, 244);
INSERT into traffic VALUES (1395562402, CAST(N'2021-01-26' AS Date), 690530, 2619, 280);
INSERT into traffic VALUES (1395562402, CAST(N'2021-01-27' AS Date), 690530, 2887, 259);
INSERT into traffic VALUES (1395562402, CAST(N'2021-01-28' AS Date), 690530, 1031, 445);
INSERT into traffic VALUES (1395562402, CAST(N'2021-01-29' AS Date), 690530, 1300, 222);
INSERT into traffic VALUES (1395562402, CAST(N'2021-01-30' AS Date), 690530, 1384, 304);
INSERT into traffic VALUES (1400195123, CAST(N'2021-01-01' AS Date), 692822, 2158, 347);
INSERT into traffic VALUES (1400195123, CAST(N'2021-01-02' AS Date), 692822, 2972, 271);
INSERT into traffic VALUES (1400195123, CAST(N'2021-01-03' AS Date), 692822, 2546, 352);
INSERT into traffic VALUES (1400195123, CAST(N'2021-01-04' AS Date), 692822, 2242, 317);
INSERT into traffic VALUES (1400195123, CAST(N'2021-01-05' AS Date), 692822, 2799, 280);
INSERT into traffic VALUES (1400195123, CAST(N'2021-01-06' AS Date), 692822, 2323, 254);
INSERT into traffic VALUES (1400195123, CAST(N'2021-01-07' AS Date), 692822, 1473, 213);
INSERT into traffic VALUES (1400195123, CAST(N'2021-01-08' AS Date), 692822, 1229, 205);
INSERT into traffic VALUES (1400195123, CAST(N'2021-01-09' AS Date), 692822, 1869, 283);
INSERT into traffic VALUES (1400195123, CAST(N'2021-01-10' AS Date), 692822, 1018, 319);
INSERT into traffic VALUES (1400195123, CAST(N'2021-01-11' AS Date), 692822, 1432, 235);
INSERT into traffic VALUES (1400195123, CAST(N'2021-01-12' AS Date), 692822, 1187, 398);
INSERT into traffic VALUES (1400195123, CAST(N'2021-01-13' AS Date), 692822, 1663, 330);
INSERT into traffic VALUES (1400195123, CAST(N'2021-01-14' AS Date), 692822, 2447, 273);
INSERT into traffic VALUES (1400195123, CAST(N'2021-01-15' AS Date), 692822, 2823, 266);
INSERT into traffic VALUES (1400195123, CAST(N'2021-01-16' AS Date), 692822, 2548, 276);
INSERT into traffic VALUES (1400195123, CAST(N'2021-01-17' AS Date), 692822, 2594, 272);
INSERT into traffic VALUES (1400195123, CAST(N'2021-01-18' AS Date), 692822, 1479, 395);
INSERT into traffic VALUES (1400195123, CAST(N'2021-01-19' AS Date), 692822, 2316, 257);
INSERT into traffic VALUES (1400195123, CAST(N'2021-01-20' AS Date), 692822, 1151, 352);
INSERT into traffic VALUES (1400195123, CAST(N'2021-01-21' AS Date), 692822, 2536, 252);
INSERT into traffic VALUES (1400195123, CAST(N'2021-01-22' AS Date), 692822, 2681, 343);
INSERT into traffic VALUES (1400195123, CAST(N'2021-01-23' AS Date), 692822, 1345, 378);
INSERT into traffic VALUES (1400195123, CAST(N'2021-01-24' AS Date), 692822, 2951, 213);
INSERT into traffic VALUES (1400195123, CAST(N'2021-01-25' AS Date), 692822, 2859, 395);
INSERT into traffic VALUES (1400195123, CAST(N'2021-01-26' AS Date), 692822, 1298, 269);
INSERT into traffic VALUES (1400195123, CAST(N'2021-01-27' AS Date), 692822, 2345, 297);
INSERT into traffic VALUES (1400195123, CAST(N'2021-01-28' AS Date), 692822, 2388, 238);
INSERT into traffic VALUES (1400195123, CAST(N'2021-01-29' AS Date), 692822, 2513, 236);
INSERT into traffic VALUES (1400195123, CAST(N'2021-01-30' AS Date), 692822, 1601, 310);
INSERT into traffic VALUES (1400195182, CAST(N'2021-01-01' AS Date), 692822, 1958, 379);
INSERT into traffic VALUES (1400195182, CAST(N'2021-01-02' AS Date), 692822, 1836, 210);
INSERT into traffic VALUES (1400195182, CAST(N'2021-01-03' AS Date), 692822, 1147, 360);
INSERT into traffic VALUES (1400195182, CAST(N'2021-01-04' AS Date), 692822, 1625, 396);
INSERT into traffic VALUES (1400195182, CAST(N'2021-01-05' AS Date), 692822, 2531, 328);
INSERT into traffic VALUES (1400195182, CAST(N'2021-01-06' AS Date), 692822, 2751, 206);
INSERT into traffic VALUES (1400195182, CAST(N'2021-01-07' AS Date), 692822, 2763, 287);
INSERT into traffic VALUES (1400195182, CAST(N'2021-01-08' AS Date), 692822, 2650, 209);
INSERT into traffic VALUES (1400195182, CAST(N'2021-01-09' AS Date), 692822, 1034, 396);
INSERT into traffic VALUES (1400195182, CAST(N'2021-01-10' AS Date), 692822, 2373, 359);
INSERT into traffic VALUES (1400195182, CAST(N'2021-01-11' AS Date), 692822, 1220, 338);
INSERT into traffic VALUES (1400195182, CAST(N'2021-01-12' AS Date), 692822, 2350, 324);
INSERT into traffic VALUES (1400195182, CAST(N'2021-01-13' AS Date), 692822, 2793, 221);
INSERT into traffic VALUES (1400195182, CAST(N'2021-01-14' AS Date), 692822, 1188, 365);
INSERT into traffic VALUES (1400195182, CAST(N'2021-01-15' AS Date), 692822, 2153, 304);
INSERT into traffic VALUES (1400195182, CAST(N'2021-01-16' AS Date), 692822, 2914, 284);
INSERT into traffic VALUES (1400195182, CAST(N'2021-01-17' AS Date), 692822, 2800, 316);
INSERT into traffic VALUES (1400195182, CAST(N'2021-01-18' AS Date), 692822, 2082, 274);
INSERT into traffic VALUES (1400195182, CAST(N'2021-01-19' AS Date), 692822, 1529, 398);
INSERT into traffic VALUES (1400195182, CAST(N'2021-01-20' AS Date), 692822, 2441, 397);
INSERT into traffic VALUES (1400195182, CAST(N'2021-01-21' AS Date), 692822, 1725, 282);
INSERT into traffic VALUES (1400195182, CAST(N'2021-01-22' AS Date), 692822, 1589, 228);
INSERT into traffic VALUES (1400195182, CAST(N'2021-01-23' AS Date), 692822, 1324, 244);
INSERT into traffic VALUES (1400195182, CAST(N'2021-01-24' AS Date), 692822, 2077, 235);
INSERT into traffic VALUES (1400195182, CAST(N'2021-01-25' AS Date), 692822, 2180, 206);
INSERT into traffic VALUES (1400195182, CAST(N'2021-01-26' AS Date), 692822, 1370, 274);
INSERT into traffic VALUES (1400195182, CAST(N'2021-01-27' AS Date), 692822, 1549, 331);
INSERT into traffic VALUES (1400195182, CAST(N'2021-01-28' AS Date), 692822, 1261, 311);
INSERT into traffic VALUES (1400195182, CAST(N'2021-01-29' AS Date), 692822, 2750, 325);
INSERT into traffic VALUES (1400195182, CAST(N'2021-01-30' AS Date), 692822, 1967, 257);
INSERT into traffic VALUES (1401578618, CAST(N'2021-01-01' AS Date), 693507, 2637, 436);
INSERT into traffic VALUES (1401578618, CAST(N'2021-01-02' AS Date), 693507, 2400, 292);
INSERT into traffic VALUES (1401578618, CAST(N'2021-01-03' AS Date), 693507, 1883, 267);
INSERT into traffic VALUES (1401578618, CAST(N'2021-01-04' AS Date), 693507, 2731, 492);
INSERT into traffic VALUES (1401578618, CAST(N'2021-01-05' AS Date), 693507, 1973, 242);
INSERT into traffic VALUES (1401578618, CAST(N'2021-01-06' AS Date), 693507, 1019, 539);
INSERT into traffic VALUES (1401578618, CAST(N'2021-01-07' AS Date), 693507, 1072, 204);
INSERT into traffic VALUES (1401578618, CAST(N'2021-01-08' AS Date), 693507, 1222, 387);
INSERT into traffic VALUES (1401578618, CAST(N'2021-01-09' AS Date), 693507, 1539, 244);
INSERT into traffic VALUES (1401578618, CAST(N'2021-01-10' AS Date), 693507, 2931, 464);
INSERT into traffic VALUES (1401578618, CAST(N'2021-01-11' AS Date), 693507, 1022, 213);
INSERT into traffic VALUES (1401578618, CAST(N'2021-01-12' AS Date), 693507, 1748, 402);
INSERT into traffic VALUES (1401578618, CAST(N'2021-01-13' AS Date), 693507, 1857, 562);
INSERT into traffic VALUES (1401578618, CAST(N'2021-01-14' AS Date), 693507, 2035, 361);
INSERT into traffic VALUES (1401578618, CAST(N'2021-01-15' AS Date), 693507, 2756, 502);
INSERT into traffic VALUES (1401578618, CAST(N'2021-01-16' AS Date), 693507, 1269, 324);
INSERT into traffic VALUES (1401578618, CAST(N'2021-01-17' AS Date), 693507, 1511, 464);
INSERT into traffic VALUES (1401578618, CAST(N'2021-01-18' AS Date), 693507, 2313, 214);
INSERT into traffic VALUES (1401578618, CAST(N'2021-01-19' AS Date), 693507, 1415, 509);
INSERT into traffic VALUES (1401578618, CAST(N'2021-01-20' AS Date), 693507, 2787, 488);
INSERT into traffic VALUES (1401578618, CAST(N'2021-01-21' AS Date), 693507, 1961, 400);
INSERT into traffic VALUES (1401578618, CAST(N'2021-01-22' AS Date), 693507, 1650, 371);
INSERT into traffic VALUES (1401578618, CAST(N'2021-01-23' AS Date), 693507, 2691, 204);
INSERT into traffic VALUES (1401578618, CAST(N'2021-01-24' AS Date), 693507, 1889, 550);
INSERT into traffic VALUES (1401578618, CAST(N'2021-01-25' AS Date), 693507, 1960, 368);
INSERT into traffic VALUES (1401578618, CAST(N'2021-01-26' AS Date), 693507, 2493, 517);
INSERT into traffic VALUES (1401578618, CAST(N'2021-01-27' AS Date), 693507, 2873, 438);
INSERT into traffic VALUES (1401578618, CAST(N'2021-01-28' AS Date), 693507, 2248, 578);
INSERT into traffic VALUES (1401578618, CAST(N'2021-01-29' AS Date), 693507, 1872, 256);
INSERT into traffic VALUES (1401578618, CAST(N'2021-01-30' AS Date), 693507, 2184, 395);
INSERT into traffic VALUES (1410409964, CAST(N'2021-01-01' AS Date), 697877, 1603, 947);
INSERT into traffic VALUES (1410409964, CAST(N'2021-01-02' AS Date), 697877, 2716, 332);
INSERT into traffic VALUES (1410409964, CAST(N'2021-01-03' AS Date), 697877, 1563, 285);
INSERT into traffic VALUES (1410409964, CAST(N'2021-01-04' AS Date), 697877, 1163, 842);
INSERT into traffic VALUES (1410409964, CAST(N'2021-01-05' AS Date), 697877, 2897, 797);
INSERT into traffic VALUES (1410409964, CAST(N'2021-01-06' AS Date), 697877, 1813, 382);
INSERT into traffic VALUES (1410409964, CAST(N'2021-01-07' AS Date), 697877, 2267, 754);
INSERT into traffic VALUES (1410409964, CAST(N'2021-01-08' AS Date), 697877, 2272, 406);
INSERT into traffic VALUES (1410409964, CAST(N'2021-01-09' AS Date), 697877, 2113, 944);
INSERT into traffic VALUES (1410409964, CAST(N'2021-01-10' AS Date), 697877, 2165, 285);
INSERT into traffic VALUES (1410409964, CAST(N'2021-01-11' AS Date), 697877, 1933, 898);
INSERT into traffic VALUES (1410409964, CAST(N'2021-01-12' AS Date), 697877, 1672, 703);
INSERT into traffic VALUES (1410409964, CAST(N'2021-01-13' AS Date), 697877, 2312, 443);
INSERT into traffic VALUES (1410409964, CAST(N'2021-01-14' AS Date), 697877, 1786, 226);
INSERT into traffic VALUES (1410409964, CAST(N'2021-01-15' AS Date), 697877, 1566, 270);
INSERT into traffic VALUES (1410409964, CAST(N'2021-01-16' AS Date), 697877, 2531, 523);
INSERT into traffic VALUES (1410409964, CAST(N'2021-01-17' AS Date), 697877, 2865, 212);
INSERT into traffic VALUES (1410409964, CAST(N'2021-01-18' AS Date), 697877, 1183, 563);
INSERT into traffic VALUES (1410409964, CAST(N'2021-01-19' AS Date), 697877, 2682, 867);
INSERT into traffic VALUES (1410409964, CAST(N'2021-01-20' AS Date), 697877, 2115, 215);
INSERT into traffic VALUES (1410409964, CAST(N'2021-01-21' AS Date), 697877, 1058, 937);
INSERT into traffic VALUES (1410409964, CAST(N'2021-01-22' AS Date), 697877, 1701, 355);
INSERT into traffic VALUES (1410409964, CAST(N'2021-01-23' AS Date), 697877, 1024, 590);
INSERT into traffic VALUES (1410409964, CAST(N'2021-01-24' AS Date), 697877, 1710, 258);
INSERT into traffic VALUES (1410409964, CAST(N'2021-01-25' AS Date), 697877, 1197, 317);
INSERT into traffic VALUES (1410409964, CAST(N'2021-01-26' AS Date), 697877, 2625, 684);
INSERT into traffic VALUES (1410409964, CAST(N'2021-01-27' AS Date), 697877, 1330, 225);
INSERT into traffic VALUES (1410409964, CAST(N'2021-01-28' AS Date), 697877, 2262, 533);
INSERT into traffic VALUES (1410409964, CAST(N'2021-01-29' AS Date), 697877, 1036, 863);
INSERT into traffic VALUES (1410409964, CAST(N'2021-01-30' AS Date), 697877, 2237, 723);
INSERT into traffic VALUES (1410409983, CAST(N'2021-01-01' AS Date), 697877, 2146, 593);
INSERT into traffic VALUES (1410409983, CAST(N'2021-01-02' AS Date), 697877, 2832, 264);
INSERT into traffic VALUES (1410409983, CAST(N'2021-01-03' AS Date), 697877, 2867, 284);
INSERT into traffic VALUES (1410409983, CAST(N'2021-01-04' AS Date), 697877, 2344, 578);
INSERT into traffic VALUES (1410409983, CAST(N'2021-01-05' AS Date), 697877, 1007, 208);
INSERT into traffic VALUES (1410409983, CAST(N'2021-01-06' AS Date), 697877, 1840, 718);
INSERT into traffic VALUES (1410409983, CAST(N'2021-01-07' AS Date), 697877, 1487, 345);
INSERT into traffic VALUES (1410409983, CAST(N'2021-01-08' AS Date), 697877, 2750, 796);
INSERT into traffic VALUES (1410409983, CAST(N'2021-01-09' AS Date), 697877, 1050, 378);
INSERT into traffic VALUES (1410409983, CAST(N'2021-01-10' AS Date), 697877, 1762, 271);
INSERT into traffic VALUES (1410409983, CAST(N'2021-01-11' AS Date), 697877, 1153, 283);
INSERT into traffic VALUES (1410409983, CAST(N'2021-01-12' AS Date), 697877, 2120, 798);
INSERT into traffic VALUES (1410409983, CAST(N'2021-01-13' AS Date), 697877, 1321, 231);
INSERT into traffic VALUES (1410409983, CAST(N'2021-01-14' AS Date), 697877, 2121, 701);
INSERT into traffic VALUES (1410409983, CAST(N'2021-01-15' AS Date), 697877, 1989, 625);
INSERT into traffic VALUES (1410409983, CAST(N'2021-01-16' AS Date), 697877, 2761, 866);
INSERT into traffic VALUES (1410409983, CAST(N'2021-01-17' AS Date), 697877, 2371, 893);
INSERT into traffic VALUES (1410409983, CAST(N'2021-01-18' AS Date), 697877, 2267, 537);
INSERT into traffic VALUES (1410409983, CAST(N'2021-01-19' AS Date), 697877, 1773, 884);
INSERT into traffic VALUES (1410409983, CAST(N'2021-01-20' AS Date), 697877, 2668, 527);
INSERT into traffic VALUES (1410409983, CAST(N'2021-01-21' AS Date), 697877, 2549, 595);
INSERT into traffic VALUES (1410409983, CAST(N'2021-01-22' AS Date), 697877, 2873, 281);
INSERT into traffic VALUES (1410409983, CAST(N'2021-01-23' AS Date), 697877, 1081, 238);
INSERT into traffic VALUES (1410409983, CAST(N'2021-01-24' AS Date), 697877, 1697, 551);
INSERT into traffic VALUES (1410409983, CAST(N'2021-01-25' AS Date), 697877, 2689, 910);
INSERT into traffic VALUES (1410409983, CAST(N'2021-01-26' AS Date), 697877, 2860, 215);
INSERT into traffic VALUES (1410409983, CAST(N'2021-01-27' AS Date), 697877, 2116, 522);
INSERT into traffic VALUES (1410409983, CAST(N'2021-01-28' AS Date), 697877, 1211, 592);
INSERT into traffic VALUES (1410409983, CAST(N'2021-01-29' AS Date), 697877, 2049, 673);
INSERT into traffic VALUES (1410409983, CAST(N'2021-01-30' AS Date), 697877, 1323, 409);
INSERT into traffic VALUES (1419821449, CAST(N'2021-01-01' AS Date), 702534, 2267, 242);
INSERT into traffic VALUES (1419821449, CAST(N'2021-01-02' AS Date), 702534, 1745, 276);
INSERT into traffic VALUES (1419821449, CAST(N'2021-01-03' AS Date), 702534, 1117, 266);
INSERT into traffic VALUES (1419821449, CAST(N'2021-01-04' AS Date), 702534, 1768, 327);
INSERT into traffic VALUES (1419821449, CAST(N'2021-01-05' AS Date), 702534, 2951, 386);
INSERT into traffic VALUES (1419821449, CAST(N'2021-01-06' AS Date), 702534, 2256, 354);
INSERT into traffic VALUES (1419821449, CAST(N'2021-01-07' AS Date), 702534, 2085, 289);
INSERT into traffic VALUES (1419821449, CAST(N'2021-01-08' AS Date), 702534, 1621, 373);
INSERT into traffic VALUES (1419821449, CAST(N'2021-01-09' AS Date), 702534, 1223, 338);
INSERT into traffic VALUES (1419821449, CAST(N'2021-01-10' AS Date), 702534, 1014, 211);
INSERT into traffic VALUES (1419821449, CAST(N'2021-01-11' AS Date), 702534, 1543, 253);
INSERT into traffic VALUES (1419821449, CAST(N'2021-01-12' AS Date), 702534, 1563, 301);
INSERT into traffic VALUES (1419821449, CAST(N'2021-01-13' AS Date), 702534, 1854, 361);
INSERT into traffic VALUES (1419821449, CAST(N'2021-01-14' AS Date), 702534, 2800, 263);
INSERT into traffic VALUES (1419821449, CAST(N'2021-01-15' AS Date), 702534, 1301, 276);
INSERT into traffic VALUES (1419821449, CAST(N'2021-01-16' AS Date), 702534, 1404, 255);
INSERT into traffic VALUES (1419821449, CAST(N'2021-01-17' AS Date), 702534, 1135, 348);
INSERT into traffic VALUES (1419821449, CAST(N'2021-01-18' AS Date), 702534, 1334, 238);
INSERT into traffic VALUES (1419821449, CAST(N'2021-01-19' AS Date), 702534, 2581, 232);
INSERT into traffic VALUES (1419821449, CAST(N'2021-01-20' AS Date), 702534, 2810, 322);
INSERT into traffic VALUES (1419821449, CAST(N'2021-01-21' AS Date), 702534, 1483, 238);
INSERT into traffic VALUES (1419821449, CAST(N'2021-01-22' AS Date), 702534, 1259, 319);
INSERT into traffic VALUES (1419821449, CAST(N'2021-01-23' AS Date), 702534, 1457, 375);
INSERT into traffic VALUES (1419821449, CAST(N'2021-01-24' AS Date), 702534, 1830, 202);
INSERT into traffic VALUES (1419821449, CAST(N'2021-01-25' AS Date), 702534, 2855, 226);
INSERT into traffic VALUES (1419821449, CAST(N'2021-01-26' AS Date), 702534, 1395, 363);
INSERT into traffic VALUES (1419821449, CAST(N'2021-01-27' AS Date), 702534, 1162, 295);
INSERT into traffic VALUES (1419821449, CAST(N'2021-01-28' AS Date), 702534, 2281, 207);
INSERT into traffic VALUES (1419821449, CAST(N'2021-01-29' AS Date), 702534, 1890, 332);
INSERT into traffic VALUES (1419821449, CAST(N'2021-01-30' AS Date), 702534, 1445, 228);
INSERT into traffic VALUES (1427149431, CAST(N'2021-01-01' AS Date), 706160, 2507, 337);
INSERT into traffic VALUES (1427149431, CAST(N'2021-01-02' AS Date), 706160, 1231, 675);
INSERT into traffic VALUES (1427149431, CAST(N'2021-01-03' AS Date), 706160, 2230, 758);
INSERT into traffic VALUES (1427149431, CAST(N'2021-01-04' AS Date), 706160, 2170, 309);
INSERT into traffic VALUES (1427149431, CAST(N'2021-01-05' AS Date), 706160, 1938, 407);
INSERT into traffic VALUES (1427149431, CAST(N'2021-01-06' AS Date), 706160, 1212, 625);
INSERT into traffic VALUES (1427149431, CAST(N'2021-01-07' AS Date), 706160, 2103, 305);
INSERT into traffic VALUES (1427149431, CAST(N'2021-01-08' AS Date), 706160, 1766, 452);
INSERT into traffic VALUES (1427149431, CAST(N'2021-01-09' AS Date), 706160, 1965, 205);
INSERT into traffic VALUES (1427149431, CAST(N'2021-01-10' AS Date), 706160, 1331, 418);
INSERT into traffic VALUES (1427149431, CAST(N'2021-01-11' AS Date), 706160, 2424, 398);
INSERT into traffic VALUES (1427149431, CAST(N'2021-01-12' AS Date), 706160, 1576, 766);
INSERT into traffic VALUES (1427149431, CAST(N'2021-01-13' AS Date), 706160, 1927, 537);
INSERT into traffic VALUES (1427149431, CAST(N'2021-01-14' AS Date), 706160, 2377, 339);
INSERT into traffic VALUES (1427149431, CAST(N'2021-01-15' AS Date), 706160, 2436, 613);
INSERT into traffic VALUES (1427149431, CAST(N'2021-01-16' AS Date), 706160, 1321, 351);
INSERT into traffic VALUES (1427149431, CAST(N'2021-01-17' AS Date), 706160, 1386, 269);
INSERT into traffic VALUES (1427149431, CAST(N'2021-01-18' AS Date), 706160, 1598, 418);
INSERT into traffic VALUES (1427149431, CAST(N'2021-01-19' AS Date), 706160, 1997, 422);
INSERT into traffic VALUES (1427149431, CAST(N'2021-01-20' AS Date), 706160, 2769, 474);
INSERT into traffic VALUES (1427149431, CAST(N'2021-01-21' AS Date), 706160, 2572, 636);
INSERT into traffic VALUES (1427149431, CAST(N'2021-01-22' AS Date), 706160, 2370, 768);
INSERT into traffic VALUES (1427149431, CAST(N'2021-01-23' AS Date), 706160, 1204, 266);
INSERT into traffic VALUES (1427149431, CAST(N'2021-01-24' AS Date), 706160, 2821, 224);
INSERT into traffic VALUES (1427149431, CAST(N'2021-01-25' AS Date), 706160, 2687, 442);
INSERT into traffic VALUES (1427149431, CAST(N'2021-01-26' AS Date), 706160, 1755, 362);
INSERT into traffic VALUES (1427149431, CAST(N'2021-01-27' AS Date), 706160, 2491, 294);
INSERT into traffic VALUES (1427149431, CAST(N'2021-01-28' AS Date), 706160, 2671, 333);
INSERT into traffic VALUES (1427149431, CAST(N'2021-01-29' AS Date), 706160, 1147, 659);
INSERT into traffic VALUES (1427149431, CAST(N'2021-01-30' AS Date), 706160, 1986, 441);
INSERT into traffic VALUES (1427541403, CAST(N'2021-01-01' AS Date), 706353, 1016, 393);
INSERT into traffic VALUES (1427541403, CAST(N'2021-01-02' AS Date), 706353, 2953, 393);
INSERT into traffic VALUES (1427541403, CAST(N'2021-01-03' AS Date), 706353, 1927, 372);
INSERT into traffic VALUES (1427541403, CAST(N'2021-01-04' AS Date), 706353, 1360, 243);
INSERT into traffic VALUES (1427541403, CAST(N'2021-01-05' AS Date), 706353, 2629, 264);
INSERT into traffic VALUES (1427541403, CAST(N'2021-01-06' AS Date), 706353, 1093, 359);
INSERT into traffic VALUES (1427541403, CAST(N'2021-01-07' AS Date), 706353, 2109, 246);
INSERT into traffic VALUES (1427541403, CAST(N'2021-01-08' AS Date), 706353, 1790, 333);
INSERT into traffic VALUES (1427541403, CAST(N'2021-01-09' AS Date), 706353, 2295, 302);
INSERT into traffic VALUES (1427541403, CAST(N'2021-01-10' AS Date), 706353, 2773, 204);
INSERT into traffic VALUES (1427541403, CAST(N'2021-01-11' AS Date), 706353, 1477, 222);
INSERT into traffic VALUES (1427541403, CAST(N'2021-01-12' AS Date), 706353, 1680, 230);
INSERT into traffic VALUES (1427541403, CAST(N'2021-01-13' AS Date), 706353, 2703, 316);
INSERT into traffic VALUES (1427541403, CAST(N'2021-01-14' AS Date), 706353, 2910, 357);
INSERT into traffic VALUES (1427541403, CAST(N'2021-01-15' AS Date), 706353, 1410, 307);
INSERT into traffic VALUES (1427541403, CAST(N'2021-01-16' AS Date), 706353, 1228, 264);
INSERT into traffic VALUES (1427541403, CAST(N'2021-01-17' AS Date), 706353, 1883, 358);
INSERT into traffic VALUES (1427541403, CAST(N'2021-01-18' AS Date), 706353, 2897, 364);
INSERT into traffic VALUES (1427541403, CAST(N'2021-01-19' AS Date), 706353, 2790, 382);
INSERT into traffic VALUES (1427541403, CAST(N'2021-01-20' AS Date), 706353, 2449, 271);
INSERT into traffic VALUES (1427541403, CAST(N'2021-01-21' AS Date), 706353, 1331, 294);
INSERT into traffic VALUES (1427541403, CAST(N'2021-01-22' AS Date), 706353, 2187, 224);
INSERT into traffic VALUES (1427541403, CAST(N'2021-01-23' AS Date), 706353, 1828, 313);
INSERT into traffic VALUES (1427541403, CAST(N'2021-01-24' AS Date), 706353, 2489, 280);
INSERT into traffic VALUES (1427541403, CAST(N'2021-01-25' AS Date), 706353, 2863, 219);
INSERT into traffic VALUES (1427541403, CAST(N'2021-01-26' AS Date), 706353, 1105, 375);
INSERT into traffic VALUES (1427541403, CAST(N'2021-01-27' AS Date), 706353, 1405, 278);
INSERT into traffic VALUES (1427541403, CAST(N'2021-01-28' AS Date), 706353, 1077, 374);
INSERT into traffic VALUES (1427541403, CAST(N'2021-01-29' AS Date), 706353, 1276, 310);
INSERT into traffic VALUES (1427541403, CAST(N'2021-01-30' AS Date), 706353, 1252, 219);
INSERT into traffic VALUES (1429747774, CAST(N'2021-01-01' AS Date), 707445, 1530, 651);
INSERT into traffic VALUES (1429747774, CAST(N'2021-01-02' AS Date), 707445, 1732, 534);
INSERT into traffic VALUES (1429747774, CAST(N'2021-01-03' AS Date), 707445, 1384, 772);
INSERT into traffic VALUES (1429747774, CAST(N'2021-01-04' AS Date), 707445, 2607, 293);
INSERT into traffic VALUES (1429747774, CAST(N'2021-01-05' AS Date), 707445, 2573, 427);
INSERT into traffic VALUES (1429747774, CAST(N'2021-01-06' AS Date), 707445, 2314, 873);
INSERT into traffic VALUES (1429747774, CAST(N'2021-01-07' AS Date), 707445, 2011, 364);
INSERT into traffic VALUES (1429747774, CAST(N'2021-01-08' AS Date), 707445, 2238, 579);
INSERT into traffic VALUES (1429747774, CAST(N'2021-01-09' AS Date), 707445, 2986, 688);
INSERT into traffic VALUES (1429747774, CAST(N'2021-01-10' AS Date), 707445, 2624, 410);
INSERT into traffic VALUES (1429747774, CAST(N'2021-01-11' AS Date), 707445, 2868, 580);
INSERT into traffic VALUES (1429747774, CAST(N'2021-01-12' AS Date), 707445, 1257, 704);
INSERT into traffic VALUES (1429747774, CAST(N'2021-01-13' AS Date), 707445, 1717, 623);
INSERT into traffic VALUES (1429747774, CAST(N'2021-01-14' AS Date), 707445, 2325, 378);
INSERT into traffic VALUES (1429747774, CAST(N'2021-01-15' AS Date), 707445, 2020, 791);
INSERT into traffic VALUES (1429747774, CAST(N'2021-01-16' AS Date), 707445, 2661, 839);
INSERT into traffic VALUES (1429747774, CAST(N'2021-01-17' AS Date), 707445, 2807, 210);
INSERT into traffic VALUES (1429747774, CAST(N'2021-01-18' AS Date), 707445, 2194, 206);
INSERT into traffic VALUES (1429747774, CAST(N'2021-01-19' AS Date), 707445, 1466, 323);
INSERT into traffic VALUES (1429747774, CAST(N'2021-01-20' AS Date), 707445, 2292, 677);
INSERT into traffic VALUES (1429747774, CAST(N'2021-01-21' AS Date), 707445, 2043, 491);
INSERT into traffic VALUES (1429747774, CAST(N'2021-01-22' AS Date), 707445, 1695, 874);
INSERT into traffic VALUES (1429747774, CAST(N'2021-01-23' AS Date), 707445, 2308, 391);
INSERT into traffic VALUES (1429747774, CAST(N'2021-01-24' AS Date), 707445, 2618, 461);
INSERT into traffic VALUES (1429747774, CAST(N'2021-01-25' AS Date), 707445, 1211, 682);
INSERT into traffic VALUES (1429747774, CAST(N'2021-01-26' AS Date), 707445, 1360, 310);
INSERT into traffic VALUES (1429747774, CAST(N'2021-01-27' AS Date), 707445, 2725, 251);
INSERT into traffic VALUES (1429747774, CAST(N'2021-01-28' AS Date), 707445, 2116, 321);
INSERT into traffic VALUES (1429747774, CAST(N'2021-01-29' AS Date), 707445, 1590, 530);
INSERT into traffic VALUES (1429747774, CAST(N'2021-01-30' AS Date), 707445, 1261, 690);
INSERT into traffic VALUES (1439901796, CAST(N'2021-01-01' AS Date), 712469, 1305, 438);
INSERT into traffic VALUES (1439901796, CAST(N'2021-01-02' AS Date), 712469, 1416, 452);
INSERT into traffic VALUES (1439901796, CAST(N'2021-01-03' AS Date), 712469, 2825, 822);
INSERT into traffic VALUES (1439901796, CAST(N'2021-01-04' AS Date), 712469, 2833, 512);
INSERT into traffic VALUES (1439901796, CAST(N'2021-01-05' AS Date), 712469, 2780, 769);
INSERT into traffic VALUES (1439901796, CAST(N'2021-01-06' AS Date), 712469, 1750, 280);
INSERT into traffic VALUES (1439901796, CAST(N'2021-01-07' AS Date), 712469, 2551, 423);
INSERT into traffic VALUES (1439901796, CAST(N'2021-01-08' AS Date), 712469, 1173, 684);
INSERT into traffic VALUES (1439901796, CAST(N'2021-01-09' AS Date), 712469, 1197, 918);
INSERT into traffic VALUES (1439901796, CAST(N'2021-01-10' AS Date), 712469, 2201, 792);
INSERT into traffic VALUES (1439901796, CAST(N'2021-01-11' AS Date), 712469, 1029, 805);
INSERT into traffic VALUES (1439901796, CAST(N'2021-01-12' AS Date), 712469, 2063, 650);
INSERT into traffic VALUES (1439901796, CAST(N'2021-01-13' AS Date), 712469, 1540, 810);
INSERT into traffic VALUES (1439901796, CAST(N'2021-01-14' AS Date), 712469, 1620, 613);
INSERT into traffic VALUES (1439901796, CAST(N'2021-01-15' AS Date), 712469, 2693, 590);
INSERT into traffic VALUES (1439901796, CAST(N'2021-01-16' AS Date), 712469, 1041, 778);
INSERT into traffic VALUES (1439901796, CAST(N'2021-01-17' AS Date), 712469, 2753, 533);
INSERT into traffic VALUES (1439901796, CAST(N'2021-01-18' AS Date), 712469, 2019, 538);
INSERT into traffic VALUES (1439901796, CAST(N'2021-01-19' AS Date), 712469, 2270, 814);
INSERT into traffic VALUES (1439901796, CAST(N'2021-01-20' AS Date), 712469, 1903, 811);
INSERT into traffic VALUES (1439901796, CAST(N'2021-01-21' AS Date), 712469, 2086, 547);
INSERT into traffic VALUES (1439901796, CAST(N'2021-01-22' AS Date), 712469, 1908, 923);
INSERT into traffic VALUES (1439901796, CAST(N'2021-01-23' AS Date), 712469, 2145, 427);
INSERT into traffic VALUES (1439901796, CAST(N'2021-01-24' AS Date), 712469, 2925, 272);
INSERT into traffic VALUES (1439901796, CAST(N'2021-01-25' AS Date), 712469, 2470, 263);
INSERT into traffic VALUES (1439901796, CAST(N'2021-01-26' AS Date), 712469, 1457, 769);
INSERT into traffic VALUES (1439901796, CAST(N'2021-01-27' AS Date), 712469, 2634, 688);
INSERT into traffic VALUES (1439901796, CAST(N'2021-01-28' AS Date), 712469, 2104, 205);
INSERT into traffic VALUES (1439901796, CAST(N'2021-01-29' AS Date), 712469, 1995, 428);
INSERT into traffic VALUES (1439901796, CAST(N'2021-01-30' AS Date), 712469, 1885, 627);
INSERT into traffic VALUES (1449004140, CAST(N'2021-01-01' AS Date), 716973, 1240, 233);
INSERT into traffic VALUES (1449004140, CAST(N'2021-01-02' AS Date), 716973, 2260, 365);
INSERT into traffic VALUES (1449004140, CAST(N'2021-01-03' AS Date), 716973, 2567, 385);
INSERT into traffic VALUES (1449004140, CAST(N'2021-01-04' AS Date), 716973, 1795, 273);
INSERT into traffic VALUES (1449004140, CAST(N'2021-01-05' AS Date), 716973, 1259, 217);
INSERT into traffic VALUES (1449004140, CAST(N'2021-01-06' AS Date), 716973, 2808, 391);
INSERT into traffic VALUES (1449004140, CAST(N'2021-01-07' AS Date), 716973, 1372, 285);
INSERT into traffic VALUES (1449004140, CAST(N'2021-01-08' AS Date), 716973, 1773, 286);
INSERT into traffic VALUES (1449004140, CAST(N'2021-01-09' AS Date), 716973, 2109, 261);
INSERT into traffic VALUES (1449004140, CAST(N'2021-01-10' AS Date), 716973, 2440, 297);
INSERT into traffic VALUES (1449004140, CAST(N'2021-01-11' AS Date), 716973, 1365, 395);
INSERT into traffic VALUES (1449004140, CAST(N'2021-01-12' AS Date), 716973, 2147, 259);
INSERT into traffic VALUES (1449004140, CAST(N'2021-01-13' AS Date), 716973, 1476, 265);
INSERT into traffic VALUES (1449004140, CAST(N'2021-01-14' AS Date), 716973, 1550, 223);
INSERT into traffic VALUES (1449004140, CAST(N'2021-01-15' AS Date), 716973, 2797, 281);
INSERT into traffic VALUES (1449004140, CAST(N'2021-01-16' AS Date), 716973, 1025, 309);
INSERT into traffic VALUES (1449004140, CAST(N'2021-01-17' AS Date), 716973, 1625, 333);
INSERT into traffic VALUES (1449004140, CAST(N'2021-01-18' AS Date), 716973, 1200, 224);
INSERT into traffic VALUES (1449004140, CAST(N'2021-01-19' AS Date), 716973, 2059, 248);
INSERT into traffic VALUES (1449004140, CAST(N'2021-01-20' AS Date), 716973, 2346, 236);
INSERT into traffic VALUES (1449004140, CAST(N'2021-01-21' AS Date), 716973, 1133, 342);
INSERT into traffic VALUES (1449004140, CAST(N'2021-01-22' AS Date), 716973, 2501, 268);
INSERT into traffic VALUES (1449004140, CAST(N'2021-01-23' AS Date), 716973, 1749, 377);
INSERT into traffic VALUES (1449004140, CAST(N'2021-01-24' AS Date), 716973, 2914, 340);
INSERT into traffic VALUES (1449004140, CAST(N'2021-01-25' AS Date), 716973, 2886, 331);
INSERT into traffic VALUES (1449004140, CAST(N'2021-01-26' AS Date), 716973, 1100, 338);
INSERT into traffic VALUES (1449004140, CAST(N'2021-01-27' AS Date), 716973, 2290, 256);
INSERT into traffic VALUES (1449004140, CAST(N'2021-01-28' AS Date), 716973, 2161, 339);
INSERT into traffic VALUES (1449004140, CAST(N'2021-01-29' AS Date), 716973, 2344, 261);
INSERT into traffic VALUES (1449004140, CAST(N'2021-01-30' AS Date), 716973, 2328, 289);
INSERT into traffic VALUES (1449004145, CAST(N'2021-01-01' AS Date), 716973, 2925, 396);
INSERT into traffic VALUES (1449004145, CAST(N'2021-01-02' AS Date), 716973, 2953, 376);
INSERT into traffic VALUES (1449004145, CAST(N'2021-01-03' AS Date), 716973, 2503, 221);
INSERT into traffic VALUES (1449004145, CAST(N'2021-01-04' AS Date), 716973, 1442, 255);
INSERT into traffic VALUES (1449004145, CAST(N'2021-01-05' AS Date), 716973, 1668, 279);
INSERT into traffic VALUES (1449004145, CAST(N'2021-01-06' AS Date), 716973, 1710, 219);
INSERT into traffic VALUES (1449004145, CAST(N'2021-01-07' AS Date), 716973, 1047, 370);
INSERT into traffic VALUES (1449004145, CAST(N'2021-01-08' AS Date), 716973, 1045, 294);
INSERT into traffic VALUES (1449004145, CAST(N'2021-01-09' AS Date), 716973, 1970, 260);
INSERT into traffic VALUES (1449004145, CAST(N'2021-01-10' AS Date), 716973, 1560, 395);
INSERT into traffic VALUES (1449004145, CAST(N'2021-01-11' AS Date), 716973, 2545, 231);
INSERT into traffic VALUES (1449004145, CAST(N'2021-01-12' AS Date), 716973, 2371, 375);
INSERT into traffic VALUES (1449004145, CAST(N'2021-01-13' AS Date), 716973, 1189, 295);
INSERT into traffic VALUES (1449004145, CAST(N'2021-01-14' AS Date), 716973, 1801, 359);
INSERT into traffic VALUES (1449004145, CAST(N'2021-01-15' AS Date), 716973, 2849, 346);
INSERT into traffic VALUES (1449004145, CAST(N'2021-01-16' AS Date), 716973, 2825, 380);
INSERT into traffic VALUES (1449004145, CAST(N'2021-01-17' AS Date), 716973, 1212, 352);
INSERT into traffic VALUES (1449004145, CAST(N'2021-01-18' AS Date), 716973, 1182, 327);
INSERT into traffic VALUES (1449004145, CAST(N'2021-01-19' AS Date), 716973, 2622, 358);
INSERT into traffic VALUES (1449004145, CAST(N'2021-01-20' AS Date), 716973, 2063, 263);
INSERT into traffic VALUES (1449004145, CAST(N'2021-01-21' AS Date), 716973, 1155, 282);
INSERT into traffic VALUES (1449004145, CAST(N'2021-01-22' AS Date), 716973, 2385, 281);
INSERT into traffic VALUES (1449004145, CAST(N'2021-01-23' AS Date), 716973, 2759, 203);
INSERT into traffic VALUES (1449004145, CAST(N'2021-01-24' AS Date), 716973, 1321, 200);
INSERT into traffic VALUES (1449004145, CAST(N'2021-01-25' AS Date), 716973, 2023, 384);
INSERT into traffic VALUES (1449004145, CAST(N'2021-01-26' AS Date), 716973, 2057, 300);
INSERT into traffic VALUES (1449004145, CAST(N'2021-01-27' AS Date), 716973, 1625, 348);
INSERT into traffic VALUES (1449004145, CAST(N'2021-01-28' AS Date), 716973, 1596, 274);
INSERT into traffic VALUES (1449004145, CAST(N'2021-01-29' AS Date), 716973, 2463, 275);
INSERT into traffic VALUES (1449004145, CAST(N'2021-01-30' AS Date), 716973, 2553, 382);
INSERT into traffic VALUES (1449004173, CAST(N'2021-01-01' AS Date), 716973, 2410, 205);
INSERT into traffic VALUES (1449004173, CAST(N'2021-01-02' AS Date), 716973, 2378, 266);
INSERT into traffic VALUES (1449004173, CAST(N'2021-01-03' AS Date), 716973, 2837, 356);
INSERT into traffic VALUES (1449004173, CAST(N'2021-01-04' AS Date), 716973, 1216, 281);
INSERT into traffic VALUES (1449004173, CAST(N'2021-01-05' AS Date), 716973, 1205, 215);
INSERT into traffic VALUES (1449004173, CAST(N'2021-01-06' AS Date), 716973, 1866, 228);
INSERT into traffic VALUES (1449004173, CAST(N'2021-01-07' AS Date), 716973, 2113, 295);
INSERT into traffic VALUES (1449004173, CAST(N'2021-01-08' AS Date), 716973, 1678, 370);
INSERT into traffic VALUES (1449004173, CAST(N'2021-01-09' AS Date), 716973, 2385, 328);
INSERT into traffic VALUES (1449004173, CAST(N'2021-01-10' AS Date), 716973, 1822, 225);
INSERT into traffic VALUES (1449004173, CAST(N'2021-01-11' AS Date), 716973, 1909, 268);
INSERT into traffic VALUES (1449004173, CAST(N'2021-01-12' AS Date), 716973, 1954, 376);
INSERT into traffic VALUES (1449004173, CAST(N'2021-01-13' AS Date), 716973, 2493, 250);
INSERT into traffic VALUES (1449004173, CAST(N'2021-01-14' AS Date), 716973, 2325, 288);
INSERT into traffic VALUES (1449004173, CAST(N'2021-01-15' AS Date), 716973, 1782, 305);
INSERT into traffic VALUES (1449004173, CAST(N'2021-01-16' AS Date), 716973, 1773, 386);
INSERT into traffic VALUES (1449004173, CAST(N'2021-01-17' AS Date), 716973, 1710, 206);
INSERT into traffic VALUES (1449004173, CAST(N'2021-01-18' AS Date), 716973, 2832, 353);
INSERT into traffic VALUES (1449004173, CAST(N'2021-01-19' AS Date), 716973, 1406, 244);
INSERT into traffic VALUES (1449004173, CAST(N'2021-01-20' AS Date), 716973, 2911, 211);
INSERT into traffic VALUES (1449004173, CAST(N'2021-01-21' AS Date), 716973, 2312, 278);
INSERT into traffic VALUES (1449004173, CAST(N'2021-01-22' AS Date), 716973, 2829, 292);
INSERT into traffic VALUES (1449004173, CAST(N'2021-01-23' AS Date), 716973, 1006, 243);
INSERT into traffic VALUES (1449004173, CAST(N'2021-01-24' AS Date), 716973, 1744, 215);
INSERT into traffic VALUES (1449004173, CAST(N'2021-01-25' AS Date), 716973, 2834, 346);
INSERT into traffic VALUES (1449004173, CAST(N'2021-01-26' AS Date), 716973, 1998, 399);
INSERT into traffic VALUES (1449004173, CAST(N'2021-01-27' AS Date), 716973, 1792, 321);
INSERT into traffic VALUES (1449004173, CAST(N'2021-01-28' AS Date), 716973, 1266, 216);
INSERT into traffic VALUES (1449004173, CAST(N'2021-01-29' AS Date), 716973, 1606, 227);
INSERT into traffic VALUES (1449004173, CAST(N'2021-01-30' AS Date), 716973, 1567, 323);
INSERT into traffic VALUES (1449004181, CAST(N'2021-01-01' AS Date), 716973, 1990, 275);
INSERT into traffic VALUES (1449004181, CAST(N'2021-01-02' AS Date), 716973, 1924, 291);
INSERT into traffic VALUES (1449004181, CAST(N'2021-01-03' AS Date), 716973, 1102, 316);
INSERT into traffic VALUES (1449004181, CAST(N'2021-01-04' AS Date), 716973, 1693, 366);
INSERT into traffic VALUES (1449004181, CAST(N'2021-01-05' AS Date), 716973, 1561, 328);
INSERT into traffic VALUES (1449004181, CAST(N'2021-01-06' AS Date), 716973, 1665, 329);
INSERT into traffic VALUES (1449004181, CAST(N'2021-01-07' AS Date), 716973, 1902, 280);
INSERT into traffic VALUES (1449004181, CAST(N'2021-01-08' AS Date), 716973, 1495, 259);
INSERT into traffic VALUES (1449004181, CAST(N'2021-01-09' AS Date), 716973, 2306, 359);
INSERT into traffic VALUES (1449004181, CAST(N'2021-01-10' AS Date), 716973, 1562, 320);
INSERT into traffic VALUES (1449004181, CAST(N'2021-01-11' AS Date), 716973, 2120, 342);
INSERT into traffic VALUES (1449004181, CAST(N'2021-01-12' AS Date), 716973, 1861, 241);
INSERT into traffic VALUES (1449004181, CAST(N'2021-01-13' AS Date), 716973, 2291, 348);
INSERT into traffic VALUES (1449004181, CAST(N'2021-01-14' AS Date), 716973, 2726, 279);
INSERT into traffic VALUES (1449004181, CAST(N'2021-01-15' AS Date), 716973, 1177, 353);
INSERT into traffic VALUES (1449004181, CAST(N'2021-01-16' AS Date), 716973, 2155, 379);
INSERT into traffic VALUES (1449004181, CAST(N'2021-01-17' AS Date), 716973, 1750, 261);
INSERT into traffic VALUES (1449004181, CAST(N'2021-01-18' AS Date), 716973, 2633, 227);
INSERT into traffic VALUES (1449004181, CAST(N'2021-01-19' AS Date), 716973, 1328, 331);
INSERT into traffic VALUES (1449004181, CAST(N'2021-01-20' AS Date), 716973, 2754, 394);
INSERT into traffic VALUES (1449004181, CAST(N'2021-01-21' AS Date), 716973, 1725, 377);
INSERT into traffic VALUES (1449004181, CAST(N'2021-01-22' AS Date), 716973, 2942, 306);
INSERT into traffic VALUES (1449004181, CAST(N'2021-01-23' AS Date), 716973, 2745, 287);
INSERT into traffic VALUES (1449004181, CAST(N'2021-01-24' AS Date), 716973, 1254, 299);
INSERT into traffic VALUES (1449004181, CAST(N'2021-01-25' AS Date), 716973, 1084, 254);
INSERT into traffic VALUES (1449004181, CAST(N'2021-01-26' AS Date), 716973, 2549, 236);
INSERT into traffic VALUES (1449004181, CAST(N'2021-01-27' AS Date), 716973, 1773, 377);
INSERT into traffic VALUES (1449004181, CAST(N'2021-01-28' AS Date), 716973, 2831, 345);
INSERT into traffic VALUES (1449004181, CAST(N'2021-01-29' AS Date), 716973, 2735, 385);
INSERT into traffic VALUES (1449004181, CAST(N'2021-01-30' AS Date), 716973, 1480, 359);
INSERT into traffic VALUES (1453528079, CAST(N'2021-01-01' AS Date), 719212, 2267, 448);
INSERT into traffic VALUES (1453528079, CAST(N'2021-01-02' AS Date), 719212, 1908, 378);
INSERT into traffic VALUES (1453528079, CAST(N'2021-01-03' AS Date), 719212, 1882, 794);
INSERT into traffic VALUES (1453528079, CAST(N'2021-01-04' AS Date), 719212, 2587, 408);
INSERT into traffic VALUES (1453528079, CAST(N'2021-01-05' AS Date), 719212, 1818, 675);
INSERT into traffic VALUES (1453528079, CAST(N'2021-01-06' AS Date), 719212, 2950, 550);
INSERT into traffic VALUES (1453528079, CAST(N'2021-01-07' AS Date), 719212, 1592, 298);
INSERT into traffic VALUES (1453528079, CAST(N'2021-01-08' AS Date), 719212, 2637, 843);
INSERT into traffic VALUES (1453528079, CAST(N'2021-01-09' AS Date), 719212, 2355, 449);
INSERT into traffic VALUES (1453528079, CAST(N'2021-01-10' AS Date), 719212, 1815, 432);
INSERT into traffic VALUES (1453528079, CAST(N'2021-01-11' AS Date), 719212, 1155, 602);
INSERT into traffic VALUES (1453528079, CAST(N'2021-01-12' AS Date), 719212, 2082, 591);
INSERT into traffic VALUES (1453528079, CAST(N'2021-01-13' AS Date), 719212, 1163, 291);
INSERT into traffic VALUES (1453528079, CAST(N'2021-01-14' AS Date), 719212, 1633, 491);
INSERT into traffic VALUES (1453528079, CAST(N'2021-01-15' AS Date), 719212, 2764, 491);
INSERT into traffic VALUES (1453528079, CAST(N'2021-01-16' AS Date), 719212, 1463, 343);
INSERT into traffic VALUES (1453528079, CAST(N'2021-01-17' AS Date), 719212, 2920, 867);
INSERT into traffic VALUES (1453528079, CAST(N'2021-01-18' AS Date), 719212, 1050, 726);
INSERT into traffic VALUES (1453528079, CAST(N'2021-01-19' AS Date), 719212, 1949, 283);
INSERT into traffic VALUES (1453528079, CAST(N'2021-01-20' AS Date), 719212, 1206, 523);
INSERT into traffic VALUES (1453528079, CAST(N'2021-01-21' AS Date), 719212, 2196, 414);
INSERT into traffic VALUES (1453528079, CAST(N'2021-01-22' AS Date), 719212, 1077, 379);
INSERT into traffic VALUES (1453528079, CAST(N'2021-01-23' AS Date), 719212, 1444, 226);
INSERT into traffic VALUES (1453528079, CAST(N'2021-01-24' AS Date), 719212, 1171, 761);
INSERT into traffic VALUES (1453528079, CAST(N'2021-01-25' AS Date), 719212, 2725, 280);
INSERT into traffic VALUES (1453528079, CAST(N'2021-01-26' AS Date), 719212, 2873, 441);
INSERT into traffic VALUES (1453528079, CAST(N'2021-01-27' AS Date), 719212, 2016, 817);
INSERT into traffic VALUES (1453528079, CAST(N'2021-01-28' AS Date), 719212, 1850, 617);
INSERT into traffic VALUES (1453528079, CAST(N'2021-01-29' AS Date), 719212, 1072, 783);
INSERT into traffic VALUES (1453528079, CAST(N'2021-01-30' AS Date), 719212, 1926, 226);
INSERT into traffic VALUES (1455888763, CAST(N'2021-01-01' AS Date), 720380, 2259, 360);
INSERT into traffic VALUES (1455888763, CAST(N'2021-01-02' AS Date), 720380, 2548, 385);
INSERT into traffic VALUES (1455888763, CAST(N'2021-01-03' AS Date), 720380, 2570, 563);
INSERT into traffic VALUES (1455888763, CAST(N'2021-01-04' AS Date), 720380, 1833, 820);
INSERT into traffic VALUES (1455888763, CAST(N'2021-01-05' AS Date), 720380, 1206, 200);
INSERT into traffic VALUES (1455888763, CAST(N'2021-01-06' AS Date), 720380, 2955, 496);
INSERT into traffic VALUES (1455888763, CAST(N'2021-01-07' AS Date), 720380, 1198, 626);
INSERT into traffic VALUES (1455888763, CAST(N'2021-01-08' AS Date), 720380, 1256, 612);
INSERT into traffic VALUES (1455888763, CAST(N'2021-01-09' AS Date), 720380, 2022, 258);
INSERT into traffic VALUES (1455888763, CAST(N'2021-01-10' AS Date), 720380, 2855, 409);
INSERT into traffic VALUES (1455888763, CAST(N'2021-01-11' AS Date), 720380, 1851, 870);
INSERT into traffic VALUES (1455888763, CAST(N'2021-01-12' AS Date), 720380, 2377, 861);
INSERT into traffic VALUES (1455888763, CAST(N'2021-01-13' AS Date), 720380, 1611, 579);
INSERT into traffic VALUES (1455888763, CAST(N'2021-01-14' AS Date), 720380, 1800, 327);
INSERT into traffic VALUES (1455888763, CAST(N'2021-01-15' AS Date), 720380, 1525, 829);
INSERT into traffic VALUES (1455888763, CAST(N'2021-01-16' AS Date), 720380, 2215, 864);
INSERT into traffic VALUES (1455888763, CAST(N'2021-01-17' AS Date), 720380, 1269, 881);
INSERT into traffic VALUES (1455888763, CAST(N'2021-01-18' AS Date), 720380, 2083, 665);
INSERT into traffic VALUES (1455888763, CAST(N'2021-01-19' AS Date), 720380, 1328, 339);
INSERT into traffic VALUES (1455888763, CAST(N'2021-01-20' AS Date), 720380, 1742, 298);
INSERT into traffic VALUES (1455888763, CAST(N'2021-01-21' AS Date), 720380, 1299, 625);
INSERT into traffic VALUES (1455888763, CAST(N'2021-01-22' AS Date), 720380, 1166, 487);
INSERT into traffic VALUES (1455888763, CAST(N'2021-01-23' AS Date), 720380, 2565, 418);
INSERT into traffic VALUES (1455888763, CAST(N'2021-01-24' AS Date), 720380, 2098, 740);
INSERT into traffic VALUES (1455888763, CAST(N'2021-01-25' AS Date), 720380, 1392, 409);
INSERT into traffic VALUES (1455888763, CAST(N'2021-01-26' AS Date), 720380, 2901, 784);
INSERT into traffic VALUES (1455888763, CAST(N'2021-01-27' AS Date), 720380, 2175, 587);
INSERT into traffic VALUES (1455888763, CAST(N'2021-01-28' AS Date), 720380, 2504, 659);
INSERT into traffic VALUES (1455888763, CAST(N'2021-01-29' AS Date), 720380, 2600, 500);
INSERT into traffic VALUES (1455888763, CAST(N'2021-01-30' AS Date), 720380, 2460, 575);
INSERT into traffic VALUES (1455888776, CAST(N'2021-01-01' AS Date), 720380, 2143, 768);
INSERT into traffic VALUES (1455888776, CAST(N'2021-01-02' AS Date), 720380, 1592, 391);
INSERT into traffic VALUES (1455888776, CAST(N'2021-01-03' AS Date), 720380, 2807, 580);
INSERT into traffic VALUES (1455888776, CAST(N'2021-01-04' AS Date), 720380, 2564, 605);
INSERT into traffic VALUES (1455888776, CAST(N'2021-01-05' AS Date), 720380, 1378, 229);
INSERT into traffic VALUES (1455888776, CAST(N'2021-01-06' AS Date), 720380, 1758, 270);
INSERT into traffic VALUES (1455888776, CAST(N'2021-01-07' AS Date), 720380, 1143, 528);
INSERT into traffic VALUES (1455888776, CAST(N'2021-01-08' AS Date), 720380, 2490, 428);
INSERT into traffic VALUES (1455888776, CAST(N'2021-01-09' AS Date), 720380, 1600, 937);
INSERT into traffic VALUES (1455888776, CAST(N'2021-01-10' AS Date), 720380, 1508, 723);
INSERT into traffic VALUES (1455888776, CAST(N'2021-01-11' AS Date), 720380, 2542, 652);
INSERT into traffic VALUES (1455888776, CAST(N'2021-01-12' AS Date), 720380, 2360, 508);
INSERT into traffic VALUES (1455888776, CAST(N'2021-01-13' AS Date), 720380, 1437, 949);
INSERT into traffic VALUES (1455888776, CAST(N'2021-01-14' AS Date), 720380, 1225, 374);
INSERT into traffic VALUES (1455888776, CAST(N'2021-01-15' AS Date), 720380, 2740, 513);
INSERT into traffic VALUES (1455888776, CAST(N'2021-01-16' AS Date), 720380, 1066, 905);
INSERT into traffic VALUES (1455888776, CAST(N'2021-01-17' AS Date), 720380, 1864, 494);
INSERT into traffic VALUES (1455888776, CAST(N'2021-01-18' AS Date), 720380, 2287, 786);
INSERT into traffic VALUES (1455888776, CAST(N'2021-01-19' AS Date), 720380, 2959, 389);
INSERT into traffic VALUES (1455888776, CAST(N'2021-01-20' AS Date), 720380, 2264, 661);
INSERT into traffic VALUES (1455888776, CAST(N'2021-01-21' AS Date), 720380, 1214, 571);
INSERT into traffic VALUES (1455888776, CAST(N'2021-01-22' AS Date), 720380, 2442, 627);
INSERT into traffic VALUES (1455888776, CAST(N'2021-01-23' AS Date), 720380, 1576, 670);
INSERT into traffic VALUES (1455888776, CAST(N'2021-01-24' AS Date), 720380, 1299, 753);
INSERT into traffic VALUES (1455888776, CAST(N'2021-01-25' AS Date), 720380, 1729, 377);
INSERT into traffic VALUES (1455888776, CAST(N'2021-01-26' AS Date), 720380, 1274, 878);
INSERT into traffic VALUES (1455888776, CAST(N'2021-01-27' AS Date), 720380, 2168, 888);
INSERT into traffic VALUES (1455888776, CAST(N'2021-01-28' AS Date), 720380, 2329, 496);
INSERT into traffic VALUES (1455888776, CAST(N'2021-01-29' AS Date), 720380, 1658, 907);
INSERT into traffic VALUES (1455888776, CAST(N'2021-01-30' AS Date), 720380, 1450, 354);
INSERT into traffic VALUES (1455888790, CAST(N'2021-01-01' AS Date), 720380, 1586, 456);
INSERT into traffic VALUES (1455888790, CAST(N'2021-01-02' AS Date), 720380, 1647, 711);
INSERT into traffic VALUES (1455888790, CAST(N'2021-01-03' AS Date), 720380, 1943, 873);
INSERT into traffic VALUES (1455888790, CAST(N'2021-01-04' AS Date), 720380, 2499, 746);
INSERT into traffic VALUES (1455888790, CAST(N'2021-01-05' AS Date), 720380, 1134, 216);
INSERT into traffic VALUES (1455888790, CAST(N'2021-01-06' AS Date), 720380, 1683, 558);
INSERT into traffic VALUES (1455888790, CAST(N'2021-01-07' AS Date), 720380, 2842, 558);
INSERT into traffic VALUES (1455888790, CAST(N'2021-01-08' AS Date), 720380, 2315, 473);
INSERT into traffic VALUES (1455888790, CAST(N'2021-01-09' AS Date), 720380, 1601, 405);
INSERT into traffic VALUES (1455888790, CAST(N'2021-01-10' AS Date), 720380, 1580, 906);
INSERT into traffic VALUES (1455888790, CAST(N'2021-01-11' AS Date), 720380, 2144, 826);
INSERT into traffic VALUES (1455888790, CAST(N'2021-01-12' AS Date), 720380, 1267, 203);
INSERT into traffic VALUES (1455888790, CAST(N'2021-01-13' AS Date), 720380, 1369, 369);
INSERT into traffic VALUES (1455888790, CAST(N'2021-01-14' AS Date), 720380, 2324, 488);
INSERT into traffic VALUES (1455888790, CAST(N'2021-01-15' AS Date), 720380, 2868, 265);
INSERT into traffic VALUES (1455888790, CAST(N'2021-01-16' AS Date), 720380, 2987, 324);
INSERT into traffic VALUES (1455888790, CAST(N'2021-01-17' AS Date), 720380, 1282, 396);
INSERT into traffic VALUES (1455888790, CAST(N'2021-01-18' AS Date), 720380, 1917, 235);
INSERT into traffic VALUES (1455888790, CAST(N'2021-01-19' AS Date), 720380, 2719, 630);
INSERT into traffic VALUES (1455888790, CAST(N'2021-01-20' AS Date), 720380, 1580, 227);
INSERT into traffic VALUES (1455888790, CAST(N'2021-01-21' AS Date), 720380, 1017, 642);
INSERT into traffic VALUES (1455888790, CAST(N'2021-01-22' AS Date), 720380, 2128, 795);
INSERT into traffic VALUES (1455888790, CAST(N'2021-01-23' AS Date), 720380, 2632, 393);
INSERT into traffic VALUES (1455888790, CAST(N'2021-01-24' AS Date), 720380, 2110, 535);
INSERT into traffic VALUES (1455888790, CAST(N'2021-01-25' AS Date), 720380, 2874, 653);
INSERT into traffic VALUES (1455888790, CAST(N'2021-01-26' AS Date), 720380, 1569, 212);
INSERT into traffic VALUES (1455888790, CAST(N'2021-01-27' AS Date), 720380, 2015, 382);
INSERT into traffic VALUES (1455888790, CAST(N'2021-01-28' AS Date), 720380, 1789, 600);
INSERT into traffic VALUES (1455888790, CAST(N'2021-01-29' AS Date), 720380, 1043, 235);
INSERT into traffic VALUES (1455888790, CAST(N'2021-01-30' AS Date), 720380, 2916, 340);
INSERT into traffic VALUES (1459643304, CAST(N'2021-01-01' AS Date), 722238, 1430, 574);
INSERT into traffic VALUES (1459643304, CAST(N'2021-01-02' AS Date), 722238, 1709, 681);
INSERT into traffic VALUES (1459643304, CAST(N'2021-01-03' AS Date), 722238, 1965, 556);
INSERT into traffic VALUES (1459643304, CAST(N'2021-01-04' AS Date), 722238, 2359, 588);
INSERT into traffic VALUES (1459643304, CAST(N'2021-01-05' AS Date), 722238, 2203, 299);
INSERT into traffic VALUES (1459643304, CAST(N'2021-01-06' AS Date), 722238, 2529, 367);
INSERT into traffic VALUES (1459643304, CAST(N'2021-01-07' AS Date), 722238, 2648, 612);
INSERT into traffic VALUES (1459643304, CAST(N'2021-01-08' AS Date), 722238, 2696, 574);
INSERT into traffic VALUES (1459643304, CAST(N'2021-01-09' AS Date), 722238, 2362, 637);
INSERT into traffic VALUES (1459643304, CAST(N'2021-01-10' AS Date), 722238, 1139, 296);
INSERT into traffic VALUES (1459643304, CAST(N'2021-01-11' AS Date), 722238, 1962, 227);
INSERT into traffic VALUES (1459643304, CAST(N'2021-01-12' AS Date), 722238, 1604, 265);
INSERT into traffic VALUES (1459643304, CAST(N'2021-01-13' AS Date), 722238, 2247, 733);
INSERT into traffic VALUES (1459643304, CAST(N'2021-01-14' AS Date), 722238, 2328, 726);
INSERT into traffic VALUES (1459643304, CAST(N'2021-01-15' AS Date), 722238, 2356, 626);
INSERT into traffic VALUES (1459643304, CAST(N'2021-01-16' AS Date), 722238, 1954, 475);
INSERT into traffic VALUES (1459643304, CAST(N'2021-01-17' AS Date), 722238, 2039, 591);
INSERT into traffic VALUES (1459643304, CAST(N'2021-01-18' AS Date), 722238, 2191, 413);
INSERT into traffic VALUES (1459643304, CAST(N'2021-01-19' AS Date), 722238, 2740, 350);
INSERT into traffic VALUES (1459643304, CAST(N'2021-01-20' AS Date), 722238, 1112, 509);
INSERT into traffic VALUES (1459643304, CAST(N'2021-01-21' AS Date), 722238, 2968, 227);
INSERT into traffic VALUES (1459643304, CAST(N'2021-01-22' AS Date), 722238, 1821, 277);
INSERT into traffic VALUES (1459643304, CAST(N'2021-01-23' AS Date), 722238, 2923, 418);
INSERT into traffic VALUES (1459643304, CAST(N'2021-01-24' AS Date), 722238, 1769, 401);
INSERT into traffic VALUES (1459643304, CAST(N'2021-01-25' AS Date), 722238, 1349, 795);
INSERT into traffic VALUES (1459643304, CAST(N'2021-01-26' AS Date), 722238, 1207, 620);
INSERT into traffic VALUES (1459643304, CAST(N'2021-01-27' AS Date), 722238, 2719, 373);
INSERT into traffic VALUES (1459643304, CAST(N'2021-01-28' AS Date), 722238, 2273, 786);
INSERT into traffic VALUES (1459643304, CAST(N'2021-01-29' AS Date), 722238, 2170, 400);
INSERT into traffic VALUES (1459643304, CAST(N'2021-01-30' AS Date), 722238, 1368, 721);
INSERT into traffic VALUES (1473150576, CAST(N'2021-01-01' AS Date), 728921, 1221, 580);
INSERT into traffic VALUES (1473150576, CAST(N'2021-01-02' AS Date), 728921, 1523, 318);
INSERT into traffic VALUES (1473150576, CAST(N'2021-01-03' AS Date), 728921, 1897, 369);
INSERT into traffic VALUES (1473150576, CAST(N'2021-01-04' AS Date), 728921, 2437, 373);
INSERT into traffic VALUES (1473150576, CAST(N'2021-01-05' AS Date), 728921, 1883, 373);
INSERT into traffic VALUES (1473150576, CAST(N'2021-01-06' AS Date), 728921, 1043, 550);
INSERT into traffic VALUES (1473150576, CAST(N'2021-01-07' AS Date), 728921, 1674, 545);
INSERT into traffic VALUES (1473150576, CAST(N'2021-01-08' AS Date), 728921, 1722, 594);
INSERT into traffic VALUES (1473150576, CAST(N'2021-01-09' AS Date), 728921, 1887, 463);
INSERT into traffic VALUES (1473150576, CAST(N'2021-01-10' AS Date), 728921, 2455, 523);
INSERT into traffic VALUES (1473150576, CAST(N'2021-01-11' AS Date), 728921, 2455, 370);
INSERT into traffic VALUES (1473150576, CAST(N'2021-01-12' AS Date), 728921, 2119, 275);
INSERT into traffic VALUES (1473150576, CAST(N'2021-01-13' AS Date), 728921, 1495, 574);
INSERT into traffic VALUES (1473150576, CAST(N'2021-01-14' AS Date), 728921, 1823, 423);
INSERT into traffic VALUES (1473150576, CAST(N'2021-01-15' AS Date), 728921, 2192, 380);
INSERT into traffic VALUES (1473150576, CAST(N'2021-01-16' AS Date), 728921, 2777, 231);
INSERT into traffic VALUES (1473150576, CAST(N'2021-01-17' AS Date), 728921, 2441, 519);
INSERT into traffic VALUES (1473150576, CAST(N'2021-01-18' AS Date), 728921, 2465, 217);
INSERT into traffic VALUES (1473150576, CAST(N'2021-01-19' AS Date), 728921, 1728, 371);
INSERT into traffic VALUES (1473150576, CAST(N'2021-01-20' AS Date), 728921, 2363, 536);
INSERT into traffic VALUES (1473150576, CAST(N'2021-01-21' AS Date), 728921, 2900, 234);
INSERT into traffic VALUES (1473150576, CAST(N'2021-01-22' AS Date), 728921, 2720, 372);
INSERT into traffic VALUES (1473150576, CAST(N'2021-01-23' AS Date), 728921, 1890, 364);
INSERT into traffic VALUES (1473150576, CAST(N'2021-01-24' AS Date), 728921, 2990, 493);
INSERT into traffic VALUES (1473150576, CAST(N'2021-01-25' AS Date), 728921, 1469, 411);
INSERT into traffic VALUES (1473150576, CAST(N'2021-01-26' AS Date), 728921, 1219, 561);
INSERT into traffic VALUES (1473150576, CAST(N'2021-01-27' AS Date), 728921, 2514, 519);
INSERT into traffic VALUES (1473150576, CAST(N'2021-01-28' AS Date), 728921, 2261, 333);
INSERT into traffic VALUES (1473150576, CAST(N'2021-01-29' AS Date), 728921, 1873, 295);
INSERT into traffic VALUES (1473150576, CAST(N'2021-01-30' AS Date), 728921, 1817, 525);
INSERT into traffic VALUES (1495955632, CAST(N'2021-01-01' AS Date), 740205, 1892, 370);
INSERT into traffic VALUES (1495955632, CAST(N'2021-01-02' AS Date), 740205, 1312, 254);
INSERT into traffic VALUES (1495955632, CAST(N'2021-01-03' AS Date), 740205, 2999, 227);
INSERT into traffic VALUES (1495955632, CAST(N'2021-01-04' AS Date), 740205, 1267, 365);
INSERT into traffic VALUES (1495955632, CAST(N'2021-01-05' AS Date), 740205, 2148, 367);
INSERT into traffic VALUES (1495955632, CAST(N'2021-01-06' AS Date), 740205, 2351, 287);
INSERT into traffic VALUES (1495955632, CAST(N'2021-01-07' AS Date), 740205, 2696, 374);
INSERT into traffic VALUES (1495955632, CAST(N'2021-01-08' AS Date), 740205, 2930, 291);
INSERT into traffic VALUES (1495955632, CAST(N'2021-01-09' AS Date), 740205, 2000, 360);
INSERT into traffic VALUES (1495955632, CAST(N'2021-01-10' AS Date), 740205, 2579, 251);
INSERT into traffic VALUES (1495955632, CAST(N'2021-01-11' AS Date), 740205, 1278, 255);
INSERT into traffic VALUES (1495955632, CAST(N'2021-01-12' AS Date), 740205, 2121, 283);
INSERT into traffic VALUES (1495955632, CAST(N'2021-01-13' AS Date), 740205, 1824, 269);
INSERT into traffic VALUES (1495955632, CAST(N'2021-01-14' AS Date), 740205, 2579, 235);
INSERT into traffic VALUES (1495955632, CAST(N'2021-01-15' AS Date), 740205, 1277, 370);
INSERT into traffic VALUES (1495955632, CAST(N'2021-01-16' AS Date), 740205, 2514, 232);
INSERT into traffic VALUES (1495955632, CAST(N'2021-01-17' AS Date), 740205, 1904, 258);
INSERT into traffic VALUES (1495955632, CAST(N'2021-01-18' AS Date), 740205, 1141, 315);
INSERT into traffic VALUES (1495955632, CAST(N'2021-01-19' AS Date), 740205, 2816, 217);
INSERT into traffic VALUES (1495955632, CAST(N'2021-01-20' AS Date), 740205, 1673, 253);
INSERT into traffic VALUES (1495955632, CAST(N'2021-01-21' AS Date), 740205, 2665, 265);
INSERT into traffic VALUES (1495955632, CAST(N'2021-01-22' AS Date), 740205, 2637, 338);
INSERT into traffic VALUES (1495955632, CAST(N'2021-01-23' AS Date), 740205, 1128, 322);
INSERT into traffic VALUES (1495955632, CAST(N'2021-01-24' AS Date), 740205, 1914, 396);
INSERT into traffic VALUES (1495955632, CAST(N'2021-01-25' AS Date), 740205, 1015, 233);
INSERT into traffic VALUES (1495955632, CAST(N'2021-01-26' AS Date), 740205, 2515, 275);
INSERT into traffic VALUES (1495955632, CAST(N'2021-01-27' AS Date), 740205, 1776, 234);
INSERT into traffic VALUES (1495955632, CAST(N'2021-01-28' AS Date), 740205, 2426, 390);
INSERT into traffic VALUES (1495955632, CAST(N'2021-01-29' AS Date), 740205, 1927, 216);
INSERT into traffic VALUES (1495955632, CAST(N'2021-01-30' AS Date), 740205, 2572, 252);
INSERT into traffic VALUES (1495955635, CAST(N'2021-01-01' AS Date), 740205, 2838, 293);
INSERT into traffic VALUES (1495955635, CAST(N'2021-01-02' AS Date), 740205, 1698, 250);
INSERT into traffic VALUES (1495955635, CAST(N'2021-01-03' AS Date), 740205, 1677, 223);
INSERT into traffic VALUES (1495955635, CAST(N'2021-01-04' AS Date), 740205, 1117, 318);
INSERT into traffic VALUES (1495955635, CAST(N'2021-01-05' AS Date), 740205, 1385, 351);
INSERT into traffic VALUES (1495955635, CAST(N'2021-01-06' AS Date), 740205, 1689, 363);
INSERT into traffic VALUES (1495955635, CAST(N'2021-01-07' AS Date), 740205, 2551, 380);
INSERT into traffic VALUES (1495955635, CAST(N'2021-01-08' AS Date), 740205, 1520, 223);
INSERT into traffic VALUES (1495955635, CAST(N'2021-01-09' AS Date), 740205, 1423, 278);
INSERT into traffic VALUES (1495955635, CAST(N'2021-01-10' AS Date), 740205, 1914, 313);
INSERT into traffic VALUES (1495955635, CAST(N'2021-01-11' AS Date), 740205, 2949, 324);
INSERT into traffic VALUES (1495955635, CAST(N'2021-01-12' AS Date), 740205, 2096, 376);
INSERT into traffic VALUES (1495955635, CAST(N'2021-01-13' AS Date), 740205, 1547, 339);
INSERT into traffic VALUES (1495955635, CAST(N'2021-01-14' AS Date), 740205, 2255, 336);
INSERT into traffic VALUES (1495955635, CAST(N'2021-01-15' AS Date), 740205, 1087, 387);
INSERT into traffic VALUES (1495955635, CAST(N'2021-01-16' AS Date), 740205, 1700, 260);
INSERT into traffic VALUES (1495955635, CAST(N'2021-01-17' AS Date), 740205, 2951, 213);
INSERT into traffic VALUES (1495955635, CAST(N'2021-01-18' AS Date), 740205, 1378, 297);
INSERT into traffic VALUES (1495955635, CAST(N'2021-01-19' AS Date), 740205, 2570, 313);
INSERT into traffic VALUES (1495955635, CAST(N'2021-01-20' AS Date), 740205, 2637, 325);
INSERT into traffic VALUES (1495955635, CAST(N'2021-01-21' AS Date), 740205, 2161, 274);
INSERT into traffic VALUES (1495955635, CAST(N'2021-01-22' AS Date), 740205, 1945, 219);
INSERT into traffic VALUES (1495955635, CAST(N'2021-01-23' AS Date), 740205, 1099, 348);
INSERT into traffic VALUES (1495955635, CAST(N'2021-01-24' AS Date), 740205, 2674, 203);
INSERT into traffic VALUES (1495955635, CAST(N'2021-01-25' AS Date), 740205, 2877, 332);
INSERT into traffic VALUES (1495955635, CAST(N'2021-01-26' AS Date), 740205, 1695, 255);
INSERT into traffic VALUES (1495955635, CAST(N'2021-01-27' AS Date), 740205, 1934, 201);
INSERT into traffic VALUES (1495955635, CAST(N'2021-01-28' AS Date), 740205, 2708, 269);
INSERT into traffic VALUES (1495955635, CAST(N'2021-01-29' AS Date), 740205, 2097, 395);
INSERT into traffic VALUES (1495955635, CAST(N'2021-01-30' AS Date), 740205, 1514, 234);
INSERT into traffic VALUES (1495955644, CAST(N'2021-01-01' AS Date), 740205, 1732, 251);
INSERT into traffic VALUES (1495955644, CAST(N'2021-01-02' AS Date), 740205, 1884, 290);
INSERT into traffic VALUES (1495955644, CAST(N'2021-01-03' AS Date), 740205, 1438, 383);
INSERT into traffic VALUES (1495955644, CAST(N'2021-01-04' AS Date), 740205, 1820, 269);
INSERT into traffic VALUES (1495955644, CAST(N'2021-01-05' AS Date), 740205, 1959, 383);
INSERT into traffic VALUES (1495955644, CAST(N'2021-01-06' AS Date), 740205, 1047, 271);
INSERT into traffic VALUES (1495955644, CAST(N'2021-01-07' AS Date), 740205, 2587, 342);
INSERT into traffic VALUES (1495955644, CAST(N'2021-01-08' AS Date), 740205, 2606, 256);
INSERT into traffic VALUES (1495955644, CAST(N'2021-01-09' AS Date), 740205, 2294, 266);
INSERT into traffic VALUES (1495955644, CAST(N'2021-01-10' AS Date), 740205, 1384, 360);
INSERT into traffic VALUES (1495955644, CAST(N'2021-01-11' AS Date), 740205, 2685, 302);
INSERT into traffic VALUES (1495955644, CAST(N'2021-01-12' AS Date), 740205, 1581, 336);
INSERT into traffic VALUES (1495955644, CAST(N'2021-01-13' AS Date), 740205, 1769, 376);
INSERT into traffic VALUES (1495955644, CAST(N'2021-01-14' AS Date), 740205, 1498, 254);
INSERT into traffic VALUES (1495955644, CAST(N'2021-01-15' AS Date), 740205, 2024, 280);
INSERT into traffic VALUES (1495955644, CAST(N'2021-01-16' AS Date), 740205, 1111, 242);
INSERT into traffic VALUES (1495955644, CAST(N'2021-01-17' AS Date), 740205, 2614, 336);
INSERT into traffic VALUES (1495955644, CAST(N'2021-01-18' AS Date), 740205, 1130, 220);
INSERT into traffic VALUES (1495955644, CAST(N'2021-01-19' AS Date), 740205, 2776, 387);
INSERT into traffic VALUES (1495955644, CAST(N'2021-01-20' AS Date), 740205, 1976, 280);
INSERT into traffic VALUES (1495955644, CAST(N'2021-01-21' AS Date), 740205, 2162, 230);
INSERT into traffic VALUES (1495955644, CAST(N'2021-01-22' AS Date), 740205, 2224, 283);
INSERT into traffic VALUES (1495955644, CAST(N'2021-01-23' AS Date), 740205, 2650, 271);
INSERT into traffic VALUES (1495955644, CAST(N'2021-01-24' AS Date), 740205, 1384, 301);
INSERT into traffic VALUES (1495955644, CAST(N'2021-01-25' AS Date), 740205, 1091, 202);
INSERT into traffic VALUES (1495955644, CAST(N'2021-01-26' AS Date), 740205, 2041, 350);
INSERT into traffic VALUES (1495955644, CAST(N'2021-01-27' AS Date), 740205, 1899, 391);
INSERT into traffic VALUES (1495955644, CAST(N'2021-01-28' AS Date), 740205, 1041, 365);
INSERT into traffic VALUES (1495955644, CAST(N'2021-01-29' AS Date), 740205, 2725, 352);
INSERT into traffic VALUES (1495955644, CAST(N'2021-01-30' AS Date), 740205, 2931, 365);
INSERT into traffic VALUES (1495955656, CAST(N'2021-01-01' AS Date), 740205, 2598, 252);
INSERT into traffic VALUES (1495955656, CAST(N'2021-01-02' AS Date), 740205, 1874, 344);
INSERT into traffic VALUES (1495955656, CAST(N'2021-01-03' AS Date), 740205, 2551, 381);
INSERT into traffic VALUES (1495955656, CAST(N'2021-01-04' AS Date), 740205, 2379, 332);
INSERT into traffic VALUES (1495955656, CAST(N'2021-01-05' AS Date), 740205, 1020, 259);
INSERT into traffic VALUES (1495955656, CAST(N'2021-01-06' AS Date), 740205, 1390, 316);
INSERT into traffic VALUES (1495955656, CAST(N'2021-01-07' AS Date), 740205, 2866, 222);
INSERT into traffic VALUES (1495955656, CAST(N'2021-01-08' AS Date), 740205, 1133, 353);
INSERT into traffic VALUES (1495955656, CAST(N'2021-01-09' AS Date), 740205, 2171, 229);
INSERT into traffic VALUES (1495955656, CAST(N'2021-01-10' AS Date), 740205, 2640, 307);
INSERT into traffic VALUES (1495955656, CAST(N'2021-01-11' AS Date), 740205, 1802, 283);
INSERT into traffic VALUES (1495955656, CAST(N'2021-01-12' AS Date), 740205, 2621, 301);
INSERT into traffic VALUES (1495955656, CAST(N'2021-01-13' AS Date), 740205, 2428, 215);
INSERT into traffic VALUES (1495955656, CAST(N'2021-01-14' AS Date), 740205, 2430, 280);
INSERT into traffic VALUES (1495955656, CAST(N'2021-01-15' AS Date), 740205, 1447, 243);
INSERT into traffic VALUES (1495955656, CAST(N'2021-01-16' AS Date), 740205, 2413, 351);
INSERT into traffic VALUES (1495955656, CAST(N'2021-01-17' AS Date), 740205, 1370, 252);
INSERT into traffic VALUES (1495955656, CAST(N'2021-01-18' AS Date), 740205, 2406, 326);
INSERT into traffic VALUES (1495955656, CAST(N'2021-01-19' AS Date), 740205, 2656, 346);
INSERT into traffic VALUES (1495955656, CAST(N'2021-01-20' AS Date), 740205, 2683, 262);
INSERT into traffic VALUES (1495955656, CAST(N'2021-01-21' AS Date), 740205, 2381, 363);
INSERT into traffic VALUES (1495955656, CAST(N'2021-01-22' AS Date), 740205, 1498, 329);
INSERT into traffic VALUES (1495955656, CAST(N'2021-01-23' AS Date), 740205, 1437, 333);
INSERT into traffic VALUES (1495955656, CAST(N'2021-01-24' AS Date), 740205, 2568, 232);
INSERT into traffic VALUES (1495955656, CAST(N'2021-01-25' AS Date), 740205, 2002, 370);
INSERT into traffic VALUES (1495955656, CAST(N'2021-01-26' AS Date), 740205, 1938, 201);
INSERT into traffic VALUES (1495955656, CAST(N'2021-01-27' AS Date), 740205, 2708, 208);
INSERT into traffic VALUES (1495955656, CAST(N'2021-01-28' AS Date), 740205, 2831, 205);
INSERT into traffic VALUES (1495955656, CAST(N'2021-01-29' AS Date), 740205, 1781, 274);
INSERT into traffic VALUES (1495955656, CAST(N'2021-01-30' AS Date), 740205, 1252, 382);
INSERT into traffic VALUES (1495955746, CAST(N'2021-01-01' AS Date), 740205, 1299, 365);
INSERT into traffic VALUES (1495955746, CAST(N'2021-01-02' AS Date), 740205, 2715, 211);
INSERT into traffic VALUES (1495955746, CAST(N'2021-01-03' AS Date), 740205, 1844, 285);
INSERT into traffic VALUES (1495955746, CAST(N'2021-01-04' AS Date), 740205, 2232, 271);
INSERT into traffic VALUES (1495955746, CAST(N'2021-01-05' AS Date), 740205, 2239, 356);
INSERT into traffic VALUES (1495955746, CAST(N'2021-01-06' AS Date), 740205, 2938, 221);
INSERT into traffic VALUES (1495955746, CAST(N'2021-01-07' AS Date), 740205, 2252, 203);
INSERT into traffic VALUES (1495955746, CAST(N'2021-01-08' AS Date), 740205, 2961, 216);
INSERT into traffic VALUES (1495955746, CAST(N'2021-01-09' AS Date), 740205, 1745, 335);
INSERT into traffic VALUES (1495955746, CAST(N'2021-01-10' AS Date), 740205, 1225, 361);
INSERT into traffic VALUES (1495955746, CAST(N'2021-01-11' AS Date), 740205, 2525, 349);
INSERT into traffic VALUES (1495955746, CAST(N'2021-01-12' AS Date), 740205, 1949, 373);
INSERT into traffic VALUES (1495955746, CAST(N'2021-01-13' AS Date), 740205, 1256, 278);
INSERT into traffic VALUES (1495955746, CAST(N'2021-01-14' AS Date), 740205, 2899, 394);
INSERT into traffic VALUES (1495955746, CAST(N'2021-01-15' AS Date), 740205, 1595, 382);
INSERT into traffic VALUES (1495955746, CAST(N'2021-01-16' AS Date), 740205, 1338, 231);
INSERT into traffic VALUES (1495955746, CAST(N'2021-01-17' AS Date), 740205, 2393, 228);
INSERT into traffic VALUES (1495955746, CAST(N'2021-01-18' AS Date), 740205, 1620, 234);
INSERT into traffic VALUES (1495955746, CAST(N'2021-01-19' AS Date), 740205, 2096, 377);
INSERT into traffic VALUES (1495955746, CAST(N'2021-01-20' AS Date), 740205, 2890, 358);
INSERT into traffic VALUES (1495955746, CAST(N'2021-01-21' AS Date), 740205, 2567, 321);
INSERT into traffic VALUES (1495955746, CAST(N'2021-01-22' AS Date), 740205, 1272, 286);
INSERT into traffic VALUES (1495955746, CAST(N'2021-01-23' AS Date), 740205, 1241, 329);
INSERT into traffic VALUES (1495955746, CAST(N'2021-01-24' AS Date), 740205, 2432, 379);
INSERT into traffic VALUES (1495955746, CAST(N'2021-01-25' AS Date), 740205, 1608, 227);
INSERT into traffic VALUES (1495955746, CAST(N'2021-01-26' AS Date), 740205, 1841, 309);
INSERT into traffic VALUES (1495955746, CAST(N'2021-01-27' AS Date), 740205, 2452, 346);
INSERT into traffic VALUES (1495955746, CAST(N'2021-01-28' AS Date), 740205, 2496, 271);
INSERT into traffic VALUES (1495955746, CAST(N'2021-01-29' AS Date), 740205, 1033, 339);
INSERT into traffic VALUES (1495955746, CAST(N'2021-01-30' AS Date), 740205, 2101, 359);
INSERT into traffic VALUES (1521981149, CAST(N'2021-01-01' AS Date), 753083, 2123, 267);
INSERT into traffic VALUES (1521981149, CAST(N'2021-01-02' AS Date), 753083, 1194, 349);
INSERT into traffic VALUES (1521981149, CAST(N'2021-01-03' AS Date), 753083, 2697, 357);
INSERT into traffic VALUES (1521981149, CAST(N'2021-01-04' AS Date), 753083, 1244, 271);
INSERT into traffic VALUES (1521981149, CAST(N'2021-01-05' AS Date), 753083, 1417, 338);
INSERT into traffic VALUES (1521981149, CAST(N'2021-01-06' AS Date), 753083, 1554, 322);
INSERT into traffic VALUES (1521981149, CAST(N'2021-01-07' AS Date), 753083, 2534, 266);
INSERT into traffic VALUES (1521981149, CAST(N'2021-01-08' AS Date), 753083, 1183, 378);
INSERT into traffic VALUES (1521981149, CAST(N'2021-01-09' AS Date), 753083, 2698, 273);
INSERT into traffic VALUES (1521981149, CAST(N'2021-01-10' AS Date), 753083, 2633, 337);
INSERT into traffic VALUES (1521981149, CAST(N'2021-01-11' AS Date), 753083, 1552, 273);
INSERT into traffic VALUES (1521981149, CAST(N'2021-01-12' AS Date), 753083, 1650, 264);
INSERT into traffic VALUES (1521981149, CAST(N'2021-01-13' AS Date), 753083, 1035, 396);
INSERT into traffic VALUES (1521981149, CAST(N'2021-01-14' AS Date), 753083, 1156, 215);
INSERT into traffic VALUES (1521981149, CAST(N'2021-01-15' AS Date), 753083, 2870, 225);
INSERT into traffic VALUES (1521981149, CAST(N'2021-01-16' AS Date), 753083, 2521, 372);
INSERT into traffic VALUES (1521981149, CAST(N'2021-01-17' AS Date), 753083, 1244, 278);
INSERT into traffic VALUES (1521981149, CAST(N'2021-01-18' AS Date), 753083, 1644, 309);
INSERT into traffic VALUES (1521981149, CAST(N'2021-01-19' AS Date), 753083, 2292, 383);
INSERT into traffic VALUES (1521981149, CAST(N'2021-01-20' AS Date), 753083, 2172, 372);
INSERT into traffic VALUES (1521981149, CAST(N'2021-01-21' AS Date), 753083, 2523, 364);
INSERT into traffic VALUES (1521981149, CAST(N'2021-01-22' AS Date), 753083, 1419, 208);
INSERT into traffic VALUES (1521981149, CAST(N'2021-01-23' AS Date), 753083, 1015, 346);
INSERT into traffic VALUES (1521981149, CAST(N'2021-01-24' AS Date), 753083, 2494, 387);
INSERT into traffic VALUES (1521981149, CAST(N'2021-01-25' AS Date), 753083, 1597, 250);
INSERT into traffic VALUES (1521981149, CAST(N'2021-01-26' AS Date), 753083, 2920, 311);
INSERT into traffic VALUES (1521981149, CAST(N'2021-01-27' AS Date), 753083, 1152, 222);
INSERT into traffic VALUES (1521981149, CAST(N'2021-01-28' AS Date), 753083, 2520, 225);
INSERT into traffic VALUES (1521981149, CAST(N'2021-01-29' AS Date), 753083, 1240, 306);
INSERT into traffic VALUES (1521981149, CAST(N'2021-01-30' AS Date), 753083, 2450, 348);
INSERT into traffic VALUES (1528174687, CAST(N'2021-01-01' AS Date), 756147, 1512, 383);
INSERT into traffic VALUES (1528174687, CAST(N'2021-01-02' AS Date), 756147, 2422, 229);
INSERT into traffic VALUES (1528174687, CAST(N'2021-01-03' AS Date), 756147, 2392, 271);
INSERT into traffic VALUES (1528174687, CAST(N'2021-01-04' AS Date), 756147, 1874, 256);
INSERT into traffic VALUES (1528174687, CAST(N'2021-01-05' AS Date), 756147, 2603, 219);
INSERT into traffic VALUES (1528174687, CAST(N'2021-01-06' AS Date), 756147, 1619, 220);
INSERT into traffic VALUES (1528174687, CAST(N'2021-01-07' AS Date), 756147, 1379, 259);
INSERT into traffic VALUES (1528174687, CAST(N'2021-01-08' AS Date), 756147, 2334, 213);
INSERT into traffic VALUES (1528174687, CAST(N'2021-01-09' AS Date), 756147, 2326, 322);
INSERT into traffic VALUES (1528174687, CAST(N'2021-01-10' AS Date), 756147, 2157, 295);
INSERT into traffic VALUES (1528174687, CAST(N'2021-01-11' AS Date), 756147, 2352, 296);
INSERT into traffic VALUES (1528174687, CAST(N'2021-01-12' AS Date), 756147, 2152, 220);
INSERT into traffic VALUES (1528174687, CAST(N'2021-01-13' AS Date), 756147, 1955, 289);
INSERT into traffic VALUES (1528174687, CAST(N'2021-01-14' AS Date), 756147, 1052, 367);
INSERT into traffic VALUES (1528174687, CAST(N'2021-01-15' AS Date), 756147, 1315, 332);
INSERT into traffic VALUES (1528174687, CAST(N'2021-01-16' AS Date), 756147, 1152, 262);
INSERT into traffic VALUES (1528174687, CAST(N'2021-01-17' AS Date), 756147, 2565, 228);
INSERT into traffic VALUES (1528174687, CAST(N'2021-01-18' AS Date), 756147, 2298, 399);
INSERT into traffic VALUES (1528174687, CAST(N'2021-01-19' AS Date), 756147, 2450, 250);
INSERT into traffic VALUES (1528174687, CAST(N'2021-01-20' AS Date), 756147, 1567, 376);
INSERT into traffic VALUES (1528174687, CAST(N'2021-01-21' AS Date), 756147, 1201, 348);
INSERT into traffic VALUES (1528174687, CAST(N'2021-01-22' AS Date), 756147, 1198, 294);
INSERT into traffic VALUES (1528174687, CAST(N'2021-01-23' AS Date), 756147, 2610, 284);
INSERT into traffic VALUES (1528174687, CAST(N'2021-01-24' AS Date), 756147, 2924, 344);
INSERT into traffic VALUES (1528174687, CAST(N'2021-01-25' AS Date), 756147, 2523, 351);
INSERT into traffic VALUES (1528174687, CAST(N'2021-01-26' AS Date), 756147, 1635, 234);
INSERT into traffic VALUES (1528174687, CAST(N'2021-01-27' AS Date), 756147, 2233, 280);
INSERT into traffic VALUES (1528174687, CAST(N'2021-01-28' AS Date), 756147, 2418, 204);
INSERT into traffic VALUES (1528174687, CAST(N'2021-01-29' AS Date), 756147, 1680, 216);
INSERT into traffic VALUES (1528174687, CAST(N'2021-01-30' AS Date), 756147, 2133, 276);
INSERT into traffic VALUES (1530371678, CAST(N'2021-01-01' AS Date), 757234, 1437, 514);
INSERT into traffic VALUES (1530371678, CAST(N'2021-01-02' AS Date), 757234, 2590, 320);
INSERT into traffic VALUES (1530371678, CAST(N'2021-01-03' AS Date), 757234, 1212, 312);
INSERT into traffic VALUES (1530371678, CAST(N'2021-01-04' AS Date), 757234, 1989, 534);
INSERT into traffic VALUES (1530371678, CAST(N'2021-01-05' AS Date), 757234, 2502, 417);
INSERT into traffic VALUES (1530371678, CAST(N'2021-01-06' AS Date), 757234, 1942, 456);
INSERT into traffic VALUES (1530371678, CAST(N'2021-01-07' AS Date), 757234, 2596, 323);
INSERT into traffic VALUES (1530371678, CAST(N'2021-01-08' AS Date), 757234, 2898, 498);
INSERT into traffic VALUES (1530371678, CAST(N'2021-01-09' AS Date), 757234, 2733, 453);
INSERT into traffic VALUES (1530371678, CAST(N'2021-01-10' AS Date), 757234, 1917, 484);
INSERT into traffic VALUES (1530371678, CAST(N'2021-01-11' AS Date), 757234, 2537, 522);
INSERT into traffic VALUES (1530371678, CAST(N'2021-01-12' AS Date), 757234, 1600, 210);
INSERT into traffic VALUES (1530371678, CAST(N'2021-01-13' AS Date), 757234, 2151, 552);
INSERT into traffic VALUES (1530371678, CAST(N'2021-01-14' AS Date), 757234, 2076, 314);
INSERT into traffic VALUES (1530371678, CAST(N'2021-01-15' AS Date), 757234, 1106, 252);
INSERT into traffic VALUES (1530371678, CAST(N'2021-01-16' AS Date), 757234, 2609, 242);
INSERT into traffic VALUES (1530371678, CAST(N'2021-01-17' AS Date), 757234, 1950, 476);
INSERT into traffic VALUES (1530371678, CAST(N'2021-01-18' AS Date), 757234, 2001, 548);
INSERT into traffic VALUES (1530371678, CAST(N'2021-01-19' AS Date), 757234, 1727, 593);
INSERT into traffic VALUES (1530371678, CAST(N'2021-01-20' AS Date), 757234, 2739, 518);
INSERT into traffic VALUES (1530371678, CAST(N'2021-01-21' AS Date), 757234, 2502, 256);
INSERT into traffic VALUES (1530371678, CAST(N'2021-01-22' AS Date), 757234, 1520, 543);
INSERT into traffic VALUES (1530371678, CAST(N'2021-01-23' AS Date), 757234, 1886, 292);
INSERT into traffic VALUES (1530371678, CAST(N'2021-01-24' AS Date), 757234, 2069, 225);
INSERT into traffic VALUES (1530371678, CAST(N'2021-01-25' AS Date), 757234, 1008, 401);
INSERT into traffic VALUES (1530371678, CAST(N'2021-01-26' AS Date), 757234, 1307, 417);
INSERT into traffic VALUES (1530371678, CAST(N'2021-01-27' AS Date), 757234, 1709, 326);
INSERT into traffic VALUES (1530371678, CAST(N'2021-01-28' AS Date), 757234, 2760, 329);
INSERT into traffic VALUES (1530371678, CAST(N'2021-01-29' AS Date), 757234, 2170, 466);
INSERT into traffic VALUES (1530371678, CAST(N'2021-01-30' AS Date), 757234, 1891, 550);
INSERT into traffic VALUES (1533575899, CAST(N'2021-01-01' AS Date), 758820, 1756, 617);
INSERT into traffic VALUES (1533575899, CAST(N'2021-01-02' AS Date), 758820, 2713, 414);
INSERT into traffic VALUES (1533575899, CAST(N'2021-01-03' AS Date), 758820, 2765, 566);
INSERT into traffic VALUES (1533575899, CAST(N'2021-01-04' AS Date), 758820, 2576, 780);
INSERT into traffic VALUES (1533575899, CAST(N'2021-01-05' AS Date), 758820, 1302, 353);
INSERT into traffic VALUES (1533575899, CAST(N'2021-01-06' AS Date), 758820, 1489, 744);
INSERT into traffic VALUES (1533575899, CAST(N'2021-01-07' AS Date), 758820, 2854, 503);
INSERT into traffic VALUES (1533575899, CAST(N'2021-01-08' AS Date), 758820, 2123, 760);
INSERT into traffic VALUES (1533575899, CAST(N'2021-01-09' AS Date), 758820, 2956, 338);
INSERT into traffic VALUES (1533575899, CAST(N'2021-01-10' AS Date), 758820, 1705, 540);
INSERT into traffic VALUES (1533575899, CAST(N'2021-01-11' AS Date), 758820, 1233, 923);
INSERT into traffic VALUES (1533575899, CAST(N'2021-01-12' AS Date), 758820, 2448, 406);
INSERT into traffic VALUES (1533575899, CAST(N'2021-01-13' AS Date), 758820, 1184, 373);
INSERT into traffic VALUES (1533575899, CAST(N'2021-01-14' AS Date), 758820, 1025, 701);
INSERT into traffic VALUES (1533575899, CAST(N'2021-01-15' AS Date), 758820, 2976, 498);
INSERT into traffic VALUES (1533575899, CAST(N'2021-01-16' AS Date), 758820, 2185, 660);
INSERT into traffic VALUES (1533575899, CAST(N'2021-01-17' AS Date), 758820, 1036, 626);
INSERT into traffic VALUES (1533575899, CAST(N'2021-01-18' AS Date), 758820, 2958, 660);
INSERT into traffic VALUES (1533575899, CAST(N'2021-01-19' AS Date), 758820, 1242, 305);
INSERT into traffic VALUES (1533575899, CAST(N'2021-01-20' AS Date), 758820, 2670, 599);
INSERT into traffic VALUES (1533575899, CAST(N'2021-01-21' AS Date), 758820, 2207, 678);
INSERT into traffic VALUES (1533575899, CAST(N'2021-01-22' AS Date), 758820, 1128, 535);
INSERT into traffic VALUES (1533575899, CAST(N'2021-01-23' AS Date), 758820, 2463, 326);
INSERT into traffic VALUES (1533575899, CAST(N'2021-01-24' AS Date), 758820, 2041, 274);
INSERT into traffic VALUES (1533575899, CAST(N'2021-01-25' AS Date), 758820, 2822, 521);
INSERT into traffic VALUES (1533575899, CAST(N'2021-01-26' AS Date), 758820, 1682, 629);
INSERT into traffic VALUES (1533575899, CAST(N'2021-01-27' AS Date), 758820, 2483, 210);
INSERT into traffic VALUES (1533575899, CAST(N'2021-01-28' AS Date), 758820, 2273, 276);
INSERT into traffic VALUES (1533575899, CAST(N'2021-01-29' AS Date), 758820, 1834, 720);
INSERT into traffic VALUES (1533575899, CAST(N'2021-01-30' AS Date), 758820, 2105, 610);
INSERT into traffic VALUES (1534005671, CAST(N'2021-01-01' AS Date), 759032, 1349, 360);
INSERT into traffic VALUES (1534005671, CAST(N'2021-01-02' AS Date), 759032, 1462, 371);
INSERT into traffic VALUES (1534005671, CAST(N'2021-01-03' AS Date), 759032, 2420, 237);
INSERT into traffic VALUES (1534005671, CAST(N'2021-01-04' AS Date), 759032, 2380, 243);
INSERT into traffic VALUES (1534005671, CAST(N'2021-01-05' AS Date), 759032, 2268, 276);
INSERT into traffic VALUES (1534005671, CAST(N'2021-01-06' AS Date), 759032, 1910, 322);
INSERT into traffic VALUES (1534005671, CAST(N'2021-01-07' AS Date), 759032, 1925, 243);
INSERT into traffic VALUES (1534005671, CAST(N'2021-01-08' AS Date), 759032, 1412, 354);
INSERT into traffic VALUES (1534005671, CAST(N'2021-01-09' AS Date), 759032, 1607, 326);
INSERT into traffic VALUES (1534005671, CAST(N'2021-01-10' AS Date), 759032, 1927, 340);
INSERT into traffic VALUES (1534005671, CAST(N'2021-01-11' AS Date), 759032, 2929, 342);
INSERT into traffic VALUES (1534005671, CAST(N'2021-01-12' AS Date), 759032, 2147, 305);
INSERT into traffic VALUES (1534005671, CAST(N'2021-01-13' AS Date), 759032, 2790, 206);
INSERT into traffic VALUES (1534005671, CAST(N'2021-01-14' AS Date), 759032, 2606, 285);
INSERT into traffic VALUES (1534005671, CAST(N'2021-01-15' AS Date), 759032, 2262, 207);
INSERT into traffic VALUES (1534005671, CAST(N'2021-01-16' AS Date), 759032, 2792, 351);
INSERT into traffic VALUES (1534005671, CAST(N'2021-01-17' AS Date), 759032, 1890, 231);
INSERT into traffic VALUES (1534005671, CAST(N'2021-01-18' AS Date), 759032, 1973, 255);
INSERT into traffic VALUES (1534005671, CAST(N'2021-01-19' AS Date), 759032, 1702, 394);
INSERT into traffic VALUES (1534005671, CAST(N'2021-01-20' AS Date), 759032, 2501, 217);
INSERT into traffic VALUES (1534005671, CAST(N'2021-01-21' AS Date), 759032, 1895, 350);
INSERT into traffic VALUES (1534005671, CAST(N'2021-01-22' AS Date), 759032, 2606, 359);
INSERT into traffic VALUES (1534005671, CAST(N'2021-01-23' AS Date), 759032, 2284, 391);
INSERT into traffic VALUES (1534005671, CAST(N'2021-01-24' AS Date), 759032, 1681, 384);
INSERT into traffic VALUES (1534005671, CAST(N'2021-01-25' AS Date), 759032, 2810, 380);
INSERT into traffic VALUES (1534005671, CAST(N'2021-01-26' AS Date), 759032, 1866, 278);
INSERT into traffic VALUES (1534005671, CAST(N'2021-01-27' AS Date), 759032, 1702, 234);
INSERT into traffic VALUES (1534005671, CAST(N'2021-01-28' AS Date), 759032, 1295, 279);
INSERT into traffic VALUES (1534005671, CAST(N'2021-01-29' AS Date), 759032, 1874, 254);
INSERT into traffic VALUES (1534005671, CAST(N'2021-01-30' AS Date), 759032, 1803, 200);
INSERT into traffic VALUES (1543443089, CAST(N'2021-01-01' AS Date), 763702, 2743, 334);
INSERT into traffic VALUES (1543443089, CAST(N'2021-01-02' AS Date), 763702, 1575, 262);
INSERT into traffic VALUES (1543443089, CAST(N'2021-01-03' AS Date), 763702, 1705, 258);
INSERT into traffic VALUES (1543443089, CAST(N'2021-01-04' AS Date), 763702, 1422, 243);
INSERT into traffic VALUES (1543443089, CAST(N'2021-01-05' AS Date), 763702, 1803, 296);
INSERT into traffic VALUES (1543443089, CAST(N'2021-01-06' AS Date), 763702, 2153, 377);
INSERT into traffic VALUES (1543443089, CAST(N'2021-01-07' AS Date), 763702, 1664, 320);
INSERT into traffic VALUES (1543443089, CAST(N'2021-01-08' AS Date), 763702, 2249, 355);
INSERT into traffic VALUES (1543443089, CAST(N'2021-01-09' AS Date), 763702, 1414, 354);
INSERT into traffic VALUES (1543443089, CAST(N'2021-01-10' AS Date), 763702, 2751, 252);
INSERT into traffic VALUES (1543443089, CAST(N'2021-01-11' AS Date), 763702, 2517, 322);
INSERT into traffic VALUES (1543443089, CAST(N'2021-01-12' AS Date), 763702, 2082, 297);
INSERT into traffic VALUES (1543443089, CAST(N'2021-01-13' AS Date), 763702, 1766, 289);
INSERT into traffic VALUES (1543443089, CAST(N'2021-01-14' AS Date), 763702, 2760, 393);
INSERT into traffic VALUES (1543443089, CAST(N'2021-01-15' AS Date), 763702, 1536, 291);
INSERT into traffic VALUES (1543443089, CAST(N'2021-01-16' AS Date), 763702, 2422, 315);
INSERT into traffic VALUES (1543443089, CAST(N'2021-01-17' AS Date), 763702, 1653, 368);
INSERT into traffic VALUES (1543443089, CAST(N'2021-01-18' AS Date), 763702, 2870, 310);
INSERT into traffic VALUES (1543443089, CAST(N'2021-01-19' AS Date), 763702, 2410, 315);
INSERT into traffic VALUES (1543443089, CAST(N'2021-01-20' AS Date), 763702, 2236, 339);
INSERT into traffic VALUES (1543443089, CAST(N'2021-01-21' AS Date), 763702, 2249, 288);
INSERT into traffic VALUES (1543443089, CAST(N'2021-01-22' AS Date), 763702, 2593, 255);
INSERT into traffic VALUES (1543443089, CAST(N'2021-01-23' AS Date), 763702, 2781, 283);
INSERT into traffic VALUES (1543443089, CAST(N'2021-01-24' AS Date), 763702, 2752, 375);
INSERT into traffic VALUES (1543443089, CAST(N'2021-01-25' AS Date), 763702, 1810, 221);
INSERT into traffic VALUES (1543443089, CAST(N'2021-01-26' AS Date), 763702, 1947, 289);
INSERT into traffic VALUES (1543443089, CAST(N'2021-01-27' AS Date), 763702, 2884, 264);
INSERT into traffic VALUES (1543443089, CAST(N'2021-01-28' AS Date), 763702, 2591, 295);
INSERT into traffic VALUES (1543443089, CAST(N'2021-01-29' AS Date), 763702, 1455, 209);
INSERT into traffic VALUES (1543443089, CAST(N'2021-01-30' AS Date), 763702, 1405, 248);
INSERT into traffic VALUES (1543443131, CAST(N'2021-01-01' AS Date), 763702, 2366, 290);
INSERT into traffic VALUES (1543443131, CAST(N'2021-01-02' AS Date), 763702, 1881, 278);
INSERT into traffic VALUES (1543443131, CAST(N'2021-01-03' AS Date), 763702, 1722, 263);
INSERT into traffic VALUES (1543443131, CAST(N'2021-01-04' AS Date), 763702, 1313, 395);
INSERT into traffic VALUES (1543443131, CAST(N'2021-01-05' AS Date), 763702, 1174, 254);
INSERT into traffic VALUES (1543443131, CAST(N'2021-01-06' AS Date), 763702, 2286, 279);
INSERT into traffic VALUES (1543443131, CAST(N'2021-01-07' AS Date), 763702, 1669, 351);
INSERT into traffic VALUES (1543443131, CAST(N'2021-01-08' AS Date), 763702, 2534, 233);
INSERT into traffic VALUES (1543443131, CAST(N'2021-01-09' AS Date), 763702, 1884, 222);
INSERT into traffic VALUES (1543443131, CAST(N'2021-01-10' AS Date), 763702, 1554, 366);
INSERT into traffic VALUES (1543443131, CAST(N'2021-01-11' AS Date), 763702, 1543, 210);
INSERT into traffic VALUES (1543443131, CAST(N'2021-01-12' AS Date), 763702, 1742, 397);
INSERT into traffic VALUES (1543443131, CAST(N'2021-01-13' AS Date), 763702, 2250, 267);
INSERT into traffic VALUES (1543443131, CAST(N'2021-01-14' AS Date), 763702, 2242, 334);
INSERT into traffic VALUES (1543443131, CAST(N'2021-01-15' AS Date), 763702, 1813, 389);
INSERT into traffic VALUES (1543443131, CAST(N'2021-01-16' AS Date), 763702, 1024, 360);
INSERT into traffic VALUES (1543443131, CAST(N'2021-01-17' AS Date), 763702, 2800, 227);
INSERT into traffic VALUES (1543443131, CAST(N'2021-01-18' AS Date), 763702, 2612, 304);
INSERT into traffic VALUES (1543443131, CAST(N'2021-01-19' AS Date), 763702, 1803, 207);
INSERT into traffic VALUES (1543443131, CAST(N'2021-01-20' AS Date), 763702, 1596, 399);
INSERT into traffic VALUES (1543443131, CAST(N'2021-01-21' AS Date), 763702, 2467, 209);
INSERT into traffic VALUES (1543443131, CAST(N'2021-01-22' AS Date), 763702, 2863, 266);
INSERT into traffic VALUES (1543443131, CAST(N'2021-01-23' AS Date), 763702, 1716, 306);
INSERT into traffic VALUES (1543443131, CAST(N'2021-01-24' AS Date), 763702, 1032, 237);
INSERT into traffic VALUES (1543443131, CAST(N'2021-01-25' AS Date), 763702, 1118, 217);
INSERT into traffic VALUES (1543443131, CAST(N'2021-01-26' AS Date), 763702, 2064, 236);
INSERT into traffic VALUES (1543443131, CAST(N'2021-01-27' AS Date), 763702, 2842, 341);
INSERT into traffic VALUES (1543443131, CAST(N'2021-01-28' AS Date), 763702, 2862, 340);
INSERT into traffic VALUES (1543443131, CAST(N'2021-01-29' AS Date), 763702, 1370, 203);
INSERT into traffic VALUES (1543443131, CAST(N'2021-01-30' AS Date), 763702, 1692, 300);
INSERT into traffic VALUES (1555480501, CAST(N'2021-01-01' AS Date), 769658, 1584, 259);
INSERT into traffic VALUES (1555480501, CAST(N'2021-01-02' AS Date), 769658, 1851, 439);
INSERT into traffic VALUES (1555480501, CAST(N'2021-01-03' AS Date), 769658, 2455, 211);
INSERT into traffic VALUES (1555480501, CAST(N'2021-01-04' AS Date), 769658, 2593, 219);
INSERT into traffic VALUES (1555480501, CAST(N'2021-01-05' AS Date), 769658, 1933, 621);
INSERT into traffic VALUES (1555480501, CAST(N'2021-01-06' AS Date), 769658, 2034, 635);
INSERT into traffic VALUES (1555480501, CAST(N'2021-01-07' AS Date), 769658, 1131, 766);
INSERT into traffic VALUES (1555480501, CAST(N'2021-01-08' AS Date), 769658, 2080, 587);
INSERT into traffic VALUES (1555480501, CAST(N'2021-01-09' AS Date), 769658, 2144, 210);
INSERT into traffic VALUES (1555480501, CAST(N'2021-01-10' AS Date), 769658, 2661, 481);
INSERT into traffic VALUES (1555480501, CAST(N'2021-01-11' AS Date), 769658, 1847, 358);
INSERT into traffic VALUES (1555480501, CAST(N'2021-01-12' AS Date), 769658, 2973, 220);
INSERT into traffic VALUES (1555480501, CAST(N'2021-01-13' AS Date), 769658, 2878, 791);
INSERT into traffic VALUES (1555480501, CAST(N'2021-01-14' AS Date), 769658, 2561, 465);
INSERT into traffic VALUES (1555480501, CAST(N'2021-01-15' AS Date), 769658, 2856, 256);
INSERT into traffic VALUES (1555480501, CAST(N'2021-01-16' AS Date), 769658, 2131, 273);
INSERT into traffic VALUES (1555480501, CAST(N'2021-01-17' AS Date), 769658, 2008, 295);
INSERT into traffic VALUES (1555480501, CAST(N'2021-01-18' AS Date), 769658, 2310, 757);
INSERT into traffic VALUES (1555480501, CAST(N'2021-01-19' AS Date), 769658, 2093, 350);
INSERT into traffic VALUES (1555480501, CAST(N'2021-01-20' AS Date), 769658, 1988, 205);
INSERT into traffic VALUES (1555480501, CAST(N'2021-01-21' AS Date), 769658, 2601, 349);
INSERT into traffic VALUES (1555480501, CAST(N'2021-01-22' AS Date), 769658, 1260, 246);
INSERT into traffic VALUES (1555480501, CAST(N'2021-01-23' AS Date), 769658, 1156, 479);
INSERT into traffic VALUES (1555480501, CAST(N'2021-01-24' AS Date), 769658, 1494, 365);
INSERT into traffic VALUES (1555480501, CAST(N'2021-01-25' AS Date), 769658, 1255, 246);
INSERT into traffic VALUES (1555480501, CAST(N'2021-01-26' AS Date), 769658, 2278, 610);
INSERT into traffic VALUES (1555480501, CAST(N'2021-01-27' AS Date), 769658, 2310, 497);
INSERT into traffic VALUES (1555480501, CAST(N'2021-01-28' AS Date), 769658, 1503, 442);
INSERT into traffic VALUES (1555480501, CAST(N'2021-01-29' AS Date), 769658, 1700, 675);
INSERT into traffic VALUES (1555480501, CAST(N'2021-01-30' AS Date), 769658, 1740, 627);
INSERT into traffic VALUES (1567168555, CAST(N'2021-01-01' AS Date), 775442, 2107, 319);
INSERT into traffic VALUES (1567168555, CAST(N'2021-01-02' AS Date), 775442, 2636, 298);
INSERT into traffic VALUES (1567168555, CAST(N'2021-01-03' AS Date), 775442, 2438, 336);
INSERT into traffic VALUES (1567168555, CAST(N'2021-01-04' AS Date), 775442, 2934, 302);
INSERT into traffic VALUES (1567168555, CAST(N'2021-01-05' AS Date), 775442, 1588, 327);
INSERT into traffic VALUES (1567168555, CAST(N'2021-01-06' AS Date), 775442, 1912, 349);
INSERT into traffic VALUES (1567168555, CAST(N'2021-01-07' AS Date), 775442, 2472, 362);
INSERT into traffic VALUES (1567168555, CAST(N'2021-01-08' AS Date), 775442, 1948, 261);
INSERT into traffic VALUES (1567168555, CAST(N'2021-01-09' AS Date), 775442, 1445, 266);
INSERT into traffic VALUES (1567168555, CAST(N'2021-01-10' AS Date), 775442, 1533, 569);
INSERT into traffic VALUES (1567168555, CAST(N'2021-01-11' AS Date), 775442, 2144, 499);
INSERT into traffic VALUES (1567168555, CAST(N'2021-01-12' AS Date), 775442, 1115, 592);
INSERT into traffic VALUES (1567168555, CAST(N'2021-01-13' AS Date), 775442, 1543, 450);
INSERT into traffic VALUES (1567168555, CAST(N'2021-01-14' AS Date), 775442, 2944, 243);
INSERT into traffic VALUES (1567168555, CAST(N'2021-01-15' AS Date), 775442, 2296, 542);
INSERT into traffic VALUES (1567168555, CAST(N'2021-01-16' AS Date), 775442, 2541, 359);
INSERT into traffic VALUES (1567168555, CAST(N'2021-01-17' AS Date), 775442, 2993, 204);
INSERT into traffic VALUES (1567168555, CAST(N'2021-01-18' AS Date), 775442, 2417, 429);
INSERT into traffic VALUES (1567168555, CAST(N'2021-01-19' AS Date), 775442, 2815, 213);
INSERT into traffic VALUES (1567168555, CAST(N'2021-01-20' AS Date), 775442, 2152, 534);
INSERT into traffic VALUES (1567168555, CAST(N'2021-01-21' AS Date), 775442, 1494, 423);
INSERT into traffic VALUES (1567168555, CAST(N'2021-01-22' AS Date), 775442, 2641, 228);
INSERT into traffic VALUES (1567168555, CAST(N'2021-01-23' AS Date), 775442, 2688, 251);
INSERT into traffic VALUES (1567168555, CAST(N'2021-01-24' AS Date), 775442, 1760, 222);
INSERT into traffic VALUES (1567168555, CAST(N'2021-01-25' AS Date), 775442, 1356, 282);
INSERT into traffic VALUES (1567168555, CAST(N'2021-01-26' AS Date), 775442, 1955, 420);
INSERT into traffic VALUES (1567168555, CAST(N'2021-01-27' AS Date), 775442, 2047, 427);
INSERT into traffic VALUES (1567168555, CAST(N'2021-01-28' AS Date), 775442, 2782, 409);
INSERT into traffic VALUES (1567168555, CAST(N'2021-01-29' AS Date), 775442, 1841, 227);
INSERT into traffic VALUES (1567168555, CAST(N'2021-01-30' AS Date), 775442, 2744, 243);
INSERT into traffic VALUES (1583902018, CAST(N'2021-01-01' AS Date), 783721, 2977, 513);
INSERT into traffic VALUES (1583902018, CAST(N'2021-01-02' AS Date), 783721, 1810, 318);
INSERT into traffic VALUES (1583902018, CAST(N'2021-01-03' AS Date), 783721, 2564, 289);
INSERT into traffic VALUES (1583902018, CAST(N'2021-01-04' AS Date), 783721, 1612, 607);
INSERT into traffic VALUES (1583902018, CAST(N'2021-01-05' AS Date), 783721, 2847, 649);
INSERT into traffic VALUES (1583902018, CAST(N'2021-01-06' AS Date), 783721, 2558, 305);
INSERT into traffic VALUES (1583902018, CAST(N'2021-01-07' AS Date), 783721, 1075, 771);
INSERT into traffic VALUES (1583902018, CAST(N'2021-01-08' AS Date), 783721, 2656, 416);
INSERT into traffic VALUES (1583902018, CAST(N'2021-01-09' AS Date), 783721, 2151, 366);
INSERT into traffic VALUES (1583902018, CAST(N'2021-01-10' AS Date), 783721, 2742, 357);
INSERT into traffic VALUES (1583902018, CAST(N'2021-01-11' AS Date), 783721, 2402, 230);
INSERT into traffic VALUES (1583902018, CAST(N'2021-01-12' AS Date), 783721, 2674, 727);
INSERT into traffic VALUES (1583902018, CAST(N'2021-01-13' AS Date), 783721, 1274, 347);
INSERT into traffic VALUES (1583902018, CAST(N'2021-01-14' AS Date), 783721, 1441, 388);
INSERT into traffic VALUES (1583902018, CAST(N'2021-01-15' AS Date), 783721, 1468, 448);
INSERT into traffic VALUES (1583902018, CAST(N'2021-01-16' AS Date), 783721, 2715, 581);
INSERT into traffic VALUES (1583902018, CAST(N'2021-01-17' AS Date), 783721, 1648, 499);
INSERT into traffic VALUES (1583902018, CAST(N'2021-01-18' AS Date), 783721, 2684, 601);
INSERT into traffic VALUES (1583902018, CAST(N'2021-01-19' AS Date), 783721, 1088, 325);
INSERT into traffic VALUES (1583902018, CAST(N'2021-01-20' AS Date), 783721, 1876, 222);
INSERT into traffic VALUES (1583902018, CAST(N'2021-01-21' AS Date), 783721, 1079, 203);
INSERT into traffic VALUES (1583902018, CAST(N'2021-01-22' AS Date), 783721, 2832, 526);
INSERT into traffic VALUES (1583902018, CAST(N'2021-01-23' AS Date), 783721, 1100, 703);
INSERT into traffic VALUES (1583902018, CAST(N'2021-01-24' AS Date), 783721, 2746, 351);
INSERT into traffic VALUES (1583902018, CAST(N'2021-01-25' AS Date), 783721, 1945, 390);
INSERT into traffic VALUES (1583902018, CAST(N'2021-01-26' AS Date), 783721, 2057, 388);
INSERT into traffic VALUES (1583902018, CAST(N'2021-01-27' AS Date), 783721, 2307, 636);
INSERT into traffic VALUES (1583902018, CAST(N'2021-01-28' AS Date), 783721, 2406, 676);
INSERT into traffic VALUES (1583902018, CAST(N'2021-01-29' AS Date), 783721, 1194, 672);
INSERT into traffic VALUES (1583902018, CAST(N'2021-01-30' AS Date), 783721, 1410, 590);
INSERT into traffic VALUES (1596616116, CAST(N'2021-01-01' AS Date), 790012, 2622, 281);
INSERT into traffic VALUES (1596616116, CAST(N'2021-01-02' AS Date), 790012, 2376, 650);
INSERT into traffic VALUES (1596616116, CAST(N'2021-01-03' AS Date), 790012, 1546, 755);
INSERT into traffic VALUES (1596616116, CAST(N'2021-01-04' AS Date), 790012, 2158, 344);
INSERT into traffic VALUES (1596616116, CAST(N'2021-01-05' AS Date), 790012, 2006, 370);
INSERT into traffic VALUES (1596616116, CAST(N'2021-01-06' AS Date), 790012, 1508, 607);
INSERT into traffic VALUES (1596616116, CAST(N'2021-01-07' AS Date), 790012, 1412, 201);
INSERT into traffic VALUES (1596616116, CAST(N'2021-01-08' AS Date), 790012, 1018, 322);
INSERT into traffic VALUES (1596616116, CAST(N'2021-01-09' AS Date), 790012, 2888, 775);
INSERT into traffic VALUES (1596616116, CAST(N'2021-01-10' AS Date), 790012, 1314, 235);
INSERT into traffic VALUES (1596616116, CAST(N'2021-01-11' AS Date), 790012, 1754, 340);
INSERT into traffic VALUES (1596616116, CAST(N'2021-01-12' AS Date), 790012, 2286, 612);
INSERT into traffic VALUES (1596616116, CAST(N'2021-01-13' AS Date), 790012, 2875, 730);
INSERT into traffic VALUES (1596616116, CAST(N'2021-01-14' AS Date), 790012, 1677, 292);
INSERT into traffic VALUES (1596616116, CAST(N'2021-01-15' AS Date), 790012, 1374, 769);
INSERT into traffic VALUES (1596616116, CAST(N'2021-01-16' AS Date), 790012, 2841, 512);
INSERT into traffic VALUES (1596616116, CAST(N'2021-01-17' AS Date), 790012, 2252, 714);
INSERT into traffic VALUES (1596616116, CAST(N'2021-01-18' AS Date), 790012, 1079, 515);
INSERT into traffic VALUES (1596616116, CAST(N'2021-01-19' AS Date), 790012, 1636, 537);
INSERT into traffic VALUES (1596616116, CAST(N'2021-01-20' AS Date), 790012, 2622, 726);
INSERT into traffic VALUES (1596616116, CAST(N'2021-01-21' AS Date), 790012, 2799, 710);
INSERT into traffic VALUES (1596616116, CAST(N'2021-01-22' AS Date), 790012, 2595, 461);
INSERT into traffic VALUES (1596616116, CAST(N'2021-01-23' AS Date), 790012, 2934, 619);
INSERT into traffic VALUES (1596616116, CAST(N'2021-01-24' AS Date), 790012, 2367, 645);
INSERT into traffic VALUES (1596616116, CAST(N'2021-01-25' AS Date), 790012, 1145, 678);
INSERT into traffic VALUES (1596616116, CAST(N'2021-01-26' AS Date), 790012, 2743, 655);
INSERT into traffic VALUES (1596616116, CAST(N'2021-01-27' AS Date), 790012, 1146, 597);
INSERT into traffic VALUES (1596616116, CAST(N'2021-01-28' AS Date), 790012, 2344, 595);
INSERT into traffic VALUES (1596616116, CAST(N'2021-01-29' AS Date), 790012, 2323, 403);
INSERT into traffic VALUES (1596616116, CAST(N'2021-01-30' AS Date), 790012, 2501, 745);
INSERT into traffic VALUES (1629370179, CAST(N'2021-01-01' AS Date), 806219, 2556, 528);
INSERT into traffic VALUES (1629370179, CAST(N'2021-01-02' AS Date), 806219, 1694, 490);
INSERT into traffic VALUES (1629370179, CAST(N'2021-01-03' AS Date), 806219, 2999, 368);
INSERT into traffic VALUES (1629370179, CAST(N'2021-01-04' AS Date), 806219, 2709, 317);
INSERT into traffic VALUES (1629370179, CAST(N'2021-01-05' AS Date), 806219, 1199, 545);
INSERT into traffic VALUES (1629370179, CAST(N'2021-01-06' AS Date), 806219, 1747, 377);
INSERT into traffic VALUES (1629370179, CAST(N'2021-01-07' AS Date), 806219, 1820, 390);
INSERT into traffic VALUES (1629370179, CAST(N'2021-01-08' AS Date), 806219, 2006, 343);
INSERT into traffic VALUES (1629370179, CAST(N'2021-01-09' AS Date), 806219, 2155, 327);
INSERT into traffic VALUES (1629370179, CAST(N'2021-01-10' AS Date), 806219, 2756, 515);
INSERT into traffic VALUES (1629370179, CAST(N'2021-01-11' AS Date), 806219, 2650, 331);
INSERT into traffic VALUES (1629370179, CAST(N'2021-01-12' AS Date), 806219, 2002, 495);
INSERT into traffic VALUES (1629370179, CAST(N'2021-01-13' AS Date), 806219, 2815, 248);
INSERT into traffic VALUES (1629370179, CAST(N'2021-01-14' AS Date), 806219, 1824, 499);
INSERT into traffic VALUES (1629370179, CAST(N'2021-01-15' AS Date), 806219, 2036, 592);
INSERT into traffic VALUES (1629370179, CAST(N'2021-01-16' AS Date), 806219, 2835, 553);
INSERT into traffic VALUES (1629370179, CAST(N'2021-01-17' AS Date), 806219, 1943, 465);
INSERT into traffic VALUES (1629370179, CAST(N'2021-01-18' AS Date), 806219, 1786, 483);
INSERT into traffic VALUES (1629370179, CAST(N'2021-01-19' AS Date), 806219, 2869, 444);
INSERT into traffic VALUES (1629370179, CAST(N'2021-01-20' AS Date), 806219, 1084, 263);
INSERT into traffic VALUES (1629370179, CAST(N'2021-01-21' AS Date), 806219, 1832, 470);
INSERT into traffic VALUES (1629370179, CAST(N'2021-01-22' AS Date), 806219, 1418, 589);
INSERT into traffic VALUES (1629370179, CAST(N'2021-01-23' AS Date), 806219, 1592, 355);
INSERT into traffic VALUES (1629370179, CAST(N'2021-01-24' AS Date), 806219, 2020, 226);
INSERT into traffic VALUES (1629370179, CAST(N'2021-01-25' AS Date), 806219, 1065, 245);
INSERT into traffic VALUES (1629370179, CAST(N'2021-01-26' AS Date), 806219, 2184, 429);
INSERT into traffic VALUES (1629370179, CAST(N'2021-01-27' AS Date), 806219, 1049, 245);
INSERT into traffic VALUES (1629370179, CAST(N'2021-01-28' AS Date), 806219, 2029, 510);
INSERT into traffic VALUES (1629370179, CAST(N'2021-01-29' AS Date), 806219, 2635, 539);
INSERT into traffic VALUES (1629370179, CAST(N'2021-01-30' AS Date), 806219, 1699, 347);
INSERT into traffic VALUES (1641490653, CAST(N'2021-01-01' AS Date), 812217, 1707, 331);
INSERT into traffic VALUES (1641490653, CAST(N'2021-01-02' AS Date), 812217, 1603, 272);
INSERT into traffic VALUES (1641490653, CAST(N'2021-01-03' AS Date), 812217, 2385, 257);
INSERT into traffic VALUES (1641490653, CAST(N'2021-01-04' AS Date), 812217, 2163, 291);
INSERT into traffic VALUES (1641490653, CAST(N'2021-01-05' AS Date), 812217, 2692, 244);
INSERT into traffic VALUES (1641490653, CAST(N'2021-01-06' AS Date), 812217, 2218, 282);
INSERT into traffic VALUES (1641490653, CAST(N'2021-01-07' AS Date), 812217, 1433, 275);
INSERT into traffic VALUES (1641490653, CAST(N'2021-01-08' AS Date), 812217, 2124, 294);
INSERT into traffic VALUES (1641490653, CAST(N'2021-01-09' AS Date), 812217, 1445, 203);
INSERT into traffic VALUES (1641490653, CAST(N'2021-01-10' AS Date), 812217, 2636, 351);
INSERT into traffic VALUES (1641490653, CAST(N'2021-01-11' AS Date), 812217, 2403, 243);
INSERT into traffic VALUES (1641490653, CAST(N'2021-01-12' AS Date), 812217, 1064, 345);
INSERT into traffic VALUES (1641490653, CAST(N'2021-01-13' AS Date), 812217, 2249, 239);
INSERT into traffic VALUES (1641490653, CAST(N'2021-01-14' AS Date), 812217, 1352, 248);
INSERT into traffic VALUES (1641490653, CAST(N'2021-01-15' AS Date), 812217, 1537, 311);
INSERT into traffic VALUES (1641490653, CAST(N'2021-01-16' AS Date), 812217, 2131, 295);
INSERT into traffic VALUES (1641490653, CAST(N'2021-01-17' AS Date), 812217, 1997, 389);
INSERT into traffic VALUES (1641490653, CAST(N'2021-01-18' AS Date), 812217, 1678, 360);
INSERT into traffic VALUES (1641490653, CAST(N'2021-01-19' AS Date), 812217, 1357, 291);
INSERT into traffic VALUES (1641490653, CAST(N'2021-01-20' AS Date), 812217, 2767, 382);
INSERT into traffic VALUES (1641490653, CAST(N'2021-01-21' AS Date), 812217, 1433, 259);
INSERT into traffic VALUES (1641490653, CAST(N'2021-01-22' AS Date), 812217, 2526, 253);
INSERT into traffic VALUES (1641490653, CAST(N'2021-01-23' AS Date), 812217, 2691, 269);
INSERT into traffic VALUES (1641490653, CAST(N'2021-01-24' AS Date), 812217, 2706, 252);
INSERT into traffic VALUES (1641490653, CAST(N'2021-01-25' AS Date), 812217, 2299, 231);
INSERT into traffic VALUES (1641490653, CAST(N'2021-01-26' AS Date), 812217, 2611, 246);
INSERT into traffic VALUES (1641490653, CAST(N'2021-01-27' AS Date), 812217, 2589, 266);
INSERT into traffic VALUES (1641490653, CAST(N'2021-01-28' AS Date), 812217, 1728, 225);
INSERT into traffic VALUES (1641490653, CAST(N'2021-01-29' AS Date), 812217, 1914, 272);
INSERT into traffic VALUES (1641490653, CAST(N'2021-01-30' AS Date), 812217, 2851, 337);
INSERT into traffic VALUES (1643027411, CAST(N'2021-01-01' AS Date), 812977, 1925, 206);
INSERT into traffic VALUES (1643027411, CAST(N'2021-01-02' AS Date), 812977, 1956, 247);
INSERT into traffic VALUES (1643027411, CAST(N'2021-01-03' AS Date), 812977, 2222, 384);
INSERT into traffic VALUES (1643027411, CAST(N'2021-01-04' AS Date), 812977, 1115, 417);
INSERT into traffic VALUES (1643027411, CAST(N'2021-01-05' AS Date), 812977, 1132, 575);
INSERT into traffic VALUES (1643027411, CAST(N'2021-01-06' AS Date), 812977, 2962, 501);
INSERT into traffic VALUES (1643027411, CAST(N'2021-01-07' AS Date), 812977, 2906, 239);
INSERT into traffic VALUES (1643027411, CAST(N'2021-01-08' AS Date), 812977, 2960, 453);
INSERT into traffic VALUES (1643027411, CAST(N'2021-01-09' AS Date), 812977, 1336, 233);
INSERT into traffic VALUES (1643027411, CAST(N'2021-01-10' AS Date), 812977, 2540, 533);
INSERT into traffic VALUES (1643027411, CAST(N'2021-01-11' AS Date), 812977, 1634, 414);
INSERT into traffic VALUES (1643027411, CAST(N'2021-01-12' AS Date), 812977, 2721, 558);
INSERT into traffic VALUES (1643027411, CAST(N'2021-01-13' AS Date), 812977, 1911, 489);
INSERT into traffic VALUES (1643027411, CAST(N'2021-01-14' AS Date), 812977, 1806, 226);
INSERT into traffic VALUES (1643027411, CAST(N'2021-01-15' AS Date), 812977, 2215, 527);
INSERT into traffic VALUES (1643027411, CAST(N'2021-01-16' AS Date), 812977, 2420, 283);
INSERT into traffic VALUES (1643027411, CAST(N'2021-01-17' AS Date), 812977, 1258, 597);
INSERT into traffic VALUES (1643027411, CAST(N'2021-01-18' AS Date), 812977, 1083, 218);
INSERT into traffic VALUES (1643027411, CAST(N'2021-01-19' AS Date), 812977, 1373, 251);
INSERT into traffic VALUES (1643027411, CAST(N'2021-01-20' AS Date), 812977, 2049, 296);
INSERT into traffic VALUES (1643027411, CAST(N'2021-01-21' AS Date), 812977, 2039, 359);
INSERT into traffic VALUES (1643027411, CAST(N'2021-01-22' AS Date), 812977, 2230, 458);
INSERT into traffic VALUES (1643027411, CAST(N'2021-01-23' AS Date), 812977, 2327, 455);
INSERT into traffic VALUES (1643027411, CAST(N'2021-01-24' AS Date), 812977, 2367, 547);
INSERT into traffic VALUES (1643027411, CAST(N'2021-01-25' AS Date), 812977, 1252, 553);
INSERT into traffic VALUES (1643027411, CAST(N'2021-01-26' AS Date), 812977, 2427, 312);
INSERT into traffic VALUES (1643027411, CAST(N'2021-01-27' AS Date), 812977, 2158, 335);
INSERT into traffic VALUES (1643027411, CAST(N'2021-01-28' AS Date), 812977, 2451, 268);
INSERT into traffic VALUES (1643027411, CAST(N'2021-01-29' AS Date), 812977, 1428, 414);
INSERT into traffic VALUES (1643027411, CAST(N'2021-01-30' AS Date), 812977, 2217, 261);
INSERT into traffic VALUES (1648158270, CAST(N'2021-01-01' AS Date), 815516, 1909, 270);
INSERT into traffic VALUES (1648158270, CAST(N'2021-01-02' AS Date), 815516, 1700, 596);
INSERT into traffic VALUES (1648158270, CAST(N'2021-01-03' AS Date), 815516, 2396, 398);
INSERT into traffic VALUES (1648158270, CAST(N'2021-01-04' AS Date), 815516, 1406, 401);
INSERT into traffic VALUES (1648158270, CAST(N'2021-01-05' AS Date), 815516, 2381, 439);
INSERT into traffic VALUES (1648158270, CAST(N'2021-01-06' AS Date), 815516, 1421, 377);
INSERT into traffic VALUES (1648158270, CAST(N'2021-01-07' AS Date), 815516, 2330, 318);
INSERT into traffic VALUES (1648158270, CAST(N'2021-01-08' AS Date), 815516, 1335, 250);
INSERT into traffic VALUES (1648158270, CAST(N'2021-01-09' AS Date), 815516, 2376, 317);
INSERT into traffic VALUES (1648158270, CAST(N'2021-01-10' AS Date), 815516, 2038, 222);
INSERT into traffic VALUES (1648158270, CAST(N'2021-01-11' AS Date), 815516, 2209, 240);
INSERT into traffic VALUES (1648158270, CAST(N'2021-01-12' AS Date), 815516, 2870, 391);
INSERT into traffic VALUES (1648158270, CAST(N'2021-01-13' AS Date), 815516, 1413, 591);
INSERT into traffic VALUES (1648158270, CAST(N'2021-01-14' AS Date), 815516, 1254, 230);
INSERT into traffic VALUES (1648158270, CAST(N'2021-01-15' AS Date), 815516, 2526, 269);
INSERT into traffic VALUES (1648158270, CAST(N'2021-01-16' AS Date), 815516, 1477, 586);
INSERT into traffic VALUES (1648158270, CAST(N'2021-01-17' AS Date), 815516, 2710, 488);
INSERT into traffic VALUES (1648158270, CAST(N'2021-01-18' AS Date), 815516, 2165, 203);
INSERT into traffic VALUES (1648158270, CAST(N'2021-01-19' AS Date), 815516, 2976, 277);
INSERT into traffic VALUES (1648158270, CAST(N'2021-01-20' AS Date), 815516, 2703, 479);
INSERT into traffic VALUES (1648158270, CAST(N'2021-01-21' AS Date), 815516, 1818, 536);
INSERT into traffic VALUES (1648158270, CAST(N'2021-01-22' AS Date), 815516, 2483, 505);
INSERT into traffic VALUES (1648158270, CAST(N'2021-01-23' AS Date), 815516, 1082, 524);
INSERT into traffic VALUES (1648158270, CAST(N'2021-01-24' AS Date), 815516, 2777, 257);
INSERT into traffic VALUES (1648158270, CAST(N'2021-01-25' AS Date), 815516, 2959, 229);
INSERT into traffic VALUES (1648158270, CAST(N'2021-01-26' AS Date), 815516, 1322, 247);
INSERT into traffic VALUES (1648158270, CAST(N'2021-01-27' AS Date), 815516, 2366, 200);
INSERT into traffic VALUES (1648158270, CAST(N'2021-01-28' AS Date), 815516, 2805, 375);
INSERT into traffic VALUES (1648158270, CAST(N'2021-01-29' AS Date), 815516, 1860, 466);
INSERT into traffic VALUES (1648158270, CAST(N'2021-01-30' AS Date), 815516, 2127, 505);
INSERT into traffic VALUES (1656068643, CAST(N'2021-01-01' AS Date), 819430, 1078, 526);
INSERT into traffic VALUES (1656068643, CAST(N'2021-01-02' AS Date), 819430, 1180, 420);
INSERT into traffic VALUES (1656068643, CAST(N'2021-01-03' AS Date), 819430, 1435, 548);
INSERT into traffic VALUES (1656068643, CAST(N'2021-01-04' AS Date), 819430, 1687, 225);
INSERT into traffic VALUES (1656068643, CAST(N'2021-01-05' AS Date), 819430, 1240, 369);
INSERT into traffic VALUES (1656068643, CAST(N'2021-01-06' AS Date), 819430, 2264, 285);
INSERT into traffic VALUES (1656068643, CAST(N'2021-01-07' AS Date), 819430, 2996, 466);
INSERT into traffic VALUES (1656068643, CAST(N'2021-01-08' AS Date), 819430, 2429, 256);
INSERT into traffic VALUES (1656068643, CAST(N'2021-01-09' AS Date), 819430, 2663, 265);
INSERT into traffic VALUES (1656068643, CAST(N'2021-01-10' AS Date), 819430, 1933, 282);
INSERT into traffic VALUES (1656068643, CAST(N'2021-01-11' AS Date), 819430, 1913, 387);
INSERT into traffic VALUES (1656068643, CAST(N'2021-01-12' AS Date), 819430, 2574, 569);
INSERT into traffic VALUES (1656068643, CAST(N'2021-01-13' AS Date), 819430, 1783, 536);
INSERT into traffic VALUES (1656068643, CAST(N'2021-01-14' AS Date), 819430, 2991, 324);
INSERT into traffic VALUES (1656068643, CAST(N'2021-01-15' AS Date), 819430, 2850, 269);
INSERT into traffic VALUES (1656068643, CAST(N'2021-01-16' AS Date), 819430, 2489, 417);
INSERT into traffic VALUES (1656068643, CAST(N'2021-01-17' AS Date), 819430, 2348, 234);
INSERT into traffic VALUES (1656068643, CAST(N'2021-01-18' AS Date), 819430, 1863, 272);
INSERT into traffic VALUES (1656068643, CAST(N'2021-01-19' AS Date), 819430, 2362, 388);
INSERT into traffic VALUES (1656068643, CAST(N'2021-01-20' AS Date), 819430, 1151, 364);
INSERT into traffic VALUES (1656068643, CAST(N'2021-01-21' AS Date), 819430, 2394, 283);
INSERT into traffic VALUES (1656068643, CAST(N'2021-01-22' AS Date), 819430, 1741, 507);
INSERT into traffic VALUES (1656068643, CAST(N'2021-01-23' AS Date), 819430, 1248, 460);
INSERT into traffic VALUES (1656068643, CAST(N'2021-01-24' AS Date), 819430, 2684, 313);
INSERT into traffic VALUES (1656068643, CAST(N'2021-01-25' AS Date), 819430, 1299, 376);
INSERT into traffic VALUES (1656068643, CAST(N'2021-01-26' AS Date), 819430, 1835, 563);
INSERT into traffic VALUES (1656068643, CAST(N'2021-01-27' AS Date), 819430, 1674, 529);
INSERT into traffic VALUES (1656068643, CAST(N'2021-01-28' AS Date), 819430, 2400, 377);
INSERT into traffic VALUES (1656068643, CAST(N'2021-01-29' AS Date), 819430, 1112, 596);
INSERT into traffic VALUES (1656068643, CAST(N'2021-01-30' AS Date), 819430, 1649, 247);
INSERT into traffic VALUES (1669638632, CAST(N'2021-01-01' AS Date), 826144, 1849, 421);
INSERT into traffic VALUES (1669638632, CAST(N'2021-01-02' AS Date), 826144, 1408, 711);
INSERT into traffic VALUES (1669638632, CAST(N'2021-01-03' AS Date), 826144, 2153, 549);
INSERT into traffic VALUES (1669638632, CAST(N'2021-01-04' AS Date), 826144, 1461, 459);
INSERT into traffic VALUES (1669638632, CAST(N'2021-01-05' AS Date), 826144, 1570, 698);
INSERT into traffic VALUES (1669638632, CAST(N'2021-01-06' AS Date), 826144, 1979, 580);
INSERT into traffic VALUES (1669638632, CAST(N'2021-01-07' AS Date), 826144, 1506, 210);
INSERT into traffic VALUES (1669638632, CAST(N'2021-01-08' AS Date), 826144, 1725, 222);
INSERT into traffic VALUES (1669638632, CAST(N'2021-01-09' AS Date), 826144, 2961, 499);
INSERT into traffic VALUES (1669638632, CAST(N'2021-01-10' AS Date), 826144, 1839, 491);
INSERT into traffic VALUES (1669638632, CAST(N'2021-01-11' AS Date), 826144, 1092, 649);
INSERT into traffic VALUES (1669638632, CAST(N'2021-01-12' AS Date), 826144, 1169, 203);
INSERT into traffic VALUES (1669638632, CAST(N'2021-01-13' AS Date), 826144, 2783, 718);
INSERT into traffic VALUES (1669638632, CAST(N'2021-01-14' AS Date), 826144, 2727, 743);
INSERT into traffic VALUES (1669638632, CAST(N'2021-01-15' AS Date), 826144, 1539, 228);
INSERT into traffic VALUES (1669638632, CAST(N'2021-01-16' AS Date), 826144, 1642, 893);
INSERT into traffic VALUES (1669638632, CAST(N'2021-01-17' AS Date), 826144, 1162, 839);
INSERT into traffic VALUES (1669638632, CAST(N'2021-01-18' AS Date), 826144, 1986, 498);
INSERT into traffic VALUES (1669638632, CAST(N'2021-01-19' AS Date), 826144, 2431, 389);
INSERT into traffic VALUES (1669638632, CAST(N'2021-01-20' AS Date), 826144, 1519, 925);
INSERT into traffic VALUES (1669638632, CAST(N'2021-01-21' AS Date), 826144, 1081, 518);
INSERT into traffic VALUES (1669638632, CAST(N'2021-01-22' AS Date), 826144, 1533, 757);
INSERT into traffic VALUES (1669638632, CAST(N'2021-01-23' AS Date), 826144, 2884, 656);
INSERT into traffic VALUES (1669638632, CAST(N'2021-01-24' AS Date), 826144, 1649, 937);
INSERT into traffic VALUES (1669638632, CAST(N'2021-01-25' AS Date), 826144, 2055, 888);
INSERT into traffic VALUES (1669638632, CAST(N'2021-01-26' AS Date), 826144, 1212, 865);
INSERT into traffic VALUES (1669638632, CAST(N'2021-01-27' AS Date), 826144, 2477, 617);
INSERT into traffic VALUES (1669638632, CAST(N'2021-01-28' AS Date), 826144, 2545, 722);
INSERT into traffic VALUES (1669638632, CAST(N'2021-01-29' AS Date), 826144, 1258, 310);
INSERT into traffic VALUES (1669638632, CAST(N'2021-01-30' AS Date), 826144, 2467, 614);
INSERT into traffic VALUES (1681180523, CAST(N'2021-01-01' AS Date), 831855, 2458, 240);
INSERT into traffic VALUES (1681180523, CAST(N'2021-01-02' AS Date), 831855, 1780, 226);
INSERT into traffic VALUES (1681180523, CAST(N'2021-01-03' AS Date), 831855, 1314, 224);
INSERT into traffic VALUES (1681180523, CAST(N'2021-01-04' AS Date), 831855, 2194, 541);
INSERT into traffic VALUES (1681180523, CAST(N'2021-01-05' AS Date), 831855, 2462, 562);
INSERT into traffic VALUES (1681180523, CAST(N'2021-01-06' AS Date), 831855, 1690, 434);
INSERT into traffic VALUES (1681180523, CAST(N'2021-01-07' AS Date), 831855, 1610, 667);
INSERT into traffic VALUES (1681180523, CAST(N'2021-01-08' AS Date), 831855, 2353, 319);
INSERT into traffic VALUES (1681180523, CAST(N'2021-01-09' AS Date), 831855, 2186, 552);
INSERT into traffic VALUES (1681180523, CAST(N'2021-01-10' AS Date), 831855, 2560, 440);
INSERT into traffic VALUES (1681180523, CAST(N'2021-01-11' AS Date), 831855, 1729, 646);
INSERT into traffic VALUES (1681180523, CAST(N'2021-01-12' AS Date), 831855, 1190, 710);
INSERT into traffic VALUES (1681180523, CAST(N'2021-01-13' AS Date), 831855, 2697, 363);
INSERT into traffic VALUES (1681180523, CAST(N'2021-01-14' AS Date), 831855, 1347, 746);
INSERT into traffic VALUES (1681180523, CAST(N'2021-01-15' AS Date), 831855, 1166, 591);
INSERT into traffic VALUES (1681180523, CAST(N'2021-01-16' AS Date), 831855, 1692, 445);
INSERT into traffic VALUES (1681180523, CAST(N'2021-01-17' AS Date), 831855, 1505, 616);
INSERT into traffic VALUES (1681180523, CAST(N'2021-01-18' AS Date), 831855, 1821, 263);
INSERT into traffic VALUES (1681180523, CAST(N'2021-01-19' AS Date), 831855, 1099, 571);
INSERT into traffic VALUES (1681180523, CAST(N'2021-01-20' AS Date), 831855, 1752, 527);
INSERT into traffic VALUES (1681180523, CAST(N'2021-01-21' AS Date), 831855, 2058, 271);
INSERT into traffic VALUES (1681180523, CAST(N'2021-01-22' AS Date), 831855, 1052, 612);
INSERT into traffic VALUES (1681180523, CAST(N'2021-01-23' AS Date), 831855, 2191, 734);
INSERT into traffic VALUES (1681180523, CAST(N'2021-01-24' AS Date), 831855, 1348, 591);
INSERT into traffic VALUES (1681180523, CAST(N'2021-01-25' AS Date), 831855, 2149, 649);
INSERT into traffic VALUES (1681180523, CAST(N'2021-01-26' AS Date), 831855, 1937, 273);
INSERT into traffic VALUES (1681180523, CAST(N'2021-01-27' AS Date), 831855, 1289, 485);
INSERT into traffic VALUES (1681180523, CAST(N'2021-01-28' AS Date), 831855, 2942, 237);
INSERT into traffic VALUES (1681180523, CAST(N'2021-01-29' AS Date), 831855, 2423, 628);
INSERT into traffic VALUES (1681180523, CAST(N'2021-01-30' AS Date), 831855, 1884, 730);
INSERT into traffic VALUES (1698927825, CAST(N'2021-01-01' AS Date), 840637, 1855, 599);
INSERT into traffic VALUES (1698927825, CAST(N'2021-01-02' AS Date), 840637, 1440, 272);
INSERT into traffic VALUES (1698927825, CAST(N'2021-01-03' AS Date), 840637, 2217, 802);
INSERT into traffic VALUES (1698927825, CAST(N'2021-01-04' AS Date), 840637, 1929, 767);
INSERT into traffic VALUES (1698927825, CAST(N'2021-01-05' AS Date), 840637, 1661, 435);
INSERT into traffic VALUES (1698927825, CAST(N'2021-01-06' AS Date), 840637, 1868, 858);
INSERT into traffic VALUES (1698927825, CAST(N'2021-01-07' AS Date), 840637, 2127, 853);
INSERT into traffic VALUES (1698927825, CAST(N'2021-01-08' AS Date), 840637, 1873, 747);
INSERT into traffic VALUES (1698927825, CAST(N'2021-01-09' AS Date), 840637, 1268, 378);
INSERT into traffic VALUES (1698927825, CAST(N'2021-01-10' AS Date), 840637, 1909, 771);
INSERT into traffic VALUES (1698927825, CAST(N'2021-01-11' AS Date), 840637, 1510, 846);
INSERT into traffic VALUES (1698927825, CAST(N'2021-01-12' AS Date), 840637, 1866, 425);
INSERT into traffic VALUES (1698927825, CAST(N'2021-01-13' AS Date), 840637, 2071, 718);
INSERT into traffic VALUES (1698927825, CAST(N'2021-01-14' AS Date), 840637, 1145, 585);
INSERT into traffic VALUES (1698927825, CAST(N'2021-01-15' AS Date), 840637, 1631, 310);
INSERT into traffic VALUES (1698927825, CAST(N'2021-01-16' AS Date), 840637, 2959, 317);
INSERT into traffic VALUES (1698927825, CAST(N'2021-01-17' AS Date), 840637, 2625, 546);
INSERT into traffic VALUES (1698927825, CAST(N'2021-01-18' AS Date), 840637, 2233, 561);
INSERT into traffic VALUES (1698927825, CAST(N'2021-01-19' AS Date), 840637, 2883, 807);
INSERT into traffic VALUES (1698927825, CAST(N'2021-01-20' AS Date), 840637, 1723, 848);
INSERT into traffic VALUES (1698927825, CAST(N'2021-01-21' AS Date), 840637, 2088, 365);
INSERT into traffic VALUES (1698927825, CAST(N'2021-01-22' AS Date), 840637, 1353, 716);
INSERT into traffic VALUES (1698927825, CAST(N'2021-01-23' AS Date), 840637, 2983, 776);
INSERT into traffic VALUES (1698927825, CAST(N'2021-01-24' AS Date), 840637, 2434, 596);
INSERT into traffic VALUES (1698927825, CAST(N'2021-01-25' AS Date), 840637, 2296, 346);
INSERT into traffic VALUES (1698927825, CAST(N'2021-01-26' AS Date), 840637, 1848, 821);
INSERT into traffic VALUES (1698927825, CAST(N'2021-01-27' AS Date), 840637, 1807, 614);
INSERT into traffic VALUES (1698927825, CAST(N'2021-01-28' AS Date), 840637, 1061, 825);
INSERT into traffic VALUES (1698927825, CAST(N'2021-01-29' AS Date), 840637, 1849, 433);
INSERT into traffic VALUES (1698927825, CAST(N'2021-01-30' AS Date), 840637, 2098, 866);
INSERT into traffic VALUES (1700043673, CAST(N'2021-01-01' AS Date), 841189, 1281, 265);
INSERT into traffic VALUES (1700043673, CAST(N'2021-01-02' AS Date), 841189, 1285, 487);
INSERT into traffic VALUES (1700043673, CAST(N'2021-01-03' AS Date), 841189, 2893, 453);
INSERT into traffic VALUES (1700043673, CAST(N'2021-01-04' AS Date), 841189, 2883, 220);
INSERT into traffic VALUES (1700043673, CAST(N'2021-01-05' AS Date), 841189, 2004, 503);
INSERT into traffic VALUES (1700043673, CAST(N'2021-01-06' AS Date), 841189, 1343, 211);
INSERT into traffic VALUES (1700043673, CAST(N'2021-01-07' AS Date), 841189, 1755, 300);
INSERT into traffic VALUES (1700043673, CAST(N'2021-01-08' AS Date), 841189, 1875, 529);
INSERT into traffic VALUES (1700043673, CAST(N'2021-01-09' AS Date), 841189, 1659, 312);
INSERT into traffic VALUES (1700043673, CAST(N'2021-01-10' AS Date), 841189, 1385, 402);
INSERT into traffic VALUES (1700043673, CAST(N'2021-01-11' AS Date), 841189, 2279, 201);
INSERT into traffic VALUES (1700043673, CAST(N'2021-01-12' AS Date), 841189, 2368, 357);
INSERT into traffic VALUES (1700043673, CAST(N'2021-01-13' AS Date), 841189, 1330, 521);
INSERT into traffic VALUES (1700043673, CAST(N'2021-01-14' AS Date), 841189, 2980, 276);
INSERT into traffic VALUES (1700043673, CAST(N'2021-01-15' AS Date), 841189, 1272, 574);
INSERT into traffic VALUES (1700043673, CAST(N'2021-01-16' AS Date), 841189, 2852, 508);
INSERT into traffic VALUES (1700043673, CAST(N'2021-01-17' AS Date), 841189, 1463, 283);
INSERT into traffic VALUES (1700043673, CAST(N'2021-01-18' AS Date), 841189, 1040, 459);
INSERT into traffic VALUES (1700043673, CAST(N'2021-01-19' AS Date), 841189, 2258, 442);
INSERT into traffic VALUES (1700043673, CAST(N'2021-01-20' AS Date), 841189, 2254, 318);
INSERT into traffic VALUES (1700043673, CAST(N'2021-01-21' AS Date), 841189, 2093, 335);
INSERT into traffic VALUES (1700043673, CAST(N'2021-01-22' AS Date), 841189, 2433, 230);
INSERT into traffic VALUES (1700043673, CAST(N'2021-01-23' AS Date), 841189, 1177, 424);
INSERT into traffic VALUES (1700043673, CAST(N'2021-01-24' AS Date), 841189, 2044, 406);
INSERT into traffic VALUES (1700043673, CAST(N'2021-01-25' AS Date), 841189, 1742, 320);
INSERT into traffic VALUES (1700043673, CAST(N'2021-01-26' AS Date), 841189, 2101, 441);
INSERT into traffic VALUES (1700043673, CAST(N'2021-01-27' AS Date), 841189, 1740, 243);
INSERT into traffic VALUES (1700043673, CAST(N'2021-01-28' AS Date), 841189, 1685, 448);
INSERT into traffic VALUES (1700043673, CAST(N'2021-01-29' AS Date), 841189, 1549, 236);
INSERT into traffic VALUES (1700043673, CAST(N'2021-01-30' AS Date), 841189, 1545, 551);
INSERT into traffic VALUES (1728624531, CAST(N'2021-01-01' AS Date), 855331, 2691, 489);
INSERT into traffic VALUES (1728624531, CAST(N'2021-01-02' AS Date), 855331, 1686, 256);
INSERT into traffic VALUES (1728624531, CAST(N'2021-01-03' AS Date), 855331, 2574, 408);
INSERT into traffic VALUES (1728624531, CAST(N'2021-01-04' AS Date), 855331, 2959, 554);
INSERT into traffic VALUES (1728624531, CAST(N'2021-01-05' AS Date), 855331, 1230, 484);
INSERT into traffic VALUES (1728624531, CAST(N'2021-01-06' AS Date), 855331, 1411, 247);
INSERT into traffic VALUES (1728624531, CAST(N'2021-01-07' AS Date), 855331, 1966, 325);
INSERT into traffic VALUES (1728624531, CAST(N'2021-01-08' AS Date), 855331, 1441, 357);
INSERT into traffic VALUES (1728624531, CAST(N'2021-01-09' AS Date), 855331, 2948, 554);
INSERT into traffic VALUES (1728624531, CAST(N'2021-01-10' AS Date), 855331, 2165, 356);
INSERT into traffic VALUES (1728624531, CAST(N'2021-01-11' AS Date), 855331, 2526, 558);
INSERT into traffic VALUES (1728624531, CAST(N'2021-01-12' AS Date), 855331, 2643, 297);
INSERT into traffic VALUES (1728624531, CAST(N'2021-01-13' AS Date), 855331, 2533, 234);
INSERT into traffic VALUES (1728624531, CAST(N'2021-01-14' AS Date), 855331, 1353, 206);
INSERT into traffic VALUES (1728624531, CAST(N'2021-01-15' AS Date), 855331, 2314, 201);
INSERT into traffic VALUES (1728624531, CAST(N'2021-01-16' AS Date), 855331, 2607, 431);
INSERT into traffic VALUES (1728624531, CAST(N'2021-01-17' AS Date), 855331, 2519, 407);
INSERT into traffic VALUES (1728624531, CAST(N'2021-01-18' AS Date), 855331, 1375, 480);
INSERT into traffic VALUES (1728624531, CAST(N'2021-01-19' AS Date), 855331, 2459, 250);
INSERT into traffic VALUES (1728624531, CAST(N'2021-01-20' AS Date), 855331, 2620, 383);
INSERT into traffic VALUES (1728624531, CAST(N'2021-01-21' AS Date), 855331, 2563, 425);
INSERT into traffic VALUES (1728624531, CAST(N'2021-01-22' AS Date), 855331, 1047, 261);
INSERT into traffic VALUES (1728624531, CAST(N'2021-01-23' AS Date), 855331, 1848, 327);
INSERT into traffic VALUES (1728624531, CAST(N'2021-01-24' AS Date), 855331, 1250, 551);
INSERT into traffic VALUES (1728624531, CAST(N'2021-01-25' AS Date), 855331, 2544, 297);
INSERT into traffic VALUES (1728624531, CAST(N'2021-01-26' AS Date), 855331, 2808, 250);
INSERT into traffic VALUES (1728624531, CAST(N'2021-01-27' AS Date), 855331, 1930, 323);
INSERT into traffic VALUES (1728624531, CAST(N'2021-01-28' AS Date), 855331, 1637, 512);
INSERT into traffic VALUES (1728624531, CAST(N'2021-01-29' AS Date), 855331, 1629, 284);
INSERT into traffic VALUES (1728624531, CAST(N'2021-01-30' AS Date), 855331, 2682, 218);
INSERT into traffic VALUES (1737476026, CAST(N'2021-01-01' AS Date), 859711, 2036, 368);
INSERT into traffic VALUES (1737476026, CAST(N'2021-01-02' AS Date), 859711, 2362, 583);
INSERT into traffic VALUES (1737476026, CAST(N'2021-01-03' AS Date), 859711, 2600, 762);
INSERT into traffic VALUES (1737476026, CAST(N'2021-01-04' AS Date), 859711, 2099, 376);
INSERT into traffic VALUES (1737476026, CAST(N'2021-01-05' AS Date), 859711, 1182, 764);
INSERT into traffic VALUES (1737476026, CAST(N'2021-01-06' AS Date), 859711, 1042, 318);
INSERT into traffic VALUES (1737476026, CAST(N'2021-01-07' AS Date), 859711, 1142, 617);
INSERT into traffic VALUES (1737476026, CAST(N'2021-01-08' AS Date), 859711, 2009, 476);
INSERT into traffic VALUES (1737476026, CAST(N'2021-01-09' AS Date), 859711, 2600, 304);
INSERT into traffic VALUES (1737476026, CAST(N'2021-01-10' AS Date), 859711, 1479, 693);
INSERT into traffic VALUES (1737476026, CAST(N'2021-01-11' AS Date), 859711, 2418, 777);
INSERT into traffic VALUES (1737476026, CAST(N'2021-01-12' AS Date), 859711, 2184, 747);
INSERT into traffic VALUES (1737476026, CAST(N'2021-01-13' AS Date), 859711, 1647, 655);
INSERT into traffic VALUES (1737476026, CAST(N'2021-01-14' AS Date), 859711, 2933, 632);
INSERT into traffic VALUES (1737476026, CAST(N'2021-01-15' AS Date), 859711, 2181, 526);
INSERT into traffic VALUES (1737476026, CAST(N'2021-01-16' AS Date), 859711, 1297, 452);
INSERT into traffic VALUES (1737476026, CAST(N'2021-01-17' AS Date), 859711, 2680, 208);
INSERT into traffic VALUES (1737476026, CAST(N'2021-01-18' AS Date), 859711, 1056, 367);
INSERT into traffic VALUES (1737476026, CAST(N'2021-01-19' AS Date), 859711, 2354, 230);
INSERT into traffic VALUES (1737476026, CAST(N'2021-01-20' AS Date), 859711, 2609, 650);
INSERT into traffic VALUES (1737476026, CAST(N'2021-01-21' AS Date), 859711, 1882, 785);
INSERT into traffic VALUES (1737476026, CAST(N'2021-01-22' AS Date), 859711, 2808, 685);
INSERT into traffic VALUES (1737476026, CAST(N'2021-01-23' AS Date), 859711, 1962, 364);
INSERT into traffic VALUES (1737476026, CAST(N'2021-01-24' AS Date), 859711, 1436, 299);
INSERT into traffic VALUES (1737476026, CAST(N'2021-01-25' AS Date), 859711, 2234, 484);
INSERT into traffic VALUES (1737476026, CAST(N'2021-01-26' AS Date), 859711, 2956, 540);
INSERT into traffic VALUES (1737476026, CAST(N'2021-01-27' AS Date), 859711, 1583, 400);
INSERT into traffic VALUES (1737476026, CAST(N'2021-01-28' AS Date), 859711, 1129, 532);
INSERT into traffic VALUES (1737476026, CAST(N'2021-01-29' AS Date), 859711, 2596, 507);
INSERT into traffic VALUES (1737476026, CAST(N'2021-01-30' AS Date), 859711, 1312, 443);
INSERT into traffic VALUES (1747473918, CAST(N'2021-01-01' AS Date), 864658, 1849, 525);
INSERT into traffic VALUES (1747473918, CAST(N'2021-01-02' AS Date), 864658, 1666, 700);
INSERT into traffic VALUES (1747473918, CAST(N'2021-01-03' AS Date), 864658, 1702, 727);
INSERT into traffic VALUES (1747473918, CAST(N'2021-01-04' AS Date), 864658, 2450, 787);
INSERT into traffic VALUES (1747473918, CAST(N'2021-01-05' AS Date), 864658, 2981, 794);
INSERT into traffic VALUES (1747473918, CAST(N'2021-01-06' AS Date), 864658, 1095, 695);
INSERT into traffic VALUES (1747473918, CAST(N'2021-01-07' AS Date), 864658, 2359, 780);
INSERT into traffic VALUES (1747473918, CAST(N'2021-01-08' AS Date), 864658, 1919, 454);
INSERT into traffic VALUES (1747473918, CAST(N'2021-01-09' AS Date), 864658, 2712, 751);
INSERT into traffic VALUES (1747473918, CAST(N'2021-01-10' AS Date), 864658, 2900, 768);
INSERT into traffic VALUES (1747473918, CAST(N'2021-01-11' AS Date), 864658, 2725, 360);
INSERT into traffic VALUES (1747473918, CAST(N'2021-01-12' AS Date), 864658, 1268, 778);
INSERT into traffic VALUES (1747473918, CAST(N'2021-01-13' AS Date), 864658, 2014, 787);
INSERT into traffic VALUES (1747473918, CAST(N'2021-01-14' AS Date), 864658, 1656, 606);
INSERT into traffic VALUES (1747473918, CAST(N'2021-01-15' AS Date), 864658, 1968, 766);
INSERT into traffic VALUES (1747473918, CAST(N'2021-01-16' AS Date), 864658, 1581, 580);
INSERT into traffic VALUES (1747473918, CAST(N'2021-01-17' AS Date), 864658, 1471, 772);
INSERT into traffic VALUES (1747473918, CAST(N'2021-01-18' AS Date), 864658, 1250, 660);
INSERT into traffic VALUES (1747473918, CAST(N'2021-01-19' AS Date), 864658, 1779, 548);
INSERT into traffic VALUES (1747473918, CAST(N'2021-01-20' AS Date), 864658, 1021, 397);
INSERT into traffic VALUES (1747473918, CAST(N'2021-01-21' AS Date), 864658, 1546, 538);
INSERT into traffic VALUES (1747473918, CAST(N'2021-01-22' AS Date), 864658, 2991, 454);
INSERT into traffic VALUES (1747473918, CAST(N'2021-01-23' AS Date), 864658, 2615, 572);
INSERT into traffic VALUES (1747473918, CAST(N'2021-01-24' AS Date), 864658, 2144, 717);
INSERT into traffic VALUES (1747473918, CAST(N'2021-01-25' AS Date), 864658, 1372, 495);
INSERT into traffic VALUES (1747473918, CAST(N'2021-01-26' AS Date), 864658, 1083, 651);
INSERT into traffic VALUES (1747473918, CAST(N'2021-01-27' AS Date), 864658, 2707, 568);
INSERT into traffic VALUES (1747473918, CAST(N'2021-01-28' AS Date), 864658, 2390, 338);
INSERT into traffic VALUES (1747473918, CAST(N'2021-01-29' AS Date), 864658, 2613, 373);
INSERT into traffic VALUES (1747473918, CAST(N'2021-01-30' AS Date), 864658, 2382, 611);
INSERT into traffic VALUES (1769366116, CAST(N'2021-01-01' AS Date), 875490, 1302, 587);
INSERT into traffic VALUES (1769366116, CAST(N'2021-01-02' AS Date), 875490, 1616, 383);
INSERT into traffic VALUES (1769366116, CAST(N'2021-01-03' AS Date), 875490, 1248, 382);
INSERT into traffic VALUES (1769366116, CAST(N'2021-01-04' AS Date), 875490, 2980, 739);
INSERT into traffic VALUES (1769366116, CAST(N'2021-01-05' AS Date), 875490, 2593, 709);
INSERT into traffic VALUES (1769366116, CAST(N'2021-01-06' AS Date), 875490, 2237, 602);
INSERT into traffic VALUES (1769366116, CAST(N'2021-01-07' AS Date), 875490, 1103, 301);
INSERT into traffic VALUES (1769366116, CAST(N'2021-01-08' AS Date), 875490, 2298, 595);
INSERT into traffic VALUES (1769366116, CAST(N'2021-01-09' AS Date), 875490, 2524, 794);
INSERT into traffic VALUES (1769366116, CAST(N'2021-01-10' AS Date), 875490, 2003, 620);
INSERT into traffic VALUES (1769366116, CAST(N'2021-01-11' AS Date), 875490, 1458, 749);
INSERT into traffic VALUES (1769366116, CAST(N'2021-01-12' AS Date), 875490, 1121, 555);
INSERT into traffic VALUES (1769366116, CAST(N'2021-01-13' AS Date), 875490, 1570, 726);
INSERT into traffic VALUES (1769366116, CAST(N'2021-01-14' AS Date), 875490, 2734, 674);
INSERT into traffic VALUES (1769366116, CAST(N'2021-01-15' AS Date), 875490, 2090, 632);
INSERT into traffic VALUES (1769366116, CAST(N'2021-01-16' AS Date), 875490, 2696, 729);
INSERT into traffic VALUES (1769366116, CAST(N'2021-01-17' AS Date), 875490, 2029, 478);
INSERT into traffic VALUES (1769366116, CAST(N'2021-01-18' AS Date), 875490, 2514, 374);
INSERT into traffic VALUES (1769366116, CAST(N'2021-01-19' AS Date), 875490, 2909, 688);
INSERT into traffic VALUES (1769366116, CAST(N'2021-01-20' AS Date), 875490, 1846, 532);
INSERT into traffic VALUES (1769366116, CAST(N'2021-01-21' AS Date), 875490, 1038, 651);
INSERT into traffic VALUES (1769366116, CAST(N'2021-01-22' AS Date), 875490, 2673, 333);
INSERT into traffic VALUES (1769366116, CAST(N'2021-01-23' AS Date), 875490, 2961, 761);
INSERT into traffic VALUES (1769366116, CAST(N'2021-01-24' AS Date), 875490, 1534, 598);
INSERT into traffic VALUES (1769366116, CAST(N'2021-01-25' AS Date), 875490, 1806, 683);
INSERT into traffic VALUES (1769366116, CAST(N'2021-01-26' AS Date), 875490, 2938, 352);
INSERT into traffic VALUES (1769366116, CAST(N'2021-01-27' AS Date), 875490, 2881, 462);
INSERT into traffic VALUES (1769366116, CAST(N'2021-01-28' AS Date), 875490, 2583, 667);
INSERT into traffic VALUES (1769366116, CAST(N'2021-01-29' AS Date), 875490, 2546, 471);
INSERT into traffic VALUES (1769366116, CAST(N'2021-01-30' AS Date), 875490, 2265, 283);
INSERT into traffic VALUES (1782327052, CAST(N'2021-01-01' AS Date), 881903, 2548, 543);
INSERT into traffic VALUES (1782327052, CAST(N'2021-01-02' AS Date), 881903, 2002, 555);
INSERT into traffic VALUES (1782327052, CAST(N'2021-01-03' AS Date), 881903, 2521, 224);
INSERT into traffic VALUES (1782327052, CAST(N'2021-01-04' AS Date), 881903, 2825, 400);
INSERT into traffic VALUES (1782327052, CAST(N'2021-01-05' AS Date), 881903, 2410, 500);
INSERT into traffic VALUES (1782327052, CAST(N'2021-01-06' AS Date), 881903, 1183, 422);
INSERT into traffic VALUES (1782327052, CAST(N'2021-01-07' AS Date), 881903, 2039, 327);
INSERT into traffic VALUES (1782327052, CAST(N'2021-01-08' AS Date), 881903, 1425, 536);
INSERT into traffic VALUES (1782327052, CAST(N'2021-01-09' AS Date), 881903, 2209, 267);
INSERT into traffic VALUES (1782327052, CAST(N'2021-01-10' AS Date), 881903, 1447, 349);
INSERT into traffic VALUES (1782327052, CAST(N'2021-01-11' AS Date), 881903, 1847, 326);
INSERT into traffic VALUES (1782327052, CAST(N'2021-01-12' AS Date), 881903, 2118, 294);
INSERT into traffic VALUES (1782327052, CAST(N'2021-01-13' AS Date), 881903, 1576, 482);
INSERT into traffic VALUES (1782327052, CAST(N'2021-01-14' AS Date), 881903, 1702, 390);
INSERT into traffic VALUES (1782327052, CAST(N'2021-01-15' AS Date), 881903, 1201, 544);
INSERT into traffic VALUES (1782327052, CAST(N'2021-01-16' AS Date), 881903, 2141, 528);
INSERT into traffic VALUES (1782327052, CAST(N'2021-01-17' AS Date), 881903, 1238, 264);
INSERT into traffic VALUES (1782327052, CAST(N'2021-01-18' AS Date), 881903, 2680, 537);
INSERT into traffic VALUES (1782327052, CAST(N'2021-01-19' AS Date), 881903, 2617, 215);
INSERT into traffic VALUES (1782327052, CAST(N'2021-01-20' AS Date), 881903, 2713, 516);
INSERT into traffic VALUES (1782327052, CAST(N'2021-01-21' AS Date), 881903, 1568, 241);
INSERT into traffic VALUES (1782327052, CAST(N'2021-01-22' AS Date), 881903, 2680, 336);
INSERT into traffic VALUES (1782327052, CAST(N'2021-01-23' AS Date), 881903, 1489, 536);
INSERT into traffic VALUES (1782327052, CAST(N'2021-01-24' AS Date), 881903, 1064, 421);
INSERT into traffic VALUES (1782327052, CAST(N'2021-01-25' AS Date), 881903, 2142, 252);
INSERT into traffic VALUES (1782327052, CAST(N'2021-01-26' AS Date), 881903, 1560, 412);
INSERT into traffic VALUES (1782327052, CAST(N'2021-01-27' AS Date), 881903, 2102, 385);
INSERT into traffic VALUES (1782327052, CAST(N'2021-01-28' AS Date), 881903, 2872, 536);
INSERT into traffic VALUES (1782327052, CAST(N'2021-01-29' AS Date), 881903, 2530, 502);
INSERT into traffic VALUES (1782327052, CAST(N'2021-01-30' AS Date), 881903, 1936, 233);
INSERT into traffic VALUES (1782327077, CAST(N'2021-01-01' AS Date), 881903, 1162, 363);
INSERT into traffic VALUES (1782327077, CAST(N'2021-01-02' AS Date), 881903, 1751, 302);
INSERT into traffic VALUES (1782327077, CAST(N'2021-01-03' AS Date), 881903, 1081, 427);
INSERT into traffic VALUES (1782327077, CAST(N'2021-01-04' AS Date), 881903, 1796, 539);
INSERT into traffic VALUES (1782327077, CAST(N'2021-01-05' AS Date), 881903, 2072, 328);
INSERT into traffic VALUES (1782327077, CAST(N'2021-01-06' AS Date), 881903, 2741, 520);
INSERT into traffic VALUES (1782327077, CAST(N'2021-01-07' AS Date), 881903, 2015, 543);
INSERT into traffic VALUES (1782327077, CAST(N'2021-01-08' AS Date), 881903, 2105, 470);
INSERT into traffic VALUES (1782327077, CAST(N'2021-01-09' AS Date), 881903, 2656, 441);
INSERT into traffic VALUES (1782327077, CAST(N'2021-01-10' AS Date), 881903, 2165, 375);
INSERT into traffic VALUES (1782327077, CAST(N'2021-01-11' AS Date), 881903, 2849, 237);
INSERT into traffic VALUES (1782327077, CAST(N'2021-01-12' AS Date), 881903, 1342, 382);
INSERT into traffic VALUES (1782327077, CAST(N'2021-01-13' AS Date), 881903, 1738, 272);
INSERT into traffic VALUES (1782327077, CAST(N'2021-01-14' AS Date), 881903, 2045, 452);
INSERT into traffic VALUES (1782327077, CAST(N'2021-01-15' AS Date), 881903, 1822, 528);
INSERT into traffic VALUES (1782327077, CAST(N'2021-01-16' AS Date), 881903, 1468, 297);
INSERT into traffic VALUES (1782327077, CAST(N'2021-01-17' AS Date), 881903, 2517, 588);
INSERT into traffic VALUES (1782327077, CAST(N'2021-01-18' AS Date), 881903, 1546, 449);
INSERT into traffic VALUES (1782327077, CAST(N'2021-01-19' AS Date), 881903, 1602, 205);
INSERT into traffic VALUES (1782327077, CAST(N'2021-01-20' AS Date), 881903, 2661, 592);
INSERT into traffic VALUES (1782327077, CAST(N'2021-01-21' AS Date), 881903, 1663, 598);
INSERT into traffic VALUES (1782327077, CAST(N'2021-01-22' AS Date), 881903, 1236, 481);
INSERT into traffic VALUES (1782327077, CAST(N'2021-01-23' AS Date), 881903, 2386, 351);
INSERT into traffic VALUES (1782327077, CAST(N'2021-01-24' AS Date), 881903, 2857, 387);
INSERT into traffic VALUES (1782327077, CAST(N'2021-01-25' AS Date), 881903, 1173, 233);
INSERT into traffic VALUES (1782327077, CAST(N'2021-01-26' AS Date), 881903, 2618, 450);
INSERT into traffic VALUES (1782327077, CAST(N'2021-01-27' AS Date), 881903, 1066, 440);
INSERT into traffic VALUES (1782327077, CAST(N'2021-01-28' AS Date), 881903, 2888, 233);
INSERT into traffic VALUES (1782327077, CAST(N'2021-01-29' AS Date), 881903, 2804, 237);
INSERT into traffic VALUES (1782327077, CAST(N'2021-01-30' AS Date), 881903, 1219, 376);
INSERT into traffic VALUES (1782327100, CAST(N'2021-01-01' AS Date), 881903, 1690, 430);
INSERT into traffic VALUES (1782327100, CAST(N'2021-01-02' AS Date), 881903, 1143, 208);
INSERT into traffic VALUES (1782327100, CAST(N'2021-01-03' AS Date), 881903, 2088, 525);
INSERT into traffic VALUES (1782327100, CAST(N'2021-01-04' AS Date), 881903, 2292, 486);
INSERT into traffic VALUES (1782327100, CAST(N'2021-01-05' AS Date), 881903, 1624, 413);
INSERT into traffic VALUES (1782327100, CAST(N'2021-01-06' AS Date), 881903, 2720, 332);
INSERT into traffic VALUES (1782327100, CAST(N'2021-01-07' AS Date), 881903, 2067, 279);
INSERT into traffic VALUES (1782327100, CAST(N'2021-01-08' AS Date), 881903, 2059, 426);
INSERT into traffic VALUES (1782327100, CAST(N'2021-01-09' AS Date), 881903, 1833, 381);
INSERT into traffic VALUES (1782327100, CAST(N'2021-01-10' AS Date), 881903, 2598, 282);
INSERT into traffic VALUES (1782327100, CAST(N'2021-01-11' AS Date), 881903, 1879, 342);
INSERT into traffic VALUES (1782327100, CAST(N'2021-01-12' AS Date), 881903, 1815, 492);
INSERT into traffic VALUES (1782327100, CAST(N'2021-01-13' AS Date), 881903, 1264, 437);
INSERT into traffic VALUES (1782327100, CAST(N'2021-01-14' AS Date), 881903, 2047, 507);
INSERT into traffic VALUES (1782327100, CAST(N'2021-01-15' AS Date), 881903, 2320, 410);
INSERT into traffic VALUES (1782327100, CAST(N'2021-01-16' AS Date), 881903, 2433, 463);
INSERT into traffic VALUES (1782327100, CAST(N'2021-01-17' AS Date), 881903, 2442, 534);
INSERT into traffic VALUES (1782327100, CAST(N'2021-01-18' AS Date), 881903, 1092, 345);
INSERT into traffic VALUES (1782327100, CAST(N'2021-01-19' AS Date), 881903, 1283, 266);
INSERT into traffic VALUES (1782327100, CAST(N'2021-01-20' AS Date), 881903, 2474, 367);
INSERT into traffic VALUES (1782327100, CAST(N'2021-01-21' AS Date), 881903, 1680, 482);
INSERT into traffic VALUES (1782327100, CAST(N'2021-01-22' AS Date), 881903, 2841, 599);
INSERT into traffic VALUES (1782327100, CAST(N'2021-01-23' AS Date), 881903, 2358, 519);
INSERT into traffic VALUES (1782327100, CAST(N'2021-01-24' AS Date), 881903, 2297, 421);
INSERT into traffic VALUES (1782327100, CAST(N'2021-01-25' AS Date), 881903, 1760, 245);
INSERT into traffic VALUES (1782327100, CAST(N'2021-01-26' AS Date), 881903, 1482, 319);
INSERT into traffic VALUES (1782327100, CAST(N'2021-01-27' AS Date), 881903, 1029, 478);
INSERT into traffic VALUES (1782327100, CAST(N'2021-01-28' AS Date), 881903, 1161, 209);
INSERT into traffic VALUES (1782327100, CAST(N'2021-01-29' AS Date), 881903, 1412, 575);
INSERT into traffic VALUES (1782327100, CAST(N'2021-01-30' AS Date), 881903, 1744, 201);
INSERT into traffic VALUES (1801232976, CAST(N'2021-01-01' AS Date), 891258, 2933, 373);
INSERT into traffic VALUES (1801232976, CAST(N'2021-01-02' AS Date), 891258, 1526, 221);
INSERT into traffic VALUES (1801232976, CAST(N'2021-01-03' AS Date), 891258, 1186, 263);
INSERT into traffic VALUES (1801232976, CAST(N'2021-01-04' AS Date), 891258, 2491, 322);
INSERT into traffic VALUES (1801232976, CAST(N'2021-01-05' AS Date), 891258, 2266, 290);
INSERT into traffic VALUES (1801232976, CAST(N'2021-01-06' AS Date), 891258, 2660, 286);
INSERT into traffic VALUES (1801232976, CAST(N'2021-01-07' AS Date), 891258, 2521, 294);
INSERT into traffic VALUES (1801232976, CAST(N'2021-01-08' AS Date), 891258, 1541, 297);
INSERT into traffic VALUES (1801232976, CAST(N'2021-01-09' AS Date), 891258, 1283, 296);
INSERT into traffic VALUES (1801232976, CAST(N'2021-01-10' AS Date), 891258, 2329, 300);
INSERT into traffic VALUES (1801232976, CAST(N'2021-01-11' AS Date), 891258, 2006, 359);
INSERT into traffic VALUES (1801232976, CAST(N'2021-01-12' AS Date), 891258, 2615, 306);
INSERT into traffic VALUES (1801232976, CAST(N'2021-01-13' AS Date), 891258, 2228, 350);
INSERT into traffic VALUES (1801232976, CAST(N'2021-01-14' AS Date), 891258, 1078, 318);
INSERT into traffic VALUES (1801232976, CAST(N'2021-01-15' AS Date), 891258, 1588, 214);
INSERT into traffic VALUES (1801232976, CAST(N'2021-01-16' AS Date), 891258, 1225, 391);
INSERT into traffic VALUES (1801232976, CAST(N'2021-01-17' AS Date), 891258, 2072, 242);
INSERT into traffic VALUES (1801232976, CAST(N'2021-01-18' AS Date), 891258, 1625, 310);
INSERT into traffic VALUES (1801232976, CAST(N'2021-01-19' AS Date), 891258, 1707, 326);
INSERT into traffic VALUES (1801232976, CAST(N'2021-01-20' AS Date), 891258, 2142, 392);
INSERT into traffic VALUES (1801232976, CAST(N'2021-01-21' AS Date), 891258, 1786, 234);
INSERT into traffic VALUES (1801232976, CAST(N'2021-01-22' AS Date), 891258, 1731, 362);
INSERT into traffic VALUES (1801232976, CAST(N'2021-01-23' AS Date), 891258, 1083, 216);
INSERT into traffic VALUES (1801232976, CAST(N'2021-01-24' AS Date), 891258, 1963, 202);
INSERT into traffic VALUES (1801232976, CAST(N'2021-01-25' AS Date), 891258, 2958, 304);
INSERT into traffic VALUES (1801232976, CAST(N'2021-01-26' AS Date), 891258, 1559, 341);
INSERT into traffic VALUES (1801232976, CAST(N'2021-01-27' AS Date), 891258, 1168, 255);
INSERT into traffic VALUES (1801232976, CAST(N'2021-01-28' AS Date), 891258, 1774, 322);
INSERT into traffic VALUES (1801232976, CAST(N'2021-01-29' AS Date), 891258, 2916, 205);
INSERT into traffic VALUES (1801232976, CAST(N'2021-01-30' AS Date), 891258, 2992, 271);
INSERT into traffic VALUES (1801232983, CAST(N'2021-01-01' AS Date), 891258, 1981, 343);
INSERT into traffic VALUES (1801232983, CAST(N'2021-01-02' AS Date), 891258, 2131, 334);
INSERT into traffic VALUES (1801232983, CAST(N'2021-01-03' AS Date), 891258, 2689, 381);
INSERT into traffic VALUES (1801232983, CAST(N'2021-01-04' AS Date), 891258, 2851, 346);
INSERT into traffic VALUES (1801232983, CAST(N'2021-01-05' AS Date), 891258, 1865, 272);
INSERT into traffic VALUES (1801232983, CAST(N'2021-01-06' AS Date), 891258, 2968, 345);
INSERT into traffic VALUES (1801232983, CAST(N'2021-01-07' AS Date), 891258, 2455, 376);
INSERT into traffic VALUES (1801232983, CAST(N'2021-01-08' AS Date), 891258, 1896, 399);
INSERT into traffic VALUES (1801232983, CAST(N'2021-01-09' AS Date), 891258, 2909, 253);
INSERT into traffic VALUES (1801232983, CAST(N'2021-01-10' AS Date), 891258, 2198, 397);
INSERT into traffic VALUES (1801232983, CAST(N'2021-01-11' AS Date), 891258, 2087, 293);
INSERT into traffic VALUES (1801232983, CAST(N'2021-01-12' AS Date), 891258, 1333, 308);
INSERT into traffic VALUES (1801232983, CAST(N'2021-01-13' AS Date), 891258, 1628, 247);
INSERT into traffic VALUES (1801232983, CAST(N'2021-01-14' AS Date), 891258, 1181, 297);
INSERT into traffic VALUES (1801232983, CAST(N'2021-01-15' AS Date), 891258, 1681, 242);
INSERT into traffic VALUES (1801232983, CAST(N'2021-01-16' AS Date), 891258, 2267, 363);
INSERT into traffic VALUES (1801232983, CAST(N'2021-01-17' AS Date), 891258, 2786, 253);
INSERT into traffic VALUES (1801232983, CAST(N'2021-01-18' AS Date), 891258, 1503, 272);
INSERT into traffic VALUES (1801232983, CAST(N'2021-01-19' AS Date), 891258, 1007, 281);
INSERT into traffic VALUES (1801232983, CAST(N'2021-01-20' AS Date), 891258, 1814, 353);
INSERT into traffic VALUES (1801232983, CAST(N'2021-01-21' AS Date), 891258, 1109, 262);
INSERT into traffic VALUES (1801232983, CAST(N'2021-01-22' AS Date), 891258, 2324, 325);
INSERT into traffic VALUES (1801232983, CAST(N'2021-01-23' AS Date), 891258, 2337, 273);
INSERT into traffic VALUES (1801232983, CAST(N'2021-01-24' AS Date), 891258, 2048, 216);
INSERT into traffic VALUES (1801232983, CAST(N'2021-01-25' AS Date), 891258, 2164, 358);
INSERT into traffic VALUES (1801232983, CAST(N'2021-01-26' AS Date), 891258, 2231, 298);
INSERT into traffic VALUES (1801232983, CAST(N'2021-01-27' AS Date), 891258, 2240, 276);
INSERT into traffic VALUES (1801232983, CAST(N'2021-01-28' AS Date), 891258, 2016, 308);
INSERT into traffic VALUES (1801232983, CAST(N'2021-01-29' AS Date), 891258, 1292, 214);
INSERT into traffic VALUES (1801232983, CAST(N'2021-01-30' AS Date), 891258, 2448, 210);
INSERT into traffic VALUES (1801233013, CAST(N'2021-01-01' AS Date), 891258, 1910, 276);
INSERT into traffic VALUES (1801233013, CAST(N'2021-01-02' AS Date), 891258, 2162, 278);
INSERT into traffic VALUES (1801233013, CAST(N'2021-01-03' AS Date), 891258, 2845, 289);
INSERT into traffic VALUES (1801233013, CAST(N'2021-01-04' AS Date), 891258, 1337, 247);
INSERT into traffic VALUES (1801233013, CAST(N'2021-01-05' AS Date), 891258, 1797, 258);
INSERT into traffic VALUES (1801233013, CAST(N'2021-01-06' AS Date), 891258, 1332, 371);
INSERT into traffic VALUES (1801233013, CAST(N'2021-01-07' AS Date), 891258, 2444, 333);
INSERT into traffic VALUES (1801233013, CAST(N'2021-01-08' AS Date), 891258, 1730, 301);
INSERT into traffic VALUES (1801233013, CAST(N'2021-01-09' AS Date), 891258, 2966, 300);
INSERT into traffic VALUES (1801233013, CAST(N'2021-01-10' AS Date), 891258, 1789, 397);
INSERT into traffic VALUES (1801233013, CAST(N'2021-01-11' AS Date), 891258, 1534, 249);
INSERT into traffic VALUES (1801233013, CAST(N'2021-01-12' AS Date), 891258, 2872, 236);
INSERT into traffic VALUES (1801233013, CAST(N'2021-01-13' AS Date), 891258, 2911, 251);
INSERT into traffic VALUES (1801233013, CAST(N'2021-01-14' AS Date), 891258, 1671, 328);
INSERT into traffic VALUES (1801233013, CAST(N'2021-01-15' AS Date), 891258, 1124, 333);
INSERT into traffic VALUES (1801233013, CAST(N'2021-01-16' AS Date), 891258, 2748, 305);
INSERT into traffic VALUES (1801233013, CAST(N'2021-01-17' AS Date), 891258, 1223, 308);
INSERT into traffic VALUES (1801233013, CAST(N'2021-01-18' AS Date), 891258, 2824, 332);
INSERT into traffic VALUES (1801233013, CAST(N'2021-01-19' AS Date), 891258, 2964, 319);
INSERT into traffic VALUES (1801233013, CAST(N'2021-01-20' AS Date), 891258, 1066, 319);
INSERT into traffic VALUES (1801233013, CAST(N'2021-01-21' AS Date), 891258, 2257, 257);
INSERT into traffic VALUES (1801233013, CAST(N'2021-01-22' AS Date), 891258, 1005, 319);
INSERT into traffic VALUES (1801233013, CAST(N'2021-01-23' AS Date), 891258, 1573, 317);
INSERT into traffic VALUES (1801233013, CAST(N'2021-01-24' AS Date), 891258, 1613, 257);
INSERT into traffic VALUES (1801233013, CAST(N'2021-01-25' AS Date), 891258, 1520, 218);
INSERT into traffic VALUES (1801233013, CAST(N'2021-01-26' AS Date), 891258, 1326, 246);
INSERT into traffic VALUES (1801233013, CAST(N'2021-01-27' AS Date), 891258, 2216, 257);
INSERT into traffic VALUES (1801233013, CAST(N'2021-01-28' AS Date), 891258, 1209, 282);
INSERT into traffic VALUES (1801233013, CAST(N'2021-01-29' AS Date), 891258, 2124, 311);
INSERT into traffic VALUES (1801233013, CAST(N'2021-01-30' AS Date), 891258, 2146, 297);
INSERT into traffic VALUES (1808913725, CAST(N'2021-01-01' AS Date), 895058, 1859, 588);
INSERT into traffic VALUES (1808913725, CAST(N'2021-01-02' AS Date), 895058, 2570, 454);
INSERT into traffic VALUES (1808913725, CAST(N'2021-01-03' AS Date), 895058, 1131, 385);
INSERT into traffic VALUES (1808913725, CAST(N'2021-01-04' AS Date), 895058, 1530, 229);
INSERT into traffic VALUES (1808913725, CAST(N'2021-01-05' AS Date), 895058, 2983, 597);
INSERT into traffic VALUES (1808913725, CAST(N'2021-01-06' AS Date), 895058, 1117, 502);
INSERT into traffic VALUES (1808913725, CAST(N'2021-01-07' AS Date), 895058, 1237, 336);
INSERT into traffic VALUES (1808913725, CAST(N'2021-01-08' AS Date), 895058, 1020, 200);
INSERT into traffic VALUES (1808913725, CAST(N'2021-01-09' AS Date), 895058, 2621, 265);
INSERT into traffic VALUES (1808913725, CAST(N'2021-01-10' AS Date), 895058, 2149, 491);
INSERT into traffic VALUES (1808913725, CAST(N'2021-01-11' AS Date), 895058, 1703, 470);
INSERT into traffic VALUES (1808913725, CAST(N'2021-01-12' AS Date), 895058, 1225, 255);
INSERT into traffic VALUES (1808913725, CAST(N'2021-01-13' AS Date), 895058, 2532, 385);
INSERT into traffic VALUES (1808913725, CAST(N'2021-01-14' AS Date), 895058, 2520, 325);
INSERT into traffic VALUES (1808913725, CAST(N'2021-01-15' AS Date), 895058, 1160, 244);
INSERT into traffic VALUES (1808913725, CAST(N'2021-01-16' AS Date), 895058, 1333, 475);
INSERT into traffic VALUES (1808913725, CAST(N'2021-01-17' AS Date), 895058, 1331, 372);
INSERT into traffic VALUES (1808913725, CAST(N'2021-01-18' AS Date), 895058, 1726, 234);
INSERT into traffic VALUES (1808913725, CAST(N'2021-01-19' AS Date), 895058, 1767, 408);
INSERT into traffic VALUES (1808913725, CAST(N'2021-01-20' AS Date), 895058, 1777, 525);
INSERT into traffic VALUES (1808913725, CAST(N'2021-01-21' AS Date), 895058, 2918, 566);
INSERT into traffic VALUES (1808913725, CAST(N'2021-01-22' AS Date), 895058, 2278, 547);
INSERT into traffic VALUES (1808913725, CAST(N'2021-01-23' AS Date), 895058, 1285, 242);
INSERT into traffic VALUES (1808913725, CAST(N'2021-01-24' AS Date), 895058, 2027, 279);
INSERT into traffic VALUES (1808913725, CAST(N'2021-01-25' AS Date), 895058, 2384, 235);
INSERT into traffic VALUES (1808913725, CAST(N'2021-01-26' AS Date), 895058, 1203, 546);
INSERT into traffic VALUES (1808913725, CAST(N'2021-01-27' AS Date), 895058, 2445, 475);
INSERT into traffic VALUES (1808913725, CAST(N'2021-01-28' AS Date), 895058, 2621, 549);
INSERT into traffic VALUES (1808913725, CAST(N'2021-01-29' AS Date), 895058, 2525, 360);
INSERT into traffic VALUES (1808913725, CAST(N'2021-01-30' AS Date), 895058, 2182, 287);
INSERT into traffic VALUES (1808913753, CAST(N'2021-01-01' AS Date), 895058, 1911, 300);
INSERT into traffic VALUES (1808913753, CAST(N'2021-01-02' AS Date), 895058, 2895, 329);
INSERT into traffic VALUES (1808913753, CAST(N'2021-01-03' AS Date), 895058, 1556, 286);
INSERT into traffic VALUES (1808913753, CAST(N'2021-01-04' AS Date), 895058, 2673, 557);
INSERT into traffic VALUES (1808913753, CAST(N'2021-01-05' AS Date), 895058, 2168, 488);
INSERT into traffic VALUES (1808913753, CAST(N'2021-01-06' AS Date), 895058, 2244, 423);
INSERT into traffic VALUES (1808913753, CAST(N'2021-01-07' AS Date), 895058, 1460, 378);
INSERT into traffic VALUES (1808913753, CAST(N'2021-01-08' AS Date), 895058, 1063, 574);
INSERT into traffic VALUES (1808913753, CAST(N'2021-01-09' AS Date), 895058, 2780, 459);
INSERT into traffic VALUES (1808913753, CAST(N'2021-01-10' AS Date), 895058, 2282, 565);
INSERT into traffic VALUES (1808913753, CAST(N'2021-01-11' AS Date), 895058, 1733, 266);
INSERT into traffic VALUES (1808913753, CAST(N'2021-01-12' AS Date), 895058, 2034, 361);
INSERT into traffic VALUES (1808913753, CAST(N'2021-01-13' AS Date), 895058, 1533, 324);
INSERT into traffic VALUES (1808913753, CAST(N'2021-01-14' AS Date), 895058, 1365, 526);
INSERT into traffic VALUES (1808913753, CAST(N'2021-01-15' AS Date), 895058, 2307, 372);
INSERT into traffic VALUES (1808913753, CAST(N'2021-01-16' AS Date), 895058, 1885, 577);
INSERT into traffic VALUES (1808913753, CAST(N'2021-01-17' AS Date), 895058, 1235, 317);
INSERT into traffic VALUES (1808913753, CAST(N'2021-01-18' AS Date), 895058, 1583, 211);
INSERT into traffic VALUES (1808913753, CAST(N'2021-01-19' AS Date), 895058, 2436, 330);
INSERT into traffic VALUES (1808913753, CAST(N'2021-01-20' AS Date), 895058, 1022, 526);
INSERT into traffic VALUES (1808913753, CAST(N'2021-01-21' AS Date), 895058, 2031, 253);
INSERT into traffic VALUES (1808913753, CAST(N'2021-01-22' AS Date), 895058, 2458, 488);
INSERT into traffic VALUES (1808913753, CAST(N'2021-01-23' AS Date), 895058, 2348, 354);
INSERT into traffic VALUES (1808913753, CAST(N'2021-01-24' AS Date), 895058, 2736, 546);
INSERT into traffic VALUES (1808913753, CAST(N'2021-01-25' AS Date), 895058, 2266, 440);
INSERT into traffic VALUES (1808913753, CAST(N'2021-01-26' AS Date), 895058, 2893, 431);
INSERT into traffic VALUES (1808913753, CAST(N'2021-01-27' AS Date), 895058, 2155, 397);
INSERT into traffic VALUES (1808913753, CAST(N'2021-01-28' AS Date), 895058, 1680, 386);
INSERT into traffic VALUES (1808913753, CAST(N'2021-01-29' AS Date), 895058, 1380, 202);
INSERT into traffic VALUES (1808913753, CAST(N'2021-01-30' AS Date), 895058, 2986, 527);
INSERT into traffic VALUES (1810186111, CAST(N'2021-01-01' AS Date), 895688, 1841, 405);
INSERT into traffic VALUES (1810186111, CAST(N'2021-01-02' AS Date), 895688, 1351, 669);
INSERT into traffic VALUES (1810186111, CAST(N'2021-01-03' AS Date), 895688, 2659, 311);
INSERT into traffic VALUES (1810186111, CAST(N'2021-01-04' AS Date), 895688, 1840, 313);
INSERT into traffic VALUES (1810186111, CAST(N'2021-01-05' AS Date), 895688, 2086, 767);
INSERT into traffic VALUES (1810186111, CAST(N'2021-01-06' AS Date), 895688, 2716, 391);
INSERT into traffic VALUES (1810186111, CAST(N'2021-01-07' AS Date), 895688, 1916, 769);
INSERT into traffic VALUES (1810186111, CAST(N'2021-01-08' AS Date), 895688, 2772, 249);
INSERT into traffic VALUES (1810186111, CAST(N'2021-01-09' AS Date), 895688, 2816, 651);
INSERT into traffic VALUES (1810186111, CAST(N'2021-01-10' AS Date), 895688, 2136, 294);
INSERT into traffic VALUES (1810186111, CAST(N'2021-01-11' AS Date), 895688, 2519, 682);
INSERT into traffic VALUES (1810186111, CAST(N'2021-01-12' AS Date), 895688, 1665, 368);
INSERT into traffic VALUES (1810186111, CAST(N'2021-01-13' AS Date), 895688, 2542, 700);
INSERT into traffic VALUES (1810186111, CAST(N'2021-01-14' AS Date), 895688, 1379, 386);
INSERT into traffic VALUES (1810186111, CAST(N'2021-01-15' AS Date), 895688, 2721, 604);
INSERT into traffic VALUES (1810186111, CAST(N'2021-01-16' AS Date), 895688, 1879, 319);
INSERT into traffic VALUES (1810186111, CAST(N'2021-01-17' AS Date), 895688, 1866, 584);
INSERT into traffic VALUES (1810186111, CAST(N'2021-01-18' AS Date), 895688, 1938, 319);
INSERT into traffic VALUES (1810186111, CAST(N'2021-01-19' AS Date), 895688, 1146, 350);
INSERT into traffic VALUES (1810186111, CAST(N'2021-01-20' AS Date), 895688, 1884, 664);
INSERT into traffic VALUES (1810186111, CAST(N'2021-01-21' AS Date), 895688, 1128, 430);
INSERT into traffic VALUES (1810186111, CAST(N'2021-01-22' AS Date), 895688, 2598, 217);
INSERT into traffic VALUES (1810186111, CAST(N'2021-01-23' AS Date), 895688, 1555, 786);
INSERT into traffic VALUES (1810186111, CAST(N'2021-01-24' AS Date), 895688, 1812, 313);
INSERT into traffic VALUES (1810186111, CAST(N'2021-01-25' AS Date), 895688, 2857, 215);
INSERT into traffic VALUES (1810186111, CAST(N'2021-01-26' AS Date), 895688, 2330, 366);
INSERT into traffic VALUES (1810186111, CAST(N'2021-01-27' AS Date), 895688, 2041, 568);
INSERT into traffic VALUES (1810186111, CAST(N'2021-01-28' AS Date), 895688, 1888, 548);
INSERT into traffic VALUES (1810186111, CAST(N'2021-01-29' AS Date), 895688, 1853, 648);
INSERT into traffic VALUES (1810186111, CAST(N'2021-01-30' AS Date), 895688, 2184, 227);
INSERT into traffic VALUES (1815641353, CAST(N'2021-01-01' AS Date), 898387, 2883, 647);
INSERT into traffic VALUES (1815641353, CAST(N'2021-01-02' AS Date), 898387, 2336, 362);
INSERT into traffic VALUES (1815641353, CAST(N'2021-01-03' AS Date), 898387, 1929, 699);
INSERT into traffic VALUES (1815641353, CAST(N'2021-01-04' AS Date), 898387, 1276, 559);
INSERT into traffic VALUES (1815641353, CAST(N'2021-01-05' AS Date), 898387, 1890, 531);
INSERT into traffic VALUES (1815641353, CAST(N'2021-01-06' AS Date), 898387, 2916, 786);
INSERT into traffic VALUES (1815641353, CAST(N'2021-01-07' AS Date), 898387, 2307, 396);
INSERT into traffic VALUES (1815641353, CAST(N'2021-01-08' AS Date), 898387, 1806, 607);
INSERT into traffic VALUES (1815641353, CAST(N'2021-01-09' AS Date), 898387, 2013, 671);
INSERT into traffic VALUES (1815641353, CAST(N'2021-01-10' AS Date), 898387, 2261, 535);
INSERT into traffic VALUES (1815641353, CAST(N'2021-01-11' AS Date), 898387, 2422, 684);
INSERT into traffic VALUES (1815641353, CAST(N'2021-01-12' AS Date), 898387, 2258, 462);
INSERT into traffic VALUES (1815641353, CAST(N'2021-01-13' AS Date), 898387, 1911, 468);
INSERT into traffic VALUES (1815641353, CAST(N'2021-01-14' AS Date), 898387, 2687, 447);
INSERT into traffic VALUES (1815641353, CAST(N'2021-01-15' AS Date), 898387, 2625, 523);
INSERT into traffic VALUES (1815641353, CAST(N'2021-01-16' AS Date), 898387, 1877, 607);
INSERT into traffic VALUES (1815641353, CAST(N'2021-01-17' AS Date), 898387, 2886, 376);
INSERT into traffic VALUES (1815641353, CAST(N'2021-01-18' AS Date), 898387, 2838, 254);
INSERT into traffic VALUES (1815641353, CAST(N'2021-01-19' AS Date), 898387, 1482, 512);
INSERT into traffic VALUES (1815641353, CAST(N'2021-01-20' AS Date), 898387, 2118, 314);
INSERT into traffic VALUES (1815641353, CAST(N'2021-01-21' AS Date), 898387, 2588, 730);
INSERT into traffic VALUES (1815641353, CAST(N'2021-01-22' AS Date), 898387, 1895, 630);
INSERT into traffic VALUES (1815641353, CAST(N'2021-01-23' AS Date), 898387, 1637, 511);
INSERT into traffic VALUES (1815641353, CAST(N'2021-01-24' AS Date), 898387, 2112, 232);
INSERT into traffic VALUES (1815641353, CAST(N'2021-01-25' AS Date), 898387, 2979, 248);
INSERT into traffic VALUES (1815641353, CAST(N'2021-01-26' AS Date), 898387, 1124, 274);
INSERT into traffic VALUES (1815641353, CAST(N'2021-01-27' AS Date), 898387, 1687, 366);
INSERT into traffic VALUES (1815641353, CAST(N'2021-01-28' AS Date), 898387, 1819, 303);
INSERT into traffic VALUES (1815641353, CAST(N'2021-01-29' AS Date), 898387, 1291, 732);
INSERT into traffic VALUES (1815641353, CAST(N'2021-01-30' AS Date), 898387, 2110, 590);
INSERT into traffic VALUES (1815641355, CAST(N'2021-01-01' AS Date), 898387, 2423, 451);
INSERT into traffic VALUES (1815641355, CAST(N'2021-01-02' AS Date), 898387, 1678, 232);
INSERT into traffic VALUES (1815641355, CAST(N'2021-01-03' AS Date), 898387, 1635, 274);
INSERT into traffic VALUES (1815641355, CAST(N'2021-01-04' AS Date), 898387, 2357, 497);
INSERT into traffic VALUES (1815641355, CAST(N'2021-01-05' AS Date), 898387, 2042, 695);
INSERT into traffic VALUES (1815641355, CAST(N'2021-01-06' AS Date), 898387, 1049, 441);
INSERT into traffic VALUES (1815641355, CAST(N'2021-01-07' AS Date), 898387, 2699, 775);
INSERT into traffic VALUES (1815641355, CAST(N'2021-01-08' AS Date), 898387, 2705, 375);
INSERT into traffic VALUES (1815641355, CAST(N'2021-01-09' AS Date), 898387, 2987, 795);
INSERT into traffic VALUES (1815641355, CAST(N'2021-01-10' AS Date), 898387, 2704, 214);
INSERT into traffic VALUES (1815641355, CAST(N'2021-01-11' AS Date), 898387, 1931, 377);
INSERT into traffic VALUES (1815641355, CAST(N'2021-01-12' AS Date), 898387, 2408, 790);
INSERT into traffic VALUES (1815641355, CAST(N'2021-01-13' AS Date), 898387, 1150, 771);
INSERT into traffic VALUES (1815641355, CAST(N'2021-01-14' AS Date), 898387, 1145, 308);
INSERT into traffic VALUES (1815641355, CAST(N'2021-01-15' AS Date), 898387, 1992, 612);
INSERT into traffic VALUES (1815641355, CAST(N'2021-01-16' AS Date), 898387, 2010, 739);
INSERT into traffic VALUES (1815641355, CAST(N'2021-01-17' AS Date), 898387, 2668, 439);
INSERT into traffic VALUES (1815641355, CAST(N'2021-01-18' AS Date), 898387, 1787, 287);
INSERT into traffic VALUES (1815641355, CAST(N'2021-01-19' AS Date), 898387, 1100, 355);
INSERT into traffic VALUES (1815641355, CAST(N'2021-01-20' AS Date), 898387, 2317, 320);
INSERT into traffic VALUES (1815641355, CAST(N'2021-01-21' AS Date), 898387, 2090, 543);
INSERT into traffic VALUES (1815641355, CAST(N'2021-01-22' AS Date), 898387, 2652, 320);
INSERT into traffic VALUES (1815641355, CAST(N'2021-01-23' AS Date), 898387, 2639, 471);
INSERT into traffic VALUES (1815641355, CAST(N'2021-01-24' AS Date), 898387, 1322, 475);
INSERT into traffic VALUES (1815641355, CAST(N'2021-01-25' AS Date), 898387, 2126, 399);
INSERT into traffic VALUES (1815641355, CAST(N'2021-01-26' AS Date), 898387, 1287, 404);
INSERT into traffic VALUES (1815641355, CAST(N'2021-01-27' AS Date), 898387, 2049, 542);
INSERT into traffic VALUES (1815641355, CAST(N'2021-01-28' AS Date), 898387, 2987, 363);
INSERT into traffic VALUES (1815641355, CAST(N'2021-01-29' AS Date), 898387, 2433, 617);
INSERT into traffic VALUES (1815641355, CAST(N'2021-01-30' AS Date), 898387, 1697, 618);
INSERT into traffic VALUES (1839052469, CAST(N'2021-01-01' AS Date), 909971, 1056, 771);
INSERT into traffic VALUES (1839052469, CAST(N'2021-01-02' AS Date), 909971, 2775, 832);
INSERT into traffic VALUES (1839052469, CAST(N'2021-01-03' AS Date), 909971, 1034, 539);
INSERT into traffic VALUES (1839052469, CAST(N'2021-01-04' AS Date), 909971, 1413, 213);
INSERT into traffic VALUES (1839052469, CAST(N'2021-01-05' AS Date), 909971, 1765, 334);
INSERT into traffic VALUES (1839052469, CAST(N'2021-01-06' AS Date), 909971, 1126, 529);
INSERT into traffic VALUES (1839052469, CAST(N'2021-01-07' AS Date), 909971, 1806, 392);
INSERT into traffic VALUES (1839052469, CAST(N'2021-01-08' AS Date), 909971, 1736, 840);
INSERT into traffic VALUES (1839052469, CAST(N'2021-01-09' AS Date), 909971, 1333, 756);
INSERT into traffic VALUES (1839052469, CAST(N'2021-01-10' AS Date), 909971, 1878, 318);
INSERT into traffic VALUES (1839052469, CAST(N'2021-01-11' AS Date), 909971, 1867, 303);
INSERT into traffic VALUES (1839052469, CAST(N'2021-01-12' AS Date), 909971, 1045, 881);
INSERT into traffic VALUES (1839052469, CAST(N'2021-01-13' AS Date), 909971, 1373, 601);
INSERT into traffic VALUES (1839052469, CAST(N'2021-01-14' AS Date), 909971, 1911, 511);
INSERT into traffic VALUES (1839052469, CAST(N'2021-01-15' AS Date), 909971, 1003, 394);
INSERT into traffic VALUES (1839052469, CAST(N'2021-01-16' AS Date), 909971, 2853, 820);
INSERT into traffic VALUES (1839052469, CAST(N'2021-01-17' AS Date), 909971, 2020, 225);
INSERT into traffic VALUES (1839052469, CAST(N'2021-01-18' AS Date), 909971, 1987, 669);
INSERT into traffic VALUES (1839052469, CAST(N'2021-01-19' AS Date), 909971, 1674, 300);
INSERT into traffic VALUES (1839052469, CAST(N'2021-01-20' AS Date), 909971, 2670, 215);
INSERT into traffic VALUES (1839052469, CAST(N'2021-01-21' AS Date), 909971, 1002, 303);
INSERT into traffic VALUES (1839052469, CAST(N'2021-01-22' AS Date), 909971, 1716, 374);
INSERT into traffic VALUES (1839052469, CAST(N'2021-01-23' AS Date), 909971, 2515, 521);
INSERT into traffic VALUES (1839052469, CAST(N'2021-01-24' AS Date), 909971, 1581, 610);
INSERT into traffic VALUES (1839052469, CAST(N'2021-01-25' AS Date), 909971, 1578, 619);
INSERT into traffic VALUES (1839052469, CAST(N'2021-01-26' AS Date), 909971, 1295, 278);
INSERT into traffic VALUES (1839052469, CAST(N'2021-01-27' AS Date), 909971, 1053, 470);
INSERT into traffic VALUES (1839052469, CAST(N'2021-01-28' AS Date), 909971, 2704, 364);
INSERT into traffic VALUES (1839052469, CAST(N'2021-01-29' AS Date), 909971, 1964, 408);
INSERT into traffic VALUES (1839052469, CAST(N'2021-01-30' AS Date), 909971, 2129, 857);
INSERT into traffic VALUES (1844963514, CAST(N'2021-01-01' AS Date), 912896, 2238, 683);
INSERT into traffic VALUES (1844963514, CAST(N'2021-01-02' AS Date), 912896, 1821, 234);
INSERT into traffic VALUES (1844963514, CAST(N'2021-01-03' AS Date), 912896, 1687, 380);
INSERT into traffic VALUES (1844963514, CAST(N'2021-01-04' AS Date), 912896, 2618, 354);
INSERT into traffic VALUES (1844963514, CAST(N'2021-01-05' AS Date), 912896, 1486, 690);
INSERT into traffic VALUES (1844963514, CAST(N'2021-01-06' AS Date), 912896, 1807, 329);
INSERT into traffic VALUES (1844963514, CAST(N'2021-01-07' AS Date), 912896, 2085, 591);
INSERT into traffic VALUES (1844963514, CAST(N'2021-01-08' AS Date), 912896, 2488, 583);
INSERT into traffic VALUES (1844963514, CAST(N'2021-01-09' AS Date), 912896, 1324, 441);
INSERT into traffic VALUES (1844963514, CAST(N'2021-01-10' AS Date), 912896, 1683, 229);
INSERT into traffic VALUES (1844963514, CAST(N'2021-01-11' AS Date), 912896, 1593, 822);
INSERT into traffic VALUES (1844963514, CAST(N'2021-01-12' AS Date), 912896, 1511, 267);
INSERT into traffic VALUES (1844963514, CAST(N'2021-01-13' AS Date), 912896, 1099, 715);
INSERT into traffic VALUES (1844963514, CAST(N'2021-01-14' AS Date), 912896, 2644, 348);
INSERT into traffic VALUES (1844963514, CAST(N'2021-01-15' AS Date), 912896, 1507, 446);
INSERT into traffic VALUES (1844963514, CAST(N'2021-01-16' AS Date), 912896, 1375, 658);
INSERT into traffic VALUES (1844963514, CAST(N'2021-01-17' AS Date), 912896, 1380, 594);
INSERT into traffic VALUES (1844963514, CAST(N'2021-01-18' AS Date), 912896, 1724, 774);
INSERT into traffic VALUES (1844963514, CAST(N'2021-01-19' AS Date), 912896, 1151, 370);
INSERT into traffic VALUES (1844963514, CAST(N'2021-01-20' AS Date), 912896, 1901, 469);
INSERT into traffic VALUES (1844963514, CAST(N'2021-01-21' AS Date), 912896, 2019, 278);
INSERT into traffic VALUES (1844963514, CAST(N'2021-01-22' AS Date), 912896, 2188, 624);
INSERT into traffic VALUES (1844963514, CAST(N'2021-01-23' AS Date), 912896, 1950, 867);
INSERT into traffic VALUES (1844963514, CAST(N'2021-01-24' AS Date), 912896, 2209, 276);
INSERT into traffic VALUES (1844963514, CAST(N'2021-01-25' AS Date), 912896, 1885, 444);
INSERT into traffic VALUES (1844963514, CAST(N'2021-01-26' AS Date), 912896, 1394, 307);
INSERT into traffic VALUES (1844963514, CAST(N'2021-01-27' AS Date), 912896, 2842, 849);
INSERT into traffic VALUES (1844963514, CAST(N'2021-01-28' AS Date), 912896, 1795, 371);
INSERT into traffic VALUES (1844963514, CAST(N'2021-01-29' AS Date), 912896, 2204, 639);
INSERT into traffic VALUES (1844963514, CAST(N'2021-01-30' AS Date), 912896, 2003, 598);
INSERT into traffic VALUES (1844963568, CAST(N'2021-01-01' AS Date), 912896, 1669, 586);
INSERT into traffic VALUES (1844963568, CAST(N'2021-01-02' AS Date), 912896, 1154, 370);
INSERT into traffic VALUES (1844963568, CAST(N'2021-01-03' AS Date), 912896, 2983, 722);
INSERT into traffic VALUES (1844963568, CAST(N'2021-01-04' AS Date), 912896, 2984, 563);
INSERT into traffic VALUES (1844963568, CAST(N'2021-01-05' AS Date), 912896, 2238, 808);
INSERT into traffic VALUES (1844963568, CAST(N'2021-01-06' AS Date), 912896, 1019, 946);
INSERT into traffic VALUES (1844963568, CAST(N'2021-01-07' AS Date), 912896, 2028, 465);
INSERT into traffic VALUES (1844963568, CAST(N'2021-01-08' AS Date), 912896, 2174, 882);
INSERT into traffic VALUES (1844963568, CAST(N'2021-01-09' AS Date), 912896, 2056, 624);
INSERT into traffic VALUES (1844963568, CAST(N'2021-01-10' AS Date), 912896, 1195, 650);
INSERT into traffic VALUES (1844963568, CAST(N'2021-01-11' AS Date), 912896, 1920, 512);
INSERT into traffic VALUES (1844963568, CAST(N'2021-01-12' AS Date), 912896, 1827, 810);
INSERT into traffic VALUES (1844963568, CAST(N'2021-01-13' AS Date), 912896, 1827, 743);
INSERT into traffic VALUES (1844963568, CAST(N'2021-01-14' AS Date), 912896, 1182, 902);
INSERT into traffic VALUES (1844963568, CAST(N'2021-01-15' AS Date), 912896, 1160, 755);
INSERT into traffic VALUES (1844963568, CAST(N'2021-01-16' AS Date), 912896, 1606, 229);
INSERT into traffic VALUES (1844963568, CAST(N'2021-01-17' AS Date), 912896, 2413, 473);
INSERT into traffic VALUES (1844963568, CAST(N'2021-01-18' AS Date), 912896, 2759, 485);
INSERT into traffic VALUES (1844963568, CAST(N'2021-01-19' AS Date), 912896, 1693, 538);
INSERT into traffic VALUES (1844963568, CAST(N'2021-01-20' AS Date), 912896, 1192, 298);
INSERT into traffic VALUES (1844963568, CAST(N'2021-01-21' AS Date), 912896, 2844, 429);
INSERT into traffic VALUES (1844963568, CAST(N'2021-01-22' AS Date), 912896, 1196, 890);
INSERT into traffic VALUES (1844963568, CAST(N'2021-01-23' AS Date), 912896, 2564, 664);
INSERT into traffic VALUES (1844963568, CAST(N'2021-01-24' AS Date), 912896, 2304, 871);
INSERT into traffic VALUES (1844963568, CAST(N'2021-01-25' AS Date), 912896, 2300, 348);
INSERT into traffic VALUES (1844963568, CAST(N'2021-01-26' AS Date), 912896, 2705, 924);
INSERT into traffic VALUES (1844963568, CAST(N'2021-01-27' AS Date), 912896, 1371, 509);
INSERT into traffic VALUES (1844963568, CAST(N'2021-01-28' AS Date), 912896, 2968, 256);
INSERT into traffic VALUES (1844963568, CAST(N'2021-01-29' AS Date), 912896, 2655, 806);
INSERT into traffic VALUES (1844963568, CAST(N'2021-01-30' AS Date), 912896, 1381, 918);
INSERT into traffic VALUES (1844963613, CAST(N'2021-01-01' AS Date), 912896, 2850, 675);
INSERT into traffic VALUES (1844963613, CAST(N'2021-01-02' AS Date), 912896, 1058, 276);
INSERT into traffic VALUES (1844963613, CAST(N'2021-01-03' AS Date), 912896, 1762, 715);
INSERT into traffic VALUES (1844963613, CAST(N'2021-01-04' AS Date), 912896, 1644, 505);
INSERT into traffic VALUES (1844963613, CAST(N'2021-01-05' AS Date), 912896, 1697, 926);
INSERT into traffic VALUES (1844963613, CAST(N'2021-01-06' AS Date), 912896, 2025, 948);
INSERT into traffic VALUES (1844963613, CAST(N'2021-01-07' AS Date), 912896, 2291, 228);
INSERT into traffic VALUES (1844963613, CAST(N'2021-01-08' AS Date), 912896, 1171, 530);
INSERT into traffic VALUES (1844963613, CAST(N'2021-01-09' AS Date), 912896, 2829, 801);
INSERT into traffic VALUES (1844963613, CAST(N'2021-01-10' AS Date), 912896, 1991, 420);
INSERT into traffic VALUES (1844963613, CAST(N'2021-01-11' AS Date), 912896, 2264, 779);
INSERT into traffic VALUES (1844963613, CAST(N'2021-01-12' AS Date), 912896, 2997, 686);
INSERT into traffic VALUES (1844963613, CAST(N'2021-01-13' AS Date), 912896, 2351, 653);
INSERT into traffic VALUES (1844963613, CAST(N'2021-01-14' AS Date), 912896, 2242, 832);
INSERT into traffic VALUES (1844963613, CAST(N'2021-01-15' AS Date), 912896, 2941, 402);
INSERT into traffic VALUES (1844963613, CAST(N'2021-01-16' AS Date), 912896, 1841, 566);
INSERT into traffic VALUES (1844963613, CAST(N'2021-01-17' AS Date), 912896, 2270, 264);
INSERT into traffic VALUES (1844963613, CAST(N'2021-01-18' AS Date), 912896, 1960, 755);
INSERT into traffic VALUES (1844963613, CAST(N'2021-01-19' AS Date), 912896, 1686, 294);
INSERT into traffic VALUES (1844963613, CAST(N'2021-01-20' AS Date), 912896, 1977, 245);
INSERT into traffic VALUES (1844963613, CAST(N'2021-01-21' AS Date), 912896, 1743, 662);
INSERT into traffic VALUES (1844963613, CAST(N'2021-01-22' AS Date), 912896, 2215, 706);
INSERT into traffic VALUES (1844963613, CAST(N'2021-01-23' AS Date), 912896, 1744, 453);
INSERT into traffic VALUES (1844963613, CAST(N'2021-01-24' AS Date), 912896, 2646, 745);
INSERT into traffic VALUES (1844963613, CAST(N'2021-01-25' AS Date), 912896, 1262, 749);
INSERT into traffic VALUES (1844963613, CAST(N'2021-01-26' AS Date), 912896, 2789, 343);
INSERT into traffic VALUES (1844963613, CAST(N'2021-01-27' AS Date), 912896, 2338, 390);
INSERT into traffic VALUES (1844963613, CAST(N'2021-01-28' AS Date), 912896, 1740, 244);
INSERT into traffic VALUES (1844963613, CAST(N'2021-01-29' AS Date), 912896, 2029, 513);
INSERT into traffic VALUES (1844963613, CAST(N'2021-01-30' AS Date), 912896, 1510, 713);
INSERT into traffic VALUES (1864892845, CAST(N'2021-01-01' AS Date), 922757, 2244, 657);
INSERT into traffic VALUES (1864892845, CAST(N'2021-01-02' AS Date), 922757, 1562, 486);
INSERT into traffic VALUES (1864892845, CAST(N'2021-01-03' AS Date), 922757, 2605, 543);
INSERT into traffic VALUES (1864892845, CAST(N'2021-01-04' AS Date), 922757, 1201, 904);
INSERT into traffic VALUES (1864892845, CAST(N'2021-01-05' AS Date), 922757, 1943, 801);
INSERT into traffic VALUES (1864892845, CAST(N'2021-01-06' AS Date), 922757, 1607, 573);
INSERT into traffic VALUES (1864892845, CAST(N'2021-01-07' AS Date), 922757, 1297, 539);
INSERT into traffic VALUES (1864892845, CAST(N'2021-01-08' AS Date), 922757, 1214, 654);
INSERT into traffic VALUES (1864892845, CAST(N'2021-01-09' AS Date), 922757, 1998, 815);
INSERT into traffic VALUES (1864892845, CAST(N'2021-01-10' AS Date), 922757, 1546, 475);
INSERT into traffic VALUES (1864892845, CAST(N'2021-01-11' AS Date), 922757, 1881, 450);
INSERT into traffic VALUES (1864892845, CAST(N'2021-01-12' AS Date), 922757, 1315, 815);
INSERT into traffic VALUES (1864892845, CAST(N'2021-01-13' AS Date), 922757, 2677, 213);
INSERT into traffic VALUES (1864892845, CAST(N'2021-01-14' AS Date), 922757, 2830, 599);
INSERT into traffic VALUES (1864892845, CAST(N'2021-01-15' AS Date), 922757, 2394, 356);
INSERT into traffic VALUES (1864892845, CAST(N'2021-01-16' AS Date), 922757, 1412, 255);
INSERT into traffic VALUES (1864892845, CAST(N'2021-01-17' AS Date), 922757, 2822, 806);
INSERT into traffic VALUES (1864892845, CAST(N'2021-01-18' AS Date), 922757, 2814, 916);
INSERT into traffic VALUES (1864892845, CAST(N'2021-01-19' AS Date), 922757, 1084, 812);
INSERT into traffic VALUES (1864892845, CAST(N'2021-01-20' AS Date), 922757, 2920, 541);
INSERT into traffic VALUES (1864892845, CAST(N'2021-01-21' AS Date), 922757, 2746, 527);
INSERT into traffic VALUES (1864892845, CAST(N'2021-01-22' AS Date), 922757, 1783, 586);
INSERT into traffic VALUES (1864892845, CAST(N'2021-01-23' AS Date), 922757, 1031, 737);
INSERT into traffic VALUES (1864892845, CAST(N'2021-01-24' AS Date), 922757, 1882, 294);
INSERT into traffic VALUES (1864892845, CAST(N'2021-01-25' AS Date), 922757, 2838, 579);
INSERT into traffic VALUES (1864892845, CAST(N'2021-01-26' AS Date), 922757, 1985, 475);
INSERT into traffic VALUES (1864892845, CAST(N'2021-01-27' AS Date), 922757, 1173, 376);
INSERT into traffic VALUES (1864892845, CAST(N'2021-01-28' AS Date), 922757, 1837, 474);
INSERT into traffic VALUES (1864892845, CAST(N'2021-01-29' AS Date), 922757, 1107, 473);
INSERT into traffic VALUES (1864892845, CAST(N'2021-01-30' AS Date), 922757, 2971, 478);
INSERT into traffic VALUES (1876626667, CAST(N'2021-01-01' AS Date), 928563, 2079, 437);
INSERT into traffic VALUES (1876626667, CAST(N'2021-01-02' AS Date), 928563, 2756, 313);
INSERT into traffic VALUES (1876626667, CAST(N'2021-01-03' AS Date), 928563, 2128, 410);
INSERT into traffic VALUES (1876626667, CAST(N'2021-01-04' AS Date), 928563, 2257, 361);
INSERT into traffic VALUES (1876626667, CAST(N'2021-01-05' AS Date), 928563, 1070, 259);
INSERT into traffic VALUES (1876626667, CAST(N'2021-01-06' AS Date), 928563, 1419, 376);
INSERT into traffic VALUES (1876626667, CAST(N'2021-01-07' AS Date), 928563, 2929, 205);
INSERT into traffic VALUES (1876626667, CAST(N'2021-01-08' AS Date), 928563, 2976, 579);
INSERT into traffic VALUES (1876626667, CAST(N'2021-01-09' AS Date), 928563, 2925, 316);
INSERT into traffic VALUES (1876626667, CAST(N'2021-01-10' AS Date), 928563, 2800, 394);
INSERT into traffic VALUES (1876626667, CAST(N'2021-01-11' AS Date), 928563, 1621, 496);
INSERT into traffic VALUES (1876626667, CAST(N'2021-01-12' AS Date), 928563, 1557, 577);
INSERT into traffic VALUES (1876626667, CAST(N'2021-01-13' AS Date), 928563, 2899, 512);
INSERT into traffic VALUES (1876626667, CAST(N'2021-01-14' AS Date), 928563, 2728, 208);
INSERT into traffic VALUES (1876626667, CAST(N'2021-01-15' AS Date), 928563, 2968, 335);
INSERT into traffic VALUES (1876626667, CAST(N'2021-01-16' AS Date), 928563, 2124, 569);
INSERT into traffic VALUES (1876626667, CAST(N'2021-01-17' AS Date), 928563, 1586, 363);
INSERT into traffic VALUES (1876626667, CAST(N'2021-01-18' AS Date), 928563, 1002, 266);
INSERT into traffic VALUES (1876626667, CAST(N'2021-01-19' AS Date), 928563, 2269, 280);
INSERT into traffic VALUES (1876626667, CAST(N'2021-01-20' AS Date), 928563, 2386, 505);
INSERT into traffic VALUES (1876626667, CAST(N'2021-01-21' AS Date), 928563, 2650, 292);
INSERT into traffic VALUES (1876626667, CAST(N'2021-01-22' AS Date), 928563, 1690, 294);
INSERT into traffic VALUES (1876626667, CAST(N'2021-01-23' AS Date), 928563, 2906, 325);
INSERT into traffic VALUES (1876626667, CAST(N'2021-01-24' AS Date), 928563, 2028, 242);
INSERT into traffic VALUES (1876626667, CAST(N'2021-01-25' AS Date), 928563, 2515, 374);
INSERT into traffic VALUES (1876626667, CAST(N'2021-01-26' AS Date), 928563, 1169, 224);
INSERT into traffic VALUES (1876626667, CAST(N'2021-01-27' AS Date), 928563, 2519, 543);
INSERT into traffic VALUES (1876626667, CAST(N'2021-01-28' AS Date), 928563, 2723, 426);
INSERT into traffic VALUES (1876626667, CAST(N'2021-01-29' AS Date), 928563, 1438, 237);
INSERT into traffic VALUES (1876626667, CAST(N'2021-01-30' AS Date), 928563, 1351, 269);
INSERT into traffic VALUES (1882428081, CAST(N'2021-01-01' AS Date), 931433, 1953, 763);
INSERT into traffic VALUES (1882428081, CAST(N'2021-01-02' AS Date), 931433, 1556, 335);
INSERT into traffic VALUES (1882428081, CAST(N'2021-01-03' AS Date), 931433, 2487, 877);
INSERT into traffic VALUES (1882428081, CAST(N'2021-01-04' AS Date), 931433, 2510, 351);
INSERT into traffic VALUES (1882428081, CAST(N'2021-01-05' AS Date), 931433, 1306, 631);
INSERT into traffic VALUES (1882428081, CAST(N'2021-01-06' AS Date), 931433, 2661, 730);
INSERT into traffic VALUES (1882428081, CAST(N'2021-01-07' AS Date), 931433, 1540, 911);
INSERT into traffic VALUES (1882428081, CAST(N'2021-01-08' AS Date), 931433, 2472, 755);
INSERT into traffic VALUES (1882428081, CAST(N'2021-01-09' AS Date), 931433, 2941, 244);
INSERT into traffic VALUES (1882428081, CAST(N'2021-01-10' AS Date), 931433, 2733, 620);
INSERT into traffic VALUES (1882428081, CAST(N'2021-01-11' AS Date), 931433, 1408, 636);
INSERT into traffic VALUES (1882428081, CAST(N'2021-01-12' AS Date), 931433, 2237, 901);
INSERT into traffic VALUES (1882428081, CAST(N'2021-01-13' AS Date), 931433, 1909, 880);
INSERT into traffic VALUES (1882428081, CAST(N'2021-01-14' AS Date), 931433, 1090, 253);
INSERT into traffic VALUES (1882428081, CAST(N'2021-01-15' AS Date), 931433, 2423, 736);
INSERT into traffic VALUES (1882428081, CAST(N'2021-01-16' AS Date), 931433, 1586, 879);
INSERT into traffic VALUES (1882428081, CAST(N'2021-01-17' AS Date), 931433, 1538, 881);
INSERT into traffic VALUES (1882428081, CAST(N'2021-01-18' AS Date), 931433, 2564, 346);
INSERT into traffic VALUES (1882428081, CAST(N'2021-01-19' AS Date), 931433, 2486, 213);
INSERT into traffic VALUES (1882428081, CAST(N'2021-01-20' AS Date), 931433, 2913, 466);
INSERT into traffic VALUES (1882428081, CAST(N'2021-01-21' AS Date), 931433, 2855, 551);
INSERT into traffic VALUES (1882428081, CAST(N'2021-01-22' AS Date), 931433, 1519, 809);
INSERT into traffic VALUES (1882428081, CAST(N'2021-01-23' AS Date), 931433, 2285, 406);
INSERT into traffic VALUES (1882428081, CAST(N'2021-01-24' AS Date), 931433, 1572, 740);
INSERT into traffic VALUES (1882428081, CAST(N'2021-01-25' AS Date), 931433, 1229, 436);
INSERT into traffic VALUES (1882428081, CAST(N'2021-01-26' AS Date), 931433, 1160, 937);
INSERT into traffic VALUES (1882428081, CAST(N'2021-01-27' AS Date), 931433, 2849, 265);
INSERT into traffic VALUES (1882428081, CAST(N'2021-01-28' AS Date), 931433, 2554, 218);
INSERT into traffic VALUES (1882428081, CAST(N'2021-01-29' AS Date), 931433, 1756, 634);
INSERT into traffic VALUES (1882428081, CAST(N'2021-01-30' AS Date), 931433, 2851, 365);
INSERT into traffic VALUES (1892612663, CAST(N'2021-01-01' AS Date), 936473, 2458, 274);
INSERT into traffic VALUES (1892612663, CAST(N'2021-01-02' AS Date), 936473, 1576, 218);
INSERT into traffic VALUES (1892612663, CAST(N'2021-01-03' AS Date), 936473, 1581, 799);
INSERT into traffic VALUES (1892612663, CAST(N'2021-01-04' AS Date), 936473, 2575, 240);
INSERT into traffic VALUES (1892612663, CAST(N'2021-01-05' AS Date), 936473, 2589, 602);
INSERT into traffic VALUES (1892612663, CAST(N'2021-01-06' AS Date), 936473, 2479, 591);
INSERT into traffic VALUES (1892612663, CAST(N'2021-01-07' AS Date), 936473, 2521, 538);
INSERT into traffic VALUES (1892612663, CAST(N'2021-01-08' AS Date), 936473, 2312, 265);
INSERT into traffic VALUES (1892612663, CAST(N'2021-01-09' AS Date), 936473, 2065, 333);
INSERT into traffic VALUES (1892612663, CAST(N'2021-01-10' AS Date), 936473, 2705, 809);
INSERT into traffic VALUES (1892612663, CAST(N'2021-01-11' AS Date), 936473, 2823, 600);
INSERT into traffic VALUES (1892612663, CAST(N'2021-01-12' AS Date), 936473, 2010, 694);
INSERT into traffic VALUES (1892612663, CAST(N'2021-01-13' AS Date), 936473, 2091, 742);
INSERT into traffic VALUES (1892612663, CAST(N'2021-01-14' AS Date), 936473, 1794, 855);
INSERT into traffic VALUES (1892612663, CAST(N'2021-01-15' AS Date), 936473, 1373, 360);
INSERT into traffic VALUES (1892612663, CAST(N'2021-01-16' AS Date), 936473, 1822, 535);
INSERT into traffic VALUES (1892612663, CAST(N'2021-01-17' AS Date), 936473, 1594, 734);
INSERT into traffic VALUES (1892612663, CAST(N'2021-01-18' AS Date), 936473, 2245, 614);
INSERT into traffic VALUES (1892612663, CAST(N'2021-01-19' AS Date), 936473, 1750, 793);
INSERT into traffic VALUES (1892612663, CAST(N'2021-01-20' AS Date), 936473, 1416, 609);
INSERT into traffic VALUES (1892612663, CAST(N'2021-01-21' AS Date), 936473, 1633, 441);
INSERT into traffic VALUES (1892612663, CAST(N'2021-01-22' AS Date), 936473, 2719, 336);
INSERT into traffic VALUES (1892612663, CAST(N'2021-01-23' AS Date), 936473, 1526, 486);
INSERT into traffic VALUES (1892612663, CAST(N'2021-01-24' AS Date), 936473, 1262, 917);
INSERT into traffic VALUES (1892612663, CAST(N'2021-01-25' AS Date), 936473, 1821, 408);
INSERT into traffic VALUES (1892612663, CAST(N'2021-01-26' AS Date), 936473, 1955, 835);
INSERT into traffic VALUES (1892612663, CAST(N'2021-01-27' AS Date), 936473, 1422, 612);
INSERT into traffic VALUES (1892612663, CAST(N'2021-01-28' AS Date), 936473, 2508, 265);
INSERT into traffic VALUES (1892612663, CAST(N'2021-01-29' AS Date), 936473, 2839, 838);
INSERT into traffic VALUES (1892612663, CAST(N'2021-01-30' AS Date), 936473, 1413, 238);
INSERT into traffic VALUES (1892612705, CAST(N'2021-01-01' AS Date), 936473, 2727, 589);
INSERT into traffic VALUES (1892612705, CAST(N'2021-01-02' AS Date), 936473, 1512, 921);
INSERT into traffic VALUES (1892612705, CAST(N'2021-01-03' AS Date), 936473, 1783, 528);
INSERT into traffic VALUES (1892612705, CAST(N'2021-01-04' AS Date), 936473, 1072, 364);
INSERT into traffic VALUES (1892612705, CAST(N'2021-01-05' AS Date), 936473, 1781, 709);
INSERT into traffic VALUES (1892612705, CAST(N'2021-01-06' AS Date), 936473, 1415, 751);
INSERT into traffic VALUES (1892612705, CAST(N'2021-01-07' AS Date), 936473, 2210, 434);
INSERT into traffic VALUES (1892612705, CAST(N'2021-01-08' AS Date), 936473, 1343, 565);
INSERT into traffic VALUES (1892612705, CAST(N'2021-01-09' AS Date), 936473, 2638, 754);
INSERT into traffic VALUES (1892612705, CAST(N'2021-01-10' AS Date), 936473, 2196, 555);
INSERT into traffic VALUES (1892612705, CAST(N'2021-01-11' AS Date), 936473, 1979, 644);
INSERT into traffic VALUES (1892612705, CAST(N'2021-01-12' AS Date), 936473, 1971, 428);
INSERT into traffic VALUES (1892612705, CAST(N'2021-01-13' AS Date), 936473, 2757, 792);
INSERT into traffic VALUES (1892612705, CAST(N'2021-01-14' AS Date), 936473, 1223, 658);
INSERT into traffic VALUES (1892612705, CAST(N'2021-01-15' AS Date), 936473, 1522, 315);
INSERT into traffic VALUES (1892612705, CAST(N'2021-01-16' AS Date), 936473, 1106, 268);
INSERT into traffic VALUES (1892612705, CAST(N'2021-01-17' AS Date), 936473, 2172, 761);
INSERT into traffic VALUES (1892612705, CAST(N'2021-01-18' AS Date), 936473, 2410, 411);
INSERT into traffic VALUES (1892612705, CAST(N'2021-01-19' AS Date), 936473, 1400, 237);
INSERT into traffic VALUES (1892612705, CAST(N'2021-01-20' AS Date), 936473, 1204, 388);
INSERT into traffic VALUES (1892612705, CAST(N'2021-01-21' AS Date), 936473, 1951, 732);
INSERT into traffic VALUES (1892612705, CAST(N'2021-01-22' AS Date), 936473, 1714, 658);
INSERT into traffic VALUES (1892612705, CAST(N'2021-01-23' AS Date), 936473, 1254, 490);
INSERT into traffic VALUES (1892612705, CAST(N'2021-01-24' AS Date), 936473, 1443, 858);
INSERT into traffic VALUES (1892612705, CAST(N'2021-01-25' AS Date), 936473, 2407, 857);
INSERT into traffic VALUES (1892612705, CAST(N'2021-01-26' AS Date), 936473, 2352, 375);
INSERT into traffic VALUES (1892612705, CAST(N'2021-01-27' AS Date), 936473, 2913, 481);
INSERT into traffic VALUES (1892612705, CAST(N'2021-01-28' AS Date), 936473, 2033, 561);
INSERT into traffic VALUES (1892612705, CAST(N'2021-01-29' AS Date), 936473, 1127, 615);
INSERT into traffic VALUES (1892612705, CAST(N'2021-01-30' AS Date), 936473, 2418, 247);
INSERT into traffic VALUES (1906720798, CAST(N'2021-01-01' AS Date), 943454, 1443, 586);
INSERT into traffic VALUES (1906720798, CAST(N'2021-01-02' AS Date), 943454, 1524, 201);
INSERT into traffic VALUES (1906720798, CAST(N'2021-01-03' AS Date), 943454, 2527, 211);
INSERT into traffic VALUES (1906720798, CAST(N'2021-01-04' AS Date), 943454, 2460, 536);
INSERT into traffic VALUES (1906720798, CAST(N'2021-01-05' AS Date), 943454, 2495, 265);
INSERT into traffic VALUES (1906720798, CAST(N'2021-01-06' AS Date), 943454, 1992, 294);
INSERT into traffic VALUES (1906720798, CAST(N'2021-01-07' AS Date), 943454, 1233, 290);
INSERT into traffic VALUES (1906720798, CAST(N'2021-01-08' AS Date), 943454, 2446, 390);
INSERT into traffic VALUES (1906720798, CAST(N'2021-01-09' AS Date), 943454, 1081, 270);
INSERT into traffic VALUES (1906720798, CAST(N'2021-01-10' AS Date), 943454, 1482, 360);
INSERT into traffic VALUES (1906720798, CAST(N'2021-01-11' AS Date), 943454, 1048, 210);
INSERT into traffic VALUES (1906720798, CAST(N'2021-01-12' AS Date), 943454, 1449, 564);
INSERT into traffic VALUES (1906720798, CAST(N'2021-01-13' AS Date), 943454, 2578, 525);
INSERT into traffic VALUES (1906720798, CAST(N'2021-01-14' AS Date), 943454, 2493, 493);
INSERT into traffic VALUES (1906720798, CAST(N'2021-01-15' AS Date), 943454, 2023, 252);
INSERT into traffic VALUES (1906720798, CAST(N'2021-01-16' AS Date), 943454, 1013, 264);
INSERT into traffic VALUES (1906720798, CAST(N'2021-01-17' AS Date), 943454, 2637, 213);
INSERT into traffic VALUES (1906720798, CAST(N'2021-01-18' AS Date), 943454, 1834, 246);
INSERT into traffic VALUES (1906720798, CAST(N'2021-01-19' AS Date), 943454, 1098, 250);
INSERT into traffic VALUES (1906720798, CAST(N'2021-01-20' AS Date), 943454, 1817, 222);
INSERT into traffic VALUES (1906720798, CAST(N'2021-01-21' AS Date), 943454, 1109, 316);
INSERT into traffic VALUES (1906720798, CAST(N'2021-01-22' AS Date), 943454, 2378, 290);
INSERT into traffic VALUES (1906720798, CAST(N'2021-01-23' AS Date), 943454, 2624, 340);
INSERT into traffic VALUES (1906720798, CAST(N'2021-01-24' AS Date), 943454, 1142, 443);
INSERT into traffic VALUES (1906720798, CAST(N'2021-01-25' AS Date), 943454, 2205, 594);
INSERT into traffic VALUES (1906720798, CAST(N'2021-01-26' AS Date), 943454, 2378, 366);
INSERT into traffic VALUES (1906720798, CAST(N'2021-01-27' AS Date), 943454, 1379, 311);
INSERT into traffic VALUES (1906720798, CAST(N'2021-01-28' AS Date), 943454, 2103, 555);
INSERT into traffic VALUES (1906720798, CAST(N'2021-01-29' AS Date), 943454, 2004, 337);
INSERT into traffic VALUES (1906720798, CAST(N'2021-01-30' AS Date), 943454, 2164, 448);
INSERT into traffic VALUES (1912450422, CAST(N'2021-01-01' AS Date), 946289, 2206, 322);
INSERT into traffic VALUES (1912450422, CAST(N'2021-01-02' AS Date), 946289, 2751, 461);
INSERT into traffic VALUES (1912450422, CAST(N'2021-01-03' AS Date), 946289, 2251, 332);
INSERT into traffic VALUES (1912450422, CAST(N'2021-01-04' AS Date), 946289, 1611, 563);
INSERT into traffic VALUES (1912450422, CAST(N'2021-01-05' AS Date), 946289, 2479, 253);
INSERT into traffic VALUES (1912450422, CAST(N'2021-01-06' AS Date), 946289, 1128, 327);
INSERT into traffic VALUES (1912450422, CAST(N'2021-01-07' AS Date), 946289, 1375, 341);
INSERT into traffic VALUES (1912450422, CAST(N'2021-01-08' AS Date), 946289, 2547, 206);
INSERT into traffic VALUES (1912450422, CAST(N'2021-01-09' AS Date), 946289, 2094, 442);
INSERT into traffic VALUES (1912450422, CAST(N'2021-01-10' AS Date), 946289, 1695, 350);
INSERT into traffic VALUES (1912450422, CAST(N'2021-01-11' AS Date), 946289, 2533, 302);
INSERT into traffic VALUES (1912450422, CAST(N'2021-01-12' AS Date), 946289, 2567, 430);
INSERT into traffic VALUES (1912450422, CAST(N'2021-01-13' AS Date), 946289, 2416, 229);
INSERT into traffic VALUES (1912450422, CAST(N'2021-01-14' AS Date), 946289, 2150, 407);
INSERT into traffic VALUES (1912450422, CAST(N'2021-01-15' AS Date), 946289, 2354, 554);
INSERT into traffic VALUES (1912450422, CAST(N'2021-01-16' AS Date), 946289, 1970, 274);
INSERT into traffic VALUES (1912450422, CAST(N'2021-01-17' AS Date), 946289, 2571, 508);
INSERT into traffic VALUES (1912450422, CAST(N'2021-01-18' AS Date), 946289, 1175, 280);
INSERT into traffic VALUES (1912450422, CAST(N'2021-01-19' AS Date), 946289, 2213, 215);
INSERT into traffic VALUES (1912450422, CAST(N'2021-01-20' AS Date), 946289, 1893, 371);
INSERT into traffic VALUES (1912450422, CAST(N'2021-01-21' AS Date), 946289, 2277, 361);
INSERT into traffic VALUES (1912450422, CAST(N'2021-01-22' AS Date), 946289, 1707, 433);
INSERT into traffic VALUES (1912450422, CAST(N'2021-01-23' AS Date), 946289, 1160, 523);
INSERT into traffic VALUES (1912450422, CAST(N'2021-01-24' AS Date), 946289, 2777, 343);
INSERT into traffic VALUES (1912450422, CAST(N'2021-01-25' AS Date), 946289, 2900, 459);
INSERT into traffic VALUES (1912450422, CAST(N'2021-01-26' AS Date), 946289, 1337, 568);
INSERT into traffic VALUES (1912450422, CAST(N'2021-01-27' AS Date), 946289, 1090, 397);
INSERT into traffic VALUES (1912450422, CAST(N'2021-01-28' AS Date), 946289, 1066, 413);
INSERT into traffic VALUES (1912450422, CAST(N'2021-01-29' AS Date), 946289, 1900, 278);
INSERT into traffic VALUES (1912450422, CAST(N'2021-01-30' AS Date), 946289, 1964, 265);
INSERT into traffic VALUES (1932705390, CAST(N'2021-01-01' AS Date), 956311, 2606, 506);
INSERT into traffic VALUES (1932705390, CAST(N'2021-01-02' AS Date), 956311, 2316, 208);
INSERT into traffic VALUES (1932705390, CAST(N'2021-01-03' AS Date), 956311, 2688, 426);
INSERT into traffic VALUES (1932705390, CAST(N'2021-01-04' AS Date), 956311, 2056, 519);
INSERT into traffic VALUES (1932705390, CAST(N'2021-01-05' AS Date), 956311, 2273, 340);
INSERT into traffic VALUES (1932705390, CAST(N'2021-01-06' AS Date), 956311, 2822, 528);
INSERT into traffic VALUES (1932705390, CAST(N'2021-01-07' AS Date), 956311, 2071, 572);
INSERT into traffic VALUES (1932705390, CAST(N'2021-01-08' AS Date), 956311, 2002, 231);
INSERT into traffic VALUES (1932705390, CAST(N'2021-01-09' AS Date), 956311, 2706, 300);
INSERT into traffic VALUES (1932705390, CAST(N'2021-01-10' AS Date), 956311, 2152, 585);
INSERT into traffic VALUES (1932705390, CAST(N'2021-01-11' AS Date), 956311, 2073, 358);
INSERT into traffic VALUES (1932705390, CAST(N'2021-01-12' AS Date), 956311, 2849, 339);
INSERT into traffic VALUES (1932705390, CAST(N'2021-01-13' AS Date), 956311, 2985, 432);
INSERT into traffic VALUES (1932705390, CAST(N'2021-01-14' AS Date), 956311, 1582, 510);
INSERT into traffic VALUES (1932705390, CAST(N'2021-01-15' AS Date), 956311, 1395, 323);
INSERT into traffic VALUES (1932705390, CAST(N'2021-01-16' AS Date), 956311, 2401, 229);
INSERT into traffic VALUES (1932705390, CAST(N'2021-01-17' AS Date), 956311, 1482, 233);
INSERT into traffic VALUES (1932705390, CAST(N'2021-01-18' AS Date), 956311, 2530, 558);
INSERT into traffic VALUES (1932705390, CAST(N'2021-01-19' AS Date), 956311, 2070, 502);
INSERT into traffic VALUES (1932705390, CAST(N'2021-01-20' AS Date), 956311, 2240, 460);
INSERT into traffic VALUES (1932705390, CAST(N'2021-01-21' AS Date), 956311, 1580, 363);
INSERT into traffic VALUES (1932705390, CAST(N'2021-01-22' AS Date), 956311, 1182, 540);
INSERT into traffic VALUES (1932705390, CAST(N'2021-01-23' AS Date), 956311, 2907, 221);
INSERT into traffic VALUES (1932705390, CAST(N'2021-01-24' AS Date), 956311, 2761, 582);
INSERT into traffic VALUES (1932705390, CAST(N'2021-01-25' AS Date), 956311, 1110, 399);
INSERT into traffic VALUES (1932705390, CAST(N'2021-01-26' AS Date), 956311, 1987, 306);
INSERT into traffic VALUES (1932705390, CAST(N'2021-01-27' AS Date), 956311, 2215, 517);
INSERT into traffic VALUES (1932705390, CAST(N'2021-01-28' AS Date), 956311, 2290, 421);
INSERT into traffic VALUES (1932705390, CAST(N'2021-01-29' AS Date), 956311, 2304, 527);
INSERT into traffic VALUES (1932705390, CAST(N'2021-01-30' AS Date), 956311, 2442, 201);
INSERT into traffic VALUES (1935374799, CAST(N'2021-01-01' AS Date), 957632, 1579, 246);
INSERT into traffic VALUES (1935374799, CAST(N'2021-01-02' AS Date), 957632, 1829, 360);
INSERT into traffic VALUES (1935374799, CAST(N'2021-01-03' AS Date), 957632, 2121, 360);
INSERT into traffic VALUES (1935374799, CAST(N'2021-01-04' AS Date), 957632, 1083, 486);
INSERT into traffic VALUES (1935374799, CAST(N'2021-01-05' AS Date), 957632, 1285, 328);
INSERT into traffic VALUES (1935374799, CAST(N'2021-01-06' AS Date), 957632, 2320, 308);
INSERT into traffic VALUES (1935374799, CAST(N'2021-01-07' AS Date), 957632, 2345, 403);
INSERT into traffic VALUES (1935374799, CAST(N'2021-01-08' AS Date), 957632, 1136, 425);
INSERT into traffic VALUES (1935374799, CAST(N'2021-01-09' AS Date), 957632, 2478, 525);
INSERT into traffic VALUES (1935374799, CAST(N'2021-01-10' AS Date), 957632, 1986, 540);
INSERT into traffic VALUES (1935374799, CAST(N'2021-01-11' AS Date), 957632, 2204, 295);
INSERT into traffic VALUES (1935374799, CAST(N'2021-01-12' AS Date), 957632, 2649, 394);
INSERT into traffic VALUES (1935374799, CAST(N'2021-01-13' AS Date), 957632, 2918, 271);
INSERT into traffic VALUES (1935374799, CAST(N'2021-01-14' AS Date), 957632, 1551, 246);
INSERT into traffic VALUES (1935374799, CAST(N'2021-01-15' AS Date), 957632, 2465, 587);
INSERT into traffic VALUES (1935374799, CAST(N'2021-01-16' AS Date), 957632, 2202, 551);
INSERT into traffic VALUES (1935374799, CAST(N'2021-01-17' AS Date), 957632, 1896, 389);
INSERT into traffic VALUES (1935374799, CAST(N'2021-01-18' AS Date), 957632, 1255, 579);
INSERT into traffic VALUES (1935374799, CAST(N'2021-01-19' AS Date), 957632, 2537, 363);
INSERT into traffic VALUES (1935374799, CAST(N'2021-01-20' AS Date), 957632, 1750, 511);
INSERT into traffic VALUES (1935374799, CAST(N'2021-01-21' AS Date), 957632, 2032, 274);
INSERT into traffic VALUES (1935374799, CAST(N'2021-01-22' AS Date), 957632, 2306, 395);
INSERT into traffic VALUES (1935374799, CAST(N'2021-01-23' AS Date), 957632, 1386, 312);
INSERT into traffic VALUES (1935374799, CAST(N'2021-01-24' AS Date), 957632, 2659, 346);
INSERT into traffic VALUES (1935374799, CAST(N'2021-01-25' AS Date), 957632, 2931, 345);
INSERT into traffic VALUES (1935374799, CAST(N'2021-01-26' AS Date), 957632, 1419, 427);
INSERT into traffic VALUES (1935374799, CAST(N'2021-01-27' AS Date), 957632, 1091, 227);
INSERT into traffic VALUES (1935374799, CAST(N'2021-01-28' AS Date), 957632, 2187, 358);
INSERT into traffic VALUES (1935374799, CAST(N'2021-01-29' AS Date), 957632, 2342, 433);
INSERT into traffic VALUES (1935374799, CAST(N'2021-01-30' AS Date), 957632, 1267, 519);
INSERT into traffic VALUES (1935374801, CAST(N'2021-01-01' AS Date), 957632, 2154, 226);
INSERT into traffic VALUES (1935374801, CAST(N'2021-01-02' AS Date), 957632, 1063, 480);
INSERT into traffic VALUES (1935374801, CAST(N'2021-01-03' AS Date), 957632, 1014, 598);
INSERT into traffic VALUES (1935374801, CAST(N'2021-01-04' AS Date), 957632, 2571, 388);
INSERT into traffic VALUES (1935374801, CAST(N'2021-01-05' AS Date), 957632, 2780, 419);
INSERT into traffic VALUES (1935374801, CAST(N'2021-01-06' AS Date), 957632, 1612, 598);
INSERT into traffic VALUES (1935374801, CAST(N'2021-01-07' AS Date), 957632, 1515, 491);
INSERT into traffic VALUES (1935374801, CAST(N'2021-01-08' AS Date), 957632, 2467, 405);
INSERT into traffic VALUES (1935374801, CAST(N'2021-01-09' AS Date), 957632, 1612, 493);
INSERT into traffic VALUES (1935374801, CAST(N'2021-01-10' AS Date), 957632, 1791, 239);
INSERT into traffic VALUES (1935374801, CAST(N'2021-01-11' AS Date), 957632, 1875, 524);
INSERT into traffic VALUES (1935374801, CAST(N'2021-01-12' AS Date), 957632, 2201, 294);
INSERT into traffic VALUES (1935374801, CAST(N'2021-01-13' AS Date), 957632, 2188, 501);
INSERT into traffic VALUES (1935374801, CAST(N'2021-01-14' AS Date), 957632, 1157, 584);
INSERT into traffic VALUES (1935374801, CAST(N'2021-01-15' AS Date), 957632, 1950, 352);
INSERT into traffic VALUES (1935374801, CAST(N'2021-01-16' AS Date), 957632, 1737, 354);
INSERT into traffic VALUES (1935374801, CAST(N'2021-01-17' AS Date), 957632, 2868, 568);
INSERT into traffic VALUES (1935374801, CAST(N'2021-01-18' AS Date), 957632, 2710, 580);
INSERT into traffic VALUES (1935374801, CAST(N'2021-01-19' AS Date), 957632, 2943, 528);
INSERT into traffic VALUES (1935374801, CAST(N'2021-01-20' AS Date), 957632, 1144, 227);
INSERT into traffic VALUES (1935374801, CAST(N'2021-01-21' AS Date), 957632, 1456, 541);
INSERT into traffic VALUES (1935374801, CAST(N'2021-01-22' AS Date), 957632, 2187, 513);
INSERT into traffic VALUES (1935374801, CAST(N'2021-01-23' AS Date), 957632, 1738, 485);
INSERT into traffic VALUES (1935374801, CAST(N'2021-01-24' AS Date), 957632, 1789, 438);
INSERT into traffic VALUES (1935374801, CAST(N'2021-01-25' AS Date), 957632, 2532, 461);
INSERT into traffic VALUES (1935374801, CAST(N'2021-01-26' AS Date), 957632, 2551, 390);
INSERT into traffic VALUES (1935374801, CAST(N'2021-01-27' AS Date), 957632, 1918, 576);
INSERT into traffic VALUES (1935374801, CAST(N'2021-01-28' AS Date), 957632, 1824, 437);
INSERT into traffic VALUES (1935374801, CAST(N'2021-01-29' AS Date), 957632, 1002, 584);
INSERT into traffic VALUES (1935374801, CAST(N'2021-01-30' AS Date), 957632, 1595, 435);
INSERT into traffic VALUES (1935374837, CAST(N'2021-01-01' AS Date), 957632, 1792, 532);
INSERT into traffic VALUES (1935374837, CAST(N'2021-01-02' AS Date), 957632, 1367, 577);
INSERT into traffic VALUES (1935374837, CAST(N'2021-01-03' AS Date), 957632, 2966, 554);
INSERT into traffic VALUES (1935374837, CAST(N'2021-01-04' AS Date), 957632, 1563, 216);
INSERT into traffic VALUES (1935374837, CAST(N'2021-01-05' AS Date), 957632, 1138, 257);
INSERT into traffic VALUES (1935374837, CAST(N'2021-01-06' AS Date), 957632, 2885, 340);
INSERT into traffic VALUES (1935374837, CAST(N'2021-01-07' AS Date), 957632, 1848, 341);
INSERT into traffic VALUES (1935374837, CAST(N'2021-01-08' AS Date), 957632, 1565, 582);
INSERT into traffic VALUES (1935374837, CAST(N'2021-01-09' AS Date), 957632, 1072, 334);
INSERT into traffic VALUES (1935374837, CAST(N'2021-01-10' AS Date), 957632, 1063, 211);
INSERT into traffic VALUES (1935374837, CAST(N'2021-01-11' AS Date), 957632, 1986, 515);
INSERT into traffic VALUES (1935374837, CAST(N'2021-01-12' AS Date), 957632, 1400, 488);
INSERT into traffic VALUES (1935374837, CAST(N'2021-01-13' AS Date), 957632, 1183, 562);
INSERT into traffic VALUES (1935374837, CAST(N'2021-01-14' AS Date), 957632, 2822, 221);
INSERT into traffic VALUES (1935374837, CAST(N'2021-01-15' AS Date), 957632, 1623, 415);
INSERT into traffic VALUES (1935374837, CAST(N'2021-01-16' AS Date), 957632, 1862, 478);
INSERT into traffic VALUES (1935374837, CAST(N'2021-01-17' AS Date), 957632, 1484, 297);
INSERT into traffic VALUES (1935374837, CAST(N'2021-01-18' AS Date), 957632, 2765, 597);
INSERT into traffic VALUES (1935374837, CAST(N'2021-01-19' AS Date), 957632, 2190, 249);
INSERT into traffic VALUES (1935374837, CAST(N'2021-01-20' AS Date), 957632, 1171, 289);
INSERT into traffic VALUES (1935374837, CAST(N'2021-01-21' AS Date), 957632, 2471, 509);
INSERT into traffic VALUES (1935374837, CAST(N'2021-01-22' AS Date), 957632, 1149, 565);
INSERT into traffic VALUES (1935374837, CAST(N'2021-01-23' AS Date), 957632, 2543, 508);
INSERT into traffic VALUES (1935374837, CAST(N'2021-01-24' AS Date), 957632, 2386, 330);
INSERT into traffic VALUES (1935374837, CAST(N'2021-01-25' AS Date), 957632, 1348, 292);
INSERT into traffic VALUES (1935374837, CAST(N'2021-01-26' AS Date), 957632, 2657, 404);
INSERT into traffic VALUES (1935374837, CAST(N'2021-01-27' AS Date), 957632, 1530, 579);
INSERT into traffic VALUES (1935374837, CAST(N'2021-01-28' AS Date), 957632, 1266, 312);
INSERT into traffic VALUES (1935374837, CAST(N'2021-01-29' AS Date), 957632, 2533, 283);
INSERT into traffic VALUES (1935374837, CAST(N'2021-01-30' AS Date), 957632, 1059, 570);
INSERT into traffic VALUES (1938846590, CAST(N'2021-01-01' AS Date), 959350, 2498, 217);
INSERT into traffic VALUES (1938846590, CAST(N'2021-01-02' AS Date), 959350, 1743, 451);
INSERT into traffic VALUES (1938846590, CAST(N'2021-01-03' AS Date), 959350, 1559, 212);
INSERT into traffic VALUES (1938846590, CAST(N'2021-01-04' AS Date), 959350, 1363, 451);
INSERT into traffic VALUES (1938846590, CAST(N'2021-01-05' AS Date), 959350, 1519, 400);
INSERT into traffic VALUES (1938846590, CAST(N'2021-01-06' AS Date), 959350, 1150, 369);
INSERT into traffic VALUES (1938846590, CAST(N'2021-01-07' AS Date), 959350, 1611, 391);
INSERT into traffic VALUES (1938846590, CAST(N'2021-01-08' AS Date), 959350, 2832, 554);
INSERT into traffic VALUES (1938846590, CAST(N'2021-01-09' AS Date), 959350, 1779, 431);
INSERT into traffic VALUES (1938846590, CAST(N'2021-01-10' AS Date), 959350, 1104, 483);
INSERT into traffic VALUES (1938846590, CAST(N'2021-01-11' AS Date), 959350, 1338, 539);
INSERT into traffic VALUES (1938846590, CAST(N'2021-01-12' AS Date), 959350, 2728, 206);
INSERT into traffic VALUES (1938846590, CAST(N'2021-01-13' AS Date), 959350, 1718, 265);
INSERT into traffic VALUES (1938846590, CAST(N'2021-01-14' AS Date), 959350, 2429, 418);
INSERT into traffic VALUES (1938846590, CAST(N'2021-01-15' AS Date), 959350, 2353, 355);
INSERT into traffic VALUES (1938846590, CAST(N'2021-01-16' AS Date), 959350, 2310, 240);
INSERT into traffic VALUES (1938846590, CAST(N'2021-01-17' AS Date), 959350, 1522, 342);
INSERT into traffic VALUES (1938846590, CAST(N'2021-01-18' AS Date), 959350, 1589, 438);
INSERT into traffic VALUES (1938846590, CAST(N'2021-01-19' AS Date), 959350, 1183, 222);
INSERT into traffic VALUES (1938846590, CAST(N'2021-01-20' AS Date), 959350, 1403, 532);
INSERT into traffic VALUES (1938846590, CAST(N'2021-01-21' AS Date), 959350, 1531, 431);
INSERT into traffic VALUES (1938846590, CAST(N'2021-01-22' AS Date), 959350, 1084, 342);
INSERT into traffic VALUES (1938846590, CAST(N'2021-01-23' AS Date), 959350, 1947, 429);
INSERT into traffic VALUES (1938846590, CAST(N'2021-01-24' AS Date), 959350, 2239, 446);
INSERT into traffic VALUES (1938846590, CAST(N'2021-01-25' AS Date), 959350, 2554, 586);
INSERT into traffic VALUES (1938846590, CAST(N'2021-01-26' AS Date), 959350, 1899, 309);
INSERT into traffic VALUES (1938846590, CAST(N'2021-01-27' AS Date), 959350, 1366, 283);
INSERT into traffic VALUES (1938846590, CAST(N'2021-01-28' AS Date), 959350, 1289, 491);
INSERT into traffic VALUES (1938846590, CAST(N'2021-01-29' AS Date), 959350, 2845, 552);
INSERT into traffic VALUES (1938846590, CAST(N'2021-01-30' AS Date), 959350, 1543, 433);
INSERT into traffic VALUES (1948991223, CAST(N'2021-01-01' AS Date), 964369, 1960, 448);
INSERT into traffic VALUES (1948991223, CAST(N'2021-01-02' AS Date), 964369, 2454, 357);
INSERT into traffic VALUES (1948991223, CAST(N'2021-01-03' AS Date), 964369, 2610, 484);
INSERT into traffic VALUES (1948991223, CAST(N'2021-01-04' AS Date), 964369, 2108, 538);
INSERT into traffic VALUES (1948991223, CAST(N'2021-01-05' AS Date), 964369, 2775, 437);
INSERT into traffic VALUES (1948991223, CAST(N'2021-01-06' AS Date), 964369, 2344, 388);
INSERT into traffic VALUES (1948991223, CAST(N'2021-01-07' AS Date), 964369, 1227, 246);
INSERT into traffic VALUES (1948991223, CAST(N'2021-01-08' AS Date), 964369, 2975, 245);
INSERT into traffic VALUES (1948991223, CAST(N'2021-01-09' AS Date), 964369, 1020, 431);
INSERT into traffic VALUES (1948991223, CAST(N'2021-01-10' AS Date), 964369, 1258, 529);
INSERT into traffic VALUES (1948991223, CAST(N'2021-01-11' AS Date), 964369, 1833, 444);
INSERT into traffic VALUES (1948991223, CAST(N'2021-01-12' AS Date), 964369, 1220, 287);
INSERT into traffic VALUES (1948991223, CAST(N'2021-01-13' AS Date), 964369, 1144, 542);
INSERT into traffic VALUES (1948991223, CAST(N'2021-01-14' AS Date), 964369, 1694, 361);
INSERT into traffic VALUES (1948991223, CAST(N'2021-01-15' AS Date), 964369, 1186, 219);
INSERT into traffic VALUES (1948991223, CAST(N'2021-01-16' AS Date), 964369, 2278, 256);
INSERT into traffic VALUES (1948991223, CAST(N'2021-01-17' AS Date), 964369, 1541, 526);
INSERT into traffic VALUES (1948991223, CAST(N'2021-01-18' AS Date), 964369, 2330, 240);
INSERT into traffic VALUES (1948991223, CAST(N'2021-01-19' AS Date), 964369, 1156, 204);
INSERT into traffic VALUES (1948991223, CAST(N'2021-01-20' AS Date), 964369, 1179, 418);
INSERT into traffic VALUES (1948991223, CAST(N'2021-01-21' AS Date), 964369, 2411, 408);
INSERT into traffic VALUES (1948991223, CAST(N'2021-01-22' AS Date), 964369, 2485, 308);
INSERT into traffic VALUES (1948991223, CAST(N'2021-01-23' AS Date), 964369, 2963, 292);
INSERT into traffic VALUES (1948991223, CAST(N'2021-01-24' AS Date), 964369, 1595, 434);
INSERT into traffic VALUES (1948991223, CAST(N'2021-01-25' AS Date), 964369, 1314, 274);
INSERT into traffic VALUES (1948991223, CAST(N'2021-01-26' AS Date), 964369, 2264, 219);
INSERT into traffic VALUES (1948991223, CAST(N'2021-01-27' AS Date), 964369, 2832, 255);
INSERT into traffic VALUES (1948991223, CAST(N'2021-01-28' AS Date), 964369, 1473, 332);
INSERT into traffic VALUES (1948991223, CAST(N'2021-01-29' AS Date), 964369, 2297, 449);
INSERT into traffic VALUES (1948991223, CAST(N'2021-01-30' AS Date), 964369, 1279, 328);
INSERT into traffic VALUES (1948991273, CAST(N'2021-01-01' AS Date), 964369, 1242, 407);
INSERT into traffic VALUES (1948991273, CAST(N'2021-01-02' AS Date), 964369, 1043, 355);
INSERT into traffic VALUES (1948991273, CAST(N'2021-01-03' AS Date), 964369, 2437, 567);
INSERT into traffic VALUES (1948991273, CAST(N'2021-01-04' AS Date), 964369, 1462, 561);
INSERT into traffic VALUES (1948991273, CAST(N'2021-01-05' AS Date), 964369, 1881, 471);
INSERT into traffic VALUES (1948991273, CAST(N'2021-01-06' AS Date), 964369, 1145, 300);
INSERT into traffic VALUES (1948991273, CAST(N'2021-01-07' AS Date), 964369, 1593, 213);
INSERT into traffic VALUES (1948991273, CAST(N'2021-01-08' AS Date), 964369, 1796, 399);
INSERT into traffic VALUES (1948991273, CAST(N'2021-01-09' AS Date), 964369, 1577, 212);
INSERT into traffic VALUES (1948991273, CAST(N'2021-01-10' AS Date), 964369, 1358, 556);
INSERT into traffic VALUES (1948991273, CAST(N'2021-01-11' AS Date), 964369, 2623, 533);
INSERT into traffic VALUES (1948991273, CAST(N'2021-01-12' AS Date), 964369, 1158, 517);
INSERT into traffic VALUES (1948991273, CAST(N'2021-01-13' AS Date), 964369, 1695, 248);
INSERT into traffic VALUES (1948991273, CAST(N'2021-01-14' AS Date), 964369, 1494, 310);
INSERT into traffic VALUES (1948991273, CAST(N'2021-01-15' AS Date), 964369, 2737, 287);
INSERT into traffic VALUES (1948991273, CAST(N'2021-01-16' AS Date), 964369, 2981, 324);
INSERT into traffic VALUES (1948991273, CAST(N'2021-01-17' AS Date), 964369, 1917, 464);
INSERT into traffic VALUES (1948991273, CAST(N'2021-01-18' AS Date), 964369, 1023, 555);
INSERT into traffic VALUES (1948991273, CAST(N'2021-01-19' AS Date), 964369, 2772, 383);
INSERT into traffic VALUES (1948991273, CAST(N'2021-01-20' AS Date), 964369, 2590, 459);
INSERT into traffic VALUES (1948991273, CAST(N'2021-01-21' AS Date), 964369, 2144, 304);
INSERT into traffic VALUES (1948991273, CAST(N'2021-01-22' AS Date), 964369, 2429, 252);
INSERT into traffic VALUES (1948991273, CAST(N'2021-01-23' AS Date), 964369, 1144, 288);
INSERT into traffic VALUES (1948991273, CAST(N'2021-01-24' AS Date), 964369, 2777, 464);
INSERT into traffic VALUES (1948991273, CAST(N'2021-01-25' AS Date), 964369, 2150, 582);
INSERT into traffic VALUES (1948991273, CAST(N'2021-01-26' AS Date), 964369, 2220, 550);
INSERT into traffic VALUES (1948991273, CAST(N'2021-01-27' AS Date), 964369, 2838, 474);
INSERT into traffic VALUES (1948991273, CAST(N'2021-01-28' AS Date), 964369, 2120, 230);
INSERT into traffic VALUES (1948991273, CAST(N'2021-01-29' AS Date), 964369, 1191, 442);
INSERT into traffic VALUES (1948991273, CAST(N'2021-01-30' AS Date), 964369, 2491, 346);
INSERT into traffic VALUES (1959962789, CAST(N'2021-01-01' AS Date), 969798, 1288, 541);
INSERT into traffic VALUES (1959962789, CAST(N'2021-01-02' AS Date), 969798, 2131, 356);
INSERT into traffic VALUES (1959962789, CAST(N'2021-01-03' AS Date), 969798, 1655, 232);
INSERT into traffic VALUES (1959962789, CAST(N'2021-01-04' AS Date), 969798, 2847, 444);
INSERT into traffic VALUES (1959962789, CAST(N'2021-01-05' AS Date), 969798, 2025, 728);
INSERT into traffic VALUES (1959962789, CAST(N'2021-01-06' AS Date), 969798, 2897, 700);
INSERT into traffic VALUES (1959962789, CAST(N'2021-01-07' AS Date), 969798, 1421, 409);
INSERT into traffic VALUES (1959962789, CAST(N'2021-01-08' AS Date), 969798, 1637, 718);
INSERT into traffic VALUES (1959962789, CAST(N'2021-01-09' AS Date), 969798, 2617, 372);
INSERT into traffic VALUES (1959962789, CAST(N'2021-01-10' AS Date), 969798, 1505, 502);
INSERT into traffic VALUES (1959962789, CAST(N'2021-01-11' AS Date), 969798, 1141, 772);
INSERT into traffic VALUES (1959962789, CAST(N'2021-01-12' AS Date), 969798, 1929, 316);
INSERT into traffic VALUES (1959962789, CAST(N'2021-01-13' AS Date), 969798, 2598, 410);
INSERT into traffic VALUES (1959962789, CAST(N'2021-01-14' AS Date), 969798, 1733, 532);
INSERT into traffic VALUES (1959962789, CAST(N'2021-01-15' AS Date), 969798, 2019, 548);
INSERT into traffic VALUES (1959962789, CAST(N'2021-01-16' AS Date), 969798, 2169, 739);
INSERT into traffic VALUES (1959962789, CAST(N'2021-01-17' AS Date), 969798, 2011, 275);
INSERT into traffic VALUES (1959962789, CAST(N'2021-01-18' AS Date), 969798, 1240, 569);
INSERT into traffic VALUES (1959962789, CAST(N'2021-01-19' AS Date), 969798, 1670, 306);
INSERT into traffic VALUES (1959962789, CAST(N'2021-01-20' AS Date), 969798, 1614, 687);
INSERT into traffic VALUES (1959962789, CAST(N'2021-01-21' AS Date), 969798, 1093, 501);
INSERT into traffic VALUES (1959962789, CAST(N'2021-01-22' AS Date), 969798, 1192, 787);
INSERT into traffic VALUES (1959962789, CAST(N'2021-01-23' AS Date), 969798, 2982, 446);
INSERT into traffic VALUES (1959962789, CAST(N'2021-01-24' AS Date), 969798, 2905, 423);
INSERT into traffic VALUES (1959962789, CAST(N'2021-01-25' AS Date), 969798, 2925, 721);
INSERT into traffic VALUES (1959962789, CAST(N'2021-01-26' AS Date), 969798, 1412, 459);
INSERT into traffic VALUES (1959962789, CAST(N'2021-01-27' AS Date), 969798, 2431, 688);
INSERT into traffic VALUES (1959962789, CAST(N'2021-01-28' AS Date), 969798, 1652, 398);
INSERT into traffic VALUES (1959962789, CAST(N'2021-01-29' AS Date), 969798, 1254, 625);
INSERT into traffic VALUES (1959962789, CAST(N'2021-01-30' AS Date), 969798, 1053, 457);
INSERT into traffic VALUES (1959962832, CAST(N'2021-01-01' AS Date), 969798, 1467, 274);
INSERT into traffic VALUES (1959962832, CAST(N'2021-01-02' AS Date), 969798, 2726, 643);
INSERT into traffic VALUES (1959962832, CAST(N'2021-01-03' AS Date), 969798, 2124, 464);
INSERT into traffic VALUES (1959962832, CAST(N'2021-01-04' AS Date), 969798, 1556, 206);
INSERT into traffic VALUES (1959962832, CAST(N'2021-01-05' AS Date), 969798, 1255, 627);
INSERT into traffic VALUES (1959962832, CAST(N'2021-01-06' AS Date), 969798, 1089, 530);
INSERT into traffic VALUES (1959962832, CAST(N'2021-01-07' AS Date), 969798, 2618, 328);
INSERT into traffic VALUES (1959962832, CAST(N'2021-01-08' AS Date), 969798, 2876, 252);
INSERT into traffic VALUES (1959962832, CAST(N'2021-01-09' AS Date), 969798, 2907, 346);
INSERT into traffic VALUES (1959962832, CAST(N'2021-01-10' AS Date), 969798, 2078, 247);
INSERT into traffic VALUES (1959962832, CAST(N'2021-01-11' AS Date), 969798, 1121, 796);
INSERT into traffic VALUES (1959962832, CAST(N'2021-01-12' AS Date), 969798, 1975, 563);
INSERT into traffic VALUES (1959962832, CAST(N'2021-01-13' AS Date), 969798, 1430, 582);
INSERT into traffic VALUES (1959962832, CAST(N'2021-01-14' AS Date), 969798, 1675, 439);
INSERT into traffic VALUES (1959962832, CAST(N'2021-01-15' AS Date), 969798, 1397, 601);
INSERT into traffic VALUES (1959962832, CAST(N'2021-01-16' AS Date), 969798, 1347, 675);
INSERT into traffic VALUES (1959962832, CAST(N'2021-01-17' AS Date), 969798, 1776, 558);
INSERT into traffic VALUES (1959962832, CAST(N'2021-01-18' AS Date), 969798, 1188, 415);
INSERT into traffic VALUES (1959962832, CAST(N'2021-01-19' AS Date), 969798, 1812, 662);
INSERT into traffic VALUES (1959962832, CAST(N'2021-01-20' AS Date), 969798, 1731, 246);
INSERT into traffic VALUES (1959962832, CAST(N'2021-01-21' AS Date), 969798, 1018, 257);
INSERT into traffic VALUES (1959962832, CAST(N'2021-01-22' AS Date), 969798, 1845, 412);
INSERT into traffic VALUES (1959962832, CAST(N'2021-01-23' AS Date), 969798, 1664, 246);
INSERT into traffic VALUES (1959962832, CAST(N'2021-01-24' AS Date), 969798, 1456, 358);
INSERT into traffic VALUES (1959962832, CAST(N'2021-01-25' AS Date), 969798, 1816, 618);
INSERT into traffic VALUES (1959962832, CAST(N'2021-01-26' AS Date), 969798, 2059, 683);
INSERT into traffic VALUES (1959962832, CAST(N'2021-01-27' AS Date), 969798, 1998, 686);
INSERT into traffic VALUES (1959962832, CAST(N'2021-01-28' AS Date), 969798, 2222, 249);
INSERT into traffic VALUES (1959962832, CAST(N'2021-01-29' AS Date), 969798, 2572, 640);
INSERT into traffic VALUES (1959962832, CAST(N'2021-01-30' AS Date), 969798, 2449, 523);
INSERT into traffic VALUES (1959962851, CAST(N'2021-01-01' AS Date), 969798, 1327, 296);
INSERT into traffic VALUES (1959962851, CAST(N'2021-01-02' AS Date), 969798, 2358, 289);
INSERT into traffic VALUES (1959962851, CAST(N'2021-01-03' AS Date), 969798, 2520, 636);
INSERT into traffic VALUES (1959962851, CAST(N'2021-01-04' AS Date), 969798, 1438, 327);
INSERT into traffic VALUES (1959962851, CAST(N'2021-01-05' AS Date), 969798, 1283, 429);
INSERT into traffic VALUES (1959962851, CAST(N'2021-01-06' AS Date), 969798, 2733, 572);
INSERT into traffic VALUES (1959962851, CAST(N'2021-01-07' AS Date), 969798, 2111, 775);
INSERT into traffic VALUES (1959962851, CAST(N'2021-01-08' AS Date), 969798, 1629, 485);
INSERT into traffic VALUES (1959962851, CAST(N'2021-01-09' AS Date), 969798, 1911, 796);
INSERT into traffic VALUES (1959962851, CAST(N'2021-01-10' AS Date), 969798, 2525, 717);
INSERT into traffic VALUES (1959962851, CAST(N'2021-01-11' AS Date), 969798, 1149, 653);
INSERT into traffic VALUES (1959962851, CAST(N'2021-01-12' AS Date), 969798, 1541, 239);
INSERT into traffic VALUES (1959962851, CAST(N'2021-01-13' AS Date), 969798, 2348, 751);
INSERT into traffic VALUES (1959962851, CAST(N'2021-01-14' AS Date), 969798, 1580, 219);
INSERT into traffic VALUES (1959962851, CAST(N'2021-01-15' AS Date), 969798, 2922, 453);
INSERT into traffic VALUES (1959962851, CAST(N'2021-01-16' AS Date), 969798, 1749, 666);
INSERT into traffic VALUES (1959962851, CAST(N'2021-01-17' AS Date), 969798, 1509, 675);
INSERT into traffic VALUES (1959962851, CAST(N'2021-01-18' AS Date), 969798, 2547, 693);
INSERT into traffic VALUES (1959962851, CAST(N'2021-01-19' AS Date), 969798, 1624, 234);
INSERT into traffic VALUES (1959962851, CAST(N'2021-01-20' AS Date), 969798, 2769, 342);
INSERT into traffic VALUES (1959962851, CAST(N'2021-01-21' AS Date), 969798, 2299, 768);
INSERT into traffic VALUES (1959962851, CAST(N'2021-01-22' AS Date), 969798, 1438, 590);
INSERT into traffic VALUES (1959962851, CAST(N'2021-01-23' AS Date), 969798, 1957, 471);
INSERT into traffic VALUES (1959962851, CAST(N'2021-01-24' AS Date), 969798, 2784, 477);
INSERT into traffic VALUES (1959962851, CAST(N'2021-01-25' AS Date), 969798, 1003, 792);
INSERT into traffic VALUES (1959962851, CAST(N'2021-01-26' AS Date), 969798, 2204, 668);
INSERT into traffic VALUES (1959962851, CAST(N'2021-01-27' AS Date), 969798, 2233, 692);
INSERT into traffic VALUES (1959962851, CAST(N'2021-01-28' AS Date), 969798, 2229, 745);
INSERT into traffic VALUES (1959962851, CAST(N'2021-01-29' AS Date), 969798, 1923, 730);
INSERT into traffic VALUES (1959962851, CAST(N'2021-01-30' AS Date), 969798, 2812, 427);
INSERT into traffic VALUES (1959962888, CAST(N'2021-01-01' AS Date), 969798, 2403, 591);
INSERT into traffic VALUES (1959962888, CAST(N'2021-01-02' AS Date), 969798, 2994, 614);
INSERT into traffic VALUES (1959962888, CAST(N'2021-01-03' AS Date), 969798, 2719, 286);
INSERT into traffic VALUES (1959962888, CAST(N'2021-01-04' AS Date), 969798, 1797, 391);
INSERT into traffic VALUES (1959962888, CAST(N'2021-01-05' AS Date), 969798, 2884, 652);
INSERT into traffic VALUES (1959962888, CAST(N'2021-01-06' AS Date), 969798, 1035, 748);
INSERT into traffic VALUES (1959962888, CAST(N'2021-01-07' AS Date), 969798, 1531, 522);
INSERT into traffic VALUES (1959962888, CAST(N'2021-01-08' AS Date), 969798, 2250, 439);
INSERT into traffic VALUES (1959962888, CAST(N'2021-01-09' AS Date), 969798, 1000, 343);
INSERT into traffic VALUES (1959962888, CAST(N'2021-01-10' AS Date), 969798, 2166, 607);
INSERT into traffic VALUES (1959962888, CAST(N'2021-01-11' AS Date), 969798, 2795, 423);
INSERT into traffic VALUES (1959962888, CAST(N'2021-01-12' AS Date), 969798, 1197, 662);
INSERT into traffic VALUES (1959962888, CAST(N'2021-01-13' AS Date), 969798, 2153, 779);
INSERT into traffic VALUES (1959962888, CAST(N'2021-01-14' AS Date), 969798, 2412, 570);
INSERT into traffic VALUES (1959962888, CAST(N'2021-01-15' AS Date), 969798, 1749, 619);
INSERT into traffic VALUES (1959962888, CAST(N'2021-01-16' AS Date), 969798, 2314, 487);
INSERT into traffic VALUES (1959962888, CAST(N'2021-01-17' AS Date), 969798, 1019, 773);
INSERT into traffic VALUES (1959962888, CAST(N'2021-01-18' AS Date), 969798, 1084, 556);
INSERT into traffic VALUES (1959962888, CAST(N'2021-01-19' AS Date), 969798, 2756, 392);
INSERT into traffic VALUES (1959962888, CAST(N'2021-01-20' AS Date), 969798, 2301, 372);
INSERT into traffic VALUES (1959962888, CAST(N'2021-01-21' AS Date), 969798, 2130, 763);
INSERT into traffic VALUES (1959962888, CAST(N'2021-01-22' AS Date), 969798, 1863, 420);
INSERT into traffic VALUES (1959962888, CAST(N'2021-01-23' AS Date), 969798, 1053, 348);
INSERT into traffic VALUES (1959962888, CAST(N'2021-01-24' AS Date), 969798, 2447, 559);
INSERT into traffic VALUES (1959962888, CAST(N'2021-01-25' AS Date), 969798, 2388, 684);
INSERT into traffic VALUES (1959962888, CAST(N'2021-01-26' AS Date), 969798, 1080, 724);
INSERT into traffic VALUES (1959962888, CAST(N'2021-01-27' AS Date), 969798, 2768, 499);
INSERT into traffic VALUES (1959962888, CAST(N'2021-01-28' AS Date), 969798, 2663, 302);
INSERT into traffic VALUES (1959962888, CAST(N'2021-01-29' AS Date), 969798, 2171, 714);
INSERT into traffic VALUES (1959962888, CAST(N'2021-01-30' AS Date), 969798, 2542, 437);
INSERT into traffic VALUES (1963452046, CAST(N'2021-01-01' AS Date), 971525, 1292, 757);
INSERT into traffic VALUES (1963452046, CAST(N'2021-01-02' AS Date), 971525, 2753, 206);
INSERT into traffic VALUES (1963452046, CAST(N'2021-01-03' AS Date), 971525, 1779, 494);
INSERT into traffic VALUES (1963452046, CAST(N'2021-01-04' AS Date), 971525, 1044, 246);
INSERT into traffic VALUES (1963452046, CAST(N'2021-01-05' AS Date), 971525, 2214, 613);
INSERT into traffic VALUES (1963452046, CAST(N'2021-01-06' AS Date), 971525, 2858, 642);
INSERT into traffic VALUES (1963452046, CAST(N'2021-01-07' AS Date), 971525, 1691, 419);
INSERT into traffic VALUES (1963452046, CAST(N'2021-01-08' AS Date), 971525, 2867, 606);
INSERT into traffic VALUES (1963452046, CAST(N'2021-01-09' AS Date), 971525, 2685, 521);
INSERT into traffic VALUES (1963452046, CAST(N'2021-01-10' AS Date), 971525, 2643, 775);
INSERT into traffic VALUES (1963452046, CAST(N'2021-01-11' AS Date), 971525, 2940, 301);
INSERT into traffic VALUES (1963452046, CAST(N'2021-01-12' AS Date), 971525, 1617, 538);
INSERT into traffic VALUES (1963452046, CAST(N'2021-01-13' AS Date), 971525, 1307, 610);
INSERT into traffic VALUES (1963452046, CAST(N'2021-01-14' AS Date), 971525, 2616, 791);
INSERT into traffic VALUES (1963452046, CAST(N'2021-01-15' AS Date), 971525, 1450, 776);
INSERT into traffic VALUES (1963452046, CAST(N'2021-01-16' AS Date), 971525, 1558, 685);
INSERT into traffic VALUES (1963452046, CAST(N'2021-01-17' AS Date), 971525, 2544, 352);
INSERT into traffic VALUES (1963452046, CAST(N'2021-01-18' AS Date), 971525, 2856, 693);
INSERT into traffic VALUES (1963452046, CAST(N'2021-01-19' AS Date), 971525, 1273, 750);
INSERT into traffic VALUES (1963452046, CAST(N'2021-01-20' AS Date), 971525, 2764, 587);
INSERT into traffic VALUES (1963452046, CAST(N'2021-01-21' AS Date), 971525, 1408, 346);
INSERT into traffic VALUES (1963452046, CAST(N'2021-01-22' AS Date), 971525, 1004, 333);
INSERT into traffic VALUES (1963452046, CAST(N'2021-01-23' AS Date), 971525, 1378, 733);
INSERT into traffic VALUES (1963452046, CAST(N'2021-01-24' AS Date), 971525, 1265, 468);
INSERT into traffic VALUES (1963452046, CAST(N'2021-01-25' AS Date), 971525, 1736, 665);
INSERT into traffic VALUES (1963452046, CAST(N'2021-01-26' AS Date), 971525, 2350, 710);
INSERT into traffic VALUES (1963452046, CAST(N'2021-01-27' AS Date), 971525, 1636, 349);
INSERT into traffic VALUES (1963452046, CAST(N'2021-01-28' AS Date), 971525, 2021, 679);
INSERT into traffic VALUES (1963452046, CAST(N'2021-01-29' AS Date), 971525, 1213, 602);
INSERT into traffic VALUES (1963452046, CAST(N'2021-01-30' AS Date), 971525, 1304, 453);
INSERT into traffic VALUES (1963452100, CAST(N'2021-01-01' AS Date), 971525, 2094, 792);
INSERT into traffic VALUES (1963452100, CAST(N'2021-01-02' AS Date), 971525, 1080, 763);
INSERT into traffic VALUES (1963452100, CAST(N'2021-01-03' AS Date), 971525, 2987, 736);
INSERT into traffic VALUES (1963452100, CAST(N'2021-01-04' AS Date), 971525, 1551, 307);
INSERT into traffic VALUES (1963452100, CAST(N'2021-01-05' AS Date), 971525, 1510, 427);
INSERT into traffic VALUES (1963452100, CAST(N'2021-01-06' AS Date), 971525, 1832, 548);
INSERT into traffic VALUES (1963452100, CAST(N'2021-01-07' AS Date), 971525, 2577, 485);
INSERT into traffic VALUES (1963452100, CAST(N'2021-01-08' AS Date), 971525, 1858, 546);
INSERT into traffic VALUES (1963452100, CAST(N'2021-01-09' AS Date), 971525, 2858, 290);
INSERT into traffic VALUES (1963452100, CAST(N'2021-01-10' AS Date), 971525, 2399, 417);
INSERT into traffic VALUES (1963452100, CAST(N'2021-01-11' AS Date), 971525, 2086, 605);
INSERT into traffic VALUES (1963452100, CAST(N'2021-01-12' AS Date), 971525, 2001, 674);
INSERT into traffic VALUES (1963452100, CAST(N'2021-01-13' AS Date), 971525, 1619, 398);
INSERT into traffic VALUES (1963452100, CAST(N'2021-01-14' AS Date), 971525, 1935, 455);
INSERT into traffic VALUES (1963452100, CAST(N'2021-01-15' AS Date), 971525, 1673, 271);
INSERT into traffic VALUES (1963452100, CAST(N'2021-01-16' AS Date), 971525, 2896, 256);
INSERT into traffic VALUES (1963452100, CAST(N'2021-01-17' AS Date), 971525, 1667, 286);
INSERT into traffic VALUES (1963452100, CAST(N'2021-01-18' AS Date), 971525, 2135, 399);
INSERT into traffic VALUES (1963452100, CAST(N'2021-01-19' AS Date), 971525, 1414, 777);
INSERT into traffic VALUES (1963452100, CAST(N'2021-01-20' AS Date), 971525, 1685, 791);
INSERT into traffic VALUES (1963452100, CAST(N'2021-01-21' AS Date), 971525, 1745, 707);
INSERT into traffic VALUES (1963452100, CAST(N'2021-01-22' AS Date), 971525, 1440, 736);
INSERT into traffic VALUES (1963452100, CAST(N'2021-01-23' AS Date), 971525, 1640, 359);
INSERT into traffic VALUES (1963452100, CAST(N'2021-01-24' AS Date), 971525, 2125, 223);
INSERT into traffic VALUES (1963452100, CAST(N'2021-01-25' AS Date), 971525, 1346, 265);
INSERT into traffic VALUES (1963452100, CAST(N'2021-01-26' AS Date), 971525, 2905, 347);
INSERT into traffic VALUES (1963452100, CAST(N'2021-01-27' AS Date), 971525, 2898, 764);
INSERT into traffic VALUES (1963452100, CAST(N'2021-01-28' AS Date), 971525, 2839, 487);
INSERT into traffic VALUES (1963452100, CAST(N'2021-01-29' AS Date), 971525, 2287, 261);
INSERT into traffic VALUES (1963452100, CAST(N'2021-01-30' AS Date), 971525, 1846, 783);
INSERT into traffic VALUES (1979570502, CAST(N'2021-01-01' AS Date), 979500, 2363, 592);
INSERT into traffic VALUES (1979570502, CAST(N'2021-01-02' AS Date), 979500, 2131, 488);
INSERT into traffic VALUES (1979570502, CAST(N'2021-01-03' AS Date), 979500, 2404, 903);
INSERT into traffic VALUES (1979570502, CAST(N'2021-01-04' AS Date), 979500, 1428, 476);
INSERT into traffic VALUES (1979570502, CAST(N'2021-01-05' AS Date), 979500, 2276, 473);
INSERT into traffic VALUES (1979570502, CAST(N'2021-01-06' AS Date), 979500, 1726, 471);
INSERT into traffic VALUES (1979570502, CAST(N'2021-01-07' AS Date), 979500, 2355, 421);
INSERT into traffic VALUES (1979570502, CAST(N'2021-01-08' AS Date), 979500, 2248, 712);
INSERT into traffic VALUES (1979570502, CAST(N'2021-01-09' AS Date), 979500, 1170, 237);
INSERT into traffic VALUES (1979570502, CAST(N'2021-01-10' AS Date), 979500, 2227, 466);
INSERT into traffic VALUES (1979570502, CAST(N'2021-01-11' AS Date), 979500, 1968, 242);
INSERT into traffic VALUES (1979570502, CAST(N'2021-01-12' AS Date), 979500, 2618, 943);
INSERT into traffic VALUES (1979570502, CAST(N'2021-01-13' AS Date), 979500, 2546, 292);
INSERT into traffic VALUES (1979570502, CAST(N'2021-01-14' AS Date), 979500, 1153, 277);
INSERT into traffic VALUES (1979570502, CAST(N'2021-01-15' AS Date), 979500, 1804, 758);
INSERT into traffic VALUES (1979570502, CAST(N'2021-01-16' AS Date), 979500, 2297, 606);
INSERT into traffic VALUES (1979570502, CAST(N'2021-01-17' AS Date), 979500, 1776, 641);
INSERT into traffic VALUES (1979570502, CAST(N'2021-01-18' AS Date), 979500, 1202, 490);
INSERT into traffic VALUES (1979570502, CAST(N'2021-01-19' AS Date), 979500, 1986, 446);
INSERT into traffic VALUES (1979570502, CAST(N'2021-01-20' AS Date), 979500, 1591, 782);
INSERT into traffic VALUES (1979570502, CAST(N'2021-01-21' AS Date), 979500, 2382, 430);
INSERT into traffic VALUES (1979570502, CAST(N'2021-01-22' AS Date), 979500, 2484, 838);
INSERT into traffic VALUES (1979570502, CAST(N'2021-01-23' AS Date), 979500, 1091, 901);
INSERT into traffic VALUES (1979570502, CAST(N'2021-01-24' AS Date), 979500, 2588, 908);
INSERT into traffic VALUES (1979570502, CAST(N'2021-01-25' AS Date), 979500, 1453, 842);
INSERT into traffic VALUES (1979570502, CAST(N'2021-01-26' AS Date), 979500, 2148, 461);
INSERT into traffic VALUES (1979570502, CAST(N'2021-01-27' AS Date), 979500, 2872, 362);
INSERT into traffic VALUES (1979570502, CAST(N'2021-01-28' AS Date), 979500, 2898, 806);
INSERT into traffic VALUES (1979570502, CAST(N'2021-01-29' AS Date), 979500, 1587, 564);
INSERT into traffic VALUES (1979570502, CAST(N'2021-01-30' AS Date), 979500, 1332, 904);
INSERT into traffic VALUES (1980428807, CAST(N'2021-01-01' AS Date), 979925, 2151, 873);
INSERT into traffic VALUES (1980428807, CAST(N'2021-01-02' AS Date), 979925, 1104, 918);
INSERT into traffic VALUES (1980428807, CAST(N'2021-01-03' AS Date), 979925, 2526, 768);
INSERT into traffic VALUES (1980428807, CAST(N'2021-01-04' AS Date), 979925, 1213, 873);
INSERT into traffic VALUES (1980428807, CAST(N'2021-01-05' AS Date), 979925, 1401, 260);
INSERT into traffic VALUES (1980428807, CAST(N'2021-01-06' AS Date), 979925, 1951, 233);
INSERT into traffic VALUES (1980428807, CAST(N'2021-01-07' AS Date), 979925, 2464, 495);
INSERT into traffic VALUES (1980428807, CAST(N'2021-01-08' AS Date), 979925, 2811, 558);
INSERT into traffic VALUES (1980428807, CAST(N'2021-01-09' AS Date), 979925, 2466, 495);
INSERT into traffic VALUES (1980428807, CAST(N'2021-01-10' AS Date), 979925, 2382, 221);
INSERT into traffic VALUES (1980428807, CAST(N'2021-01-11' AS Date), 979925, 1433, 531);
INSERT into traffic VALUES (1980428807, CAST(N'2021-01-12' AS Date), 979925, 1787, 726);
INSERT into traffic VALUES (1980428807, CAST(N'2021-01-13' AS Date), 979925, 1064, 531);
INSERT into traffic VALUES (1980428807, CAST(N'2021-01-14' AS Date), 979925, 2741, 847);
INSERT into traffic VALUES (1980428807, CAST(N'2021-01-15' AS Date), 979925, 2767, 377);
INSERT into traffic VALUES (1980428807, CAST(N'2021-01-16' AS Date), 979925, 2254, 767);
INSERT into traffic VALUES (1980428807, CAST(N'2021-01-17' AS Date), 979925, 2992, 398);
INSERT into traffic VALUES (1980428807, CAST(N'2021-01-18' AS Date), 979925, 1533, 644);
INSERT into traffic VALUES (1980428807, CAST(N'2021-01-19' AS Date), 979925, 2647, 473);
INSERT into traffic VALUES (1980428807, CAST(N'2021-01-20' AS Date), 979925, 2741, 444);
INSERT into traffic VALUES (1980428807, CAST(N'2021-01-21' AS Date), 979925, 1879, 746);
INSERT into traffic VALUES (1980428807, CAST(N'2021-01-22' AS Date), 979925, 2758, 898);
INSERT into traffic VALUES (1980428807, CAST(N'2021-01-23' AS Date), 979925, 2859, 528);
INSERT into traffic VALUES (1980428807, CAST(N'2021-01-24' AS Date), 979925, 1052, 217);
INSERT into traffic VALUES (1980428807, CAST(N'2021-01-25' AS Date), 979925, 1466, 431);
INSERT into traffic VALUES (1980428807, CAST(N'2021-01-26' AS Date), 979925, 2059, 314);
INSERT into traffic VALUES (1980428807, CAST(N'2021-01-27' AS Date), 979925, 1262, 346);
INSERT into traffic VALUES (1980428807, CAST(N'2021-01-28' AS Date), 979925, 1850, 505);
INSERT into traffic VALUES (1980428807, CAST(N'2021-01-29' AS Date), 979925, 2243, 439);
INSERT into traffic VALUES (1980428807, CAST(N'2021-01-30' AS Date), 979925, 1806, 334);
INSERT into traffic VALUES (1980428892, CAST(N'2021-01-01' AS Date), 979925, 2694, 257);
INSERT into traffic VALUES (1980428892, CAST(N'2021-01-02' AS Date), 979925, 1098, 760);
INSERT into traffic VALUES (1980428892, CAST(N'2021-01-03' AS Date), 979925, 1107, 283);
INSERT into traffic VALUES (1980428892, CAST(N'2021-01-04' AS Date), 979925, 1325, 409);
INSERT into traffic VALUES (1980428892, CAST(N'2021-01-05' AS Date), 979925, 2523, 474);
INSERT into traffic VALUES (1980428892, CAST(N'2021-01-06' AS Date), 979925, 1039, 235);
INSERT into traffic VALUES (1980428892, CAST(N'2021-01-07' AS Date), 979925, 1986, 489);
INSERT into traffic VALUES (1980428892, CAST(N'2021-01-08' AS Date), 979925, 2772, 530);
INSERT into traffic VALUES (1980428892, CAST(N'2021-01-09' AS Date), 979925, 2298, 744);
INSERT into traffic VALUES (1980428892, CAST(N'2021-01-10' AS Date), 979925, 1329, 633);
INSERT into traffic VALUES (1980428892, CAST(N'2021-01-11' AS Date), 979925, 1175, 909);
INSERT into traffic VALUES (1980428892, CAST(N'2021-01-12' AS Date), 979925, 1541, 323);
INSERT into traffic VALUES (1980428892, CAST(N'2021-01-13' AS Date), 979925, 2170, 709);
INSERT into traffic VALUES (1980428892, CAST(N'2021-01-14' AS Date), 979925, 1460, 598);
INSERT into traffic VALUES (1980428892, CAST(N'2021-01-15' AS Date), 979925, 1017, 339);
INSERT into traffic VALUES (1980428892, CAST(N'2021-01-16' AS Date), 979925, 1808, 635);
INSERT into traffic VALUES (1980428892, CAST(N'2021-01-17' AS Date), 979925, 2262, 876);
INSERT into traffic VALUES (1980428892, CAST(N'2021-01-18' AS Date), 979925, 1618, 592);
INSERT into traffic VALUES (1980428892, CAST(N'2021-01-19' AS Date), 979925, 1637, 750);
INSERT into traffic VALUES (1980428892, CAST(N'2021-01-20' AS Date), 979925, 1455, 470);
INSERT into traffic VALUES (1980428892, CAST(N'2021-01-21' AS Date), 979925, 1323, 635);
INSERT into traffic VALUES (1980428892, CAST(N'2021-01-22' AS Date), 979925, 2419, 215);
INSERT into traffic VALUES (1980428892, CAST(N'2021-01-23' AS Date), 979925, 2151, 400);
INSERT into traffic VALUES (1980428892, CAST(N'2021-01-24' AS Date), 979925, 2053, 869);
INSERT into traffic VALUES (1980428892, CAST(N'2021-01-25' AS Date), 979925, 2516, 469);
INSERT into traffic VALUES (1980428892, CAST(N'2021-01-26' AS Date), 979925, 1042, 458);
INSERT into traffic VALUES (1980428892, CAST(N'2021-01-27' AS Date), 979925, 1727, 825);
INSERT into traffic VALUES (1980428892, CAST(N'2021-01-28' AS Date), 979925, 1594, 251);
INSERT into traffic VALUES (1980428892, CAST(N'2021-01-29' AS Date), 979925, 1049, 614);
INSERT into traffic VALUES (1980428892, CAST(N'2021-01-30' AS Date), 979925, 1933, 424);
INSERT into traffic VALUES (1987147763, CAST(N'2021-01-01' AS Date), 983249, 1818, 791);
INSERT into traffic VALUES (1987147763, CAST(N'2021-01-02' AS Date), 983249, 1447, 277);
INSERT into traffic VALUES (1987147763, CAST(N'2021-01-03' AS Date), 983249, 2275, 485);
INSERT into traffic VALUES (1987147763, CAST(N'2021-01-04' AS Date), 983249, 2591, 418);
INSERT into traffic VALUES (1987147763, CAST(N'2021-01-05' AS Date), 983249, 2795, 548);
INSERT into traffic VALUES (1987147763, CAST(N'2021-01-06' AS Date), 983249, 2895, 412);
INSERT into traffic VALUES (1987147763, CAST(N'2021-01-07' AS Date), 983249, 2348, 325);
INSERT into traffic VALUES (1987147763, CAST(N'2021-01-08' AS Date), 983249, 2746, 510);
INSERT into traffic VALUES (1987147763, CAST(N'2021-01-09' AS Date), 983249, 1470, 515);
INSERT into traffic VALUES (1987147763, CAST(N'2021-01-10' AS Date), 983249, 2683, 215);
INSERT into traffic VALUES (1987147763, CAST(N'2021-01-11' AS Date), 983249, 1179, 883);
INSERT into traffic VALUES (1987147763, CAST(N'2021-01-12' AS Date), 983249, 1305, 698);
INSERT into traffic VALUES (1987147763, CAST(N'2021-01-13' AS Date), 983249, 2349, 210);
INSERT into traffic VALUES (1987147763, CAST(N'2021-01-14' AS Date), 983249, 1564, 735);
INSERT into traffic VALUES (1987147763, CAST(N'2021-01-15' AS Date), 983249, 2362, 346);
INSERT into traffic VALUES (1987147763, CAST(N'2021-01-16' AS Date), 983249, 1741, 203);
INSERT into traffic VALUES (1987147763, CAST(N'2021-01-17' AS Date), 983249, 1653, 220);
INSERT into traffic VALUES (1987147763, CAST(N'2021-01-18' AS Date), 983249, 2267, 798);
INSERT into traffic VALUES (1987147763, CAST(N'2021-01-19' AS Date), 983249, 1904, 508);
INSERT into traffic VALUES (1987147763, CAST(N'2021-01-20' AS Date), 983249, 2527, 246);
INSERT into traffic VALUES (1987147763, CAST(N'2021-01-21' AS Date), 983249, 1275, 343);
INSERT into traffic VALUES (1987147763, CAST(N'2021-01-22' AS Date), 983249, 2863, 505);
INSERT into traffic VALUES (1987147763, CAST(N'2021-01-23' AS Date), 983249, 2851, 217);
INSERT into traffic VALUES (1987147763, CAST(N'2021-01-24' AS Date), 983249, 2321, 863);
INSERT into traffic VALUES (1987147763, CAST(N'2021-01-25' AS Date), 983249, 1722, 481);
INSERT into traffic VALUES (1987147763, CAST(N'2021-01-26' AS Date), 983249, 2779, 611);
INSERT into traffic VALUES (1987147763, CAST(N'2021-01-27' AS Date), 983249, 2923, 297);
INSERT into traffic VALUES (1987147763, CAST(N'2021-01-28' AS Date), 983249, 1285, 786);
INSERT into traffic VALUES (1987147763, CAST(N'2021-01-29' AS Date), 983249, 1167, 410);
INSERT into traffic VALUES (1987147763, CAST(N'2021-01-30' AS Date), 983249, 2840, 334);
INSERT into traffic VALUES (1988992929, CAST(N'2021-01-01' AS Date), 984162, 1553, 571);
INSERT into traffic VALUES (1988992929, CAST(N'2021-01-02' AS Date), 984162, 2718, 410);
INSERT into traffic VALUES (1988992929, CAST(N'2021-01-03' AS Date), 984162, 2466, 279);
INSERT into traffic VALUES (1988992929, CAST(N'2021-01-04' AS Date), 984162, 1622, 669);
INSERT into traffic VALUES (1988992929, CAST(N'2021-01-05' AS Date), 984162, 1455, 637);
INSERT into traffic VALUES (1988992929, CAST(N'2021-01-06' AS Date), 984162, 1263, 363);
INSERT into traffic VALUES (1988992929, CAST(N'2021-01-07' AS Date), 984162, 2543, 303);
INSERT into traffic VALUES (1988992929, CAST(N'2021-01-08' AS Date), 984162, 2888, 767);
INSERT into traffic VALUES (1988992929, CAST(N'2021-01-09' AS Date), 984162, 1161, 335);
INSERT into traffic VALUES (1988992929, CAST(N'2021-01-10' AS Date), 984162, 1951, 203);
INSERT into traffic VALUES (1988992929, CAST(N'2021-01-11' AS Date), 984162, 2858, 443);
INSERT into traffic VALUES (1988992929, CAST(N'2021-01-12' AS Date), 984162, 1503, 665);
INSERT into traffic VALUES (1988992929, CAST(N'2021-01-13' AS Date), 984162, 2070, 552);
INSERT into traffic VALUES (1988992929, CAST(N'2021-01-14' AS Date), 984162, 1102, 666);
INSERT into traffic VALUES (1988992929, CAST(N'2021-01-15' AS Date), 984162, 2537, 595);
INSERT into traffic VALUES (1988992929, CAST(N'2021-01-16' AS Date), 984162, 1702, 320);
INSERT into traffic VALUES (1988992929, CAST(N'2021-01-17' AS Date), 984162, 1046, 725);
INSERT into traffic VALUES (1988992929, CAST(N'2021-01-18' AS Date), 984162, 2529, 635);
INSERT into traffic VALUES (1988992929, CAST(N'2021-01-19' AS Date), 984162, 2355, 320);
INSERT into traffic VALUES (1988992929, CAST(N'2021-01-20' AS Date), 984162, 2102, 361);
INSERT into traffic VALUES (1988992929, CAST(N'2021-01-21' AS Date), 984162, 2818, 621);
INSERT into traffic VALUES (1988992929, CAST(N'2021-01-22' AS Date), 984162, 1325, 505);
INSERT into traffic VALUES (1988992929, CAST(N'2021-01-23' AS Date), 984162, 1605, 215);
INSERT into traffic VALUES (1988992929, CAST(N'2021-01-24' AS Date), 984162, 2428, 543);
INSERT into traffic VALUES (1988992929, CAST(N'2021-01-25' AS Date), 984162, 1275, 749);
INSERT into traffic VALUES (1988992929, CAST(N'2021-01-26' AS Date), 984162, 2570, 362);
INSERT into traffic VALUES (1988992929, CAST(N'2021-01-27' AS Date), 984162, 1233, 205);
INSERT into traffic VALUES (1988992929, CAST(N'2021-01-28' AS Date), 984162, 1478, 207);
INSERT into traffic VALUES (1988992929, CAST(N'2021-01-29' AS Date), 984162, 2475, 358);
INSERT into traffic VALUES (1988992929, CAST(N'2021-01-30' AS Date), 984162, 2859, 587);
INSERT into traffic VALUES (2000220741, CAST(N'2021-01-01' AS Date), 989718, 2281, 284);
INSERT into traffic VALUES (2000220741, CAST(N'2021-01-02' AS Date), 989718, 1750, 254);
INSERT into traffic VALUES (2000220741, CAST(N'2021-01-03' AS Date), 989718, 1858, 382);
INSERT into traffic VALUES (2000220741, CAST(N'2021-01-04' AS Date), 989718, 1550, 259);
INSERT into traffic VALUES (2000220741, CAST(N'2021-01-05' AS Date), 989718, 1006, 276);
INSERT into traffic VALUES (2000220741, CAST(N'2021-01-06' AS Date), 989718, 1768, 228);
INSERT into traffic VALUES (2000220741, CAST(N'2021-01-07' AS Date), 989718, 1043, 297);
INSERT into traffic VALUES (2000220741, CAST(N'2021-01-08' AS Date), 989718, 1610, 217);
INSERT into traffic VALUES (2000220741, CAST(N'2021-01-09' AS Date), 989718, 1953, 380);
INSERT into traffic VALUES (2000220741, CAST(N'2021-01-10' AS Date), 989718, 1756, 388);
INSERT into traffic VALUES (2000220741, CAST(N'2021-01-11' AS Date), 989718, 2391, 390);
INSERT into traffic VALUES (2000220741, CAST(N'2021-01-12' AS Date), 989718, 1713, 271);
INSERT into traffic VALUES (2000220741, CAST(N'2021-01-13' AS Date), 989718, 2593, 370);
INSERT into traffic VALUES (2000220741, CAST(N'2021-01-14' AS Date), 989718, 1947, 395);
INSERT into traffic VALUES (2000220741, CAST(N'2021-01-15' AS Date), 989718, 2665, 295);
INSERT into traffic VALUES (2000220741, CAST(N'2021-01-16' AS Date), 989718, 2500, 282);
INSERT into traffic VALUES (2000220741, CAST(N'2021-01-17' AS Date), 989718, 1252, 380);
INSERT into traffic VALUES (2000220741, CAST(N'2021-01-18' AS Date), 989718, 1798, 333);
INSERT into traffic VALUES (2000220741, CAST(N'2021-01-19' AS Date), 989718, 2019, 230);
INSERT into traffic VALUES (2000220741, CAST(N'2021-01-20' AS Date), 989718, 1345, 274);
INSERT into traffic VALUES (2000220741, CAST(N'2021-01-21' AS Date), 989718, 2154, 282);
INSERT into traffic VALUES (2000220741, CAST(N'2021-01-22' AS Date), 989718, 1517, 362);
INSERT into traffic VALUES (2000220741, CAST(N'2021-01-23' AS Date), 989718, 2535, 243);
INSERT into traffic VALUES (2000220741, CAST(N'2021-01-24' AS Date), 989718, 1918, 386);
INSERT into traffic VALUES (2000220741, CAST(N'2021-01-25' AS Date), 989718, 2171, 394);
INSERT into traffic VALUES (2000220741, CAST(N'2021-01-26' AS Date), 989718, 2215, 254);
INSERT into traffic VALUES (2000220741, CAST(N'2021-01-27' AS Date), 989718, 2219, 256);
INSERT into traffic VALUES (2000220741, CAST(N'2021-01-28' AS Date), 989718, 1587, 288);
INSERT into traffic VALUES (2000220741, CAST(N'2021-01-29' AS Date), 989718, 1582, 361);
INSERT into traffic VALUES (2000220741, CAST(N'2021-01-30' AS Date), 989718, 1699, 258);
INSERT into traffic VALUES (2016567563, CAST(N'2021-01-01' AS Date), 997806, 1173, 283);
INSERT into traffic VALUES (2016567563, CAST(N'2021-01-02' AS Date), 997806, 1633, 280);
INSERT into traffic VALUES (2016567563, CAST(N'2021-01-03' AS Date), 997806, 1395, 365);
INSERT into traffic VALUES (2016567563, CAST(N'2021-01-04' AS Date), 997806, 1419, 384);
INSERT into traffic VALUES (2016567563, CAST(N'2021-01-05' AS Date), 997806, 1405, 390);
INSERT into traffic VALUES (2016567563, CAST(N'2021-01-06' AS Date), 997806, 2551, 382);
INSERT into traffic VALUES (2016567563, CAST(N'2021-01-07' AS Date), 997806, 2548, 241);
INSERT into traffic VALUES (2016567563, CAST(N'2021-01-08' AS Date), 997806, 1159, 330);
INSERT into traffic VALUES (2016567563, CAST(N'2021-01-09' AS Date), 997806, 2202, 367);
INSERT into traffic VALUES (2016567563, CAST(N'2021-01-10' AS Date), 997806, 1214, 335);
INSERT into traffic VALUES (2016567563, CAST(N'2021-01-11' AS Date), 997806, 2139, 262);
INSERT into traffic VALUES (2016567563, CAST(N'2021-01-12' AS Date), 997806, 1316, 246);
INSERT into traffic VALUES (2016567563, CAST(N'2021-01-13' AS Date), 997806, 1230, 371);
INSERT into traffic VALUES (2016567563, CAST(N'2021-01-14' AS Date), 997806, 1363, 397);
INSERT into traffic VALUES (2016567563, CAST(N'2021-01-15' AS Date), 997806, 2927, 209);
INSERT into traffic VALUES (2016567563, CAST(N'2021-01-16' AS Date), 997806, 1075, 321);
INSERT into traffic VALUES (2016567563, CAST(N'2021-01-17' AS Date), 997806, 2238, 362);
INSERT into traffic VALUES (2016567563, CAST(N'2021-01-18' AS Date), 997806, 2054, 318);
INSERT into traffic VALUES (2016567563, CAST(N'2021-01-19' AS Date), 997806, 1283, 319);
INSERT into traffic VALUES (2016567563, CAST(N'2021-01-20' AS Date), 997806, 2317, 290);
INSERT into traffic VALUES (2016567563, CAST(N'2021-01-21' AS Date), 997806, 1727, 373);
INSERT into traffic VALUES (2016567563, CAST(N'2021-01-22' AS Date), 997806, 2364, 223);
INSERT into traffic VALUES (2016567563, CAST(N'2021-01-23' AS Date), 997806, 2583, 217);
INSERT into traffic VALUES (2016567563, CAST(N'2021-01-24' AS Date), 997806, 1188, 282);
INSERT into traffic VALUES (2016567563, CAST(N'2021-01-25' AS Date), 997806, 2125, 389);
INSERT into traffic VALUES (2016567563, CAST(N'2021-01-26' AS Date), 997806, 1971, 302);
INSERT into traffic VALUES (2016567563, CAST(N'2021-01-27' AS Date), 997806, 1926, 230);
INSERT into traffic VALUES (2016567563, CAST(N'2021-01-28' AS Date), 997806, 1561, 348);
INSERT into traffic VALUES (2016567563, CAST(N'2021-01-29' AS Date), 997806, 2616, 385);
INSERT into traffic VALUES (2016567563, CAST(N'2021-01-30' AS Date), 997806, 2484, 266);
INSERT into traffic VALUES (2026077602, CAST(N'2021-01-01' AS Date), 1002512, 2879, 553);
INSERT into traffic VALUES (2026077602, CAST(N'2021-01-02' AS Date), 1002512, 2569, 213);
INSERT into traffic VALUES (2026077602, CAST(N'2021-01-03' AS Date), 1002512, 2436, 423);
INSERT into traffic VALUES (2026077602, CAST(N'2021-01-04' AS Date), 1002512, 2780, 398);
INSERT into traffic VALUES (2026077602, CAST(N'2021-01-05' AS Date), 1002512, 2193, 821);
INSERT into traffic VALUES (2026077602, CAST(N'2021-01-06' AS Date), 1002512, 1985, 487);
INSERT into traffic VALUES (2026077602, CAST(N'2021-01-07' AS Date), 1002512, 1998, 484);
INSERT into traffic VALUES (2026077602, CAST(N'2021-01-08' AS Date), 1002512, 1466, 420);
INSERT into traffic VALUES (2026077602, CAST(N'2021-01-09' AS Date), 1002512, 2073, 714);
INSERT into traffic VALUES (2026077602, CAST(N'2021-01-10' AS Date), 1002512, 1572, 573);
INSERT into traffic VALUES (2026077602, CAST(N'2021-01-11' AS Date), 1002512, 2126, 919);
INSERT into traffic VALUES (2026077602, CAST(N'2021-01-12' AS Date), 1002512, 2947, 390);
INSERT into traffic VALUES (2026077602, CAST(N'2021-01-13' AS Date), 1002512, 1530, 870);
INSERT into traffic VALUES (2026077602, CAST(N'2021-01-14' AS Date), 1002512, 2537, 772);
INSERT into traffic VALUES (2026077602, CAST(N'2021-01-15' AS Date), 1002512, 2583, 274);
INSERT into traffic VALUES (2026077602, CAST(N'2021-01-16' AS Date), 1002512, 1560, 674);
INSERT into traffic VALUES (2026077602, CAST(N'2021-01-17' AS Date), 1002512, 1797, 389);
INSERT into traffic VALUES (2026077602, CAST(N'2021-01-18' AS Date), 1002512, 1023, 596);
INSERT into traffic VALUES (2026077602, CAST(N'2021-01-19' AS Date), 1002512, 2771, 786);
INSERT into traffic VALUES (2026077602, CAST(N'2021-01-20' AS Date), 1002512, 1380, 911);
INSERT into traffic VALUES (2026077602, CAST(N'2021-01-21' AS Date), 1002512, 1668, 453);
INSERT into traffic VALUES (2026077602, CAST(N'2021-01-22' AS Date), 1002512, 1185, 381);
INSERT into traffic VALUES (2026077602, CAST(N'2021-01-23' AS Date), 1002512, 1426, 349);
INSERT into traffic VALUES (2026077602, CAST(N'2021-01-24' AS Date), 1002512, 2483, 840);
INSERT into traffic VALUES (2026077602, CAST(N'2021-01-25' AS Date), 1002512, 2806, 229);
INSERT into traffic VALUES (2026077602, CAST(N'2021-01-26' AS Date), 1002512, 1928, 497);
INSERT into traffic VALUES (2026077602, CAST(N'2021-01-27' AS Date), 1002512, 1056, 423);
INSERT into traffic VALUES (2026077602, CAST(N'2021-01-28' AS Date), 1002512, 2714, 837);
INSERT into traffic VALUES (2026077602, CAST(N'2021-01-29' AS Date), 1002512, 1338, 779);
INSERT into traffic VALUES (2026077602, CAST(N'2021-01-30' AS Date), 1002512, 1171, 331);
INSERT into traffic VALUES (2026077622, CAST(N'2021-01-01' AS Date), 1002512, 1746, 480);
INSERT into traffic VALUES (2026077622, CAST(N'2021-01-02' AS Date), 1002512, 2569, 807);
INSERT into traffic VALUES (2026077622, CAST(N'2021-01-03' AS Date), 1002512, 1997, 342);
INSERT into traffic VALUES (2026077622, CAST(N'2021-01-04' AS Date), 1002512, 2400, 549);
INSERT into traffic VALUES (2026077622, CAST(N'2021-01-05' AS Date), 1002512, 1427, 395);
INSERT into traffic VALUES (2026077622, CAST(N'2021-01-06' AS Date), 1002512, 2406, 534);
INSERT into traffic VALUES (2026077622, CAST(N'2021-01-07' AS Date), 1002512, 2785, 913);
INSERT into traffic VALUES (2026077622, CAST(N'2021-01-08' AS Date), 1002512, 2816, 327);
INSERT into traffic VALUES (2026077622, CAST(N'2021-01-09' AS Date), 1002512, 2140, 564);
INSERT into traffic VALUES (2026077622, CAST(N'2021-01-10' AS Date), 1002512, 2778, 681);
INSERT into traffic VALUES (2026077622, CAST(N'2021-01-11' AS Date), 1002512, 2881, 922);
INSERT into traffic VALUES (2026077622, CAST(N'2021-01-12' AS Date), 1002512, 1087, 859);
INSERT into traffic VALUES (2026077622, CAST(N'2021-01-13' AS Date), 1002512, 1418, 520);
INSERT into traffic VALUES (2026077622, CAST(N'2021-01-14' AS Date), 1002512, 1835, 538);
INSERT into traffic VALUES (2026077622, CAST(N'2021-01-15' AS Date), 1002512, 1468, 917);
INSERT into traffic VALUES (2026077622, CAST(N'2021-01-16' AS Date), 1002512, 1717, 655);
INSERT into traffic VALUES (2026077622, CAST(N'2021-01-17' AS Date), 1002512, 2730, 785);
INSERT into traffic VALUES (2026077622, CAST(N'2021-01-18' AS Date), 1002512, 2403, 505);
INSERT into traffic VALUES (2026077622, CAST(N'2021-01-19' AS Date), 1002512, 2057, 358);
INSERT into traffic VALUES (2026077622, CAST(N'2021-01-20' AS Date), 1002512, 2189, 495);
INSERT into traffic VALUES (2026077622, CAST(N'2021-01-21' AS Date), 1002512, 2403, 654);
INSERT into traffic VALUES (2026077622, CAST(N'2021-01-22' AS Date), 1002512, 1441, 685);
INSERT into traffic VALUES (2026077622, CAST(N'2021-01-23' AS Date), 1002512, 1624, 486);
INSERT into traffic VALUES (2026077622, CAST(N'2021-01-24' AS Date), 1002512, 1147, 546);
INSERT into traffic VALUES (2026077622, CAST(N'2021-01-25' AS Date), 1002512, 2745, 212);
INSERT into traffic VALUES (2026077622, CAST(N'2021-01-26' AS Date), 1002512, 1648, 276);
INSERT into traffic VALUES (2026077622, CAST(N'2021-01-27' AS Date), 1002512, 1573, 395);
INSERT into traffic VALUES (2026077622, CAST(N'2021-01-28' AS Date), 1002512, 2028, 266);
INSERT into traffic VALUES (2026077622, CAST(N'2021-01-29' AS Date), 1002512, 1588, 713);
INSERT into traffic VALUES (2026077622, CAST(N'2021-01-30' AS Date), 1002512, 1434, 485);
INSERT into traffic VALUES (2036584318, CAST(N'2021-01-01' AS Date), 1007711, 2283, 341);
INSERT into traffic VALUES (2036584318, CAST(N'2021-01-02' AS Date), 1007711, 1741, 650);
INSERT into traffic VALUES (2036584318, CAST(N'2021-01-03' AS Date), 1007711, 1748, 246);
INSERT into traffic VALUES (2036584318, CAST(N'2021-01-04' AS Date), 1007711, 1224, 246);
INSERT into traffic VALUES (2036584318, CAST(N'2021-01-05' AS Date), 1007711, 2993, 479);
INSERT into traffic VALUES (2036584318, CAST(N'2021-01-06' AS Date), 1007711, 1637, 505);
INSERT into traffic VALUES (2036584318, CAST(N'2021-01-07' AS Date), 1007711, 2560, 410);
INSERT into traffic VALUES (2036584318, CAST(N'2021-01-08' AS Date), 1007711, 1755, 411);
INSERT into traffic VALUES (2036584318, CAST(N'2021-01-09' AS Date), 1007711, 2430, 251);
INSERT into traffic VALUES (2036584318, CAST(N'2021-01-10' AS Date), 1007711, 1117, 524);
INSERT into traffic VALUES (2036584318, CAST(N'2021-01-11' AS Date), 1007711, 1927, 738);
INSERT into traffic VALUES (2036584318, CAST(N'2021-01-12' AS Date), 1007711, 2049, 496);
INSERT into traffic VALUES (2036584318, CAST(N'2021-01-13' AS Date), 1007711, 1817, 719);
INSERT into traffic VALUES (2036584318, CAST(N'2021-01-14' AS Date), 1007711, 2755, 261);
INSERT into traffic VALUES (2036584318, CAST(N'2021-01-15' AS Date), 1007711, 2228, 210);
INSERT into traffic VALUES (2036584318, CAST(N'2021-01-16' AS Date), 1007711, 2337, 649);
INSERT into traffic VALUES (2036584318, CAST(N'2021-01-17' AS Date), 1007711, 2841, 226);
INSERT into traffic VALUES (2036584318, CAST(N'2021-01-18' AS Date), 1007711, 1290, 639);
INSERT into traffic VALUES (2036584318, CAST(N'2021-01-19' AS Date), 1007711, 2137, 788);
INSERT into traffic VALUES (2036584318, CAST(N'2021-01-20' AS Date), 1007711, 2076, 420);
INSERT into traffic VALUES (2036584318, CAST(N'2021-01-21' AS Date), 1007711, 2011, 519);
INSERT into traffic VALUES (2036584318, CAST(N'2021-01-22' AS Date), 1007711, 2821, 417);
INSERT into traffic VALUES (2036584318, CAST(N'2021-01-23' AS Date), 1007711, 1573, 555);
INSERT into traffic VALUES (2036584318, CAST(N'2021-01-24' AS Date), 1007711, 2288, 628);
INSERT into traffic VALUES (2036584318, CAST(N'2021-01-25' AS Date), 1007711, 1612, 661);
INSERT into traffic VALUES (2036584318, CAST(N'2021-01-26' AS Date), 1007711, 2413, 692);
INSERT into traffic VALUES (2036584318, CAST(N'2021-01-27' AS Date), 1007711, 1858, 324);
INSERT into traffic VALUES (2036584318, CAST(N'2021-01-28' AS Date), 1007711, 2109, 202);
INSERT into traffic VALUES (2036584318, CAST(N'2021-01-29' AS Date), 1007711, 1109, 720);
INSERT into traffic VALUES (2036584318, CAST(N'2021-01-30' AS Date), 1007711, 1210, 606);
INSERT into traffic VALUES (2036584334, CAST(N'2021-01-01' AS Date), 1007711, 2689, 658);
INSERT into traffic VALUES (2036584334, CAST(N'2021-01-02' AS Date), 1007711, 2781, 554);
INSERT into traffic VALUES (2036584334, CAST(N'2021-01-03' AS Date), 1007711, 2942, 436);
INSERT into traffic VALUES (2036584334, CAST(N'2021-01-04' AS Date), 1007711, 2261, 398);
INSERT into traffic VALUES (2036584334, CAST(N'2021-01-05' AS Date), 1007711, 2616, 650);
INSERT into traffic VALUES (2036584334, CAST(N'2021-01-06' AS Date), 1007711, 2725, 493);
INSERT into traffic VALUES (2036584334, CAST(N'2021-01-07' AS Date), 1007711, 2778, 706);
INSERT into traffic VALUES (2036584334, CAST(N'2021-01-08' AS Date), 1007711, 1891, 632);
INSERT into traffic VALUES (2036584334, CAST(N'2021-01-09' AS Date), 1007711, 1207, 220);
INSERT into traffic VALUES (2036584334, CAST(N'2021-01-10' AS Date), 1007711, 1645, 279);
INSERT into traffic VALUES (2036584334, CAST(N'2021-01-11' AS Date), 1007711, 2775, 720);
INSERT into traffic VALUES (2036584334, CAST(N'2021-01-12' AS Date), 1007711, 2999, 752);
INSERT into traffic VALUES (2036584334, CAST(N'2021-01-13' AS Date), 1007711, 1302, 246);
INSERT into traffic VALUES (2036584334, CAST(N'2021-01-14' AS Date), 1007711, 1005, 441);
INSERT into traffic VALUES (2036584334, CAST(N'2021-01-15' AS Date), 1007711, 1666, 585);
INSERT into traffic VALUES (2036584334, CAST(N'2021-01-16' AS Date), 1007711, 1861, 669);
INSERT into traffic VALUES (2036584334, CAST(N'2021-01-17' AS Date), 1007711, 2980, 638);
INSERT into traffic VALUES (2036584334, CAST(N'2021-01-18' AS Date), 1007711, 1676, 536);
INSERT into traffic VALUES (2036584334, CAST(N'2021-01-19' AS Date), 1007711, 2126, 332);
INSERT into traffic VALUES (2036584334, CAST(N'2021-01-20' AS Date), 1007711, 2455, 441);
INSERT into traffic VALUES (2036584334, CAST(N'2021-01-21' AS Date), 1007711, 1950, 368);
INSERT into traffic VALUES (2036584334, CAST(N'2021-01-22' AS Date), 1007711, 1609, 323);
INSERT into traffic VALUES (2036584334, CAST(N'2021-01-23' AS Date), 1007711, 2480, 304);
INSERT into traffic VALUES (2036584334, CAST(N'2021-01-24' AS Date), 1007711, 1545, 728);
INSERT into traffic VALUES (2036584334, CAST(N'2021-01-25' AS Date), 1007711, 2476, 501);
INSERT into traffic VALUES (2036584334, CAST(N'2021-01-26' AS Date), 1007711, 2299, 266);
INSERT into traffic VALUES (2036584334, CAST(N'2021-01-27' AS Date), 1007711, 1246, 437);
INSERT into traffic VALUES (2036584334, CAST(N'2021-01-28' AS Date), 1007711, 2213, 700);
INSERT into traffic VALUES (2036584334, CAST(N'2021-01-29' AS Date), 1007711, 2267, 371);
INSERT into traffic VALUES (2036584334, CAST(N'2021-01-30' AS Date), 1007711, 1757, 398);
INSERT into traffic VALUES (2036584350, CAST(N'2021-01-01' AS Date), 1007711, 1903, 338);
INSERT into traffic VALUES (2036584350, CAST(N'2021-01-02' AS Date), 1007711, 1604, 443);
INSERT into traffic VALUES (2036584350, CAST(N'2021-01-03' AS Date), 1007711, 1706, 617);
INSERT into traffic VALUES (2036584350, CAST(N'2021-01-04' AS Date), 1007711, 1107, 390);
INSERT into traffic VALUES (2036584350, CAST(N'2021-01-05' AS Date), 1007711, 1006, 227);
INSERT into traffic VALUES (2036584350, CAST(N'2021-01-06' AS Date), 1007711, 1773, 383);
INSERT into traffic VALUES (2036584350, CAST(N'2021-01-07' AS Date), 1007711, 2209, 461);
INSERT into traffic VALUES (2036584350, CAST(N'2021-01-08' AS Date), 1007711, 1921, 327);
INSERT into traffic VALUES (2036584350, CAST(N'2021-01-09' AS Date), 1007711, 2854, 795);
INSERT into traffic VALUES (2036584350, CAST(N'2021-01-10' AS Date), 1007711, 1241, 342);
INSERT into traffic VALUES (2036584350, CAST(N'2021-01-11' AS Date), 1007711, 1104, 738);
INSERT into traffic VALUES (2036584350, CAST(N'2021-01-12' AS Date), 1007711, 1446, 720);
INSERT into traffic VALUES (2036584350, CAST(N'2021-01-13' AS Date), 1007711, 2756, 284);
INSERT into traffic VALUES (2036584350, CAST(N'2021-01-14' AS Date), 1007711, 1120, 215);
INSERT into traffic VALUES (2036584350, CAST(N'2021-01-15' AS Date), 1007711, 1205, 746);
INSERT into traffic VALUES (2036584350, CAST(N'2021-01-16' AS Date), 1007711, 1902, 517);
INSERT into traffic VALUES (2036584350, CAST(N'2021-01-17' AS Date), 1007711, 2734, 757);
INSERT into traffic VALUES (2036584350, CAST(N'2021-01-18' AS Date), 1007711, 1143, 234);
INSERT into traffic VALUES (2036584350, CAST(N'2021-01-19' AS Date), 1007711, 1966, 281);
INSERT into traffic VALUES (2036584350, CAST(N'2021-01-20' AS Date), 1007711, 2091, 471);
INSERT into traffic VALUES (2036584350, CAST(N'2021-01-21' AS Date), 1007711, 1372, 255);
INSERT into traffic VALUES (2036584350, CAST(N'2021-01-22' AS Date), 1007711, 1209, 633);
INSERT into traffic VALUES (2036584350, CAST(N'2021-01-23' AS Date), 1007711, 2873, 381);
INSERT into traffic VALUES (2036584350, CAST(N'2021-01-24' AS Date), 1007711, 1153, 384);
INSERT into traffic VALUES (2036584350, CAST(N'2021-01-25' AS Date), 1007711, 1492, 521);
INSERT into traffic VALUES (2036584350, CAST(N'2021-01-26' AS Date), 1007711, 2179, 475);
INSERT into traffic VALUES (2036584350, CAST(N'2021-01-27' AS Date), 1007711, 1308, 712);
INSERT into traffic VALUES (2036584350, CAST(N'2021-01-28' AS Date), 1007711, 1631, 241);
INSERT into traffic VALUES (2036584350, CAST(N'2021-01-29' AS Date), 1007711, 2834, 413);
INSERT into traffic VALUES (2036584350, CAST(N'2021-01-30' AS Date), 1007711, 2189, 556);
INSERT into traffic VALUES (2039102564, CAST(N'2021-01-01' AS Date), 1008957, 1732, 606);
INSERT into traffic VALUES (2039102564, CAST(N'2021-01-02' AS Date), 1008957, 1752, 269);
INSERT into traffic VALUES (2039102564, CAST(N'2021-01-03' AS Date), 1008957, 2438, 878);
INSERT into traffic VALUES (2039102564, CAST(N'2021-01-04' AS Date), 1008957, 2765, 410);
INSERT into traffic VALUES (2039102564, CAST(N'2021-01-05' AS Date), 1008957, 2761, 728);
INSERT into traffic VALUES (2039102564, CAST(N'2021-01-06' AS Date), 1008957, 1363, 779);
INSERT into traffic VALUES (2039102564, CAST(N'2021-01-07' AS Date), 1008957, 2019, 722);
INSERT into traffic VALUES (2039102564, CAST(N'2021-01-08' AS Date), 1008957, 1346, 773);
INSERT into traffic VALUES (2039102564, CAST(N'2021-01-09' AS Date), 1008957, 1413, 329);
INSERT into traffic VALUES (2039102564, CAST(N'2021-01-10' AS Date), 1008957, 2537, 278);
INSERT into traffic VALUES (2039102564, CAST(N'2021-01-11' AS Date), 1008957, 2726, 623);
INSERT into traffic VALUES (2039102564, CAST(N'2021-01-12' AS Date), 1008957, 1047, 470);
INSERT into traffic VALUES (2039102564, CAST(N'2021-01-13' AS Date), 1008957, 2320, 631);
INSERT into traffic VALUES (2039102564, CAST(N'2021-01-14' AS Date), 1008957, 2179, 277);
INSERT into traffic VALUES (2039102564, CAST(N'2021-01-15' AS Date), 1008957, 2493, 513);
INSERT into traffic VALUES (2039102564, CAST(N'2021-01-16' AS Date), 1008957, 2863, 690);
INSERT into traffic VALUES (2039102564, CAST(N'2021-01-17' AS Date), 1008957, 1665, 936);
INSERT into traffic VALUES (2039102564, CAST(N'2021-01-18' AS Date), 1008957, 1804, 559);
INSERT into traffic VALUES (2039102564, CAST(N'2021-01-19' AS Date), 1008957, 1736, 606);
INSERT into traffic VALUES (2039102564, CAST(N'2021-01-20' AS Date), 1008957, 2117, 550);
INSERT into traffic VALUES (2039102564, CAST(N'2021-01-21' AS Date), 1008957, 2828, 926);
INSERT into traffic VALUES (2039102564, CAST(N'2021-01-22' AS Date), 1008957, 2227, 573);
INSERT into traffic VALUES (2039102564, CAST(N'2021-01-23' AS Date), 1008957, 2959, 378);
INSERT into traffic VALUES (2039102564, CAST(N'2021-01-24' AS Date), 1008957, 1994, 496);
INSERT into traffic VALUES (2039102564, CAST(N'2021-01-25' AS Date), 1008957, 1300, 335);
INSERT into traffic VALUES (2039102564, CAST(N'2021-01-26' AS Date), 1008957, 1434, 529);
INSERT into traffic VALUES (2039102564, CAST(N'2021-01-27' AS Date), 1008957, 1641, 607);
INSERT into traffic VALUES (2039102564, CAST(N'2021-01-28' AS Date), 1008957, 1213, 668);
INSERT into traffic VALUES (2039102564, CAST(N'2021-01-29' AS Date), 1008957, 2876, 380);
INSERT into traffic VALUES (2039102564, CAST(N'2021-01-30' AS Date), 1008957, 2770, 337);
INSERT into traffic VALUES (2039102576, CAST(N'2021-01-01' AS Date), 1008957, 1172, 640);
INSERT into traffic VALUES (2039102576, CAST(N'2021-01-02' AS Date), 1008957, 1348, 327);
INSERT into traffic VALUES (2039102576, CAST(N'2021-01-03' AS Date), 1008957, 1413, 362);
INSERT into traffic VALUES (2039102576, CAST(N'2021-01-04' AS Date), 1008957, 1817, 905);
INSERT into traffic VALUES (2039102576, CAST(N'2021-01-05' AS Date), 1008957, 2909, 500);
INSERT into traffic VALUES (2039102576, CAST(N'2021-01-06' AS Date), 1008957, 2219, 434);
INSERT into traffic VALUES (2039102576, CAST(N'2021-01-07' AS Date), 1008957, 1152, 647);
INSERT into traffic VALUES (2039102576, CAST(N'2021-01-08' AS Date), 1008957, 1061, 676);
INSERT into traffic VALUES (2039102576, CAST(N'2021-01-09' AS Date), 1008957, 2842, 287);
INSERT into traffic VALUES (2039102576, CAST(N'2021-01-10' AS Date), 1008957, 1537, 224);
INSERT into traffic VALUES (2039102576, CAST(N'2021-01-11' AS Date), 1008957, 1618, 599);
INSERT into traffic VALUES (2039102576, CAST(N'2021-01-12' AS Date), 1008957, 1170, 817);
INSERT into traffic VALUES (2039102576, CAST(N'2021-01-13' AS Date), 1008957, 1102, 401);
INSERT into traffic VALUES (2039102576, CAST(N'2021-01-14' AS Date), 1008957, 2165, 513);
INSERT into traffic VALUES (2039102576, CAST(N'2021-01-15' AS Date), 1008957, 1790, 220);
INSERT into traffic VALUES (2039102576, CAST(N'2021-01-16' AS Date), 1008957, 1133, 577);
INSERT into traffic VALUES (2039102576, CAST(N'2021-01-17' AS Date), 1008957, 2720, 819);
INSERT into traffic VALUES (2039102576, CAST(N'2021-01-18' AS Date), 1008957, 1731, 278);
INSERT into traffic VALUES (2039102576, CAST(N'2021-01-19' AS Date), 1008957, 2618, 324);
INSERT into traffic VALUES (2039102576, CAST(N'2021-01-20' AS Date), 1008957, 1718, 385);
INSERT into traffic VALUES (2039102576, CAST(N'2021-01-21' AS Date), 1008957, 2606, 395);
INSERT into traffic VALUES (2039102576, CAST(N'2021-01-22' AS Date), 1008957, 2769, 861);
INSERT into traffic VALUES (2039102576, CAST(N'2021-01-23' AS Date), 1008957, 1425, 597);
INSERT into traffic VALUES (2039102576, CAST(N'2021-01-24' AS Date), 1008957, 2252, 428);
INSERT into traffic VALUES (2039102576, CAST(N'2021-01-25' AS Date), 1008957, 1586, 649);
INSERT into traffic VALUES (2039102576, CAST(N'2021-01-26' AS Date), 1008957, 2726, 852);
INSERT into traffic VALUES (2039102576, CAST(N'2021-01-27' AS Date), 1008957, 1132, 263);
INSERT into traffic VALUES (2039102576, CAST(N'2021-01-28' AS Date), 1008957, 1493, 237);
INSERT into traffic VALUES (2039102576, CAST(N'2021-01-29' AS Date), 1008957, 1181, 562);
INSERT into traffic VALUES (2039102576, CAST(N'2021-01-30' AS Date), 1008957, 2814, 362);
INSERT into traffic VALUES (2039102608, CAST(N'2021-01-01' AS Date), 1008957, 1231, 664);
INSERT into traffic VALUES (2039102608, CAST(N'2021-01-02' AS Date), 1008957, 2759, 910);
INSERT into traffic VALUES (2039102608, CAST(N'2021-01-03' AS Date), 1008957, 2669, 609);
INSERT into traffic VALUES (2039102608, CAST(N'2021-01-04' AS Date), 1008957, 2151, 688);
INSERT into traffic VALUES (2039102608, CAST(N'2021-01-05' AS Date), 1008957, 1528, 869);
INSERT into traffic VALUES (2039102608, CAST(N'2021-01-06' AS Date), 1008957, 1297, 846);
INSERT into traffic VALUES (2039102608, CAST(N'2021-01-07' AS Date), 1008957, 1034, 702);
INSERT into traffic VALUES (2039102608, CAST(N'2021-01-08' AS Date), 1008957, 1940, 788);
INSERT into traffic VALUES (2039102608, CAST(N'2021-01-09' AS Date), 1008957, 2209, 428);
INSERT into traffic VALUES (2039102608, CAST(N'2021-01-10' AS Date), 1008957, 1655, 615);
INSERT into traffic VALUES (2039102608, CAST(N'2021-01-11' AS Date), 1008957, 1635, 761);
INSERT into traffic VALUES (2039102608, CAST(N'2021-01-12' AS Date), 1008957, 2148, 266);
INSERT into traffic VALUES (2039102608, CAST(N'2021-01-13' AS Date), 1008957, 2292, 527);
INSERT into traffic VALUES (2039102608, CAST(N'2021-01-14' AS Date), 1008957, 1114, 798);
INSERT into traffic VALUES (2039102608, CAST(N'2021-01-15' AS Date), 1008957, 2779, 214);
INSERT into traffic VALUES (2039102608, CAST(N'2021-01-16' AS Date), 1008957, 2012, 710);
INSERT into traffic VALUES (2039102608, CAST(N'2021-01-17' AS Date), 1008957, 1271, 735);
INSERT into traffic VALUES (2039102608, CAST(N'2021-01-18' AS Date), 1008957, 2426, 324);
INSERT into traffic VALUES (2039102608, CAST(N'2021-01-19' AS Date), 1008957, 1321, 867);
INSERT into traffic VALUES (2039102608, CAST(N'2021-01-20' AS Date), 1008957, 2894, 934);
INSERT into traffic VALUES (2039102608, CAST(N'2021-01-21' AS Date), 1008957, 1667, 696);
INSERT into traffic VALUES (2039102608, CAST(N'2021-01-22' AS Date), 1008957, 2113, 852);
INSERT into traffic VALUES (2039102608, CAST(N'2021-01-23' AS Date), 1008957, 2863, 507);
INSERT into traffic VALUES (2039102608, CAST(N'2021-01-24' AS Date), 1008957, 2475, 409);
INSERT into traffic VALUES (2039102608, CAST(N'2021-01-25' AS Date), 1008957, 1081, 223);
INSERT into traffic VALUES (2039102608, CAST(N'2021-01-26' AS Date), 1008957, 2949, 448);
INSERT into traffic VALUES (2039102608, CAST(N'2021-01-27' AS Date), 1008957, 2040, 724);
INSERT into traffic VALUES (2039102608, CAST(N'2021-01-28' AS Date), 1008957, 1647, 697);
INSERT into traffic VALUES (2039102608, CAST(N'2021-01-29' AS Date), 1008957, 2319, 615);
INSERT into traffic VALUES (2039102608, CAST(N'2021-01-30' AS Date), 1008957, 1609, 591);
INSERT into traffic VALUES (2039102632, CAST(N'2021-01-01' AS Date), 1008957, 2412, 605);
INSERT into traffic VALUES (2039102632, CAST(N'2021-01-02' AS Date), 1008957, 2534, 460);
INSERT into traffic VALUES (2039102632, CAST(N'2021-01-03' AS Date), 1008957, 2161, 856);
INSERT into traffic VALUES (2039102632, CAST(N'2021-01-04' AS Date), 1008957, 2120, 337);
INSERT into traffic VALUES (2039102632, CAST(N'2021-01-05' AS Date), 1008957, 1338, 459);
INSERT into traffic VALUES (2039102632, CAST(N'2021-01-06' AS Date), 1008957, 1312, 606);
INSERT into traffic VALUES (2039102632, CAST(N'2021-01-07' AS Date), 1008957, 1532, 756);
INSERT into traffic VALUES (2039102632, CAST(N'2021-01-08' AS Date), 1008957, 2995, 622);
INSERT into traffic VALUES (2039102632, CAST(N'2021-01-09' AS Date), 1008957, 2334, 690);
INSERT into traffic VALUES (2039102632, CAST(N'2021-01-10' AS Date), 1008957, 1851, 938);
INSERT into traffic VALUES (2039102632, CAST(N'2021-01-11' AS Date), 1008957, 2777, 276);
INSERT into traffic VALUES (2039102632, CAST(N'2021-01-12' AS Date), 1008957, 1707, 945);
INSERT into traffic VALUES (2039102632, CAST(N'2021-01-13' AS Date), 1008957, 2757, 236);
INSERT into traffic VALUES (2039102632, CAST(N'2021-01-14' AS Date), 1008957, 1990, 377);
INSERT into traffic VALUES (2039102632, CAST(N'2021-01-15' AS Date), 1008957, 2542, 292);
INSERT into traffic VALUES (2039102632, CAST(N'2021-01-16' AS Date), 1008957, 1696, 207);
INSERT into traffic VALUES (2039102632, CAST(N'2021-01-17' AS Date), 1008957, 1534, 281);
INSERT into traffic VALUES (2039102632, CAST(N'2021-01-18' AS Date), 1008957, 2746, 240);
INSERT into traffic VALUES (2039102632, CAST(N'2021-01-19' AS Date), 1008957, 1899, 695);
INSERT into traffic VALUES (2039102632, CAST(N'2021-01-20' AS Date), 1008957, 2593, 817);
INSERT into traffic VALUES (2039102632, CAST(N'2021-01-21' AS Date), 1008957, 1397, 313);
INSERT into traffic VALUES (2039102632, CAST(N'2021-01-22' AS Date), 1008957, 1061, 576);
INSERT into traffic VALUES (2039102632, CAST(N'2021-01-23' AS Date), 1008957, 2160, 424);
INSERT into traffic VALUES (2039102632, CAST(N'2021-01-24' AS Date), 1008957, 1181, 483);
INSERT into traffic VALUES (2039102632, CAST(N'2021-01-25' AS Date), 1008957, 2645, 271);
INSERT into traffic VALUES (2039102632, CAST(N'2021-01-26' AS Date), 1008957, 2996, 483);
INSERT into traffic VALUES (2039102632, CAST(N'2021-01-27' AS Date), 1008957, 1082, 396);
INSERT into traffic VALUES (2039102632, CAST(N'2021-01-28' AS Date), 1008957, 2850, 432);
INSERT into traffic VALUES (2039102632, CAST(N'2021-01-29' AS Date), 1008957, 1964, 819);
INSERT into traffic VALUES (2039102632, CAST(N'2021-01-30' AS Date), 1008957, 2489, 924);
INSERT into traffic VALUES (2059479002, CAST(N'2021-01-01' AS Date), 1019039, 2350, 640);
INSERT into traffic VALUES (2059479002, CAST(N'2021-01-02' AS Date), 1019039, 1585, 509);
INSERT into traffic VALUES (2059479002, CAST(N'2021-01-03' AS Date), 1019039, 2761, 442);
INSERT into traffic VALUES (2059479002, CAST(N'2021-01-04' AS Date), 1019039, 1567, 636);
INSERT into traffic VALUES (2059479002, CAST(N'2021-01-05' AS Date), 1019039, 2177, 557);
INSERT into traffic VALUES (2059479002, CAST(N'2021-01-06' AS Date), 1019039, 2105, 725);
INSERT into traffic VALUES (2059479002, CAST(N'2021-01-07' AS Date), 1019039, 1603, 239);
INSERT into traffic VALUES (2059479002, CAST(N'2021-01-08' AS Date), 1019039, 1059, 788);
INSERT into traffic VALUES (2059479002, CAST(N'2021-01-09' AS Date), 1019039, 2591, 451);
INSERT into traffic VALUES (2059479002, CAST(N'2021-01-10' AS Date), 1019039, 1584, 750);
INSERT into traffic VALUES (2059479002, CAST(N'2021-01-11' AS Date), 1019039, 2791, 318);
INSERT into traffic VALUES (2059479002, CAST(N'2021-01-12' AS Date), 1019039, 1049, 280);
INSERT into traffic VALUES (2059479002, CAST(N'2021-01-13' AS Date), 1019039, 2683, 757);
INSERT into traffic VALUES (2059479002, CAST(N'2021-01-14' AS Date), 1019039, 1422, 475);
INSERT into traffic VALUES (2059479002, CAST(N'2021-01-15' AS Date), 1019039, 2427, 245);
INSERT into traffic VALUES (2059479002, CAST(N'2021-01-16' AS Date), 1019039, 1026, 436);
INSERT into traffic VALUES (2059479002, CAST(N'2021-01-17' AS Date), 1019039, 1969, 460);
INSERT into traffic VALUES (2059479002, CAST(N'2021-01-18' AS Date), 1019039, 2227, 750);
INSERT into traffic VALUES (2059479002, CAST(N'2021-01-19' AS Date), 1019039, 1711, 745);
INSERT into traffic VALUES (2059479002, CAST(N'2021-01-20' AS Date), 1019039, 2846, 471);
INSERT into traffic VALUES (2059479002, CAST(N'2021-01-21' AS Date), 1019039, 2193, 591);
INSERT into traffic VALUES (2059479002, CAST(N'2021-01-22' AS Date), 1019039, 1972, 447);
INSERT into traffic VALUES (2059479002, CAST(N'2021-01-23' AS Date), 1019039, 1837, 466);
INSERT into traffic VALUES (2059479002, CAST(N'2021-01-24' AS Date), 1019039, 1006, 622);
INSERT into traffic VALUES (2059479002, CAST(N'2021-01-25' AS Date), 1019039, 1647, 570);
INSERT into traffic VALUES (2059479002, CAST(N'2021-01-26' AS Date), 1019039, 2478, 495);
INSERT into traffic VALUES (2059479002, CAST(N'2021-01-27' AS Date), 1019039, 2307, 703);
INSERT into traffic VALUES (2059479002, CAST(N'2021-01-28' AS Date), 1019039, 2431, 505);
INSERT into traffic VALUES (2059479002, CAST(N'2021-01-29' AS Date), 1019039, 2980, 397);
INSERT into traffic VALUES (2059479002, CAST(N'2021-01-30' AS Date), 1019039, 2257, 351);
INSERT into traffic VALUES (2063220928, CAST(N'2021-01-01' AS Date), 1020891, 2235, 488);
INSERT into traffic VALUES (2063220928, CAST(N'2021-01-02' AS Date), 1020891, 2103, 457);
INSERT into traffic VALUES (2063220928, CAST(N'2021-01-03' AS Date), 1020891, 2243, 379);
INSERT into traffic VALUES (2063220928, CAST(N'2021-01-04' AS Date), 1020891, 2277, 414);
INSERT into traffic VALUES (2063220928, CAST(N'2021-01-05' AS Date), 1020891, 1201, 520);
INSERT into traffic VALUES (2063220928, CAST(N'2021-01-06' AS Date), 1020891, 1232, 402);
INSERT into traffic VALUES (2063220928, CAST(N'2021-01-07' AS Date), 1020891, 1250, 462);
INSERT into traffic VALUES (2063220928, CAST(N'2021-01-08' AS Date), 1020891, 2226, 289);
INSERT into traffic VALUES (2063220928, CAST(N'2021-01-09' AS Date), 1020891, 1789, 459);
INSERT into traffic VALUES (2063220928, CAST(N'2021-01-10' AS Date), 1020891, 2479, 362);
INSERT into traffic VALUES (2063220928, CAST(N'2021-01-11' AS Date), 1020891, 1577, 452);
INSERT into traffic VALUES (2063220928, CAST(N'2021-01-12' AS Date), 1020891, 1579, 281);
INSERT into traffic VALUES (2063220928, CAST(N'2021-01-13' AS Date), 1020891, 1716, 227);
INSERT into traffic VALUES (2063220928, CAST(N'2021-01-14' AS Date), 1020891, 2812, 278);
INSERT into traffic VALUES (2063220928, CAST(N'2021-01-15' AS Date), 1020891, 2236, 520);
INSERT into traffic VALUES (2063220928, CAST(N'2021-01-16' AS Date), 1020891, 1248, 508);
INSERT into traffic VALUES (2063220928, CAST(N'2021-01-17' AS Date), 1020891, 1088, 532);
INSERT into traffic VALUES (2063220928, CAST(N'2021-01-18' AS Date), 1020891, 1334, 571);
INSERT into traffic VALUES (2063220928, CAST(N'2021-01-19' AS Date), 1020891, 1316, 532);
INSERT into traffic VALUES (2063220928, CAST(N'2021-01-20' AS Date), 1020891, 1508, 360);
INSERT into traffic VALUES (2063220928, CAST(N'2021-01-21' AS Date), 1020891, 2109, 254);
INSERT into traffic VALUES (2063220928, CAST(N'2021-01-22' AS Date), 1020891, 1773, 545);
INSERT into traffic VALUES (2063220928, CAST(N'2021-01-23' AS Date), 1020891, 2644, 259);
INSERT into traffic VALUES (2063220928, CAST(N'2021-01-24' AS Date), 1020891, 1605, 565);
INSERT into traffic VALUES (2063220928, CAST(N'2021-01-25' AS Date), 1020891, 1190, 215);
INSERT into traffic VALUES (2063220928, CAST(N'2021-01-26' AS Date), 1020891, 2498, 350);
INSERT into traffic VALUES (2063220928, CAST(N'2021-01-27' AS Date), 1020891, 2052, 564);
INSERT into traffic VALUES (2063220928, CAST(N'2021-01-28' AS Date), 1020891, 2141, 506);
INSERT into traffic VALUES (2063220928, CAST(N'2021-01-29' AS Date), 1020891, 1081, 425);
INSERT into traffic VALUES (2063220928, CAST(N'2021-01-30' AS Date), 1020891, 2448, 314);
INSERT into traffic VALUES (2063221018, CAST(N'2021-01-01' AS Date), 1020891, 1661, 518);
INSERT into traffic VALUES (2063221018, CAST(N'2021-01-02' AS Date), 1020891, 2745, 501);
INSERT into traffic VALUES (2063221018, CAST(N'2021-01-03' AS Date), 1020891, 2194, 432);
INSERT into traffic VALUES (2063221018, CAST(N'2021-01-04' AS Date), 1020891, 2005, 347);
INSERT into traffic VALUES (2063221018, CAST(N'2021-01-05' AS Date), 1020891, 1971, 301);
INSERT into traffic VALUES (2063221018, CAST(N'2021-01-06' AS Date), 1020891, 1461, 391);
INSERT into traffic VALUES (2063221018, CAST(N'2021-01-07' AS Date), 1020891, 1831, 206);
INSERT into traffic VALUES (2063221018, CAST(N'2021-01-08' AS Date), 1020891, 2161, 388);
INSERT into traffic VALUES (2063221018, CAST(N'2021-01-09' AS Date), 1020891, 2015, 411);
INSERT into traffic VALUES (2063221018, CAST(N'2021-01-10' AS Date), 1020891, 2036, 374);
INSERT into traffic VALUES (2063221018, CAST(N'2021-01-11' AS Date), 1020891, 1406, 481);
INSERT into traffic VALUES (2063221018, CAST(N'2021-01-12' AS Date), 1020891, 2062, 356);
INSERT into traffic VALUES (2063221018, CAST(N'2021-01-13' AS Date), 1020891, 1150, 486);
INSERT into traffic VALUES (2063221018, CAST(N'2021-01-14' AS Date), 1020891, 2693, 466);
INSERT into traffic VALUES (2063221018, CAST(N'2021-01-15' AS Date), 1020891, 2382, 511);
INSERT into traffic VALUES (2063221018, CAST(N'2021-01-16' AS Date), 1020891, 1402, 339);
INSERT into traffic VALUES (2063221018, CAST(N'2021-01-17' AS Date), 1020891, 1321, 279);
INSERT into traffic VALUES (2063221018, CAST(N'2021-01-18' AS Date), 1020891, 2982, 255);
INSERT into traffic VALUES (2063221018, CAST(N'2021-01-19' AS Date), 1020891, 1764, 512);
INSERT into traffic VALUES (2063221018, CAST(N'2021-01-20' AS Date), 1020891, 2584, 566);
INSERT into traffic VALUES (2063221018, CAST(N'2021-01-21' AS Date), 1020891, 1480, 203);
INSERT into traffic VALUES (2063221018, CAST(N'2021-01-22' AS Date), 1020891, 2931, 461);
INSERT into traffic VALUES (2063221018, CAST(N'2021-01-23' AS Date), 1020891, 2242, 510);
INSERT into traffic VALUES (2063221018, CAST(N'2021-01-24' AS Date), 1020891, 2113, 290);
INSERT into traffic VALUES (2063221018, CAST(N'2021-01-25' AS Date), 1020891, 2684, 398);
INSERT into traffic VALUES (2063221018, CAST(N'2021-01-26' AS Date), 1020891, 1163, 235);
INSERT into traffic VALUES (2063221018, CAST(N'2021-01-27' AS Date), 1020891, 1910, 355);
INSERT into traffic VALUES (2063221018, CAST(N'2021-01-28' AS Date), 1020891, 2235, 356);
INSERT into traffic VALUES (2063221018, CAST(N'2021-01-29' AS Date), 1020891, 1338, 450);
INSERT into traffic VALUES (2063221018, CAST(N'2021-01-30' AS Date), 1020891, 1417, 330);
INSERT into traffic VALUES (2063221039, CAST(N'2021-01-01' AS Date), 1020891, 1700, 575);
INSERT into traffic VALUES (2063221039, CAST(N'2021-01-02' AS Date), 1020891, 2335, 265);
INSERT into traffic VALUES (2063221039, CAST(N'2021-01-03' AS Date), 1020891, 2769, 235);
INSERT into traffic VALUES (2063221039, CAST(N'2021-01-04' AS Date), 1020891, 1839, 404);
INSERT into traffic VALUES (2063221039, CAST(N'2021-01-05' AS Date), 1020891, 2266, 257);
INSERT into traffic VALUES (2063221039, CAST(N'2021-01-06' AS Date), 1020891, 1412, 586);
INSERT into traffic VALUES (2063221039, CAST(N'2021-01-07' AS Date), 1020891, 2511, 439);
INSERT into traffic VALUES (2063221039, CAST(N'2021-01-08' AS Date), 1020891, 2249, 230);
INSERT into traffic VALUES (2063221039, CAST(N'2021-01-09' AS Date), 1020891, 2061, 355);
INSERT into traffic VALUES (2063221039, CAST(N'2021-01-10' AS Date), 1020891, 2300, 441);
INSERT into traffic VALUES (2063221039, CAST(N'2021-01-11' AS Date), 1020891, 2205, 531);
INSERT into traffic VALUES (2063221039, CAST(N'2021-01-12' AS Date), 1020891, 2380, 528);
INSERT into traffic VALUES (2063221039, CAST(N'2021-01-13' AS Date), 1020891, 2269, 326);
INSERT into traffic VALUES (2063221039, CAST(N'2021-01-14' AS Date), 1020891, 2579, 462);
INSERT into traffic VALUES (2063221039, CAST(N'2021-01-15' AS Date), 1020891, 1283, 335);
INSERT into traffic VALUES (2063221039, CAST(N'2021-01-16' AS Date), 1020891, 1230, 596);
INSERT into traffic VALUES (2063221039, CAST(N'2021-01-17' AS Date), 1020891, 2802, 446);
INSERT into traffic VALUES (2063221039, CAST(N'2021-01-18' AS Date), 1020891, 2453, 453);
INSERT into traffic VALUES (2063221039, CAST(N'2021-01-19' AS Date), 1020891, 1780, 245);
INSERT into traffic VALUES (2063221039, CAST(N'2021-01-20' AS Date), 1020891, 2108, 252);
INSERT into traffic VALUES (2063221039, CAST(N'2021-01-21' AS Date), 1020891, 2718, 339);
INSERT into traffic VALUES (2063221039, CAST(N'2021-01-22' AS Date), 1020891, 2172, 402);
INSERT into traffic VALUES (2063221039, CAST(N'2021-01-23' AS Date), 1020891, 2982, 508);
INSERT into traffic VALUES (2063221039, CAST(N'2021-01-24' AS Date), 1020891, 2390, 577);
INSERT into traffic VALUES (2063221039, CAST(N'2021-01-25' AS Date), 1020891, 2512, 342);
INSERT into traffic VALUES (2063221039, CAST(N'2021-01-26' AS Date), 1020891, 2560, 284);
INSERT into traffic VALUES (2063221039, CAST(N'2021-01-27' AS Date), 1020891, 1027, 206);
INSERT into traffic VALUES (2063221039, CAST(N'2021-01-28' AS Date), 1020891, 1194, 517);
INSERT into traffic VALUES (2063221039, CAST(N'2021-01-29' AS Date), 1020891, 1816, 233);
INSERT into traffic VALUES (2063221039, CAST(N'2021-01-30' AS Date), 1020891, 1315, 221);
INSERT into traffic VALUES (2106071474, CAST(N'2021-01-01' AS Date), 1042093, 1796, 411);
INSERT into traffic VALUES (2106071474, CAST(N'2021-01-02' AS Date), 1042093, 2960, 487);
INSERT into traffic VALUES (2106071474, CAST(N'2021-01-03' AS Date), 1042093, 2439, 551);
INSERT into traffic VALUES (2106071474, CAST(N'2021-01-04' AS Date), 1042093, 1064, 382);
INSERT into traffic VALUES (2106071474, CAST(N'2021-01-05' AS Date), 1042093, 2300, 395);
INSERT into traffic VALUES (2106071474, CAST(N'2021-01-06' AS Date), 1042093, 2713, 479);
INSERT into traffic VALUES (2106071474, CAST(N'2021-01-07' AS Date), 1042093, 1393, 412);
INSERT into traffic VALUES (2106071474, CAST(N'2021-01-08' AS Date), 1042093, 1013, 572);
INSERT into traffic VALUES (2106071474, CAST(N'2021-01-09' AS Date), 1042093, 2258, 375);
INSERT into traffic VALUES (2106071474, CAST(N'2021-01-10' AS Date), 1042093, 1976, 352);
INSERT into traffic VALUES (2106071474, CAST(N'2021-01-11' AS Date), 1042093, 2251, 574);
INSERT into traffic VALUES (2106071474, CAST(N'2021-01-12' AS Date), 1042093, 1766, 442);
INSERT into traffic VALUES (2106071474, CAST(N'2021-01-13' AS Date), 1042093, 2300, 275);
INSERT into traffic VALUES (2106071474, CAST(N'2021-01-14' AS Date), 1042093, 2971, 534);
INSERT into traffic VALUES (2106071474, CAST(N'2021-01-15' AS Date), 1042093, 2666, 205);
INSERT into traffic VALUES (2106071474, CAST(N'2021-01-16' AS Date), 1042093, 2601, 200);
INSERT into traffic VALUES (2106071474, CAST(N'2021-01-17' AS Date), 1042093, 2459, 567);
INSERT into traffic VALUES (2106071474, CAST(N'2021-01-18' AS Date), 1042093, 1801, 590);
INSERT into traffic VALUES (2106071474, CAST(N'2021-01-19' AS Date), 1042093, 1778, 572);
INSERT into traffic VALUES (2106071474, CAST(N'2021-01-20' AS Date), 1042093, 2659, 514);
INSERT into traffic VALUES (2106071474, CAST(N'2021-01-21' AS Date), 1042093, 2852, 307);
INSERT into traffic VALUES (2106071474, CAST(N'2021-01-22' AS Date), 1042093, 2494, 467);
INSERT into traffic VALUES (2106071474, CAST(N'2021-01-23' AS Date), 1042093, 2135, 259);
INSERT into traffic VALUES (2106071474, CAST(N'2021-01-24' AS Date), 1042093, 1039, 402);
INSERT into traffic VALUES (2106071474, CAST(N'2021-01-25' AS Date), 1042093, 1892, 541);
INSERT into traffic VALUES (2106071474, CAST(N'2021-01-26' AS Date), 1042093, 1017, 493);
INSERT into traffic VALUES (2106071474, CAST(N'2021-01-27' AS Date), 1042093, 1772, 371);
INSERT into traffic VALUES (2106071474, CAST(N'2021-01-28' AS Date), 1042093, 2178, 582);
INSERT into traffic VALUES (2106071474, CAST(N'2021-01-29' AS Date), 1042093, 2436, 242);
INSERT into traffic VALUES (2106071474, CAST(N'2021-01-30' AS Date), 1042093, 1476, 345);
INSERT into traffic VALUES (2113457483, CAST(N'2021-01-01' AS Date), 1045748, 2202, 201);
INSERT into traffic VALUES (2113457483, CAST(N'2021-01-02' AS Date), 1045748, 1355, 210);
INSERT into traffic VALUES (2113457483, CAST(N'2021-01-03' AS Date), 1045748, 2799, 745);
INSERT into traffic VALUES (2113457483, CAST(N'2021-01-04' AS Date), 1045748, 2600, 304);
INSERT into traffic VALUES (2113457483, CAST(N'2021-01-05' AS Date), 1045748, 2701, 312);
INSERT into traffic VALUES (2113457483, CAST(N'2021-01-06' AS Date), 1045748, 2525, 481);
INSERT into traffic VALUES (2113457483, CAST(N'2021-01-07' AS Date), 1045748, 2370, 619);
INSERT into traffic VALUES (2113457483, CAST(N'2021-01-08' AS Date), 1045748, 1864, 589);
INSERT into traffic VALUES (2113457483, CAST(N'2021-01-09' AS Date), 1045748, 1150, 260);
INSERT into traffic VALUES (2113457483, CAST(N'2021-01-10' AS Date), 1045748, 1077, 324);
INSERT into traffic VALUES (2113457483, CAST(N'2021-01-11' AS Date), 1045748, 1874, 363);
INSERT into traffic VALUES (2113457483, CAST(N'2021-01-12' AS Date), 1045748, 2504, 418);
INSERT into traffic VALUES (2113457483, CAST(N'2021-01-13' AS Date), 1045748, 2534, 614);
INSERT into traffic VALUES (2113457483, CAST(N'2021-01-14' AS Date), 1045748, 1762, 205);
INSERT into traffic VALUES (2113457483, CAST(N'2021-01-15' AS Date), 1045748, 1328, 599);
INSERT into traffic VALUES (2113457483, CAST(N'2021-01-16' AS Date), 1045748, 1264, 442);
INSERT into traffic VALUES (2113457483, CAST(N'2021-01-17' AS Date), 1045748, 1530, 719);
INSERT into traffic VALUES (2113457483, CAST(N'2021-01-18' AS Date), 1045748, 1589, 374);
INSERT into traffic VALUES (2113457483, CAST(N'2021-01-19' AS Date), 1045748, 2810, 587);
INSERT into traffic VALUES (2113457483, CAST(N'2021-01-20' AS Date), 1045748, 1653, 658);
INSERT into traffic VALUES (2113457483, CAST(N'2021-01-21' AS Date), 1045748, 1307, 540);
INSERT into traffic VALUES (2113457483, CAST(N'2021-01-22' AS Date), 1045748, 1585, 792);
INSERT into traffic VALUES (2113457483, CAST(N'2021-01-23' AS Date), 1045748, 1748, 420);
INSERT into traffic VALUES (2113457483, CAST(N'2021-01-24' AS Date), 1045748, 1845, 512);
INSERT into traffic VALUES (2113457483, CAST(N'2021-01-25' AS Date), 1045748, 1309, 529);
INSERT into traffic VALUES (2113457483, CAST(N'2021-01-26' AS Date), 1045748, 1001, 786);
INSERT into traffic VALUES (2113457483, CAST(N'2021-01-27' AS Date), 1045748, 2753, 447);
INSERT into traffic VALUES (2113457483, CAST(N'2021-01-28' AS Date), 1045748, 2158, 537);
INSERT into traffic VALUES (2113457483, CAST(N'2021-01-29' AS Date), 1045748, 1718, 253);
INSERT into traffic VALUES (2113457483, CAST(N'2021-01-30' AS Date), 1045748, 2552, 548);
INSERT into traffic VALUES (2116603813, CAST(N'2021-01-01' AS Date), 1047305, 1776, 379);
INSERT into traffic VALUES (2116603813, CAST(N'2021-01-02' AS Date), 1047305, 2171, 513);
INSERT into traffic VALUES (2116603813, CAST(N'2021-01-03' AS Date), 1047305, 1631, 530);
INSERT into traffic VALUES (2116603813, CAST(N'2021-01-04' AS Date), 1047305, 1948, 592);
INSERT into traffic VALUES (2116603813, CAST(N'2021-01-05' AS Date), 1047305, 2209, 675);
INSERT into traffic VALUES (2116603813, CAST(N'2021-01-06' AS Date), 1047305, 2716, 645);
INSERT into traffic VALUES (2116603813, CAST(N'2021-01-07' AS Date), 1047305, 1513, 238);
INSERT into traffic VALUES (2116603813, CAST(N'2021-01-08' AS Date), 1047305, 1593, 601);
INSERT into traffic VALUES (2116603813, CAST(N'2021-01-09' AS Date), 1047305, 1601, 409);
INSERT into traffic VALUES (2116603813, CAST(N'2021-01-10' AS Date), 1047305, 1036, 382);
INSERT into traffic VALUES (2116603813, CAST(N'2021-01-11' AS Date), 1047305, 1022, 501);
INSERT into traffic VALUES (2116603813, CAST(N'2021-01-12' AS Date), 1047305, 2406, 493);
INSERT into traffic VALUES (2116603813, CAST(N'2021-01-13' AS Date), 1047305, 1724, 317);
INSERT into traffic VALUES (2116603813, CAST(N'2021-01-14' AS Date), 1047305, 1465, 276);
INSERT into traffic VALUES (2116603813, CAST(N'2021-01-15' AS Date), 1047305, 1921, 776);
INSERT into traffic VALUES (2116603813, CAST(N'2021-01-16' AS Date), 1047305, 1832, 633);
INSERT into traffic VALUES (2116603813, CAST(N'2021-01-17' AS Date), 1047305, 2230, 421);
INSERT into traffic VALUES (2116603813, CAST(N'2021-01-18' AS Date), 1047305, 1932, 344);
INSERT into traffic VALUES (2116603813, CAST(N'2021-01-19' AS Date), 1047305, 2660, 609);
INSERT into traffic VALUES (2116603813, CAST(N'2021-01-20' AS Date), 1047305, 2299, 505);
INSERT into traffic VALUES (2116603813, CAST(N'2021-01-21' AS Date), 1047305, 1644, 458);
INSERT into traffic VALUES (2116603813, CAST(N'2021-01-22' AS Date), 1047305, 2874, 335);
INSERT into traffic VALUES (2116603813, CAST(N'2021-01-23' AS Date), 1047305, 2006, 724);
INSERT into traffic VALUES (2116603813, CAST(N'2021-01-24' AS Date), 1047305, 1817, 641);
INSERT into traffic VALUES (2116603813, CAST(N'2021-01-25' AS Date), 1047305, 2362, 768);
INSERT into traffic VALUES (2116603813, CAST(N'2021-01-26' AS Date), 1047305, 2386, 441);
INSERT into traffic VALUES (2116603813, CAST(N'2021-01-27' AS Date), 1047305, 1500, 717);
INSERT into traffic VALUES (2116603813, CAST(N'2021-01-28' AS Date), 1047305, 1239, 482);
INSERT into traffic VALUES (2116603813, CAST(N'2021-01-29' AS Date), 1047305, 2185, 452);
INSERT into traffic VALUES (2116603813, CAST(N'2021-01-30' AS Date), 1047305, 2491, 799);
INSERT into traffic VALUES (2120923561, CAST(N'2021-01-01' AS Date), 1049442, 1801, 490);
INSERT into traffic VALUES (2120923561, CAST(N'2021-01-02' AS Date), 1049442, 2625, 569);
INSERT into traffic VALUES (2120923561, CAST(N'2021-01-03' AS Date), 1049442, 1069, 921);
INSERT into traffic VALUES (2120923561, CAST(N'2021-01-04' AS Date), 1049442, 1681, 581);
INSERT into traffic VALUES (2120923561, CAST(N'2021-01-05' AS Date), 1049442, 2883, 828);
INSERT into traffic VALUES (2120923561, CAST(N'2021-01-06' AS Date), 1049442, 2484, 445);
INSERT into traffic VALUES (2120923561, CAST(N'2021-01-07' AS Date), 1049442, 2258, 485);
INSERT into traffic VALUES (2120923561, CAST(N'2021-01-08' AS Date), 1049442, 2966, 921);
INSERT into traffic VALUES (2120923561, CAST(N'2021-01-09' AS Date), 1049442, 2306, 211);
INSERT into traffic VALUES (2120923561, CAST(N'2021-01-10' AS Date), 1049442, 2459, 949);
INSERT into traffic VALUES (2120923561, CAST(N'2021-01-11' AS Date), 1049442, 1273, 220);
INSERT into traffic VALUES (2120923561, CAST(N'2021-01-12' AS Date), 1049442, 2689, 871);
INSERT into traffic VALUES (2120923561, CAST(N'2021-01-13' AS Date), 1049442, 1540, 547);
INSERT into traffic VALUES (2120923561, CAST(N'2021-01-14' AS Date), 1049442, 1899, 776);
INSERT into traffic VALUES (2120923561, CAST(N'2021-01-15' AS Date), 1049442, 1531, 867);
INSERT into traffic VALUES (2120923561, CAST(N'2021-01-16' AS Date), 1049442, 1941, 827);
INSERT into traffic VALUES (2120923561, CAST(N'2021-01-17' AS Date), 1049442, 1913, 227);
INSERT into traffic VALUES (2120923561, CAST(N'2021-01-18' AS Date), 1049442, 2078, 560);
INSERT into traffic VALUES (2120923561, CAST(N'2021-01-19' AS Date), 1049442, 1479, 428);
INSERT into traffic VALUES (2120923561, CAST(N'2021-01-20' AS Date), 1049442, 1698, 784);
INSERT into traffic VALUES (2120923561, CAST(N'2021-01-21' AS Date), 1049442, 2481, 225);
INSERT into traffic VALUES (2120923561, CAST(N'2021-01-22' AS Date), 1049442, 2284, 254);
INSERT into traffic VALUES (2120923561, CAST(N'2021-01-23' AS Date), 1049442, 2308, 300);
INSERT into traffic VALUES (2120923561, CAST(N'2021-01-24' AS Date), 1049442, 2215, 930);
INSERT into traffic VALUES (2120923561, CAST(N'2021-01-25' AS Date), 1049442, 1195, 676);
INSERT into traffic VALUES (2120923561, CAST(N'2021-01-26' AS Date), 1049442, 1105, 683);
INSERT into traffic VALUES (2120923561, CAST(N'2021-01-27' AS Date), 1049442, 2746, 637);
INSERT into traffic VALUES (2120923561, CAST(N'2021-01-28' AS Date), 1049442, 1226, 246);
INSERT into traffic VALUES (2120923561, CAST(N'2021-01-29' AS Date), 1049442, 2332, 598);
INSERT into traffic VALUES (2120923561, CAST(N'2021-01-30' AS Date), 1049442, 2323, 540);
INSERT into traffic VALUES (2125477867, CAST(N'2021-01-01' AS Date), 1051696, 2537, 776);
INSERT into traffic VALUES (2125477867, CAST(N'2021-01-02' AS Date), 1051696, 1595, 624);
INSERT into traffic VALUES (2125477867, CAST(N'2021-01-03' AS Date), 1051696, 2361, 630);
INSERT into traffic VALUES (2125477867, CAST(N'2021-01-04' AS Date), 1051696, 2877, 613);
INSERT into traffic VALUES (2125477867, CAST(N'2021-01-05' AS Date), 1051696, 1939, 426);
INSERT into traffic VALUES (2125477867, CAST(N'2021-01-06' AS Date), 1051696, 1391, 655);
INSERT into traffic VALUES (2125477867, CAST(N'2021-01-07' AS Date), 1051696, 2223, 313);
INSERT into traffic VALUES (2125477867, CAST(N'2021-01-08' AS Date), 1051696, 1111, 362);
INSERT into traffic VALUES (2125477867, CAST(N'2021-01-09' AS Date), 1051696, 2046, 316);
INSERT into traffic VALUES (2125477867, CAST(N'2021-01-10' AS Date), 1051696, 2342, 284);
INSERT into traffic VALUES (2125477867, CAST(N'2021-01-11' AS Date), 1051696, 2695, 284);
INSERT into traffic VALUES (2125477867, CAST(N'2021-01-12' AS Date), 1051696, 2964, 433);
INSERT into traffic VALUES (2125477867, CAST(N'2021-01-13' AS Date), 1051696, 2707, 397);
INSERT into traffic VALUES (2125477867, CAST(N'2021-01-14' AS Date), 1051696, 2169, 644);
INSERT into traffic VALUES (2125477867, CAST(N'2021-01-15' AS Date), 1051696, 1995, 673);
INSERT into traffic VALUES (2125477867, CAST(N'2021-01-16' AS Date), 1051696, 2010, 673);
INSERT into traffic VALUES (2125477867, CAST(N'2021-01-17' AS Date), 1051696, 1274, 639);
INSERT into traffic VALUES (2125477867, CAST(N'2021-01-18' AS Date), 1051696, 2094, 334);
INSERT into traffic VALUES (2125477867, CAST(N'2021-01-19' AS Date), 1051696, 1994, 621);
INSERT into traffic VALUES (2125477867, CAST(N'2021-01-20' AS Date), 1051696, 2039, 387);
INSERT into traffic VALUES (2125477867, CAST(N'2021-01-21' AS Date), 1051696, 2918, 342);
INSERT into traffic VALUES (2125477867, CAST(N'2021-01-22' AS Date), 1051696, 1567, 250);
INSERT into traffic VALUES (2125477867, CAST(N'2021-01-23' AS Date), 1051696, 1073, 256);
INSERT into traffic VALUES (2125477867, CAST(N'2021-01-24' AS Date), 1051696, 1356, 475);
INSERT into traffic VALUES (2125477867, CAST(N'2021-01-25' AS Date), 1051696, 2024, 538);
INSERT into traffic VALUES (2125477867, CAST(N'2021-01-26' AS Date), 1051696, 2087, 500);
INSERT into traffic VALUES (2125477867, CAST(N'2021-01-27' AS Date), 1051696, 2085, 203);
INSERT into traffic VALUES (2125477867, CAST(N'2021-01-28' AS Date), 1051696, 1001, 395);
INSERT into traffic VALUES (2125477867, CAST(N'2021-01-29' AS Date), 1051696, 2841, 552);
INSERT into traffic VALUES (2125477867, CAST(N'2021-01-30' AS Date), 1051696, 1080, 550);
INSERT into traffic VALUES (2141054898, CAST(N'2021-01-01' AS Date), 1059403, 2594, 317);
INSERT into traffic VALUES (2141054898, CAST(N'2021-01-02' AS Date), 1059403, 1316, 504);
INSERT into traffic VALUES (2141054898, CAST(N'2021-01-03' AS Date), 1059403, 1510, 527);
INSERT into traffic VALUES (2141054898, CAST(N'2021-01-04' AS Date), 1059403, 1208, 345);
INSERT into traffic VALUES (2141054898, CAST(N'2021-01-05' AS Date), 1059403, 2645, 256);
INSERT into traffic VALUES (2141054898, CAST(N'2021-01-06' AS Date), 1059403, 2777, 498);
INSERT into traffic VALUES (2141054898, CAST(N'2021-01-07' AS Date), 1059403, 2416, 233);
INSERT into traffic VALUES (2141054898, CAST(N'2021-01-08' AS Date), 1059403, 2046, 467);
INSERT into traffic VALUES (2141054898, CAST(N'2021-01-09' AS Date), 1059403, 2068, 332);
INSERT into traffic VALUES (2141054898, CAST(N'2021-01-10' AS Date), 1059403, 2058, 515);
INSERT into traffic VALUES (2141054898, CAST(N'2021-01-11' AS Date), 1059403, 1296, 372);
INSERT into traffic VALUES (2141054898, CAST(N'2021-01-12' AS Date), 1059403, 2193, 431);
INSERT into traffic VALUES (2141054898, CAST(N'2021-01-13' AS Date), 1059403, 2467, 223);
INSERT into traffic VALUES (2141054898, CAST(N'2021-01-14' AS Date), 1059403, 1202, 255);
INSERT into traffic VALUES (2141054898, CAST(N'2021-01-15' AS Date), 1059403, 1585, 274);
INSERT into traffic VALUES (2141054898, CAST(N'2021-01-16' AS Date), 1059403, 1648, 417);
INSERT into traffic VALUES (2141054898, CAST(N'2021-01-17' AS Date), 1059403, 1615, 327);
INSERT into traffic VALUES (2141054898, CAST(N'2021-01-18' AS Date), 1059403, 2976, 552);
INSERT into traffic VALUES (2141054898, CAST(N'2021-01-19' AS Date), 1059403, 2043, 369);
INSERT into traffic VALUES (2141054898, CAST(N'2021-01-20' AS Date), 1059403, 2216, 292);
INSERT into traffic VALUES (2141054898, CAST(N'2021-01-21' AS Date), 1059403, 1893, 386);
INSERT into traffic VALUES (2141054898, CAST(N'2021-01-22' AS Date), 1059403, 2424, 513);
INSERT into traffic VALUES (2141054898, CAST(N'2021-01-23' AS Date), 1059403, 1935, 419);
INSERT into traffic VALUES (2141054898, CAST(N'2021-01-24' AS Date), 1059403, 2965, 516);
INSERT into traffic VALUES (2141054898, CAST(N'2021-01-25' AS Date), 1059403, 1219, 587);
INSERT into traffic VALUES (2141054898, CAST(N'2021-01-26' AS Date), 1059403, 1626, 391);
INSERT into traffic VALUES (2141054898, CAST(N'2021-01-27' AS Date), 1059403, 1835, 390);
INSERT into traffic VALUES (2141054898, CAST(N'2021-01-28' AS Date), 1059403, 1295, 402);
INSERT into traffic VALUES (2141054898, CAST(N'2021-01-29' AS Date), 1059403, 2605, 344);
INSERT into traffic VALUES (2141054898, CAST(N'2021-01-30' AS Date), 1059403, 2761, 255);
INSERT into traffic VALUES (2145932947, CAST(N'2021-01-01' AS Date), 1061817, 1709, 300);
INSERT into traffic VALUES (2145932947, CAST(N'2021-01-02' AS Date), 1061817, 1387, 252);
INSERT into traffic VALUES (2145932947, CAST(N'2021-01-03' AS Date), 1061817, 1165, 285);
INSERT into traffic VALUES (2145932947, CAST(N'2021-01-04' AS Date), 1061817, 1221, 297);
INSERT into traffic VALUES (2145932947, CAST(N'2021-01-05' AS Date), 1061817, 2287, 260);
INSERT into traffic VALUES (2145932947, CAST(N'2021-01-06' AS Date), 1061817, 1986, 213);
INSERT into traffic VALUES (2145932947, CAST(N'2021-01-07' AS Date), 1061817, 1094, 268);
INSERT into traffic VALUES (2145932947, CAST(N'2021-01-08' AS Date), 1061817, 2471, 312);
INSERT into traffic VALUES (2145932947, CAST(N'2021-01-09' AS Date), 1061817, 1346, 279);
INSERT into traffic VALUES (2145932947, CAST(N'2021-01-10' AS Date), 1061817, 1682, 288);
INSERT into traffic VALUES (2145932947, CAST(N'2021-01-11' AS Date), 1061817, 2174, 231);
INSERT into traffic VALUES (2145932947, CAST(N'2021-01-12' AS Date), 1061817, 1181, 325);
INSERT into traffic VALUES (2145932947, CAST(N'2021-01-13' AS Date), 1061817, 2803, 325);
INSERT into traffic VALUES (2145932947, CAST(N'2021-01-14' AS Date), 1061817, 1842, 390);
INSERT into traffic VALUES (2145932947, CAST(N'2021-01-15' AS Date), 1061817, 1584, 234);
INSERT into traffic VALUES (2145932947, CAST(N'2021-01-16' AS Date), 1061817, 1848, 316);
INSERT into traffic VALUES (2145932947, CAST(N'2021-01-17' AS Date), 1061817, 2909, 361);
INSERT into traffic VALUES (2145932947, CAST(N'2021-01-18' AS Date), 1061817, 1421, 347);
INSERT into traffic VALUES (2145932947, CAST(N'2021-01-19' AS Date), 1061817, 2701, 200);
INSERT into traffic VALUES (2145932947, CAST(N'2021-01-20' AS Date), 1061817, 1921, 280);
INSERT into traffic VALUES (2145932947, CAST(N'2021-01-21' AS Date), 1061817, 2100, 232);
INSERT into traffic VALUES (2145932947, CAST(N'2021-01-22' AS Date), 1061817, 1212, 369);
INSERT into traffic VALUES (2145932947, CAST(N'2021-01-23' AS Date), 1061817, 1816, 315);
INSERT into traffic VALUES (2145932947, CAST(N'2021-01-24' AS Date), 1061817, 2333, 258);
INSERT into traffic VALUES (2145932947, CAST(N'2021-01-25' AS Date), 1061817, 1362, 343);
INSERT into traffic VALUES (2145932947, CAST(N'2021-01-26' AS Date), 1061817, 1477, 234);
INSERT into traffic VALUES (2145932947, CAST(N'2021-01-27' AS Date), 1061817, 2708, 319);
INSERT into traffic VALUES (2145932947, CAST(N'2021-01-28' AS Date), 1061817, 2055, 221);
INSERT into traffic VALUES (2145932947, CAST(N'2021-01-29' AS Date), 1061817, 1320, 240);
INSERT into traffic VALUES (2145932947, CAST(N'2021-01-30' AS Date), 1061817, 1850, 279);
ALTER TABLE articles
ADD CONSTRAINT author_id_fk FOREIGN KEY (author_id) REFERENCES authors (author_id);

ALTER TABLE articles
ADD CONSTRAINT type_fk FOREIGN KEY (article_type_id) REFERENCES article_types (art_type_id);
ALTER TABLE products
ADD CONSTRAINT cat_id_fk FOREIGN KEY (catery_id) REFERENCES categories (category_id);
ALTER TABLE traffic
ADD CONSTRAINT aid_fk FOREIGN KEY (article_id) REFERENCES articles (article_id);

ALTER TABLE traffic
ADD CONSTRAINT pid_fk FOREIGN KEY (product_id) REFERENCES products (product_id);