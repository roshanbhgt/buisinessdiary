SET foreign_key_checks = 0;

DROP TABLE admin;

CREATE TABLE `admin` (
  `adminId` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `usertype` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO admin VALUES("1","Roshan","Bhagat","roshanbhgt@gmail.com","admin","YWRtaW5AMTIz","administrator","active","2013-09-07 21:45:46","2013-11-05 22:07:51");

DROP TABLE buisiness_category;

CREATE TABLE `buisiness_category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `parentcat_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `identifier` varchar(255) NOT NULL,
  `description` text,
  `banner` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `update_date` datetime NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

INSERT INTO buisiness_category VALUES("2","0","Test 1","","<br>","Jellyfish_2.jpg","active","2013-09-22 12:53:01","2013-11-07 22:39:54");
INSERT INTO buisiness_category VALUES("3","0","Test 2","","","","active","2013-09-22 12:53:19","2013-09-22 12:57:03");
INSERT INTO buisiness_category VALUES("4","0","Test 3","","<br>","Tulips.jpg","active","2013-09-22 12:53:38","2013-11-05 22:03:29");
INSERT INTO buisiness_category VALUES("5","0","Test 4","","","","active","2013-09-22 12:54:01","2013-09-22 12:57:40");
INSERT INTO buisiness_category VALUES("6","0","Test 5","","","","active","2013-09-22 12:54:34","2013-09-22 12:58:09");
INSERT INTO buisiness_category VALUES("8","6","Test","","Testing purpose<br>","Lighthouse_1.jpg","active","2013-10-20 20:47:28","2013-11-05 14:53:53");

DROP TABLE buisiness_list;

CREATE TABLE `buisiness_list` (
  `list_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `address` text,
  `created_date` datetime NOT NULL,
  PRIMARY KEY (`list_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE contactus;

CREATE TABLE `contactus` (
  `contactId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_date` datetime NOT NULL,
  PRIMARY KEY (`contactId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO contactus VALUES("1","Test","test@gmail.com","2147483647","Lorem Ipsum","2013-11-14 00:00:00");

DROP TABLE country;

CREATE TABLE `country` (
  `countryId` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  PRIMARY KEY (`countryId`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO country VALUES("1","India","2013-09-09 17:50:59");
INSERT INTO country VALUES("2","United States America","2013-10-05 17:55:11");
INSERT INTO country VALUES("3","United Kingdom","2013-10-05 17:55:35");

DROP TABLE dbbackup;

CREATE TABLE `dbbackup` (
  `backupid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `bakupfile` varchar(255) NOT NULL,
  `backupsize` varchar(255) NOT NULL,
  `backup_date` datetime NOT NULL,
  PRIMARY KEY (`backupid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;


DROP TABLE gallery;

CREATE TABLE `gallery` (
  `galleryId` int(11) NOT NULL AUTO_INCREMENT,
  `gallery_title` varchar(255) NOT NULL,
  `gallery_description` text NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL,
  PRIMARY KEY (`galleryId`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO gallery VALUES("1","Maharashtra","<p><a href=\"http://en.wikipedia.org/wiki/Marathi_language\" title=\"Marathi language\">Marathi</a>: <span style=\"font-family: Lohit Marathi,sans-serif;\" lang=\"mr\">महाराष्ट्र</span>&nbsp; is a state in the <a href=\"http://en.wikipedia.org/wiki/West_India\" title=\"West India\">western</a> region of <a href=\"http://en.wikipedia.org/wiki/India\" title=\"India\">India</a>. It is the <a href=\"http://en.wikipedia.org/wiki/List_of_states_and_union_territories_of_India_by_population\" title=\"List of states and union territories of India by population\">second most populous</a> state after <a href=\"http://en.wikipedia.org/wiki/Uttar_Pradesh\" title=\"Uttar Pradesh\">Uttar Pradesh</a> and <a href=\"http://en.wikipedia.org/wiki/List_of_states_and_territories_of_India_by_area\" title=\"List of states and territories of India by area\">third largest state by area</a> in India. Maharashtra is the wealthiest state in India, contributing 15% of the country\'s industrial output and 13.3% of its GDP (2006–2007 <br>\nfigures).<sup id=\"cite_ref-5\" class=\"reference\"><a href=\"http://en.wikipedia.org/wiki/Maharashtra#cite_note-5\"><span></span></a></sup><br>\n</p><blockquote><blockquote><blockquote><blockquote><blockquote><blockquote>Maharashtra is bordered by the <a href=\"http://en.wikipedia.org/wiki/Arabian_Sea\" title=\"Arabian Sea\">Arabian Sea</a> to the west, <a href=\"http://en.wikipedia.org/wiki/Gujarat\" title=\"Gujarat\">Gujarat</a> and the <a href=\"http://en.wikipedia.org/wiki/Union_territory\" title=\"Union territory\">Union territory</a> of <a href=\"http://en.wikipedia.org/wiki/Dadra_and_Nagar_Haveli\" title=\"Dadra and Nagar Haveli\">Dadra and Nagar Haveli</a> to the northwest, <a href=\"http://en.wikipedia.org/wiki/Madhya_Pradesh\" title=\"Madhya Pradesh\">Madhya Pradesh</a> to the north and northeast, <a href=\"http://en.wikipedia.org/wiki/Chhattisgarh\" title=\"Chhattisgarh\">Chhattisgarh</a> to the east, <a href=\"http://en.wikipedia.org/wiki/Karnataka\" title=\"Karnataka\">Karnataka</a> to the south, <a href=\"http://en.wikipedia.org/wiki/Andhra_Pradesh\" title=\"Andhra Pradesh\">Andhra Pradesh</a> to the southeast and <a href=\"http://en.wikipedia.org/wiki/Goa\" title=\"Goa\">Goa</a> to the southwest. The state covers an area of 307,731 km<sup>2</sup> (118,816&nbsp;sq&nbsp;mi) or 9.84% of the total geographical area of India. <a href=\"http://en.wikipedia.org/wiki/Mumbai\" title=\"Mumbai\">Mumbai</a>, the capital city of the state, is India\'s largest city and the financial capital of the nation. <a href=\"http://en.wikipedia.org/wiki/Nagpur\" title=\"Nagpur\">Nagpur</a> is the second (Winter) capital of the state. <a href=\"http://en.wikipedia.org/wiki/Marathi_language\" title=\"Marathi language\">Marathi</a> is the state\'s official language.<br>\n</blockquote></blockquote></blockquote></blockquote></blockquote></blockquote><p>Maharashtra is the world\'s <a href=\"http://en.wikipedia.org/wiki/List_of_country_subdivisions_by_population\" title=\"List of country subdivisions by population\">second most populous first-level administrative country sub-division</a>. Were it a nation in its own right, Maharashtra would be the <a href=\"http://en.wikipedia.org/wiki/List_of_countries_by_population\" title=\"List of countries by population\">world\'s twelfth most populous country</a> ahead of <a href=\"http://en.wikipedia.org/wiki/Philippines\" title=\"Philippines\">Philippines</a>.<br>\n</p>In the 16th century, the <a href=\"http://en.wikipedia.org/wiki/Marathas\" title=\"Marathas\" class=\"mw-redirect\">Marathas</a> rose under the leadership of <a href=\"http://en.wikipedia.org/wiki/Shivaji\" title=\"Shivaji\">Chhatrapati Shivaji Maharaj</a> against the <a href=\"http://en.wikipedia.org/wiki/Mughal_Empire\" title=\"Mughal Empire\">Mughals</a>, who ruled a large part of <a href=\"http://en.wikipedia.org/wiki/India\" title=\"India\">India</a>. By 1760, <a href=\"http://en.wikipedia.org/wiki/Maratha_Empire\" title=\"Maratha Empire\">Maratha power</a> had reached its zenith with a territory of over 250 million acres (1 million km²) or one-third of the <a href=\"http://en.wikipedia.org/wiki/Indian_sub-continent\" title=\"Indian sub-continent\" class=\"mw-redirect\">Indian sub-continent</a>. After the <a href=\"http://en.wikipedia.org/wiki/Third_Anglo-Maratha_War\" title=\"Third Anglo-Maratha War\">Third Anglo-Maratha War</a>, the empire ended and most of Maharashtra became part of <a href=\"http://en.wikipedia.org/wiki/Bombay_State\" title=\"Bombay State\">Bombay State</a> under a <a href=\"http://en.wikipedia.org/wiki/British_Raj\" title=\"British Raj\">British Raj</a>. After <a href=\"http://en.wikipedia.org/wiki/Indian_independence\" title=\"Indian independence\" class=\"mw-redirect\">Indian independence</a>, <a href=\"http://en.wikipedia.org/wiki/Samyukta_Maharashtra_Samiti\" title=\"Samyukta Maharashtra Samiti\" class=\"mw-redirect\">Samyukta Maharashtra Samiti</a> demanded unification of all Marathi-speaking regions under one state. At that time, <a href=\"http://en.wikipedia.org/wiki/B._R._Ambedkar\" title=\"B. R. Ambedkar\">Dr. Babasaheb Ambedkar</a>was of the opinion that linguistic reorganisation of states should be done on a \"One state – One language\" principle and not on a \"One <br><p>\nlanguage – One state\" principle. He submitted a memorandum to the reorganisation commission stating that a \"single government can not administer such a huge state as United Maharashtra\".<sup id=\"cite_ref-6\" class=\"reference\"><a href=\"http://en.wikipedia.org/wiki/Maharashtra#cite_note-6\"><span></span><span></span></a></sup> The first state reorganisation committee created the current Maharashtra state on 1 May 1960 (known as <a href=\"http://en.wikipedia.org/wiki/Maharashtra_Day\" title=\"Maharashtra Day\">Maharashtra Day</a>). The Marathi-speaking areas of <a href=\"http://en.wikipedia.org/wiki/Bombay_State\" title=\"Bombay State\">Bombay State</a>, <a href=\"http://en.wikipedia.org/wiki/Deccan_states\" title=\"Deccan states\" class=\"mw-redirect\">Deccan states</a> and <a href=\"http://en.wikipedia.org/wiki/Vidarbha\" title=\"Vidarbha\">Vidarbha</a> (which was part of <a href=\"http://en.wikipedia.org/wiki/Central_Provinces_and_Berar\" title=\"Central Provinces and Berar\">Central Provinces and Berar</a>) united, under the agreement known as <a href=\"http://en.wikipedia.org/wiki/Nagpur_Pact\" title=\"Nagpur Pact\">Nagpur Pact</a>, to form the current state. <br></p><p><br></p><p>For the more information about the state you can visit the link <a target=\"_blank\" title=\"Maharashtra\" href=\"http://en.wikipedia.org/wiki/Maharashtra\">http://en.wikipedia.org/wiki/Maharashtra</a><br></p>","active","2013-11-04 17:00:48","2013-11-05 12:45:01");

DROP TABLE gallery_image;

CREATE TABLE `gallery_image` (
  `galleryImageId` int(11) NOT NULL AUTO_INCREMENT,
  `galleryId` int(11) NOT NULL,
  `banner` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  PRIMARY KEY (`galleryImageId`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO gallery_image VALUES("2","1","Desert.jpg","2013-11-04 17:00:48");
INSERT INTO gallery_image VALUES("3","1","Hydrangeas.jpg","2013-11-04 17:00:48");
INSERT INTO gallery_image VALUES("4","1","Jellyfish.jpg","2013-11-04 17:00:48");
INSERT INTO gallery_image VALUES("5","1","Tulips.jpg","2013-11-04 17:00:48");

DROP TABLE pages;

CREATE TABLE `pages` (
  `pageId` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  PRIMARY KEY (`pageId`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO pages VALUES("1","About Us","about-us","<blockquote><b>Lorem Ipsum</b> is simply dummy text of the printing and typesetting industry.\n		 	<br></blockquote>Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a \n		 	galley of type and scrambled it to make a type specimen book. \n		 	<br>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. \n		 	<br>It was popularised in the 1960s with the release of Letraset \nsheets containing Lorem Ipsum passages, and more recently with desktop \npublishing software like Aldus Page Maker including versions of Lorem \nIpsum.","active","2013-10-02 17:37:00","2013-10-05 16:23:31");
INSERT INTO pages VALUES("2","Services","services","<b>Lorem Ipsum</b> is simply dummy text of the printing and typesetting industry.\n		 	<br>Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a \n		 	galley of type and scrambled it to make a type specimen book. \n		 	<br>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. \n		 	<br>It was popularised in the 1960s with the release of Letraset \nsheets containing Lorem Ipsum passages, and more recently with desktop \npublishing software like Aldus PageMaker including versions of Lorem \nIpsum.","active","2013-11-05 14:56:20","0000-00-00 00:00:00");
INSERT INTO pages VALUES("3","Faq","faq","<b>Lorem Ipsum</b> is simply dummy text of the printing and typesetting industry.\n		 	<br>Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a \n		 	galley of type and scrambled it to make a type specimen book. \n		 	<br>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. \n		 	<br>It was popularised in the 1960s with the release of Letraset \nsheets containing Lorem Ipsum passages, and more recently with desktop \npublishing software like Aldus PageMaker including versions of Lorem \nIpsum.","active","2013-11-05 14:56:48","0000-00-00 00:00:00");

DROP TABLE regions;

CREATE TABLE `regions` (
  `regionId` int(11) NOT NULL AUTO_INCREMENT,
  `countryId` int(11) NOT NULL,
  `stateId` int(11) NOT NULL,
  `region` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL,
  PRIMARY KEY (`regionId`),
  KEY `regionId` (`regionId`)
) ENGINE=InnoDB AUTO_INCREMENT=1480 DEFAULT CHARSET=latin1;

INSERT INTO regions VALUES("1","1","1","Port blair","2013-11-03 12:11:39","0000-00-00 00:00:00");
INSERT INTO regions VALUES("2","1","2","Adilabad","2013-11-03 12:11:39","0000-00-00 00:00:00");
INSERT INTO regions VALUES("3","1","2","Adoni","2013-11-03 12:11:39","0000-00-00 00:00:00");
INSERT INTO regions VALUES("4","1","2","Amadalavalasa","2013-11-03 12:11:40","0000-00-00 00:00:00");
INSERT INTO regions VALUES("5","1","2","Amalapuram","2013-11-03 12:11:40","0000-00-00 00:00:00");
INSERT INTO regions VALUES("6","1","2","Anakapalle","2013-11-03 12:11:40","0000-00-00 00:00:00");
INSERT INTO regions VALUES("7","1","2","Anantapur","2013-11-03 12:11:40","0000-00-00 00:00:00");
INSERT INTO regions VALUES("8","1","2","Badepalle","2013-11-03 12:11:40","0000-00-00 00:00:00");
INSERT INTO regions VALUES("9","1","2","Banganapalle","2013-11-03 12:11:40","0000-00-00 00:00:00");
INSERT INTO regions VALUES("10","1","2","Bapatla","2013-11-03 12:11:40","0000-00-00 00:00:00");
INSERT INTO regions VALUES("11","1","2","Bellampalle","2013-11-03 12:11:40","0000-00-00 00:00:00");
INSERT INTO regions VALUES("12","1","2","Bethamcherla","2013-11-03 12:11:40","0000-00-00 00:00:00");
INSERT INTO regions VALUES("13","1","2","Bhadrachalam","2013-11-03 12:11:40","0000-00-00 00:00:00");
INSERT INTO regions VALUES("14","1","2","Bhainsa","2013-11-03 12:11:40","0000-00-00 00:00:00");
INSERT INTO regions VALUES("15","1","2","Bheemunipatnam","2013-11-03 12:11:40","0000-00-00 00:00:00");
INSERT INTO regions VALUES("16","1","2","Bhimavaram","2013-11-03 12:11:40","0000-00-00 00:00:00");
INSERT INTO regions VALUES("17","1","2","Bhongir","2013-11-03 12:11:40","0000-00-00 00:00:00");
INSERT INTO regions VALUES("18","1","2","Bobbili","2013-11-03 12:11:40","0000-00-00 00:00:00");
INSERT INTO regions VALUES("19","1","2","Bodhan","2013-11-03 12:11:40","0000-00-00 00:00:00");
INSERT INTO regions VALUES("20","1","2","Chilakaluripet","2013-11-03 12:11:40","0000-00-00 00:00:00");
INSERT INTO regions VALUES("21","1","2","Chirala","2013-11-03 12:11:40","0000-00-00 00:00:00");
INSERT INTO regions VALUES("22","1","2","Chittoor","2013-11-03 12:11:40","0000-00-00 00:00:00");
INSERT INTO regions VALUES("23","1","2","Cuddapah","2013-11-03 12:11:40","0000-00-00 00:00:00");
INSERT INTO regions VALUES("24","1","2","Devarakonda","2013-11-03 12:11:40","0000-00-00 00:00:00");
INSERT INTO regions VALUES("25","1","2","Dharmavaram","2013-11-03 12:11:40","0000-00-00 00:00:00");
INSERT INTO regions VALUES("26","1","2","Eluru","2013-11-03 12:11:40","0000-00-00 00:00:00");
INSERT INTO regions VALUES("27","1","2","Farooqnagar","2013-11-03 12:11:40","0000-00-00 00:00:00");
INSERT INTO regions VALUES("28","1","2","Gadwal","2013-11-03 12:11:40","0000-00-00 00:00:00");
INSERT INTO regions VALUES("29","1","2","Gooty","2013-11-03 12:11:40","0000-00-00 00:00:00");
INSERT INTO regions VALUES("30","1","2","Gudivada","2013-11-03 12:11:40","0000-00-00 00:00:00");
INSERT INTO regions VALUES("31","1","2","Gudur","2013-11-03 12:11:40","0000-00-00 00:00:00");
INSERT INTO regions VALUES("32","1","2","Guntakal","2013-11-03 12:11:40","0000-00-00 00:00:00");
INSERT INTO regions VALUES("33","1","2","Guntur","2013-11-03 12:11:40","0000-00-00 00:00:00");
INSERT INTO regions VALUES("34","1","2","Hanuman junction","2013-11-03 12:11:40","0000-00-00 00:00:00");
INSERT INTO regions VALUES("35","1","2","Hindupur","2013-11-03 12:11:40","0000-00-00 00:00:00");
INSERT INTO regions VALUES("36","1","2","Hyderabad","2013-11-03 12:11:40","0000-00-00 00:00:00");
INSERT INTO regions VALUES("37","1","2","Ichchapuram","2013-11-03 12:11:40","0000-00-00 00:00:00");
INSERT INTO regions VALUES("38","1","2","Jaggaiahpet","2013-11-03 12:11:40","0000-00-00 00:00:00");
INSERT INTO regions VALUES("39","1","2","Jagtial","2013-11-03 12:11:40","0000-00-00 00:00:00");
INSERT INTO regions VALUES("40","1","2","Jammalamadugu","2013-11-03 12:11:40","0000-00-00 00:00:00");
INSERT INTO regions VALUES("41","1","2","Jangaon","2013-11-03 12:11:40","0000-00-00 00:00:00");
INSERT INTO regions VALUES("42","1","2","Kadapa","2013-11-03 12:11:40","0000-00-00 00:00:00");
INSERT INTO regions VALUES("43","1","2","Kadiri","2013-11-03 12:11:40","0000-00-00 00:00:00");
INSERT INTO regions VALUES("44","1","2","Kagaznagar","2013-11-03 12:11:40","0000-00-00 00:00:00");
INSERT INTO regions VALUES("45","1","2","Kakinada","2013-11-03 12:11:40","0000-00-00 00:00:00");
INSERT INTO regions VALUES("46","1","2","Kalyandurg","2013-11-03 12:11:40","0000-00-00 00:00:00");
INSERT INTO regions VALUES("47","1","2","Kamareddy","2013-11-03 12:11:40","0000-00-00 00:00:00");
INSERT INTO regions VALUES("48","1","2","Kandukur","2013-11-03 12:11:40","0000-00-00 00:00:00");
INSERT INTO regions VALUES("49","1","2","Karimnagar","2013-11-03 12:11:41","0000-00-00 00:00:00");
INSERT INTO regions VALUES("50","1","2","Kavali","2013-11-03 12:11:41","0000-00-00 00:00:00");
INSERT INTO regions VALUES("51","1","2","Khammam","2013-11-03 12:11:41","0000-00-00 00:00:00");
INSERT INTO regions VALUES("52","1","2","Koratla","2013-11-03 12:11:41","0000-00-00 00:00:00");
INSERT INTO regions VALUES("53","1","2","Kothagudem","2013-11-03 12:11:41","0000-00-00 00:00:00");
INSERT INTO regions VALUES("54","1","2","Kothapeta","2013-11-03 12:11:41","0000-00-00 00:00:00");
INSERT INTO regions VALUES("55","1","2","Kovvur","2013-11-03 12:11:41","0000-00-00 00:00:00");
INSERT INTO regions VALUES("56","1","2","Kurnool","2013-11-03 12:11:41","0000-00-00 00:00:00");
INSERT INTO regions VALUES("57","1","2","Kyathampalle","2013-11-03 12:11:41","0000-00-00 00:00:00");
INSERT INTO regions VALUES("58","1","2","Macherla","2013-11-03 12:11:41","0000-00-00 00:00:00");
INSERT INTO regions VALUES("59","1","2","Machilipatnam","2013-11-03 12:11:41","0000-00-00 00:00:00");
INSERT INTO regions VALUES("60","1","2","Madanapalle","2013-11-03 12:11:41","0000-00-00 00:00:00");
INSERT INTO regions VALUES("61","1","2","Mahbubnagar","2013-11-03 12:11:41","0000-00-00 00:00:00");
INSERT INTO regions VALUES("62","1","2","Mancherial","2013-11-03 12:11:41","0000-00-00 00:00:00");
INSERT INTO regions VALUES("63","1","2","Mandamarri","2013-11-03 12:11:41","0000-00-00 00:00:00");
INSERT INTO regions VALUES("64","1","2","Mandapeta","2013-11-03 12:11:41","0000-00-00 00:00:00");
INSERT INTO regions VALUES("65","1","2","Manuguru","2013-11-03 12:11:41","0000-00-00 00:00:00");
INSERT INTO regions VALUES("66","1","2","Markapur","2013-11-03 12:11:41","0000-00-00 00:00:00");
INSERT INTO regions VALUES("67","1","2","Medak","2013-11-03 12:11:41","0000-00-00 00:00:00");
INSERT INTO regions VALUES("68","1","2","Miryalaguda","2013-11-03 12:11:41","0000-00-00 00:00:00");
INSERT INTO regions VALUES("69","1","2","Mogalthur","2013-11-03 12:11:41","0000-00-00 00:00:00");
INSERT INTO regions VALUES("70","1","2","Nagari","2013-11-03 12:11:41","0000-00-00 00:00:00");
INSERT INTO regions VALUES("71","1","2","Nagarkurnool","2013-11-03 12:11:41","0000-00-00 00:00:00");
INSERT INTO regions VALUES("72","1","2","Nandyal","2013-11-03 12:11:41","0000-00-00 00:00:00");
INSERT INTO regions VALUES("73","1","2","Narasapur","2013-11-03 12:11:41","0000-00-00 00:00:00");
INSERT INTO regions VALUES("74","1","2","Narasaraopet","2013-11-03 12:11:41","0000-00-00 00:00:00");
INSERT INTO regions VALUES("75","1","2","Narayanpet","2013-11-03 12:11:41","0000-00-00 00:00:00");
INSERT INTO regions VALUES("76","1","2","Narsipatnam","2013-11-03 12:11:41","0000-00-00 00:00:00");
INSERT INTO regions VALUES("77","1","2","Nellore","2013-11-03 12:11:41","0000-00-00 00:00:00");
INSERT INTO regions VALUES("78","1","2","Nidadavole","2013-11-03 12:11:41","0000-00-00 00:00:00");
INSERT INTO regions VALUES("79","1","2","Nirmal","2013-11-03 12:11:41","0000-00-00 00:00:00");
INSERT INTO regions VALUES("80","1","2","Nizamabad","2013-11-03 12:11:41","0000-00-00 00:00:00");
INSERT INTO regions VALUES("81","1","2","Nuzvid","2013-11-03 12:11:41","0000-00-00 00:00:00");
INSERT INTO regions VALUES("82","1","2","Ongole","2013-11-03 12:11:41","0000-00-00 00:00:00");
INSERT INTO regions VALUES("83","1","2","Palacole","2013-11-03 12:11:41","0000-00-00 00:00:00");
INSERT INTO regions VALUES("84","1","2","Palasa kasibugga","2013-11-03 12:11:41","0000-00-00 00:00:00");
INSERT INTO regions VALUES("85","1","2","Palwancha","2013-11-03 12:11:41","0000-00-00 00:00:00");
INSERT INTO regions VALUES("86","1","2","Parvathipuram","2013-11-03 12:11:41","0000-00-00 00:00:00");
INSERT INTO regions VALUES("87","1","2","Pedana","2013-11-03 12:11:41","0000-00-00 00:00:00");
INSERT INTO regions VALUES("88","1","2","Peddapuram","2013-11-03 12:11:41","0000-00-00 00:00:00");
INSERT INTO regions VALUES("89","1","2","Pithapuram","2013-11-03 12:11:41","0000-00-00 00:00:00");
INSERT INTO regions VALUES("90","1","2","Pondur","2013-11-03 12:11:41","0000-00-00 00:00:00");
INSERT INTO regions VALUES("91","1","2","Ponnur","2013-11-03 12:11:41","0000-00-00 00:00:00");
INSERT INTO regions VALUES("92","1","2","Proddatur","2013-11-03 12:11:41","0000-00-00 00:00:00");
INSERT INTO regions VALUES("93","1","2","Punganur","2013-11-03 12:11:41","0000-00-00 00:00:00");
INSERT INTO regions VALUES("94","1","2","Puttur","2013-11-03 12:11:41","0000-00-00 00:00:00");
INSERT INTO regions VALUES("95","1","2","Rajahmundry","2013-11-03 12:11:41","0000-00-00 00:00:00");
INSERT INTO regions VALUES("96","1","2","Rajam","2013-11-03 12:11:41","0000-00-00 00:00:00");
INSERT INTO regions VALUES("97","1","2","Ramachandrapuram","2013-11-03 12:11:41","0000-00-00 00:00:00");
INSERT INTO regions VALUES("98","1","2","Ramagundam","2013-11-03 12:11:41","0000-00-00 00:00:00");
INSERT INTO regions VALUES("99","1","2","Rayachoti","2013-11-03 12:11:41","0000-00-00 00:00:00");
INSERT INTO regions VALUES("100","1","2","Rayadurg","2013-11-03 12:11:42","0000-00-00 00:00:00");
INSERT INTO regions VALUES("101","1","2","Renigunta","2013-11-03 12:11:42","0000-00-00 00:00:00");
INSERT INTO regions VALUES("102","1","2","Repalle","2013-11-03 12:11:42","0000-00-00 00:00:00");
INSERT INTO regions VALUES("103","1","2","Sadasivpet","2013-11-03 12:11:42","0000-00-00 00:00:00");
INSERT INTO regions VALUES("104","1","2","Salur","2013-11-03 12:11:42","0000-00-00 00:00:00");
INSERT INTO regions VALUES("105","1","2","Samalkot","2013-11-03 12:11:42","0000-00-00 00:00:00");
INSERT INTO regions VALUES("106","1","2","Sangareddy","2013-11-03 12:11:42","0000-00-00 00:00:00");
INSERT INTO regions VALUES("107","1","2","Sattenapalle","2013-11-03 12:11:42","0000-00-00 00:00:00");
INSERT INTO regions VALUES("108","1","2","Siddipet","2013-11-03 12:11:42","0000-00-00 00:00:00");
INSERT INTO regions VALUES("109","1","2","Singapur","2013-11-03 12:11:42","0000-00-00 00:00:00");
INSERT INTO regions VALUES("110","1","2","Sircilla","2013-11-03 12:11:42","0000-00-00 00:00:00");
INSERT INTO regions VALUES("111","1","2","Srikakulam","2013-11-03 12:11:42","0000-00-00 00:00:00");
INSERT INTO regions VALUES("112","1","2","Srikalahasti","2013-11-03 12:11:42","0000-00-00 00:00:00");
INSERT INTO regions VALUES("113","1","2","Suryapet","2013-11-03 12:11:42","0000-00-00 00:00:00");
INSERT INTO regions VALUES("114","1","2","Tadepalligudem","2013-11-03 12:11:42","0000-00-00 00:00:00");
INSERT INTO regions VALUES("115","1","2","Tadpatri","2013-11-03 12:11:42","0000-00-00 00:00:00");
INSERT INTO regions VALUES("116","1","2","Tandur","2013-11-03 12:11:42","0000-00-00 00:00:00");
INSERT INTO regions VALUES("117","1","2","Tanuku","2013-11-03 12:11:42","0000-00-00 00:00:00");
INSERT INTO regions VALUES("118","1","2","Tenali","2013-11-03 12:11:42","0000-00-00 00:00:00");
INSERT INTO regions VALUES("119","1","2","Tirupati","2013-11-03 12:11:42","0000-00-00 00:00:00");
INSERT INTO regions VALUES("120","1","2","Tuni","2013-11-03 12:11:42","0000-00-00 00:00:00");
INSERT INTO regions VALUES("121","1","2","Uravakonda","2013-11-03 12:11:42","0000-00-00 00:00:00");
INSERT INTO regions VALUES("122","1","2","Venkatagiri","2013-11-03 12:11:42","0000-00-00 00:00:00");
INSERT INTO regions VALUES("123","1","2","Vicarabad","2013-11-03 12:11:42","0000-00-00 00:00:00");
INSERT INTO regions VALUES("124","1","2","Vijayawada","2013-11-03 12:11:42","0000-00-00 00:00:00");
INSERT INTO regions VALUES("125","1","2","Vinukonda","2013-11-03 12:11:42","0000-00-00 00:00:00");
INSERT INTO regions VALUES("126","1","2","Visakhapatnam","2013-11-03 12:11:42","0000-00-00 00:00:00");
INSERT INTO regions VALUES("127","1","2","Vizianagaram","2013-11-03 12:11:42","0000-00-00 00:00:00");
INSERT INTO regions VALUES("128","1","2","Wanaparthy","2013-11-03 12:11:42","0000-00-00 00:00:00");
INSERT INTO regions VALUES("129","1","2","Warangal","2013-11-03 12:11:42","0000-00-00 00:00:00");
INSERT INTO regions VALUES("130","1","2","Yellandu","2013-11-03 12:11:42","0000-00-00 00:00:00");
INSERT INTO regions VALUES("131","1","2","Yemmiganur","2013-11-03 12:11:42","0000-00-00 00:00:00");
INSERT INTO regions VALUES("132","1","2","Yerraguntla","2013-11-03 12:11:42","0000-00-00 00:00:00");
INSERT INTO regions VALUES("133","1","2","Zahirabad","2013-11-03 12:11:42","0000-00-00 00:00:00");
INSERT INTO regions VALUES("134","1","2","Rajampet","2013-11-03 12:11:42","0000-00-00 00:00:00");
INSERT INTO regions VALUES("135","1","3","Along","2013-11-03 12:11:42","0000-00-00 00:00:00");
INSERT INTO regions VALUES("136","1","3","Bomdila","2013-11-03 12:11:42","0000-00-00 00:00:00");
INSERT INTO regions VALUES("137","1","3","Itanagar","2013-11-03 12:11:42","0000-00-00 00:00:00");
INSERT INTO regions VALUES("138","1","3","Naharlagun","2013-11-03 12:11:42","0000-00-00 00:00:00");
INSERT INTO regions VALUES("139","1","3","Pasighat","2013-11-03 12:11:42","0000-00-00 00:00:00");
INSERT INTO regions VALUES("140","1","4","Abhayapuri","2013-11-03 12:11:42","0000-00-00 00:00:00");
INSERT INTO regions VALUES("141","1","4","Amguri","2013-11-03 12:11:42","0000-00-00 00:00:00");
INSERT INTO regions VALUES("142","1","4","Anandnagaar","2013-11-03 12:11:42","0000-00-00 00:00:00");
INSERT INTO regions VALUES("143","1","4","Barpeta","2013-11-03 12:11:42","0000-00-00 00:00:00");
INSERT INTO regions VALUES("144","1","4","Barpeta road","2013-11-03 12:11:42","0000-00-00 00:00:00");
INSERT INTO regions VALUES("145","1","4","Bilasipara","2013-11-03 12:11:42","0000-00-00 00:00:00");
INSERT INTO regions VALUES("146","1","4","Bongaigaon","2013-11-03 12:11:42","0000-00-00 00:00:00");
INSERT INTO regions VALUES("147","1","4","Dhekiajuli","2013-11-03 12:11:42","0000-00-00 00:00:00");
INSERT INTO regions VALUES("148","1","4","Dhubri","2013-11-03 12:11:42","0000-00-00 00:00:00");
INSERT INTO regions VALUES("149","1","4","Dibrugarh","2013-11-03 12:11:42","0000-00-00 00:00:00");
INSERT INTO regions VALUES("150","1","4","Digboi","2013-11-03 12:11:43","0000-00-00 00:00:00");
INSERT INTO regions VALUES("151","1","4","Diphu","2013-11-03 12:11:43","0000-00-00 00:00:00");
INSERT INTO regions VALUES("152","1","4","Dispur","2013-11-03 12:11:43","0000-00-00 00:00:00");
INSERT INTO regions VALUES("153","1","4","Gauripur","2013-11-03 12:11:43","0000-00-00 00:00:00");
INSERT INTO regions VALUES("154","1","4","Goalpara","2013-11-03 12:11:43","0000-00-00 00:00:00");
INSERT INTO regions VALUES("155","1","4","Golaghat","2013-11-03 12:11:43","0000-00-00 00:00:00");
INSERT INTO regions VALUES("156","1","4","Guwahati","2013-11-03 12:11:43","0000-00-00 00:00:00");
INSERT INTO regions VALUES("157","1","4","Haflong","2013-11-03 12:11:43","0000-00-00 00:00:00");
INSERT INTO regions VALUES("158","1","4","Hailakandi","2013-11-03 12:11:43","0000-00-00 00:00:00");
INSERT INTO regions VALUES("159","1","4","Hojai","2013-11-03 12:11:43","0000-00-00 00:00:00");
INSERT INTO regions VALUES("160","1","4","Jorhat","2013-11-03 12:11:43","0000-00-00 00:00:00");
INSERT INTO regions VALUES("161","1","4","Karimganj","2013-11-03 12:11:43","0000-00-00 00:00:00");
INSERT INTO regions VALUES("162","1","4","Kokrajhar","2013-11-03 12:11:43","0000-00-00 00:00:00");
INSERT INTO regions VALUES("163","1","4","Lanka","2013-11-03 12:11:43","0000-00-00 00:00:00");
INSERT INTO regions VALUES("164","1","4","Lumding","2013-11-03 12:11:43","0000-00-00 00:00:00");
INSERT INTO regions VALUES("165","1","4","Mangaldoi","2013-11-03 12:11:43","0000-00-00 00:00:00");
INSERT INTO regions VALUES("166","1","4","Mankachar","2013-11-03 12:11:43","0000-00-00 00:00:00");
INSERT INTO regions VALUES("167","1","4","Margherita","2013-11-03 12:11:43","0000-00-00 00:00:00");
INSERT INTO regions VALUES("168","1","4","Mariani","2013-11-03 12:11:43","0000-00-00 00:00:00");
INSERT INTO regions VALUES("169","1","4","Marigaon","2013-11-03 12:11:43","0000-00-00 00:00:00");
INSERT INTO regions VALUES("170","1","4","Nagaon","2013-11-03 12:11:43","0000-00-00 00:00:00");
INSERT INTO regions VALUES("171","1","4","Nalbari","2013-11-03 12:11:43","0000-00-00 00:00:00");
INSERT INTO regions VALUES("172","1","4","North lakhimpur","2013-11-03 12:11:43","0000-00-00 00:00:00");
INSERT INTO regions VALUES("173","1","4","Rangia","2013-11-03 12:11:43","0000-00-00 00:00:00");
INSERT INTO regions VALUES("174","1","4","Sibsagar","2013-11-03 12:11:43","0000-00-00 00:00:00");
INSERT INTO regions VALUES("175","1","4","Silapathar","2013-11-03 12:11:43","0000-00-00 00:00:00");
INSERT INTO regions VALUES("176","1","4","Silchar","2013-11-03 12:11:43","0000-00-00 00:00:00");
INSERT INTO regions VALUES("177","1","4","Tezpur","2013-11-03 12:11:43","0000-00-00 00:00:00");
INSERT INTO regions VALUES("178","1","4","Tinsukia","2013-11-03 12:11:43","0000-00-00 00:00:00");
INSERT INTO regions VALUES("179","1","5","Amarpur","2013-11-03 12:11:43","0000-00-00 00:00:00");
INSERT INTO regions VALUES("180","1","5","Araria","2013-11-03 12:11:43","0000-00-00 00:00:00");
INSERT INTO regions VALUES("181","1","5","Areraj","2013-11-03 12:11:43","0000-00-00 00:00:00");
INSERT INTO regions VALUES("182","1","5","Arrah","2013-11-03 12:11:43","0000-00-00 00:00:00");
INSERT INTO regions VALUES("183","1","5","Asarganj","2013-11-03 12:11:43","0000-00-00 00:00:00");
INSERT INTO regions VALUES("184","1","5","Aurangabad","2013-11-03 12:11:43","0000-00-00 00:00:00");
INSERT INTO regions VALUES("185","1","5","Bagaha","2013-11-03 12:11:43","0000-00-00 00:00:00");
INSERT INTO regions VALUES("186","1","5","Bahadurganj","2013-11-03 12:11:43","0000-00-00 00:00:00");
INSERT INTO regions VALUES("187","1","5","Bairgania","2013-11-03 12:11:43","0000-00-00 00:00:00");
INSERT INTO regions VALUES("188","1","5","Bakhtiarpur","2013-11-03 12:11:43","0000-00-00 00:00:00");
INSERT INTO regions VALUES("189","1","5","Banka","2013-11-03 12:11:43","0000-00-00 00:00:00");
INSERT INTO regions VALUES("190","1","5","Banmankhi bazar","2013-11-03 12:11:43","0000-00-00 00:00:00");
INSERT INTO regions VALUES("191","1","5","Barahiya","2013-11-03 12:11:43","0000-00-00 00:00:00");
INSERT INTO regions VALUES("192","1","5","Barauli","2013-11-03 12:11:43","0000-00-00 00:00:00");
INSERT INTO regions VALUES("193","1","5","Barbigha","2013-11-03 12:11:44","0000-00-00 00:00:00");
INSERT INTO regions VALUES("194","1","5","Barh","2013-11-03 12:11:44","0000-00-00 00:00:00");
INSERT INTO regions VALUES("195","1","5","Begusarai","2013-11-03 12:11:44","0000-00-00 00:00:00");
INSERT INTO regions VALUES("196","1","5","Behea","2013-11-03 12:11:44","0000-00-00 00:00:00");
INSERT INTO regions VALUES("197","1","5","Bettiah","2013-11-03 12:11:44","0000-00-00 00:00:00");
INSERT INTO regions VALUES("198","1","5","Bhabua","2013-11-03 12:11:44","0000-00-00 00:00:00");
INSERT INTO regions VALUES("199","1","5","Bhagalpur","2013-11-03 12:11:44","0000-00-00 00:00:00");
INSERT INTO regions VALUES("200","1","5","Bihar sharif","2013-11-03 12:11:44","0000-00-00 00:00:00");
INSERT INTO regions VALUES("201","1","5","Bikramganj","2013-11-03 12:11:44","0000-00-00 00:00:00");
INSERT INTO regions VALUES("202","1","5","Bodh gaya","2013-11-03 12:11:44","0000-00-00 00:00:00");
INSERT INTO regions VALUES("203","1","5","Buxar","2013-11-03 12:11:44","0000-00-00 00:00:00");
INSERT INTO regions VALUES("204","1","5","Chandan bara","2013-11-03 12:11:44","0000-00-00 00:00:00");
INSERT INTO regions VALUES("205","1","5","Chanpatia","2013-11-03 12:11:44","0000-00-00 00:00:00");
INSERT INTO regions VALUES("206","1","5","Chhapra","2013-11-03 12:11:44","0000-00-00 00:00:00");
INSERT INTO regions VALUES("207","1","5","Colgong","2013-11-03 12:11:44","0000-00-00 00:00:00");
INSERT INTO regions VALUES("208","1","5","Dalsinghsarai","2013-11-03 12:11:44","0000-00-00 00:00:00");
INSERT INTO regions VALUES("209","1","5","Darbhanga","2013-11-03 12:11:44","0000-00-00 00:00:00");
INSERT INTO regions VALUES("210","1","5","Daudnagar","2013-11-03 12:11:44","0000-00-00 00:00:00");
INSERT INTO regions VALUES("211","1","5","Dehri-on-sone","2013-11-03 12:11:44","0000-00-00 00:00:00");
INSERT INTO regions VALUES("212","1","5","Dhaka","2013-11-03 12:11:44","0000-00-00 00:00:00");
INSERT INTO regions VALUES("213","1","5","Dighwara","2013-11-03 12:11:44","0000-00-00 00:00:00");
INSERT INTO regions VALUES("214","1","5","Dumraon","2013-11-03 12:11:44","0000-00-00 00:00:00");
INSERT INTO regions VALUES("215","1","5","Fatwah","2013-11-03 12:11:44","0000-00-00 00:00:00");
INSERT INTO regions VALUES("216","1","5","Forbesganj","2013-11-03 12:11:44","0000-00-00 00:00:00");
INSERT INTO regions VALUES("217","1","5","Gaya","2013-11-03 12:11:44","0000-00-00 00:00:00");
INSERT INTO regions VALUES("218","1","5","Gogri jamalpur","2013-11-03 12:11:44","0000-00-00 00:00:00");
INSERT INTO regions VALUES("219","1","5","Gopalganj","2013-11-03 12:11:44","0000-00-00 00:00:00");
INSERT INTO regions VALUES("220","1","5","Hajipur","2013-11-03 12:11:44","0000-00-00 00:00:00");
INSERT INTO regions VALUES("221","1","5","Hilsa","2013-11-03 12:11:44","0000-00-00 00:00:00");
INSERT INTO regions VALUES("222","1","5","Hisua","2013-11-03 12:11:44","0000-00-00 00:00:00");
INSERT INTO regions VALUES("223","1","5","Islampur","2013-11-03 12:11:44","0000-00-00 00:00:00");
INSERT INTO regions VALUES("224","1","5","Jagdispur","2013-11-03 12:11:44","0000-00-00 00:00:00");
INSERT INTO regions VALUES("225","1","5","Jamalpur","2013-11-03 12:11:44","0000-00-00 00:00:00");
INSERT INTO regions VALUES("226","1","5","Jamui","2013-11-03 12:11:44","0000-00-00 00:00:00");
INSERT INTO regions VALUES("227","1","5","Jehanabad","2013-11-03 12:11:44","0000-00-00 00:00:00");
INSERT INTO regions VALUES("228","1","5","Jhajha","2013-11-03 12:11:44","0000-00-00 00:00:00");
INSERT INTO regions VALUES("229","1","5","Jhanjharpur","2013-11-03 12:11:44","0000-00-00 00:00:00");
INSERT INTO regions VALUES("230","1","5","Jogabani","2013-11-03 12:11:44","0000-00-00 00:00:00");
INSERT INTO regions VALUES("231","1","5","Kanti","2013-11-03 12:11:44","0000-00-00 00:00:00");
INSERT INTO regions VALUES("232","1","5","Katihar","2013-11-03 12:11:44","0000-00-00 00:00:00");
INSERT INTO regions VALUES("233","1","5","Khagaria","2013-11-03 12:11:44","0000-00-00 00:00:00");
INSERT INTO regions VALUES("234","1","5","Kharagpur","2013-11-03 12:11:44","0000-00-00 00:00:00");
INSERT INTO regions VALUES("235","1","5","Kishanganj","2013-11-03 12:11:44","0000-00-00 00:00:00");
INSERT INTO regions VALUES("236","1","5","Lakhisarai","2013-11-03 12:11:44","0000-00-00 00:00:00");
INSERT INTO regions VALUES("237","1","5","Lalganj","2013-11-03 12:11:44","0000-00-00 00:00:00");
INSERT INTO regions VALUES("238","1","5","Madhepura","2013-11-03 12:11:44","0000-00-00 00:00:00");
INSERT INTO regions VALUES("239","1","5","Madhubani","2013-11-03 12:11:44","0000-00-00 00:00:00");
INSERT INTO regions VALUES("240","1","5","Maharajganj","2013-11-03 12:11:44","0000-00-00 00:00:00");
INSERT INTO regions VALUES("241","1","5","Mahnar bazar","2013-11-03 12:11:44","0000-00-00 00:00:00");
INSERT INTO regions VALUES("242","1","5","Makhdumpur","2013-11-03 12:11:44","0000-00-00 00:00:00");
INSERT INTO regions VALUES("243","1","5","Maner","2013-11-03 12:11:44","0000-00-00 00:00:00");
INSERT INTO regions VALUES("244","1","5","Manihari","2013-11-03 12:11:44","0000-00-00 00:00:00");
INSERT INTO regions VALUES("245","1","5","Marhaura","2013-11-03 12:11:45","0000-00-00 00:00:00");
INSERT INTO regions VALUES("246","1","5","Masaurhi","2013-11-03 12:11:45","0000-00-00 00:00:00");
INSERT INTO regions VALUES("247","1","5","Mirganj","2013-11-03 12:11:45","0000-00-00 00:00:00");
INSERT INTO regions VALUES("248","1","5","Mokameh","2013-11-03 12:11:45","0000-00-00 00:00:00");
INSERT INTO regions VALUES("249","1","5","Motihari","2013-11-03 12:11:45","0000-00-00 00:00:00");
INSERT INTO regions VALUES("250","1","5","Motipur","2013-11-03 12:11:45","0000-00-00 00:00:00");
INSERT INTO regions VALUES("251","1","5","Munger","2013-11-03 12:11:45","0000-00-00 00:00:00");
INSERT INTO regions VALUES("252","1","5","Murliganj","2013-11-03 12:11:45","0000-00-00 00:00:00");
INSERT INTO regions VALUES("253","1","5","Muzaffarpur","2013-11-03 12:11:45","0000-00-00 00:00:00");
INSERT INTO regions VALUES("254","1","5","Narkatiaganj","2013-11-03 12:11:45","0000-00-00 00:00:00");
INSERT INTO regions VALUES("255","1","5","Naugachhia","2013-11-03 12:11:45","0000-00-00 00:00:00");
INSERT INTO regions VALUES("256","1","5","Nawada","2013-11-03 12:11:45","0000-00-00 00:00:00");
INSERT INTO regions VALUES("257","1","5","Nokha","2013-11-03 12:11:45","0000-00-00 00:00:00");
INSERT INTO regions VALUES("258","1","5","Patna","2013-11-03 12:11:45","0000-00-00 00:00:00");
INSERT INTO regions VALUES("259","1","5","Piro","2013-11-03 12:11:45","0000-00-00 00:00:00");
INSERT INTO regions VALUES("260","1","5","Purnia","2013-11-03 12:11:45","0000-00-00 00:00:00");
INSERT INTO regions VALUES("261","1","5","Rafiganj","2013-11-03 12:11:45","0000-00-00 00:00:00");
INSERT INTO regions VALUES("262","1","5","Rajgir","2013-11-03 12:11:45","0000-00-00 00:00:00");
INSERT INTO regions VALUES("263","1","5","Ramnagar","2013-11-03 12:11:45","0000-00-00 00:00:00");
INSERT INTO regions VALUES("264","1","5","Raxaul bazar","2013-11-03 12:11:45","0000-00-00 00:00:00");
INSERT INTO regions VALUES("265","1","5","Revelganj","2013-11-03 12:11:45","0000-00-00 00:00:00");
INSERT INTO regions VALUES("266","1","5","Rosera","2013-11-03 12:11:45","0000-00-00 00:00:00");
INSERT INTO regions VALUES("267","1","5","Saharsa","2013-11-03 12:11:45","0000-00-00 00:00:00");
INSERT INTO regions VALUES("268","1","5","Samastipur","2013-11-03 12:11:45","0000-00-00 00:00:00");
INSERT INTO regions VALUES("269","1","5","Sasaram","2013-11-03 12:11:45","0000-00-00 00:00:00");
INSERT INTO regions VALUES("270","1","5","Sheikhpura","2013-11-03 12:11:45","0000-00-00 00:00:00");
INSERT INTO regions VALUES("271","1","5","Sheohar","2013-11-03 12:11:45","0000-00-00 00:00:00");
INSERT INTO regions VALUES("272","1","5","Sherghati","2013-11-03 12:11:45","0000-00-00 00:00:00");
INSERT INTO regions VALUES("273","1","5","Silao","2013-11-03 12:11:45","0000-00-00 00:00:00");
INSERT INTO regions VALUES("274","1","5","Sitamarhi","2013-11-03 12:11:45","0000-00-00 00:00:00");
INSERT INTO regions VALUES("275","1","5","Siwan","2013-11-03 12:11:45","0000-00-00 00:00:00");
INSERT INTO regions VALUES("276","1","5","Sonepur","2013-11-03 12:11:45","0000-00-00 00:00:00");
INSERT INTO regions VALUES("277","1","5","Sugauli","2013-11-03 12:11:45","0000-00-00 00:00:00");
INSERT INTO regions VALUES("278","1","5","Sultanganj","2013-11-03 12:11:45","0000-00-00 00:00:00");
INSERT INTO regions VALUES("279","1","5","Supaul","2013-11-03 12:11:45","0000-00-00 00:00:00");
INSERT INTO regions VALUES("280","1","5","Warisaliganj","2013-11-03 12:11:45","0000-00-00 00:00:00");
INSERT INTO regions VALUES("281","1","6","Ahiwara","2013-11-03 12:11:45","0000-00-00 00:00:00");
INSERT INTO regions VALUES("282","1","6","Akaltara","2013-11-03 12:11:45","0000-00-00 00:00:00");
INSERT INTO regions VALUES("283","1","6","Ambagarh chowki","2013-11-03 12:11:45","0000-00-00 00:00:00");
INSERT INTO regions VALUES("284","1","6","Ambikapur","2013-11-03 12:11:45","0000-00-00 00:00:00");
INSERT INTO regions VALUES("285","1","6","Arang","2013-11-03 12:11:45","0000-00-00 00:00:00");
INSERT INTO regions VALUES("286","1","6","Bade bacheli","2013-11-03 12:11:45","0000-00-00 00:00:00");
INSERT INTO regions VALUES("287","1","6","Balod","2013-11-03 12:11:45","0000-00-00 00:00:00");
INSERT INTO regions VALUES("288","1","6","Baloda bazar","2013-11-03 12:11:45","0000-00-00 00:00:00");
INSERT INTO regions VALUES("289","1","6","Bemetra","2013-11-03 12:11:46","0000-00-00 00:00:00");
INSERT INTO regions VALUES("290","1","6","Bhatapara","2013-11-03 12:11:46","0000-00-00 00:00:00");
INSERT INTO regions VALUES("291","1","6","Bilaspur","2013-11-03 12:11:46","0000-00-00 00:00:00");
INSERT INTO regions VALUES("292","1","6","Birgaon","2013-11-03 12:11:46","0000-00-00 00:00:00");
INSERT INTO regions VALUES("293","1","6","Champa","2013-11-03 12:11:46","0000-00-00 00:00:00");
INSERT INTO regions VALUES("294","1","6","Chirmiri","2013-11-03 12:11:46","0000-00-00 00:00:00");
INSERT INTO regions VALUES("295","1","6","Dalli-rajhara","2013-11-03 12:11:46","0000-00-00 00:00:00");
INSERT INTO regions VALUES("296","1","6","Dhamtari","2013-11-03 12:11:46","0000-00-00 00:00:00");
INSERT INTO regions VALUES("297","1","6","Dipka","2013-11-03 12:11:46","0000-00-00 00:00:00");
INSERT INTO regions VALUES("298","1","6","Dongargarh","2013-11-03 12:11:46","0000-00-00 00:00:00");
INSERT INTO regions VALUES("299","1","6","Durg-bhilai nagar","2013-11-03 12:11:46","0000-00-00 00:00:00");
INSERT INTO regions VALUES("300","1","6","Gobranawapara","2013-11-03 12:11:46","0000-00-00 00:00:00");
INSERT INTO regions VALUES("301","1","6","Jagdalpur","2013-11-03 12:11:46","0000-00-00 00:00:00");
INSERT INTO regions VALUES("302","1","6","Janjgir","2013-11-03 12:11:46","0000-00-00 00:00:00");
INSERT INTO regions VALUES("303","1","6","Jashpurnagar","2013-11-03 12:11:46","0000-00-00 00:00:00");
INSERT INTO regions VALUES("304","1","6","Kanker","2013-11-03 12:11:46","0000-00-00 00:00:00");
INSERT INTO regions VALUES("305","1","6","Kawardha","2013-11-03 12:11:46","0000-00-00 00:00:00");
INSERT INTO regions VALUES("306","1","6","Kondagaon","2013-11-03 12:11:46","0000-00-00 00:00:00");
INSERT INTO regions VALUES("307","1","6","Korba","2013-11-03 12:11:46","0000-00-00 00:00:00");
INSERT INTO regions VALUES("308","1","6","Mahasamund","2013-11-03 12:11:46","0000-00-00 00:00:00");
INSERT INTO regions VALUES("309","1","6","Mahendragarh","2013-11-03 12:11:46","0000-00-00 00:00:00");
INSERT INTO regions VALUES("310","1","6","Mungeli","2013-11-03 12:11:46","0000-00-00 00:00:00");
INSERT INTO regions VALUES("311","1","6","Naila janjgir","2013-11-03 12:11:46","0000-00-00 00:00:00");
INSERT INTO regions VALUES("312","1","6","Raigarh","2013-11-03 12:11:46","0000-00-00 00:00:00");
INSERT INTO regions VALUES("313","1","6","Raipur","2013-11-03 12:11:46","0000-00-00 00:00:00");
INSERT INTO regions VALUES("314","1","6","Rajnandgaon","2013-11-03 12:11:46","0000-00-00 00:00:00");
INSERT INTO regions VALUES("315","1","6","Sakti","2013-11-03 12:11:46","0000-00-00 00:00:00");
INSERT INTO regions VALUES("316","1","6","Tilda newra","2013-11-03 12:11:46","0000-00-00 00:00:00");
INSERT INTO regions VALUES("317","1","7","Amli","2013-11-03 12:11:46","0000-00-00 00:00:00");
INSERT INTO regions VALUES("318","1","7","Silvassa","2013-11-03 12:11:46","0000-00-00 00:00:00");
INSERT INTO regions VALUES("319","1","8","Daman and diu","2013-11-03 12:11:46","0000-00-00 00:00:00");
INSERT INTO regions VALUES("320","1","9","Asola","2013-11-03 12:11:46","0000-00-00 00:00:00");
INSERT INTO regions VALUES("321","1","10","Aldona","2013-11-03 12:11:46","0000-00-00 00:00:00");
INSERT INTO regions VALUES("322","1","10","Curchorem cacora","2013-11-03 12:11:46","0000-00-00 00:00:00");
INSERT INTO regions VALUES("323","1","10","Madgaon","2013-11-03 12:11:46","0000-00-00 00:00:00");
INSERT INTO regions VALUES("324","1","10","Mapusa","2013-11-03 12:11:46","0000-00-00 00:00:00");
INSERT INTO regions VALUES("325","1","10","Margao","2013-11-03 12:11:46","0000-00-00 00:00:00");
INSERT INTO regions VALUES("326","1","10","Marmagao","2013-11-03 12:11:46","0000-00-00 00:00:00");
INSERT INTO regions VALUES("327","1","10","Panaji","2013-11-03 12:11:46","0000-00-00 00:00:00");
INSERT INTO regions VALUES("328","1","11","Ahmedabad","2013-11-03 12:11:46","0000-00-00 00:00:00");
INSERT INTO regions VALUES("329","1","11","Amreli","2013-11-03 12:11:46","0000-00-00 00:00:00");
INSERT INTO regions VALUES("330","1","11","Anand","2013-11-03 12:11:46","0000-00-00 00:00:00");
INSERT INTO regions VALUES("331","1","11","Ankleshwar","2013-11-03 12:11:46","0000-00-00 00:00:00");
INSERT INTO regions VALUES("332","1","11","Bharuch","2013-11-03 12:11:46","0000-00-00 00:00:00");
INSERT INTO regions VALUES("333","1","11","Bhavnagar","2013-11-03 12:11:46","0000-00-00 00:00:00");
INSERT INTO regions VALUES("334","1","11","Bhuj","2013-11-03 12:11:46","0000-00-00 00:00:00");
INSERT INTO regions VALUES("335","1","11","Cambay","2013-11-03 12:11:46","0000-00-00 00:00:00");
INSERT INTO regions VALUES("336","1","11","Dahod","2013-11-03 12:11:46","0000-00-00 00:00:00");
INSERT INTO regions VALUES("337","1","11","Deesa","2013-11-03 12:11:46","0000-00-00 00:00:00");
INSERT INTO regions VALUES("338","1","11","Dharampur","2013-11-03 12:11:46","0000-00-00 00:00:00");
INSERT INTO regions VALUES("339","1","11","Dholka","2013-11-03 12:11:47","0000-00-00 00:00:00");
INSERT INTO regions VALUES("340","1","11","Gandhinagar","2013-11-03 12:11:47","0000-00-00 00:00:00");
INSERT INTO regions VALUES("341","1","11","Godhra","2013-11-03 12:11:47","0000-00-00 00:00:00");
INSERT INTO regions VALUES("342","1","11","Himatnagar","2013-11-03 12:11:47","0000-00-00 00:00:00");
INSERT INTO regions VALUES("343","1","11","Idar","2013-11-03 12:11:47","0000-00-00 00:00:00");
INSERT INTO regions VALUES("344","1","11","Jamnagar","2013-11-03 12:11:47","0000-00-00 00:00:00");
INSERT INTO regions VALUES("345","1","11","Junagadh","2013-11-03 12:11:47","0000-00-00 00:00:00");
INSERT INTO regions VALUES("346","1","11","Kadi","2013-11-03 12:11:47","0000-00-00 00:00:00");
INSERT INTO regions VALUES("347","1","11","Kalavad","2013-11-03 12:11:47","0000-00-00 00:00:00");
INSERT INTO regions VALUES("348","1","11","Kalol","2013-11-03 12:11:47","0000-00-00 00:00:00");
INSERT INTO regions VALUES("349","1","11","Kapadvanj","2013-11-03 12:11:47","0000-00-00 00:00:00");
INSERT INTO regions VALUES("350","1","11","Karjan","2013-11-03 12:11:47","0000-00-00 00:00:00");
INSERT INTO regions VALUES("351","1","11","Keshod","2013-11-03 12:11:47","0000-00-00 00:00:00");
INSERT INTO regions VALUES("352","1","11","Khambhalia","2013-11-03 12:11:47","0000-00-00 00:00:00");
INSERT INTO regions VALUES("353","1","11","Khambhat","2013-11-03 12:11:47","0000-00-00 00:00:00");
INSERT INTO regions VALUES("354","1","11","Kheda","2013-11-03 12:11:47","0000-00-00 00:00:00");
INSERT INTO regions VALUES("355","1","11","Khedbrahma","2013-11-03 12:11:47","0000-00-00 00:00:00");
INSERT INTO regions VALUES("356","1","11","Kheralu","2013-11-03 12:11:47","0000-00-00 00:00:00");
INSERT INTO regions VALUES("357","1","11","Kodinar","2013-11-03 12:11:47","0000-00-00 00:00:00");
INSERT INTO regions VALUES("358","1","11","Lathi","2013-11-03 12:11:47","0000-00-00 00:00:00");
INSERT INTO regions VALUES("359","1","11","Limbdi","2013-11-03 12:11:47","0000-00-00 00:00:00");
INSERT INTO regions VALUES("360","1","11","Lunawada","2013-11-03 12:11:47","0000-00-00 00:00:00");
INSERT INTO regions VALUES("361","1","11","Mahesana","2013-11-03 12:11:47","0000-00-00 00:00:00");
INSERT INTO regions VALUES("362","1","11","Mahuva","2013-11-03 12:11:47","0000-00-00 00:00:00");
INSERT INTO regions VALUES("363","1","11","Manavadar","2013-11-03 12:11:47","0000-00-00 00:00:00");
INSERT INTO regions VALUES("364","1","11","Mandvi","2013-11-03 12:11:47","0000-00-00 00:00:00");
INSERT INTO regions VALUES("365","1","11","Mangrol","2013-11-03 12:11:47","0000-00-00 00:00:00");
INSERT INTO regions VALUES("366","1","11","Mansa","2013-11-03 12:11:47","0000-00-00 00:00:00");
INSERT INTO regions VALUES("367","1","11","Mehmedabad","2013-11-03 12:11:47","0000-00-00 00:00:00");
INSERT INTO regions VALUES("368","1","11","Modasa","2013-11-03 12:11:47","0000-00-00 00:00:00");
INSERT INTO regions VALUES("369","1","11","Morvi","2013-11-03 12:11:47","0000-00-00 00:00:00");
INSERT INTO regions VALUES("370","1","11","Nadiad","2013-11-03 12:11:47","0000-00-00 00:00:00");
INSERT INTO regions VALUES("371","1","11","Navsari","2013-11-03 12:11:47","0000-00-00 00:00:00");
INSERT INTO regions VALUES("372","1","11","Padra","2013-11-03 12:11:47","0000-00-00 00:00:00");
INSERT INTO regions VALUES("373","1","11","Palanpur","2013-11-03 12:11:47","0000-00-00 00:00:00");
INSERT INTO regions VALUES("374","1","11","Palitana","2013-11-03 12:11:48","0000-00-00 00:00:00");
INSERT INTO regions VALUES("375","1","11","Pardi","2013-11-03 12:11:48","0000-00-00 00:00:00");
INSERT INTO regions VALUES("376","1","11","Patan","2013-11-03 12:11:48","0000-00-00 00:00:00");
INSERT INTO regions VALUES("377","1","11","Petlad","2013-11-03 12:11:48","0000-00-00 00:00:00");
INSERT INTO regions VALUES("378","1","11","Porbandar","2013-11-03 12:11:48","0000-00-00 00:00:00");
INSERT INTO regions VALUES("379","1","11","Radhanpur","2013-11-03 12:11:48","0000-00-00 00:00:00");
INSERT INTO regions VALUES("380","1","11","Rajkot","2013-11-03 12:11:48","0000-00-00 00:00:00");
INSERT INTO regions VALUES("381","1","11","Rajpipla","2013-11-03 12:11:48","0000-00-00 00:00:00");
INSERT INTO regions VALUES("382","1","11","Rajula","2013-11-03 12:11:48","0000-00-00 00:00:00");
INSERT INTO regions VALUES("383","1","11","Ranavav","2013-11-03 12:11:48","0000-00-00 00:00:00");
INSERT INTO regions VALUES("384","1","11","Rapar","2013-11-03 12:11:48","0000-00-00 00:00:00");
INSERT INTO regions VALUES("385","1","11","Salaya","2013-11-03 12:11:48","0000-00-00 00:00:00");
INSERT INTO regions VALUES("386","1","11","Sanand","2013-11-03 12:11:48","0000-00-00 00:00:00");
INSERT INTO regions VALUES("387","1","11","Savarkundla","2013-11-03 12:11:48","0000-00-00 00:00:00");
INSERT INTO regions VALUES("388","1","11","Sidhpur","2013-11-03 12:11:48","0000-00-00 00:00:00");
INSERT INTO regions VALUES("389","1","11","Sihor","2013-11-03 12:11:48","0000-00-00 00:00:00");
INSERT INTO regions VALUES("390","1","11","Songadh","2013-11-03 12:11:48","0000-00-00 00:00:00");
INSERT INTO regions VALUES("391","1","11","Surat","2013-11-03 12:11:48","0000-00-00 00:00:00");
INSERT INTO regions VALUES("392","1","11","Talaja","2013-11-03 12:11:48","0000-00-00 00:00:00");
INSERT INTO regions VALUES("393","1","11","Thangadh","2013-11-03 12:11:48","0000-00-00 00:00:00");
INSERT INTO regions VALUES("394","1","11","Tharad","2013-11-03 12:11:48","0000-00-00 00:00:00");
INSERT INTO regions VALUES("395","1","11","Umbergaon","2013-11-03 12:11:48","0000-00-00 00:00:00");
INSERT INTO regions VALUES("396","1","11","Umreth","2013-11-03 12:11:48","0000-00-00 00:00:00");
INSERT INTO regions VALUES("397","1","11","Una","2013-11-03 12:11:48","0000-00-00 00:00:00");
INSERT INTO regions VALUES("398","1","11","Unjha","2013-11-03 12:11:48","0000-00-00 00:00:00");
INSERT INTO regions VALUES("399","1","11","Upleta","2013-11-03 12:11:48","0000-00-00 00:00:00");
INSERT INTO regions VALUES("400","1","11","Vadnagar","2013-11-03 12:11:48","0000-00-00 00:00:00");
INSERT INTO regions VALUES("401","1","11","Vadodara","2013-11-03 12:11:48","0000-00-00 00:00:00");
INSERT INTO regions VALUES("402","1","11","Valsad","2013-11-03 12:11:48","0000-00-00 00:00:00");
INSERT INTO regions VALUES("403","1","11","Vapi","2013-11-03 12:11:48","0000-00-00 00:00:00");
INSERT INTO regions VALUES("404","1","11","Vapi","2013-11-03 12:11:48","0000-00-00 00:00:00");
INSERT INTO regions VALUES("405","1","11","Veraval","2013-11-03 12:11:48","0000-00-00 00:00:00");
INSERT INTO regions VALUES("406","1","11","Vijapur","2013-11-03 12:11:48","0000-00-00 00:00:00");
INSERT INTO regions VALUES("407","1","11","Viramgam","2013-11-03 12:11:48","0000-00-00 00:00:00");
INSERT INTO regions VALUES("408","1","11","Visnagar","2013-11-03 12:11:48","0000-00-00 00:00:00");
INSERT INTO regions VALUES("409","1","11","Vyara","2013-11-03 12:11:48","0000-00-00 00:00:00");
INSERT INTO regions VALUES("410","1","11","Wadhwan","2013-11-03 12:11:48","0000-00-00 00:00:00");
INSERT INTO regions VALUES("411","1","11","Wankaner","2013-11-03 12:11:48","0000-00-00 00:00:00");
INSERT INTO regions VALUES("412","1","11","Adalaj","2013-11-03 12:11:48","0000-00-00 00:00:00");
INSERT INTO regions VALUES("413","1","11","Adityana","2013-11-03 12:11:48","0000-00-00 00:00:00");
INSERT INTO regions VALUES("414","1","11","Alang","2013-11-03 12:11:48","0000-00-00 00:00:00");
INSERT INTO regions VALUES("415","1","11","Ambaji","2013-11-03 12:11:48","0000-00-00 00:00:00");
INSERT INTO regions VALUES("416","1","11","Ambaliyasan","2013-11-03 12:11:48","0000-00-00 00:00:00");
INSERT INTO regions VALUES("417","1","11","Andada","2013-11-03 12:11:48","0000-00-00 00:00:00");
INSERT INTO regions VALUES("418","1","11","Anjar","2013-11-03 12:11:48","0000-00-00 00:00:00");
INSERT INTO regions VALUES("419","1","11","Anklav","2013-11-03 12:11:48","0000-00-00 00:00:00");
INSERT INTO regions VALUES("420","1","11","Antaliya","2013-11-03 12:11:48","0000-00-00 00:00:00");
INSERT INTO regions VALUES("421","1","11","Arambhada","2013-11-03 12:11:48","0000-00-00 00:00:00");
INSERT INTO regions VALUES("422","1","11","Atul","2013-11-03 12:11:48","0000-00-00 00:00:00");
INSERT INTO regions VALUES("423","1","12","Ballabhgarh","2013-11-03 12:11:48","0000-00-00 00:00:00");
INSERT INTO regions VALUES("424","1","12","Ambala","2013-11-03 12:11:48","0000-00-00 00:00:00");
INSERT INTO regions VALUES("425","1","12","Ambala","2013-11-03 12:11:48","0000-00-00 00:00:00");
INSERT INTO regions VALUES("426","1","12","Asankhurd","2013-11-03 12:11:49","0000-00-00 00:00:00");
INSERT INTO regions VALUES("427","1","12","Assandh","2013-11-03 12:11:49","0000-00-00 00:00:00");
INSERT INTO regions VALUES("428","1","12","Ateli","2013-11-03 12:11:49","0000-00-00 00:00:00");
INSERT INTO regions VALUES("429","1","12","Babiyal","2013-11-03 12:11:49","0000-00-00 00:00:00");
INSERT INTO regions VALUES("430","1","12","Bahadurgarh","2013-11-03 12:11:49","0000-00-00 00:00:00");
INSERT INTO regions VALUES("431","1","12","Barwala","2013-11-03 12:11:49","0000-00-00 00:00:00");
INSERT INTO regions VALUES("432","1","12","Bhiwani","2013-11-03 12:11:49","0000-00-00 00:00:00");
INSERT INTO regions VALUES("433","1","12","Charkhi dadri","2013-11-03 12:11:49","0000-00-00 00:00:00");
INSERT INTO regions VALUES("434","1","12","Cheeka","2013-11-03 12:11:49","0000-00-00 00:00:00");
INSERT INTO regions VALUES("435","1","12","Ellenabad 2","2013-11-03 12:11:49","0000-00-00 00:00:00");
INSERT INTO regions VALUES("436","1","12","Faridabad","2013-11-03 12:11:49","0000-00-00 00:00:00");
INSERT INTO regions VALUES("437","1","12","Fatehabad","2013-11-03 12:11:49","0000-00-00 00:00:00");
INSERT INTO regions VALUES("438","1","12","Ganaur","2013-11-03 12:11:49","0000-00-00 00:00:00");
INSERT INTO regions VALUES("439","1","12","Gharaunda","2013-11-03 12:11:49","0000-00-00 00:00:00");
INSERT INTO regions VALUES("440","1","12","Gohana","2013-11-03 12:11:49","0000-00-00 00:00:00");
INSERT INTO regions VALUES("441","1","12","Gurgaon","2013-11-03 12:11:49","0000-00-00 00:00:00");
INSERT INTO regions VALUES("442","1","12","Haibat(yamuna nagar)","2013-11-03 12:11:49","0000-00-00 00:00:00");
INSERT INTO regions VALUES("443","1","12","Hansi","2013-11-03 12:11:49","0000-00-00 00:00:00");
INSERT INTO regions VALUES("444","1","12","Hisar","2013-11-03 12:11:49","0000-00-00 00:00:00");
INSERT INTO regions VALUES("445","1","12","Hodal","2013-11-03 12:11:49","0000-00-00 00:00:00");
INSERT INTO regions VALUES("446","1","12","Jhajjar","2013-11-03 12:11:49","0000-00-00 00:00:00");
INSERT INTO regions VALUES("447","1","12","Jind","2013-11-03 12:11:49","0000-00-00 00:00:00");
INSERT INTO regions VALUES("448","1","12","Kaithal","2013-11-03 12:11:49","0000-00-00 00:00:00");
INSERT INTO regions VALUES("449","1","12","Kalan wali","2013-11-03 12:11:49","0000-00-00 00:00:00");
INSERT INTO regions VALUES("450","1","12","Kalka","2013-11-03 12:11:49","0000-00-00 00:00:00");
INSERT INTO regions VALUES("451","1","12","Karnal","2013-11-03 12:11:49","0000-00-00 00:00:00");
INSERT INTO regions VALUES("452","1","12","Ladwa","2013-11-03 12:11:49","0000-00-00 00:00:00");
INSERT INTO regions VALUES("453","1","12","Mahendragarh","2013-11-03 12:11:49","0000-00-00 00:00:00");
INSERT INTO regions VALUES("454","1","12","Mandi dabwali","2013-11-03 12:11:49","0000-00-00 00:00:00");
INSERT INTO regions VALUES("455","1","12","Narnaul","2013-11-03 12:11:49","0000-00-00 00:00:00");
INSERT INTO regions VALUES("456","1","12","Narwana","2013-11-03 12:11:49","0000-00-00 00:00:00");
INSERT INTO regions VALUES("457","1","12","Palwal","2013-11-03 12:11:49","0000-00-00 00:00:00");
INSERT INTO regions VALUES("458","1","12","Panchkula","2013-11-03 12:11:49","0000-00-00 00:00:00");
INSERT INTO regions VALUES("459","1","12","Panipat","2013-11-03 12:11:49","0000-00-00 00:00:00");
INSERT INTO regions VALUES("460","1","12","Pehowa","2013-11-03 12:11:49","0000-00-00 00:00:00");
INSERT INTO regions VALUES("461","1","12","Pinjore","2013-11-03 12:11:49","0000-00-00 00:00:00");
INSERT INTO regions VALUES("462","1","12","Rania","2013-11-03 12:11:49","0000-00-00 00:00:00");
INSERT INTO regions VALUES("463","1","12","Ratia","2013-11-03 12:11:49","0000-00-00 00:00:00");
INSERT INTO regions VALUES("464","1","12","Rewari","2013-11-03 12:11:49","0000-00-00 00:00:00");
INSERT INTO regions VALUES("465","1","12","Rohtak","2013-11-03 12:11:49","0000-00-00 00:00:00");
INSERT INTO regions VALUES("466","1","12","Safidon","2013-11-03 12:11:49","0000-00-00 00:00:00");
INSERT INTO regions VALUES("467","1","12","Samalkha","2013-11-03 12:11:49","0000-00-00 00:00:00");
INSERT INTO regions VALUES("468","1","12","Shahbad","2013-11-03 12:11:49","0000-00-00 00:00:00");
INSERT INTO regions VALUES("469","1","12","Sirsa","2013-11-03 12:11:49","0000-00-00 00:00:00");
INSERT INTO regions VALUES("470","1","12","Sohna","2013-11-03 12:11:50","0000-00-00 00:00:00");
INSERT INTO regions VALUES("471","1","12","Sonipat","2013-11-03 12:11:50","0000-00-00 00:00:00");
INSERT INTO regions VALUES("472","1","12","Taraori","2013-11-03 12:11:50","0000-00-00 00:00:00");
INSERT INTO regions VALUES("473","1","12","Thanesar","2013-11-03 12:11:50","0000-00-00 00:00:00");
INSERT INTO regions VALUES("474","1","12","Tohana","2013-11-03 12:11:50","0000-00-00 00:00:00");
INSERT INTO regions VALUES("475","1","12","Yamunanagar","2013-11-03 12:11:50","0000-00-00 00:00:00");
INSERT INTO regions VALUES("476","1","13","Arki","2013-11-03 12:11:50","0000-00-00 00:00:00");
INSERT INTO regions VALUES("477","1","13","Baddi","2013-11-03 12:11:50","0000-00-00 00:00:00");
INSERT INTO regions VALUES("478","1","13","Bilaspur","2013-11-03 12:11:50","0000-00-00 00:00:00");
INSERT INTO regions VALUES("479","1","13","Chamba","2013-11-03 12:11:50","0000-00-00 00:00:00");
INSERT INTO regions VALUES("480","1","13","Dalhousie","2013-11-03 12:11:50","0000-00-00 00:00:00");
INSERT INTO regions VALUES("481","1","13","Dharamsala","2013-11-03 12:11:50","0000-00-00 00:00:00");
INSERT INTO regions VALUES("482","1","13","Hamirpur","2013-11-03 12:11:50","0000-00-00 00:00:00");
INSERT INTO regions VALUES("483","1","13","Mandi","2013-11-03 12:11:50","0000-00-00 00:00:00");
INSERT INTO regions VALUES("484","1","13","Nahan","2013-11-03 12:11:50","0000-00-00 00:00:00");
INSERT INTO regions VALUES("485","1","13","Shimla","2013-11-03 12:11:50","0000-00-00 00:00:00");
INSERT INTO regions VALUES("486","1","13","Solan","2013-11-03 12:11:50","0000-00-00 00:00:00");
INSERT INTO regions VALUES("487","1","13","Sundarnagar","2013-11-03 12:11:50","0000-00-00 00:00:00");
INSERT INTO regions VALUES("488","1","14","Jammu","2013-11-03 12:11:50","0000-00-00 00:00:00");
INSERT INTO regions VALUES("489","1","14","Achabbal","2013-11-03 12:11:50","0000-00-00 00:00:00");
INSERT INTO regions VALUES("490","1","14","Akhnoor","2013-11-03 12:11:50","0000-00-00 00:00:00");
INSERT INTO regions VALUES("491","1","14","Anantnag","2013-11-03 12:11:50","0000-00-00 00:00:00");
INSERT INTO regions VALUES("492","1","14","Arnia","2013-11-03 12:11:50","0000-00-00 00:00:00");
INSERT INTO regions VALUES("493","1","14","Awantipora","2013-11-03 12:11:50","0000-00-00 00:00:00");
INSERT INTO regions VALUES("494","1","14","Bandipore","2013-11-03 12:11:50","0000-00-00 00:00:00");
INSERT INTO regions VALUES("495","1","14","Baramula","2013-11-03 12:11:50","0000-00-00 00:00:00");
INSERT INTO regions VALUES("496","1","14","Kathua","2013-11-03 12:11:50","0000-00-00 00:00:00");
INSERT INTO regions VALUES("497","1","14","Leh","2013-11-03 12:11:50","0000-00-00 00:00:00");
INSERT INTO regions VALUES("498","1","14","Punch","2013-11-03 12:11:50","0000-00-00 00:00:00");
INSERT INTO regions VALUES("499","1","14","Rajauri","2013-11-03 12:11:50","0000-00-00 00:00:00");
INSERT INTO regions VALUES("500","1","14","Sopore","2013-11-03 12:11:50","0000-00-00 00:00:00");
INSERT INTO regions VALUES("501","1","14","Srinagar","2013-11-03 12:11:50","0000-00-00 00:00:00");
INSERT INTO regions VALUES("502","1","14","Udhampur","2013-11-03 12:11:50","0000-00-00 00:00:00");
INSERT INTO regions VALUES("503","1","15","Amlabad","2013-11-03 12:11:50","0000-00-00 00:00:00");
INSERT INTO regions VALUES("504","1","15","Ara","2013-11-03 12:11:50","0000-00-00 00:00:00");
INSERT INTO regions VALUES("505","1","15","Barughutu","2013-11-03 12:11:50","0000-00-00 00:00:00");
INSERT INTO regions VALUES("506","1","15","Bokaro steel city","2013-11-03 12:11:50","0000-00-00 00:00:00");
INSERT INTO regions VALUES("507","1","15","Chaibasa","2013-11-03 12:11:50","0000-00-00 00:00:00");
INSERT INTO regions VALUES("508","1","15","Chakradharpur","2013-11-03 12:11:50","0000-00-00 00:00:00");
INSERT INTO regions VALUES("509","1","15","Chandrapura","2013-11-03 12:11:50","0000-00-00 00:00:00");
INSERT INTO regions VALUES("510","1","15","Chatra","2013-11-03 12:11:50","0000-00-00 00:00:00");
INSERT INTO regions VALUES("511","1","15","Chirkunda","2013-11-03 12:11:50","0000-00-00 00:00:00");
INSERT INTO regions VALUES("512","1","15","Churi","2013-11-03 12:11:50","0000-00-00 00:00:00");
INSERT INTO regions VALUES("513","1","15","Daltonganj","2013-11-03 12:11:50","0000-00-00 00:00:00");
INSERT INTO regions VALUES("514","1","15","Deoghar","2013-11-03 12:11:50","0000-00-00 00:00:00");
INSERT INTO regions VALUES("515","1","15","Dhanbad","2013-11-03 12:11:50","0000-00-00 00:00:00");
INSERT INTO regions VALUES("516","1","15","Dumka","2013-11-03 12:11:50","0000-00-00 00:00:00");
INSERT INTO regions VALUES("517","1","15","Garhwa","2013-11-03 12:11:50","0000-00-00 00:00:00");
INSERT INTO regions VALUES("518","1","15","Ghatshila","2013-11-03 12:11:50","0000-00-00 00:00:00");
INSERT INTO regions VALUES("519","1","15","Giridih","2013-11-03 12:11:50","0000-00-00 00:00:00");
INSERT INTO regions VALUES("520","1","15","Godda","2013-11-03 12:11:50","0000-00-00 00:00:00");
INSERT INTO regions VALUES("521","1","15","Gomoh","2013-11-03 12:11:50","0000-00-00 00:00:00");
INSERT INTO regions VALUES("522","1","15","Gumia","2013-11-03 12:11:51","0000-00-00 00:00:00");
INSERT INTO regions VALUES("523","1","15","Gumla","2013-11-03 12:11:51","0000-00-00 00:00:00");
INSERT INTO regions VALUES("524","1","15","Hazaribag","2013-11-03 12:11:51","0000-00-00 00:00:00");
INSERT INTO regions VALUES("525","1","15","Hussainabad","2013-11-03 12:11:51","0000-00-00 00:00:00");
INSERT INTO regions VALUES("526","1","15","Jamshedpur","2013-11-03 12:11:51","0000-00-00 00:00:00");
INSERT INTO regions VALUES("527","1","15","Jamtara","2013-11-03 12:11:51","0000-00-00 00:00:00");
INSERT INTO regions VALUES("528","1","15","Jhumri tilaiya","2013-11-03 12:11:51","0000-00-00 00:00:00");
INSERT INTO regions VALUES("529","1","15","Khunti","2013-11-03 12:11:51","0000-00-00 00:00:00");
INSERT INTO regions VALUES("530","1","15","Lohardaga","2013-11-03 12:11:51","0000-00-00 00:00:00");
INSERT INTO regions VALUES("531","1","15","Madhupur","2013-11-03 12:11:51","0000-00-00 00:00:00");
INSERT INTO regions VALUES("532","1","15","Mihijam","2013-11-03 12:11:51","0000-00-00 00:00:00");
INSERT INTO regions VALUES("533","1","15","Musabani","2013-11-03 12:11:51","0000-00-00 00:00:00");
INSERT INTO regions VALUES("534","1","15","Pakaur","2013-11-03 12:11:51","0000-00-00 00:00:00");
INSERT INTO regions VALUES("535","1","15","Patratu","2013-11-03 12:11:51","0000-00-00 00:00:00");
INSERT INTO regions VALUES("536","1","15","Phusro","2013-11-03 12:11:51","0000-00-00 00:00:00");
INSERT INTO regions VALUES("537","1","15","Ramngarh","2013-11-03 12:11:51","0000-00-00 00:00:00");
INSERT INTO regions VALUES("538","1","15","Ranchi","2013-11-03 12:11:51","0000-00-00 00:00:00");
INSERT INTO regions VALUES("539","1","15","Sahibganj","2013-11-03 12:11:51","0000-00-00 00:00:00");
INSERT INTO regions VALUES("540","1","15","Saunda","2013-11-03 12:11:51","0000-00-00 00:00:00");
INSERT INTO regions VALUES("541","1","15","Simdega","2013-11-03 12:11:51","0000-00-00 00:00:00");
INSERT INTO regions VALUES("542","1","15","Tenu dam-cum- kathhara","2013-11-03 12:11:51","0000-00-00 00:00:00");
INSERT INTO regions VALUES("543","1","16","Arasikere","2013-11-03 12:11:51","0000-00-00 00:00:00");
INSERT INTO regions VALUES("544","1","16","Bangalore","2013-11-03 12:11:51","0000-00-00 00:00:00");
INSERT INTO regions VALUES("545","1","16","Belgaum","2013-11-03 12:11:51","0000-00-00 00:00:00");
INSERT INTO regions VALUES("546","1","16","Bellary","2013-11-03 12:11:51","0000-00-00 00:00:00");
INSERT INTO regions VALUES("547","1","16","Chamrajnagar","2013-11-03 12:11:51","0000-00-00 00:00:00");
INSERT INTO regions VALUES("548","1","16","Chikkaballapur","2013-11-03 12:11:51","0000-00-00 00:00:00");
INSERT INTO regions VALUES("549","1","16","Chintamani","2013-11-03 12:11:51","0000-00-00 00:00:00");
INSERT INTO regions VALUES("550","1","16","Chitradurga","2013-11-03 12:11:52","0000-00-00 00:00:00");
INSERT INTO regions VALUES("551","1","16","Gulbarga","2013-11-03 12:11:52","0000-00-00 00:00:00");
INSERT INTO regions VALUES("552","1","16","Gundlupet","2013-11-03 12:11:52","0000-00-00 00:00:00");
INSERT INTO regions VALUES("553","1","16","Hassan","2013-11-03 12:11:52","0000-00-00 00:00:00");
INSERT INTO regions VALUES("554","1","16","Hospet","2013-11-03 12:11:52","0000-00-00 00:00:00");
INSERT INTO regions VALUES("555","1","16","Hubli","2013-11-03 12:11:52","0000-00-00 00:00:00");
INSERT INTO regions VALUES("556","1","16","Karkala","2013-11-03 12:11:52","0000-00-00 00:00:00");
INSERT INTO regions VALUES("557","1","16","Karwar","2013-11-03 12:11:52","0000-00-00 00:00:00");
INSERT INTO regions VALUES("558","1","16","Kolar","2013-11-03 12:11:54","0000-00-00 00:00:00");
INSERT INTO regions VALUES("559","1","16","Kota","2013-11-03 12:11:54","0000-00-00 00:00:00");
INSERT INTO regions VALUES("560","1","16","Lakshmeshwar","2013-11-03 12:11:54","0000-00-00 00:00:00");
INSERT INTO regions VALUES("561","1","16","Lingsugur","2013-11-03 12:11:54","0000-00-00 00:00:00");
INSERT INTO regions VALUES("562","1","16","Maddur","2013-11-03 12:11:54","0000-00-00 00:00:00");
INSERT INTO regions VALUES("563","1","16","Madhugiri","2013-11-03 12:11:54","0000-00-00 00:00:00");
INSERT INTO regions VALUES("564","1","16","Madikeri","2013-11-03 12:11:54","0000-00-00 00:00:00");
INSERT INTO regions VALUES("565","1","16","Magadi","2013-11-03 12:11:54","0000-00-00 00:00:00");
INSERT INTO regions VALUES("566","1","16","Mahalingpur","2013-11-03 12:11:54","0000-00-00 00:00:00");
INSERT INTO regions VALUES("567","1","16","Malavalli","2013-11-03 12:11:54","0000-00-00 00:00:00");
INSERT INTO regions VALUES("568","1","16","Malur","2013-11-03 12:11:54","0000-00-00 00:00:00");
INSERT INTO regions VALUES("569","1","16","Mandya","2013-11-03 12:11:54","0000-00-00 00:00:00");
INSERT INTO regions VALUES("570","1","16","Mangalore","2013-11-03 12:11:54","0000-00-00 00:00:00");
INSERT INTO regions VALUES("571","1","16","Manvi","2013-11-03 12:11:54","0000-00-00 00:00:00");
INSERT INTO regions VALUES("572","1","16","Mudalgi","2013-11-03 12:11:54","0000-00-00 00:00:00");
INSERT INTO regions VALUES("573","1","16","Mudbidri","2013-11-03 12:11:54","0000-00-00 00:00:00");
INSERT INTO regions VALUES("574","1","16","Muddebihal","2013-11-03 12:11:54","0000-00-00 00:00:00");
INSERT INTO regions VALUES("575","1","16","Mudhol","2013-11-03 12:11:54","0000-00-00 00:00:00");
INSERT INTO regions VALUES("576","1","16","Mulbagal","2013-11-03 12:11:55","0000-00-00 00:00:00");
INSERT INTO regions VALUES("577","1","16","Mundargi","2013-11-03 12:11:55","0000-00-00 00:00:00");
INSERT INTO regions VALUES("578","1","16","Mysore","2013-11-03 12:11:55","0000-00-00 00:00:00");
INSERT INTO regions VALUES("579","1","16","Nanjangud","2013-11-03 12:11:55","0000-00-00 00:00:00");
INSERT INTO regions VALUES("580","1","16","Pavagada","2013-11-03 12:11:55","0000-00-00 00:00:00");
INSERT INTO regions VALUES("581","1","16","Puttur","2013-11-03 12:11:55","0000-00-00 00:00:00");
INSERT INTO regions VALUES("582","1","16","Rabkavi banhatti","2013-11-03 12:11:55","0000-00-00 00:00:00");
INSERT INTO regions VALUES("583","1","16","Raichur","2013-11-03 12:11:55","0000-00-00 00:00:00");
INSERT INTO regions VALUES("584","1","16","Ramanagaram","2013-11-03 12:11:55","0000-00-00 00:00:00");
INSERT INTO regions VALUES("585","1","16","Ramdurg","2013-11-03 12:11:55","0000-00-00 00:00:00");
INSERT INTO regions VALUES("586","1","16","Ranibennur","2013-11-03 12:11:55","0000-00-00 00:00:00");
INSERT INTO regions VALUES("587","1","16","Robertson pet","2013-11-03 12:11:55","0000-00-00 00:00:00");
INSERT INTO regions VALUES("588","1","16","Ron","2013-11-03 12:11:55","0000-00-00 00:00:00");
INSERT INTO regions VALUES("589","1","16","Sadalgi","2013-11-03 12:11:55","0000-00-00 00:00:00");
INSERT INTO regions VALUES("590","1","16","Sagar","2013-11-03 12:11:55","0000-00-00 00:00:00");
INSERT INTO regions VALUES("591","1","16","Sakleshpur","2013-11-03 12:11:55","0000-00-00 00:00:00");
INSERT INTO regions VALUES("592","1","16","Sandur","2013-11-03 12:11:55","0000-00-00 00:00:00");
INSERT INTO regions VALUES("593","1","16","Sankeshwar","2013-11-03 12:11:55","0000-00-00 00:00:00");
INSERT INTO regions VALUES("594","1","16","Saundatti-yellamma","2013-11-03 12:11:55","0000-00-00 00:00:00");
INSERT INTO regions VALUES("595","1","16","Savanur","2013-11-03 12:11:55","0000-00-00 00:00:00");
INSERT INTO regions VALUES("596","1","16","Sedam","2013-11-03 12:11:55","0000-00-00 00:00:00");
INSERT INTO regions VALUES("597","1","16","Shahabad","2013-11-03 12:11:55","0000-00-00 00:00:00");
INSERT INTO regions VALUES("598","1","16","Shahpur","2013-11-03 12:11:55","0000-00-00 00:00:00");
INSERT INTO regions VALUES("599","1","16","Shiggaon","2013-11-03 12:11:55","0000-00-00 00:00:00");
INSERT INTO regions VALUES("600","1","16","Shikapur","2013-11-03 12:11:55","0000-00-00 00:00:00");
INSERT INTO regions VALUES("601","1","16","Shimoga","2013-11-03 12:11:55","0000-00-00 00:00:00");
INSERT INTO regions VALUES("602","1","16","Shorapur","2013-11-03 12:11:55","0000-00-00 00:00:00");
INSERT INTO regions VALUES("603","1","16","Shrirangapattana","2013-11-03 12:11:55","0000-00-00 00:00:00");
INSERT INTO regions VALUES("604","1","16","Sidlaghatta","2013-11-03 12:11:55","0000-00-00 00:00:00");
INSERT INTO regions VALUES("605","1","16","Sindgi","2013-11-03 12:11:55","0000-00-00 00:00:00");
INSERT INTO regions VALUES("606","1","16","Sindhnur","2013-11-03 12:11:55","0000-00-00 00:00:00");
INSERT INTO regions VALUES("607","1","16","Sira","2013-11-03 12:11:56","0000-00-00 00:00:00");
INSERT INTO regions VALUES("608","1","16","Sirsi","2013-11-03 12:11:56","0000-00-00 00:00:00");
INSERT INTO regions VALUES("609","1","16","Siruguppa","2013-11-03 12:11:56","0000-00-00 00:00:00");
INSERT INTO regions VALUES("610","1","16","Srinivaspur","2013-11-03 12:11:56","0000-00-00 00:00:00");
INSERT INTO regions VALUES("611","1","16","Talikota","2013-11-03 12:11:56","0000-00-00 00:00:00");
INSERT INTO regions VALUES("612","1","16","Tarikere","2013-11-03 12:11:56","0000-00-00 00:00:00");
INSERT INTO regions VALUES("613","1","16","Tekkalakota","2013-11-03 12:11:56","0000-00-00 00:00:00");
INSERT INTO regions VALUES("614","1","16","Terdal","2013-11-03 12:11:56","0000-00-00 00:00:00");
INSERT INTO regions VALUES("615","1","16","Tiptur","2013-11-03 12:11:56","0000-00-00 00:00:00");
INSERT INTO regions VALUES("616","1","16","Tumkur","2013-11-03 12:11:56","0000-00-00 00:00:00");
INSERT INTO regions VALUES("617","1","16","Udupi","2013-11-03 12:11:56","0000-00-00 00:00:00");
INSERT INTO regions VALUES("618","1","16","Vijayapura","2013-11-03 12:11:56","0000-00-00 00:00:00");
INSERT INTO regions VALUES("619","1","16","Wadi","2013-11-03 12:11:56","0000-00-00 00:00:00");
INSERT INTO regions VALUES("620","1","16","Yadgir","2013-11-03 12:11:56","0000-00-00 00:00:00");
INSERT INTO regions VALUES("621","1","16","Chikmagalur","2013-11-03 12:11:56","0000-00-00 00:00:00");
INSERT INTO regions VALUES("622","1","16","Davanagere","2013-11-03 12:11:56","0000-00-00 00:00:00");
INSERT INTO regions VALUES("623","1","16","Dharwad","2013-11-03 12:11:56","0000-00-00 00:00:00");
INSERT INTO regions VALUES("624","1","16","Gadag","2013-11-03 12:11:56","0000-00-00 00:00:00");
INSERT INTO regions VALUES("625","1","17","Adoor","2013-11-03 12:11:56","0000-00-00 00:00:00");
INSERT INTO regions VALUES("626","1","17","Akathiyoor","2013-11-03 12:11:56","0000-00-00 00:00:00");
INSERT INTO regions VALUES("627","1","17","Alappuzha","2013-11-03 12:11:56","0000-00-00 00:00:00");
INSERT INTO regions VALUES("628","1","17","Ancharakandy","2013-11-03 12:11:56","0000-00-00 00:00:00");
INSERT INTO regions VALUES("629","1","17","Aroor","2013-11-03 12:11:56","0000-00-00 00:00:00");
INSERT INTO regions VALUES("630","1","17","Ashtamichira","2013-11-03 12:11:56","0000-00-00 00:00:00");
INSERT INTO regions VALUES("631","1","17","Attingal","2013-11-03 12:11:57","0000-00-00 00:00:00");
INSERT INTO regions VALUES("632","1","17","Avinissery","2013-11-03 12:11:57","0000-00-00 00:00:00");
INSERT INTO regions VALUES("633","1","17","Chalakudy","2013-11-03 12:11:57","0000-00-00 00:00:00");
INSERT INTO regions VALUES("634","1","17","Changanassery","2013-11-03 12:11:57","0000-00-00 00:00:00");
INSERT INTO regions VALUES("635","1","17","Chendamangalam","2013-11-03 12:11:57","0000-00-00 00:00:00");
INSERT INTO regions VALUES("636","1","17","Chengannur","2013-11-03 12:11:57","0000-00-00 00:00:00");
INSERT INTO regions VALUES("637","1","17","Cherthala","2013-11-03 12:11:57","0000-00-00 00:00:00");
INSERT INTO regions VALUES("638","1","17","Cheruthazham","2013-11-03 12:11:57","0000-00-00 00:00:00");
INSERT INTO regions VALUES("639","1","17","Chittur-thathamangalam","2013-11-03 12:11:57","0000-00-00 00:00:00");
INSERT INTO regions VALUES("640","1","17","Chockli","2013-11-03 12:11:57","0000-00-00 00:00:00");
INSERT INTO regions VALUES("641","1","17","Erattupetta","2013-11-03 12:11:57","0000-00-00 00:00:00");
INSERT INTO regions VALUES("642","1","17","Guruvayoor","2013-11-03 12:11:57","0000-00-00 00:00:00");
INSERT INTO regions VALUES("643","1","17","Irinjalakuda","2013-11-03 12:11:57","0000-00-00 00:00:00");
INSERT INTO regions VALUES("644","1","17","Kadirur","2013-11-03 12:11:57","0000-00-00 00:00:00");
INSERT INTO regions VALUES("645","1","17","Kalliasseri","2013-11-03 12:11:57","0000-00-00 00:00:00");
INSERT INTO regions VALUES("646","1","17","Kalpetta","2013-11-03 12:11:57","0000-00-00 00:00:00");
INSERT INTO regions VALUES("647","1","17","Kanhangad","2013-11-03 12:11:57","0000-00-00 00:00:00");
INSERT INTO regions VALUES("648","1","17","Kanjikkuzhi","2013-11-03 12:11:57","0000-00-00 00:00:00");
INSERT INTO regions VALUES("649","1","17","Kannur","2013-11-03 12:11:57","0000-00-00 00:00:00");
INSERT INTO regions VALUES("650","1","17","Kasaragod","2013-11-03 12:11:57","0000-00-00 00:00:00");
INSERT INTO regions VALUES("651","1","17","Kayamkulam","2013-11-03 12:11:57","0000-00-00 00:00:00");
INSERT INTO regions VALUES("652","1","17","Kochi","2013-11-03 12:11:57","0000-00-00 00:00:00");
INSERT INTO regions VALUES("653","1","17","Kodungallur","2013-11-03 12:11:57","0000-00-00 00:00:00");
INSERT INTO regions VALUES("654","1","17","Kollam","2013-11-03 12:11:57","0000-00-00 00:00:00");
INSERT INTO regions VALUES("655","1","17","Koothuparamba","2013-11-03 12:11:57","0000-00-00 00:00:00");
INSERT INTO regions VALUES("656","1","17","Kothamangalam","2013-11-03 12:11:57","0000-00-00 00:00:00");
INSERT INTO regions VALUES("657","1","17","Kottayam","2013-11-03 12:11:57","0000-00-00 00:00:00");
INSERT INTO regions VALUES("658","1","17","Kozhikode","2013-11-03 12:11:57","0000-00-00 00:00:00");
INSERT INTO regions VALUES("659","1","17","Kunnamkulam","2013-11-03 12:11:57","0000-00-00 00:00:00");
INSERT INTO regions VALUES("660","1","17","Malappuram","2013-11-03 12:11:57","0000-00-00 00:00:00");
INSERT INTO regions VALUES("661","1","17","Mattannur","2013-11-03 12:11:57","0000-00-00 00:00:00");
INSERT INTO regions VALUES("662","1","17","Mavelikkara","2013-11-03 12:11:57","0000-00-00 00:00:00");
INSERT INTO regions VALUES("663","1","17","Mavoor","2013-11-03 12:11:57","0000-00-00 00:00:00");
INSERT INTO regions VALUES("664","1","17","Muvattupuzha","2013-11-03 12:11:57","0000-00-00 00:00:00");
INSERT INTO regions VALUES("665","1","17","Nedumangad","2013-11-03 12:11:58","0000-00-00 00:00:00");
INSERT INTO regions VALUES("666","1","17","Neyyattinkara","2013-11-03 12:11:58","0000-00-00 00:00:00");
INSERT INTO regions VALUES("667","1","17","Ottappalam","2013-11-03 12:11:58","0000-00-00 00:00:00");
INSERT INTO regions VALUES("668","1","17","Palai","2013-11-03 12:11:58","0000-00-00 00:00:00");
INSERT INTO regions VALUES("669","1","17","Palakkad","2013-11-03 12:11:58","0000-00-00 00:00:00");
INSERT INTO regions VALUES("670","1","17","Panniyannur","2013-11-03 12:11:58","0000-00-00 00:00:00");
INSERT INTO regions VALUES("671","1","17","Pappinisseri","2013-11-03 12:11:58","0000-00-00 00:00:00");
INSERT INTO regions VALUES("672","1","17","Paravoor","2013-11-03 12:11:58","0000-00-00 00:00:00");
INSERT INTO regions VALUES("673","1","17","Pathanamthitta","2013-11-03 12:11:58","0000-00-00 00:00:00");
INSERT INTO regions VALUES("674","1","17","Payyannur","2013-11-03 12:11:58","0000-00-00 00:00:00");
INSERT INTO regions VALUES("675","1","17","Peringathur","2013-11-03 12:11:58","0000-00-00 00:00:00");
INSERT INTO regions VALUES("676","1","17","Perinthalmanna","2013-11-03 12:11:58","0000-00-00 00:00:00");
INSERT INTO regions VALUES("677","1","17","Perumbavoor","2013-11-03 12:11:58","0000-00-00 00:00:00");
INSERT INTO regions VALUES("678","1","17","Ponnani","2013-11-03 12:11:58","0000-00-00 00:00:00");
INSERT INTO regions VALUES("679","1","17","Punalur","2013-11-03 12:11:58","0000-00-00 00:00:00");
INSERT INTO regions VALUES("680","1","17","Quilandy","2013-11-03 12:11:58","0000-00-00 00:00:00");
INSERT INTO regions VALUES("681","1","17","Shoranur","2013-11-03 12:11:58","0000-00-00 00:00:00");
INSERT INTO regions VALUES("682","1","17","Taliparamba","2013-11-03 12:11:58","0000-00-00 00:00:00");
INSERT INTO regions VALUES("683","1","17","Thiruvalla","2013-11-03 12:11:58","0000-00-00 00:00:00");
INSERT INTO regions VALUES("684","1","17","Thiruvananthapuram","2013-11-03 12:11:58","0000-00-00 00:00:00");
INSERT INTO regions VALUES("685","1","17","Thodupuzha","2013-11-03 12:11:58","0000-00-00 00:00:00");
INSERT INTO regions VALUES("686","1","17","Thrissur","2013-11-03 12:11:58","0000-00-00 00:00:00");
INSERT INTO regions VALUES("687","1","17","Tirur","2013-11-03 12:11:58","0000-00-00 00:00:00");
INSERT INTO regions VALUES("688","1","17","Vadakara","2013-11-03 12:11:58","0000-00-00 00:00:00");
INSERT INTO regions VALUES("689","1","17","Vaikom","2013-11-03 12:11:58","0000-00-00 00:00:00");
INSERT INTO regions VALUES("690","1","17","Varkala","2013-11-03 12:11:58","0000-00-00 00:00:00");
INSERT INTO regions VALUES("691","1","18","Kavaratti","2013-11-03 12:11:58","0000-00-00 00:00:00");
INSERT INTO regions VALUES("692","1","19","Ashok nagar","2013-11-03 12:11:58","0000-00-00 00:00:00");
INSERT INTO regions VALUES("693","1","19","Balaghat","2013-11-03 12:11:58","0000-00-00 00:00:00");
INSERT INTO regions VALUES("694","1","19","Betul","2013-11-03 12:11:59","0000-00-00 00:00:00");
INSERT INTO regions VALUES("695","1","19","Bhopal","2013-11-03 12:11:59","0000-00-00 00:00:00");
INSERT INTO regions VALUES("696","1","19","Burhanpur","2013-11-03 12:11:59","0000-00-00 00:00:00");
INSERT INTO regions VALUES("697","1","19","Chhatarpur","2013-11-03 12:11:59","0000-00-00 00:00:00");
INSERT INTO regions VALUES("698","1","19","Dabra","2013-11-03 12:11:59","0000-00-00 00:00:00");
INSERT INTO regions VALUES("699","1","19","Datia","2013-11-03 12:11:59","0000-00-00 00:00:00");
INSERT INTO regions VALUES("700","1","19","Dewas","2013-11-03 12:11:59","0000-00-00 00:00:00");
INSERT INTO regions VALUES("701","1","19","Dhar","2013-11-03 12:11:59","0000-00-00 00:00:00");
INSERT INTO regions VALUES("702","1","19","Fatehabad","2013-11-03 12:11:59","0000-00-00 00:00:00");
INSERT INTO regions VALUES("703","1","19","Gwalior","2013-11-03 12:11:59","0000-00-00 00:00:00");
INSERT INTO regions VALUES("704","1","19","Indore","2013-11-03 12:11:59","0000-00-00 00:00:00");
INSERT INTO regions VALUES("705","1","19","Itarsi","2013-11-03 12:11:59","0000-00-00 00:00:00");
INSERT INTO regions VALUES("706","1","19","Jabalpur","2013-11-03 12:11:59","0000-00-00 00:00:00");
INSERT INTO regions VALUES("707","1","19","Katni","2013-11-03 12:11:59","0000-00-00 00:00:00");
INSERT INTO regions VALUES("708","1","19","Kotma","2013-11-03 12:11:59","0000-00-00 00:00:00");
INSERT INTO regions VALUES("709","1","19","Lahar","2013-11-03 12:11:59","0000-00-00 00:00:00");
INSERT INTO regions VALUES("710","1","19","Lundi","2013-11-03 12:11:59","0000-00-00 00:00:00");
INSERT INTO regions VALUES("711","1","19","Maharajpur","2013-11-03 12:11:59","0000-00-00 00:00:00");
INSERT INTO regions VALUES("712","1","19","Mahidpur","2013-11-03 12:11:59","0000-00-00 00:00:00");
INSERT INTO regions VALUES("713","1","19","Maihar","2013-11-03 12:11:59","0000-00-00 00:00:00");
INSERT INTO regions VALUES("714","1","19","Malajkhand","2013-11-03 12:11:59","0000-00-00 00:00:00");
INSERT INTO regions VALUES("715","1","19","Manasa","2013-11-03 12:11:59","0000-00-00 00:00:00");
INSERT INTO regions VALUES("716","1","19","Manawar","2013-11-03 12:11:59","0000-00-00 00:00:00");
INSERT INTO regions VALUES("717","1","19","Mandideep","2013-11-03 12:11:59","0000-00-00 00:00:00");
INSERT INTO regions VALUES("718","1","19","Mandla","2013-11-03 12:11:59","0000-00-00 00:00:00");
INSERT INTO regions VALUES("719","1","19","Mandsaur","2013-11-03 12:11:59","0000-00-00 00:00:00");
INSERT INTO regions VALUES("720","1","19","Mauganj","2013-11-03 12:11:59","0000-00-00 00:00:00");
INSERT INTO regions VALUES("721","1","19","Mhow cantonment","2013-11-03 12:11:59","0000-00-00 00:00:00");
INSERT INTO regions VALUES("722","1","19","Mhowgaon","2013-11-03 12:11:59","0000-00-00 00:00:00");
INSERT INTO regions VALUES("723","1","19","Morena","2013-11-03 12:11:59","0000-00-00 00:00:00");
INSERT INTO regions VALUES("724","1","19","Multai","2013-11-03 12:11:00","0000-00-00 00:00:00");
INSERT INTO regions VALUES("725","1","19","Murwara","2013-11-03 12:11:00","0000-00-00 00:00:00");
INSERT INTO regions VALUES("726","1","19","Nagda","2013-11-03 12:11:00","0000-00-00 00:00:00");
INSERT INTO regions VALUES("727","1","19","Nainpur","2013-11-03 12:11:00","0000-00-00 00:00:00");
INSERT INTO regions VALUES("728","1","19","Narsinghgarh","2013-11-03 12:11:00","0000-00-00 00:00:00");
INSERT INTO regions VALUES("729","1","19","Narsinghgarh","2013-11-03 12:11:00","0000-00-00 00:00:00");
INSERT INTO regions VALUES("730","1","19","Neemuch","2013-11-03 12:11:00","0000-00-00 00:00:00");
INSERT INTO regions VALUES("731","1","19","Nepanagar","2013-11-03 12:11:00","0000-00-00 00:00:00");
INSERT INTO regions VALUES("732","1","19","Niwari","2013-11-03 12:11:00","0000-00-00 00:00:00");
INSERT INTO regions VALUES("733","1","19","Nowgong","2013-11-03 12:11:00","0000-00-00 00:00:00");
INSERT INTO regions VALUES("734","1","19","Nowrozabad","2013-11-03 12:11:00","0000-00-00 00:00:00");
INSERT INTO regions VALUES("735","1","19","Pachore","2013-11-03 12:11:00","0000-00-00 00:00:00");
INSERT INTO regions VALUES("736","1","19","Pali","2013-11-03 12:11:00","0000-00-00 00:00:00");
INSERT INTO regions VALUES("737","1","19","Panagar","2013-11-03 12:11:00","0000-00-00 00:00:00");
INSERT INTO regions VALUES("738","1","19","Pandhurna","2013-11-03 12:11:00","0000-00-00 00:00:00");
INSERT INTO regions VALUES("739","1","19","Panna","2013-11-03 12:11:00","0000-00-00 00:00:00");
INSERT INTO regions VALUES("740","1","19","Pasan","2013-11-03 12:11:00","0000-00-00 00:00:00");
INSERT INTO regions VALUES("741","1","19","Pipariya","2013-11-03 12:11:00","0000-00-00 00:00:00");
INSERT INTO regions VALUES("742","1","19","Pithampur","2013-11-03 12:11:00","0000-00-00 00:00:00");
INSERT INTO regions VALUES("743","1","19","Porsa","2013-11-03 12:11:00","0000-00-00 00:00:00");
INSERT INTO regions VALUES("744","1","19","Prithvipur","2013-11-03 12:11:00","0000-00-00 00:00:00");
INSERT INTO regions VALUES("745","1","19","Raghogarh-vijaypur","2013-11-03 12:11:00","0000-00-00 00:00:00");
INSERT INTO regions VALUES("746","1","19","Rahatgarh","2013-11-03 12:11:00","0000-00-00 00:00:00");
INSERT INTO regions VALUES("747","1","19","Raisen","2013-11-03 12:11:00","0000-00-00 00:00:00");
INSERT INTO regions VALUES("748","1","19","Rajgarh","2013-11-03 12:11:01","0000-00-00 00:00:00");
INSERT INTO regions VALUES("749","1","19","Ratlam","2013-11-03 12:11:01","0000-00-00 00:00:00");
INSERT INTO regions VALUES("750","1","19","Rau","2013-11-03 12:11:01","0000-00-00 00:00:00");
INSERT INTO regions VALUES("751","1","19","Rehli","2013-11-03 12:11:01","0000-00-00 00:00:00");
INSERT INTO regions VALUES("752","1","19","Rewa","2013-11-03 12:11:01","0000-00-00 00:00:00");
INSERT INTO regions VALUES("753","1","19","Sabalgarh","2013-11-03 12:11:01","0000-00-00 00:00:00");
INSERT INTO regions VALUES("754","1","19","Sagar","2013-11-03 12:11:01","0000-00-00 00:00:00");
INSERT INTO regions VALUES("755","1","19","Sanawad","2013-11-03 12:11:01","0000-00-00 00:00:00");
INSERT INTO regions VALUES("756","1","19","Sarangpur","2013-11-03 12:11:01","0000-00-00 00:00:00");
INSERT INTO regions VALUES("757","1","19","Sarni","2013-11-03 12:11:01","0000-00-00 00:00:00");
INSERT INTO regions VALUES("758","1","19","Satna","2013-11-03 12:11:01","0000-00-00 00:00:00");
INSERT INTO regions VALUES("759","1","19","Sausar","2013-11-03 12:11:01","0000-00-00 00:00:00");
INSERT INTO regions VALUES("760","1","19","Sehore","2013-11-03 12:11:01","0000-00-00 00:00:00");
INSERT INTO regions VALUES("761","1","19","Sendhwa","2013-11-03 12:11:01","0000-00-00 00:00:00");
INSERT INTO regions VALUES("762","1","19","Seoni","2013-11-03 12:11:01","0000-00-00 00:00:00");
INSERT INTO regions VALUES("763","1","19","Seoni-malwa","2013-11-03 12:11:01","0000-00-00 00:00:00");
INSERT INTO regions VALUES("764","1","19","Shahdol","2013-11-03 12:11:01","0000-00-00 00:00:00");
INSERT INTO regions VALUES("765","1","19","Shajapur","2013-11-03 12:11:01","0000-00-00 00:00:00");
INSERT INTO regions VALUES("766","1","19","Shamgarh","2013-11-03 12:11:01","0000-00-00 00:00:00");
INSERT INTO regions VALUES("767","1","19","Sheopur","2013-11-03 12:11:01","0000-00-00 00:00:00");
INSERT INTO regions VALUES("768","1","19","Shivpuri","2013-11-03 12:11:02","0000-00-00 00:00:00");
INSERT INTO regions VALUES("769","1","19","Shujalpur","2013-11-03 12:11:02","0000-00-00 00:00:00");
INSERT INTO regions VALUES("770","1","19","Sidhi","2013-11-03 12:11:02","0000-00-00 00:00:00");
INSERT INTO regions VALUES("771","1","19","Sihora","2013-11-03 12:11:02","0000-00-00 00:00:00");
INSERT INTO regions VALUES("772","1","19","Singrauli","2013-11-03 12:11:02","0000-00-00 00:00:00");
INSERT INTO regions VALUES("773","1","19","Sironj","2013-11-03 12:11:02","0000-00-00 00:00:00");
INSERT INTO regions VALUES("774","1","19","Sohagpur","2013-11-03 12:11:02","0000-00-00 00:00:00");
INSERT INTO regions VALUES("775","1","19","Tarana","2013-11-03 12:11:02","0000-00-00 00:00:00");
INSERT INTO regions VALUES("776","1","19","Tikamgarh","2013-11-03 12:11:02","0000-00-00 00:00:00");
INSERT INTO regions VALUES("777","1","19","Ujhani","2013-11-03 12:11:02","0000-00-00 00:00:00");
INSERT INTO regions VALUES("778","1","19","Ujjain","2013-11-03 12:11:02","0000-00-00 00:00:00");
INSERT INTO regions VALUES("779","1","19","Umaria","2013-11-03 12:11:02","0000-00-00 00:00:00");
INSERT INTO regions VALUES("780","1","19","Vidisha","2013-11-03 12:11:02","0000-00-00 00:00:00");
INSERT INTO regions VALUES("781","1","19","Wara seoni","2013-11-03 12:11:02","0000-00-00 00:00:00");
INSERT INTO regions VALUES("782","1","20","Kolhapur","2013-11-03 12:11:02","0000-00-00 00:00:00");
INSERT INTO regions VALUES("783","1","20","Ahmednagar","2013-11-03 12:11:02","0000-00-00 00:00:00");
INSERT INTO regions VALUES("784","1","20","Akola","2013-11-03 12:11:02","0000-00-00 00:00:00");
INSERT INTO regions VALUES("785","1","20","Amravati","2013-11-03 12:11:02","0000-00-00 00:00:00");
INSERT INTO regions VALUES("786","1","20","Aurangabad","2013-11-03 12:11:02","0000-00-00 00:00:00");
INSERT INTO regions VALUES("787","1","20","Baramati","2013-11-03 12:11:02","0000-00-00 00:00:00");
INSERT INTO regions VALUES("788","1","20","Chalisgaon","2013-11-03 12:11:02","0000-00-00 00:00:00");
INSERT INTO regions VALUES("789","1","20","Chinchani","2013-11-03 12:11:02","0000-00-00 00:00:00");
INSERT INTO regions VALUES("790","1","20","Devgarh","2013-11-03 12:11:02","0000-00-00 00:00:00");
INSERT INTO regions VALUES("791","1","20","Dhule","2013-11-03 12:11:02","0000-00-00 00:00:00");
INSERT INTO regions VALUES("792","1","20","Dombivli","2013-11-03 12:11:02","0000-00-00 00:00:00");
INSERT INTO regions VALUES("793","1","20","Durgapur","2013-11-03 12:11:02","0000-00-00 00:00:00");
INSERT INTO regions VALUES("794","1","20","Ichalkaranji","2013-11-03 12:11:03","0000-00-00 00:00:00");
INSERT INTO regions VALUES("795","1","20","Jalna","2013-11-03 12:11:03","0000-00-00 00:00:00");
INSERT INTO regions VALUES("796","1","20","Kalyan","2013-11-03 12:11:03","0000-00-00 00:00:00");
INSERT INTO regions VALUES("797","1","20","Latur","2013-11-03 12:11:03","0000-00-00 00:00:00");
INSERT INTO regions VALUES("798","1","20","Loha","2013-11-03 12:11:03","0000-00-00 00:00:00");
INSERT INTO regions VALUES("799","1","20","Lonar","2013-11-03 12:11:03","0000-00-00 00:00:00");
INSERT INTO regions VALUES("800","1","20","Lonavla","2013-11-03 12:11:03","0000-00-00 00:00:00");
INSERT INTO regions VALUES("801","1","20","Mahad","2013-11-03 12:11:03","0000-00-00 00:00:00");
INSERT INTO regions VALUES("802","1","20","Mahuli","2013-11-03 12:11:03","0000-00-00 00:00:00");
INSERT INTO regions VALUES("803","1","20","Malegaon","2013-11-03 12:11:03","0000-00-00 00:00:00");
INSERT INTO regions VALUES("804","1","20","Malkapur","2013-11-03 12:11:03","0000-00-00 00:00:00");
INSERT INTO regions VALUES("805","1","20","Manchar","2013-11-03 12:11:03","0000-00-00 00:00:00");
INSERT INTO regions VALUES("806","1","20","Mangalvedhe","2013-11-03 12:11:03","0000-00-00 00:00:00");
INSERT INTO regions VALUES("807","1","20","Mangrulpir","2013-11-03 12:11:03","0000-00-00 00:00:00");
INSERT INTO regions VALUES("808","1","20","Manjlegaon","2013-11-03 12:11:03","0000-00-00 00:00:00");
INSERT INTO regions VALUES("809","1","20","Manmad","2013-11-03 12:11:03","0000-00-00 00:00:00");
INSERT INTO regions VALUES("810","1","20","Manwath","2013-11-03 12:11:03","0000-00-00 00:00:00");
INSERT INTO regions VALUES("811","1","20","Mehkar","2013-11-03 12:11:03","0000-00-00 00:00:00");
INSERT INTO regions VALUES("812","1","20","Mhaswad","2013-11-03 12:11:03","0000-00-00 00:00:00");
INSERT INTO regions VALUES("813","1","20","Miraj","2013-11-03 12:11:03","0000-00-00 00:00:00");
INSERT INTO regions VALUES("814","1","20","Morshi","2013-11-03 12:11:03","0000-00-00 00:00:00");
INSERT INTO regions VALUES("815","1","20","Mukhed","2013-11-03 12:11:03","0000-00-00 00:00:00");
INSERT INTO regions VALUES("816","1","20","Mul","2013-11-03 12:11:03","0000-00-00 00:00:00");
INSERT INTO regions VALUES("817","1","20","Mumbai","2013-11-03 12:11:03","0000-00-00 00:00:00");
INSERT INTO regions VALUES("818","1","20","Murtijapur","2013-11-03 12:11:03","0000-00-00 00:00:00");
INSERT INTO regions VALUES("819","1","20","Nagpur","2013-11-03 12:11:03","0000-00-00 00:00:00");
INSERT INTO regions VALUES("820","1","20","Nalasopara","2013-11-03 12:11:03","0000-00-00 00:00:00");
INSERT INTO regions VALUES("821","1","20","Nanded-waghala","2013-11-03 12:11:03","0000-00-00 00:00:00");
INSERT INTO regions VALUES("822","1","20","Nandgaon","2013-11-03 12:11:03","0000-00-00 00:00:00");
INSERT INTO regions VALUES("823","1","20","Nandura","2013-11-03 12:11:03","0000-00-00 00:00:00");
INSERT INTO regions VALUES("824","1","20","Nandurbar","2013-11-03 12:11:03","0000-00-00 00:00:00");
INSERT INTO regions VALUES("825","1","20","Narkhed","2013-11-03 12:11:04","0000-00-00 00:00:00");
INSERT INTO regions VALUES("826","1","20","Nashik","2013-11-03 12:11:04","0000-00-00 00:00:00");
INSERT INTO regions VALUES("827","1","20","Navi mumbai","2013-11-03 12:11:04","0000-00-00 00:00:00");
INSERT INTO regions VALUES("828","1","20","Nawapur","2013-11-03 12:11:04","0000-00-00 00:00:00");
INSERT INTO regions VALUES("829","1","20","Nilanga","2013-11-03 12:11:04","0000-00-00 00:00:00");
INSERT INTO regions VALUES("830","1","20","Osmanabad","2013-11-03 12:11:04","0000-00-00 00:00:00");
INSERT INTO regions VALUES("831","1","20","Ozar","2013-11-03 12:11:04","0000-00-00 00:00:00");
INSERT INTO regions VALUES("832","1","20","Pachora","2013-11-03 12:11:04","0000-00-00 00:00:00");
INSERT INTO regions VALUES("833","1","20","Paithan","2013-11-03 12:11:04","0000-00-00 00:00:00");
INSERT INTO regions VALUES("834","1","20","Palghar","2013-11-03 12:11:04","0000-00-00 00:00:00");
INSERT INTO regions VALUES("835","1","20","Pandharkaoda","2013-11-03 12:11:04","0000-00-00 00:00:00");
INSERT INTO regions VALUES("836","1","20","Pandharpur","2013-11-03 12:11:04","0000-00-00 00:00:00");
INSERT INTO regions VALUES("837","1","20","Panvel","2013-11-03 12:11:04","0000-00-00 00:00:00");
INSERT INTO regions VALUES("838","1","20","Parbhani","2013-11-03 12:11:04","0000-00-00 00:00:00");
INSERT INTO regions VALUES("839","1","20","Parli","2013-11-03 12:11:04","0000-00-00 00:00:00");
INSERT INTO regions VALUES("840","1","20","Parola","2013-11-03 12:11:04","0000-00-00 00:00:00");
INSERT INTO regions VALUES("841","1","20","Partur","2013-11-03 12:11:04","0000-00-00 00:00:00");
INSERT INTO regions VALUES("842","1","20","Pathardi","2013-11-03 12:11:04","0000-00-00 00:00:00");
INSERT INTO regions VALUES("843","1","20","Pathri","2013-11-03 12:11:04","0000-00-00 00:00:00");
INSERT INTO regions VALUES("844","1","20","Patur","2013-11-03 12:11:04","0000-00-00 00:00:00");
INSERT INTO regions VALUES("845","1","20","Pauni","2013-11-03 12:11:04","0000-00-00 00:00:00");
INSERT INTO regions VALUES("846","1","20","Pen","2013-11-03 12:11:04","0000-00-00 00:00:00");
INSERT INTO regions VALUES("847","1","20","Phaltan","2013-11-03 12:11:04","0000-00-00 00:00:00");
INSERT INTO regions VALUES("848","1","20","Pulgaon","2013-11-03 12:11:04","0000-00-00 00:00:00");
INSERT INTO regions VALUES("849","1","20","Pune","2013-11-03 12:11:04","0000-00-00 00:00:00");
INSERT INTO regions VALUES("850","1","20","Purna","2013-11-03 12:11:04","0000-00-00 00:00:00");
INSERT INTO regions VALUES("851","1","20","Pusad","2013-11-03 12:11:04","0000-00-00 00:00:00");
INSERT INTO regions VALUES("852","1","20","Rahuri","2013-11-03 12:11:04","0000-00-00 00:00:00");
INSERT INTO regions VALUES("853","1","20","Rajura","2013-11-03 12:11:04","0000-00-00 00:00:00");
INSERT INTO regions VALUES("854","1","20","Ramtek","2013-11-03 12:11:04","0000-00-00 00:00:00");
INSERT INTO regions VALUES("855","1","20","Ratnagiri","2013-11-03 12:11:04","0000-00-00 00:00:00");
INSERT INTO regions VALUES("856","1","20","Raver","2013-11-03 12:11:04","0000-00-00 00:00:00");
INSERT INTO regions VALUES("857","1","20","Risod","2013-11-03 12:11:04","0000-00-00 00:00:00");
INSERT INTO regions VALUES("858","1","20","Sailu","2013-11-03 12:11:05","0000-00-00 00:00:00");
INSERT INTO regions VALUES("859","1","20","Sangamner","2013-11-03 12:11:05","0000-00-00 00:00:00");
INSERT INTO regions VALUES("860","1","20","Sangli","2013-11-03 12:11:05","0000-00-00 00:00:00");
INSERT INTO regions VALUES("861","1","20","Sangole","2013-11-03 12:11:05","0000-00-00 00:00:00");
INSERT INTO regions VALUES("862","1","20","Sasvad","2013-11-03 12:11:05","0000-00-00 00:00:00");
INSERT INTO regions VALUES("863","1","20","Satana","2013-11-03 12:11:05","0000-00-00 00:00:00");
INSERT INTO regions VALUES("864","1","20","Satara","2013-11-03 12:11:05","0000-00-00 00:00:00");
INSERT INTO regions VALUES("865","1","20","Savner","2013-11-03 12:11:05","0000-00-00 00:00:00");
INSERT INTO regions VALUES("866","1","20","Sawantwadi","2013-11-03 12:11:05","0000-00-00 00:00:00");
INSERT INTO regions VALUES("867","1","20","Shahade","2013-11-03 12:11:05","0000-00-00 00:00:00");
INSERT INTO regions VALUES("868","1","20","Shegaon","2013-11-03 12:11:05","0000-00-00 00:00:00");
INSERT INTO regions VALUES("869","1","20","Shendurjana","2013-11-03 12:11:05","0000-00-00 00:00:00");
INSERT INTO regions VALUES("870","1","20","Shirdi","2013-11-03 12:11:05","0000-00-00 00:00:00");
INSERT INTO regions VALUES("871","1","20","Shirpur-warwade","2013-11-03 12:11:05","0000-00-00 00:00:00");
INSERT INTO regions VALUES("872","1","20","Shirur","2013-11-03 12:11:05","0000-00-00 00:00:00");
INSERT INTO regions VALUES("873","1","20","Shrigonda","2013-11-03 12:11:05","0000-00-00 00:00:00");
INSERT INTO regions VALUES("874","1","20","Shrirampur","2013-11-03 12:11:05","0000-00-00 00:00:00");
INSERT INTO regions VALUES("875","1","20","Sillod","2013-11-03 12:11:05","0000-00-00 00:00:00");
INSERT INTO regions VALUES("876","1","20","Sinnar","2013-11-03 12:11:05","0000-00-00 00:00:00");
INSERT INTO regions VALUES("877","1","20","Solapur","2013-11-03 12:11:05","0000-00-00 00:00:00");
INSERT INTO regions VALUES("878","1","20","Soyagaon","2013-11-03 12:11:05","0000-00-00 00:00:00");
INSERT INTO regions VALUES("879","1","20","Talegaon dabhade","2013-11-03 12:11:05","0000-00-00 00:00:00");
INSERT INTO regions VALUES("880","1","20","Talode","2013-11-03 12:11:05","0000-00-00 00:00:00");
INSERT INTO regions VALUES("881","1","20","Tasgaon","2013-11-03 12:11:05","0000-00-00 00:00:00");
INSERT INTO regions VALUES("882","1","20","Tirora","2013-11-03 12:11:05","0000-00-00 00:00:00");
INSERT INTO regions VALUES("883","1","20","Tuljapur","2013-11-03 12:11:05","0000-00-00 00:00:00");
INSERT INTO regions VALUES("884","1","20","Tumsar","2013-11-03 12:11:05","0000-00-00 00:00:00");
INSERT INTO regions VALUES("885","1","20","Uran","2013-11-03 12:11:05","0000-00-00 00:00:00");
INSERT INTO regions VALUES("886","1","20","Uran islampur","2013-11-03 12:11:05","0000-00-00 00:00:00");
INSERT INTO regions VALUES("887","1","20","Wadgaon road","2013-11-03 12:11:05","0000-00-00 00:00:00");
INSERT INTO regions VALUES("888","1","20","Wai","2013-11-03 12:11:05","0000-00-00 00:00:00");
INSERT INTO regions VALUES("889","1","20","Wani","2013-11-03 12:11:05","0000-00-00 00:00:00");
INSERT INTO regions VALUES("890","1","20","Wardha","2013-11-03 12:11:05","0000-00-00 00:00:00");
INSERT INTO regions VALUES("891","1","20","Warora","2013-11-03 12:11:05","0000-00-00 00:00:00");
INSERT INTO regions VALUES("892","1","20","Warud","2013-11-03 12:11:05","0000-00-00 00:00:00");
INSERT INTO regions VALUES("893","1","20","Washim","2013-11-03 12:11:05","0000-00-00 00:00:00");
INSERT INTO regions VALUES("894","1","20","Yevla","2013-11-03 12:11:05","0000-00-00 00:00:00");
INSERT INTO regions VALUES("895","1","20","Uchgaon","2013-11-03 12:11:06","0000-00-00 00:00:00");
INSERT INTO regions VALUES("896","1","20","Udgir","2013-11-03 12:11:06","0000-00-00 00:00:00");
INSERT INTO regions VALUES("897","1","20","Umarga","2013-11-03 12:11:06","0000-00-00 00:00:00");
INSERT INTO regions VALUES("898","1","20","Umarkhed","2013-11-03 12:11:06","0000-00-00 00:00:00");
INSERT INTO regions VALUES("899","1","20","Umred","2013-11-03 12:11:06","0000-00-00 00:00:00");
INSERT INTO regions VALUES("900","1","20","Vadgaon kasba","2013-11-03 12:11:06","0000-00-00 00:00:00");
INSERT INTO regions VALUES("901","1","20","Vaijapur","2013-11-03 12:11:06","0000-00-00 00:00:00");
INSERT INTO regions VALUES("902","1","20","Vasai","2013-11-03 12:11:06","0000-00-00 00:00:00");
INSERT INTO regions VALUES("903","1","20","Virar","2013-11-03 12:11:06","0000-00-00 00:00:00");
INSERT INTO regions VALUES("904","1","20","Vita","2013-11-03 12:11:06","0000-00-00 00:00:00");
INSERT INTO regions VALUES("905","1","20","Yavatmal","2013-11-03 12:11:06","0000-00-00 00:00:00");
INSERT INTO regions VALUES("906","1","20","Yawal","2013-11-03 12:11:06","0000-00-00 00:00:00");
INSERT INTO regions VALUES("907","1","21","Imphal","2013-11-03 12:11:06","0000-00-00 00:00:00");
INSERT INTO regions VALUES("908","1","21","Kakching","2013-11-03 12:11:06","0000-00-00 00:00:00");
INSERT INTO regions VALUES("909","1","21","Lilong","2013-11-03 12:11:06","0000-00-00 00:00:00");
INSERT INTO regions VALUES("910","1","21","Mayang imphal","2013-11-03 12:11:06","0000-00-00 00:00:00");
INSERT INTO regions VALUES("911","1","21","Thoubal","2013-11-03 12:11:06","0000-00-00 00:00:00");
INSERT INTO regions VALUES("912","1","22","Jowai","2013-11-03 12:11:06","0000-00-00 00:00:00");
INSERT INTO regions VALUES("913","1","22","Nongstoin","2013-11-03 12:11:06","0000-00-00 00:00:00");
INSERT INTO regions VALUES("914","1","22","Shillong","2013-11-03 12:11:06","0000-00-00 00:00:00");
INSERT INTO regions VALUES("915","1","22","Tura","2013-11-03 12:11:06","0000-00-00 00:00:00");
INSERT INTO regions VALUES("916","1","23","Aizawl","2013-11-03 12:11:06","0000-00-00 00:00:00");
INSERT INTO regions VALUES("917","1","23","Champhai","2013-11-03 12:11:06","0000-00-00 00:00:00");
INSERT INTO regions VALUES("918","1","23","Lunglei","2013-11-03 12:11:06","0000-00-00 00:00:00");
INSERT INTO regions VALUES("919","1","23","Saiha","2013-11-03 12:11:06","0000-00-00 00:00:00");
INSERT INTO regions VALUES("920","1","24","Dimapur","2013-11-03 12:11:06","0000-00-00 00:00:00");
INSERT INTO regions VALUES("921","1","24","Kohima","2013-11-03 12:11:06","0000-00-00 00:00:00");
INSERT INTO regions VALUES("922","1","24","Mokokchung","2013-11-03 12:11:06","0000-00-00 00:00:00");
INSERT INTO regions VALUES("923","1","24","Tuensang","2013-11-03 12:11:06","0000-00-00 00:00:00");
INSERT INTO regions VALUES("924","1","24","Wokha","2013-11-03 12:11:06","0000-00-00 00:00:00");
INSERT INTO regions VALUES("925","1","24","Zunheboto","2013-11-03 12:11:06","0000-00-00 00:00:00");
INSERT INTO regions VALUES("926","1","25","Anandapur","2013-11-03 12:11:06","0000-00-00 00:00:00");
INSERT INTO regions VALUES("927","1","25","Anugul","2013-11-03 12:11:06","0000-00-00 00:00:00");
INSERT INTO regions VALUES("928","1","25","Asika","2013-11-03 12:11:06","0000-00-00 00:00:00");
INSERT INTO regions VALUES("929","1","25","Balangir","2013-11-03 12:11:06","0000-00-00 00:00:00");
INSERT INTO regions VALUES("930","1","25","Balasore","2013-11-03 12:11:06","0000-00-00 00:00:00");
INSERT INTO regions VALUES("931","1","25","Baleshwar","2013-11-03 12:11:06","0000-00-00 00:00:00");
INSERT INTO regions VALUES("932","1","25","Bamra","2013-11-03 12:11:06","0000-00-00 00:00:00");
INSERT INTO regions VALUES("933","1","25","Barbil","2013-11-03 12:11:06","0000-00-00 00:00:00");
INSERT INTO regions VALUES("934","1","25","Bargarh","2013-11-03 12:11:06","0000-00-00 00:00:00");
INSERT INTO regions VALUES("935","1","25","Bargarh","2013-11-03 12:11:06","0000-00-00 00:00:00");
INSERT INTO regions VALUES("936","1","25","Baripada","2013-11-03 12:11:06","0000-00-00 00:00:00");
INSERT INTO regions VALUES("937","1","25","Basudebpur","2013-11-03 12:11:06","0000-00-00 00:00:00");
INSERT INTO regions VALUES("938","1","25","Belpahar","2013-11-03 12:11:07","0000-00-00 00:00:00");
INSERT INTO regions VALUES("939","1","25","Bhadrak","2013-11-03 12:11:07","0000-00-00 00:00:00");
INSERT INTO regions VALUES("940","1","25","Bhawanipatna","2013-11-03 12:11:07","0000-00-00 00:00:00");
INSERT INTO regions VALUES("941","1","25","Bhuban","2013-11-03 12:11:07","0000-00-00 00:00:00");
INSERT INTO regions VALUES("942","1","25","Bhubaneswar","2013-11-03 12:11:07","0000-00-00 00:00:00");
INSERT INTO regions VALUES("943","1","25","Biramitrapur","2013-11-03 12:11:07","0000-00-00 00:00:00");
INSERT INTO regions VALUES("944","1","25","Brahmapur","2013-11-03 12:11:07","0000-00-00 00:00:00");
INSERT INTO regions VALUES("945","1","25","Brajrajnagar","2013-11-03 12:11:07","0000-00-00 00:00:00");
INSERT INTO regions VALUES("946","1","25","Byasanagar","2013-11-03 12:11:07","0000-00-00 00:00:00");
INSERT INTO regions VALUES("947","1","25","Cuttack","2013-11-03 12:11:07","0000-00-00 00:00:00");
INSERT INTO regions VALUES("948","1","25","Debagarh","2013-11-03 12:11:07","0000-00-00 00:00:00");
INSERT INTO regions VALUES("949","1","25","Dhenkanal","2013-11-03 12:11:07","0000-00-00 00:00:00");
INSERT INTO regions VALUES("950","1","25","Gunupur","2013-11-03 12:11:07","0000-00-00 00:00:00");
INSERT INTO regions VALUES("951","1","25","Hinjilicut","2013-11-03 12:11:07","0000-00-00 00:00:00");
INSERT INTO regions VALUES("952","1","25","Jagatsinghapur","2013-11-03 12:11:07","0000-00-00 00:00:00");
INSERT INTO regions VALUES("953","1","25","Jajapur","2013-11-03 12:11:07","0000-00-00 00:00:00");
INSERT INTO regions VALUES("954","1","25","Jaleswar","2013-11-03 12:11:07","0000-00-00 00:00:00");
INSERT INTO regions VALUES("955","1","25","Jatani","2013-11-03 12:11:07","0000-00-00 00:00:00");
INSERT INTO regions VALUES("956","1","25","Jeypur","2013-11-03 12:11:07","0000-00-00 00:00:00");
INSERT INTO regions VALUES("957","1","25","Jharsuguda","2013-11-03 12:11:07","0000-00-00 00:00:00");
INSERT INTO regions VALUES("958","1","25","Joda","2013-11-03 12:11:07","0000-00-00 00:00:00");
INSERT INTO regions VALUES("959","1","25","Kantabanji","2013-11-03 12:11:07","0000-00-00 00:00:00");
INSERT INTO regions VALUES("960","1","25","Karanjia","2013-11-03 12:11:07","0000-00-00 00:00:00");
INSERT INTO regions VALUES("961","1","25","Kendrapara","2013-11-03 12:11:07","0000-00-00 00:00:00");
INSERT INTO regions VALUES("962","1","25","Kendujhar","2013-11-03 12:11:07","0000-00-00 00:00:00");
INSERT INTO regions VALUES("963","1","25","Khordha","2013-11-03 12:11:07","0000-00-00 00:00:00");
INSERT INTO regions VALUES("964","1","25","Koraput","2013-11-03 12:11:07","0000-00-00 00:00:00");
INSERT INTO regions VALUES("965","1","25","Malkangiri","2013-11-03 12:11:07","0000-00-00 00:00:00");
INSERT INTO regions VALUES("966","1","25","Nabarangapur","2013-11-03 12:11:07","0000-00-00 00:00:00");
INSERT INTO regions VALUES("967","1","25","Paradip","2013-11-03 12:11:07","0000-00-00 00:00:00");
INSERT INTO regions VALUES("968","1","25","Parlakhemundi","2013-11-03 12:11:07","0000-00-00 00:00:00");
INSERT INTO regions VALUES("969","1","25","Pattamundai","2013-11-03 12:11:07","0000-00-00 00:00:00");
INSERT INTO regions VALUES("970","1","25","Phulabani","2013-11-03 12:11:07","0000-00-00 00:00:00");
INSERT INTO regions VALUES("971","1","25","Puri","2013-11-03 12:11:07","0000-00-00 00:00:00");
INSERT INTO regions VALUES("972","1","25","Rairangpur","2013-11-03 12:11:07","0000-00-00 00:00:00");
INSERT INTO regions VALUES("973","1","25","Rajagangapur","2013-11-03 12:11:07","0000-00-00 00:00:00");
INSERT INTO regions VALUES("974","1","25","Raurkela","2013-11-03 12:11:07","0000-00-00 00:00:00");
INSERT INTO regions VALUES("975","1","25","Rayagada","2013-11-03 12:11:08","0000-00-00 00:00:00");
INSERT INTO regions VALUES("976","1","25","Sambalpur","2013-11-03 12:11:08","0000-00-00 00:00:00");
INSERT INTO regions VALUES("977","1","25","Soro","2013-11-03 12:11:08","0000-00-00 00:00:00");
INSERT INTO regions VALUES("978","1","25","Sunabeda","2013-11-03 12:11:08","0000-00-00 00:00:00");
INSERT INTO regions VALUES("979","1","25","Sundargarh","2013-11-03 12:11:08","0000-00-00 00:00:00");
INSERT INTO regions VALUES("980","1","25","Talcher","2013-11-03 12:11:08","0000-00-00 00:00:00");
INSERT INTO regions VALUES("981","1","25","Titlagarh","2013-11-03 12:11:08","0000-00-00 00:00:00");
INSERT INTO regions VALUES("982","1","25","Umarkote","2013-11-03 12:11:08","0000-00-00 00:00:00");
INSERT INTO regions VALUES("983","1","26","Karaikal","2013-11-03 12:11:08","0000-00-00 00:00:00");
INSERT INTO regions VALUES("984","1","26","Mahe","2013-11-03 12:11:08","0000-00-00 00:00:00");
INSERT INTO regions VALUES("985","1","26","Pondicherry","2013-11-03 12:11:08","0000-00-00 00:00:00");
INSERT INTO regions VALUES("986","1","26","Yanam","2013-11-03 12:11:08","0000-00-00 00:00:00");
INSERT INTO regions VALUES("987","1","27","Ahmedgarh","2013-11-03 12:11:08","0000-00-00 00:00:00");
INSERT INTO regions VALUES("988","1","27","Amritsar","2013-11-03 12:11:08","0000-00-00 00:00:00");
INSERT INTO regions VALUES("989","1","27","Barnala","2013-11-03 12:11:08","0000-00-00 00:00:00");
INSERT INTO regions VALUES("990","1","27","Batala","2013-11-03 12:11:08","0000-00-00 00:00:00");
INSERT INTO regions VALUES("991","1","27","Bathinda","2013-11-03 12:11:08","0000-00-00 00:00:00");
INSERT INTO regions VALUES("992","1","27","Bhagha purana","2013-11-03 12:11:08","0000-00-00 00:00:00");
INSERT INTO regions VALUES("993","1","27","Budhlada","2013-11-03 12:11:08","0000-00-00 00:00:00");
INSERT INTO regions VALUES("994","1","27","Chandigarh","2013-11-03 12:11:08","0000-00-00 00:00:00");
INSERT INTO regions VALUES("995","1","27","Dasua","2013-11-03 12:11:08","0000-00-00 00:00:00");
INSERT INTO regions VALUES("996","1","27","Dhuri","2013-11-03 12:11:08","0000-00-00 00:00:00");
INSERT INTO regions VALUES("997","1","27","Dinanagar","2013-11-03 12:11:08","0000-00-00 00:00:00");
INSERT INTO regions VALUES("998","1","27","Faridkot","2013-11-03 12:11:08","0000-00-00 00:00:00");
INSERT INTO regions VALUES("999","1","27","Fazilka","2013-11-03 12:11:08","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1000","1","27","Firozpur","2013-11-03 12:11:08","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1001","1","27","Firozpur cantt.","2013-11-03 12:11:08","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1002","1","27","Giddarbaha","2013-11-03 12:11:08","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1003","1","27","Gobindgarh","2013-11-03 12:11:08","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1004","1","27","Gurdaspur","2013-11-03 12:11:08","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1005","1","27","Hoshiarpur","2013-11-03 12:11:08","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1006","1","27","Jagraon","2013-11-03 12:11:08","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1007","1","27","Jaitu","2013-11-03 12:11:08","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1008","1","27","Jalalabad","2013-11-03 12:11:08","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1009","1","27","Jalandhar","2013-11-03 12:11:08","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1010","1","27","Jalandhar cantt.","2013-11-03 12:11:08","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1011","1","27","Jandiala","2013-11-03 12:11:08","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1012","1","27","Kapurthala","2013-11-03 12:11:08","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1013","1","27","Karoran","2013-11-03 12:11:08","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1014","1","27","Kartarpur","2013-11-03 12:11:08","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1015","1","27","Khanna","2013-11-03 12:11:09","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1016","1","27","Kharar","2013-11-03 12:11:09","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1017","1","27","Kot kapura","2013-11-03 12:11:09","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1018","1","27","Kurali","2013-11-03 12:11:09","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1019","1","27","Longowal","2013-11-03 12:11:09","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1020","1","27","Ludhiana","2013-11-03 12:11:09","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1021","1","27","Malerkotla","2013-11-03 12:11:09","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1022","1","27","Malout","2013-11-03 12:11:09","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1023","1","27","Mansa","2013-11-03 12:11:09","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1024","1","27","Maur","2013-11-03 12:11:09","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1025","1","27","Moga","2013-11-03 12:11:09","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1026","1","27","Mohali","2013-11-03 12:11:09","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1027","1","27","Morinda","2013-11-03 12:11:09","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1028","1","27","Mukerian","2013-11-03 12:11:09","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1029","1","27","Muktsar","2013-11-03 12:11:09","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1030","1","27","Nabha","2013-11-03 12:11:09","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1031","1","27","Nakodar","2013-11-03 12:11:09","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1032","1","27","Nangal","2013-11-03 12:11:09","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1033","1","27","Nawanshahr","2013-11-03 12:11:09","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1034","1","27","Pathankot","2013-11-03 12:11:09","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1035","1","27","Patiala","2013-11-03 12:11:09","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1036","1","27","Patran","2013-11-03 12:11:09","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1037","1","27","Patti","2013-11-03 12:11:09","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1038","1","27","Phagwara","2013-11-03 12:11:09","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1039","1","27","Phillaur","2013-11-03 12:11:09","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1040","1","27","Qadian","2013-11-03 12:11:09","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1041","1","27","Raikot","2013-11-03 12:11:09","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1042","1","27","Rajpura","2013-11-03 12:11:09","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1043","1","27","Rampura phul","2013-11-03 12:11:09","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1044","1","27","Rupnagar","2013-11-03 12:11:09","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1045","1","27","Samana","2013-11-03 12:11:09","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1046","1","27","Sangrur","2013-11-03 12:11:09","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1047","1","27","Sirhind fatehgarh sahib","2013-11-03 12:11:09","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1048","1","27","Sujanpur","2013-11-03 12:11:09","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1049","1","27","Sunam","2013-11-03 12:11:10","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1050","1","27","Talwara","2013-11-03 12:11:10","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1051","1","27","Tarn taran","2013-11-03 12:11:10","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1052","1","27","Urmar tanda","2013-11-03 12:11:10","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1053","1","27","Zira","2013-11-03 12:11:10","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1054","1","27","Zirakpur","2013-11-03 12:11:10","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1055","1","28","Bali","2013-11-03 12:11:10","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1056","1","28","Banswara","2013-11-03 12:11:10","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1057","1","28","Ajmer","2013-11-03 12:11:10","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1058","1","28","Alwar","2013-11-03 12:11:10","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1059","1","28","Bandikui","2013-11-03 12:11:10","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1060","1","28","Baran","2013-11-03 12:11:10","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1061","1","28","Barmer","2013-11-03 12:11:10","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1062","1","28","Bikaner","2013-11-03 12:11:10","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1063","1","28","Fatehpur","2013-11-03 12:11:10","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1064","1","28","Jaipur","2013-11-03 12:11:10","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1065","1","28","Jaisalmer","2013-11-03 12:11:10","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1066","1","28","Jodhpur","2013-11-03 12:11:10","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1067","1","28","Kota","2013-11-03 12:11:10","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1068","1","28","Lachhmangarh","2013-11-03 12:11:10","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1069","1","28","Ladnu","2013-11-03 12:11:10","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1070","1","28","Lakheri","2013-11-03 12:11:10","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1071","1","28","Lalsot","2013-11-03 12:11:10","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1072","1","28","Losal","2013-11-03 12:11:10","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1073","1","28","Makrana","2013-11-03 12:11:10","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1074","1","28","Malpura","2013-11-03 12:11:10","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1075","1","28","Mandalgarh","2013-11-03 12:11:10","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1076","1","28","Mandawa","2013-11-03 12:11:10","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1077","1","28","Mangrol","2013-11-03 12:11:10","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1078","1","28","Merta city","2013-11-03 12:11:10","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1079","1","28","Mount abu","2013-11-03 12:11:10","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1080","1","28","Nadbai","2013-11-03 12:11:10","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1081","1","28","Nagar","2013-11-03 12:11:10","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1082","1","28","Nagaur","2013-11-03 12:11:10","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1083","1","28","Nargund","2013-11-03 12:11:10","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1084","1","28","Nasirabad","2013-11-03 12:11:10","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1085","1","28","Nathdwara","2013-11-03 12:11:10","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1086","1","28","Navalgund","2013-11-03 12:11:10","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1087","1","28","Nawalgarh","2013-11-03 12:11:10","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1088","1","28","Neem-ka-thana","2013-11-03 12:11:11","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1089","1","28","Nelamangala","2013-11-03 12:11:11","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1090","1","28","Nimbahera","2013-11-03 12:11:11","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1091","1","28","Nipani","2013-11-03 12:11:11","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1092","1","28","Niwai","2013-11-03 12:11:11","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1093","1","28","Nohar","2013-11-03 12:11:11","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1094","1","28","Nokha","2013-11-03 12:11:11","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1095","1","28","Pali","2013-11-03 12:11:11","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1096","1","28","Phalodi","2013-11-03 12:11:11","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1097","1","28","Phulera","2013-11-03 12:11:11","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1098","1","28","Pilani","2013-11-03 12:11:11","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1099","1","28","Pilibanga","2013-11-03 12:11:11","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1100","1","28","Pindwara","2013-11-03 12:11:11","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1101","1","28","Pipar city","2013-11-03 12:11:11","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1102","1","28","Prantij","2013-11-03 12:11:11","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1103","1","28","Pratapgarh","2013-11-03 12:11:11","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1104","1","28","Raisinghnagar","2013-11-03 12:11:11","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1105","1","28","Rajakhera","2013-11-03 12:11:11","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1106","1","28","Rajaldesar","2013-11-03 12:11:11","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1107","1","28","Rajgarh (alwar)","2013-11-03 12:11:11","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1108","1","28","Rajgarh (churu","2013-11-03 12:11:11","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1109","1","28","Rajsamand","2013-11-03 12:11:11","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1110","1","28","Ramganj mandi","2013-11-03 12:11:11","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1111","1","28","Ramngarh","2013-11-03 12:11:11","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1112","1","28","Ratangarh","2013-11-03 12:11:11","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1113","1","28","Rawatbhata","2013-11-03 12:11:11","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1114","1","28","Rawatsar","2013-11-03 12:11:11","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1115","1","28","Reengus","2013-11-03 12:11:11","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1116","1","28","Sadri","2013-11-03 12:11:11","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1117","1","28","Sadulshahar","2013-11-03 12:11:11","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1118","1","28","Sagwara","2013-11-03 12:11:11","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1119","1","28","Sambhar","2013-11-03 12:11:11","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1120","1","28","Sanchore","2013-11-03 12:11:11","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1121","1","28","Sangaria","2013-11-03 12:11:11","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1122","1","28","Sardarshahar","2013-11-03 12:11:11","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1123","1","28","Sawai madhopur","2013-11-03 12:11:11","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1124","1","28","Shahpura","2013-11-03 12:11:11","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1125","1","28","Shahpura","2013-11-03 12:11:11","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1126","1","28","Sheoganj","2013-11-03 12:11:11","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1127","1","28","Sikar","2013-11-03 12:11:12","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1128","1","28","Sirohi","2013-11-03 12:11:12","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1129","1","28","Sojat","2013-11-03 12:11:12","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1130","1","28","Sri madhopur","2013-11-03 12:11:12","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1131","1","28","Sujangarh","2013-11-03 12:11:12","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1132","1","28","Sumerpur","2013-11-03 12:11:12","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1133","1","28","Suratgarh","2013-11-03 12:11:12","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1134","1","28","Taranagar","2013-11-03 12:11:12","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1135","1","28","Todabhim","2013-11-03 12:11:12","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1136","1","28","Todaraisingh","2013-11-03 12:11:12","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1137","1","28","Tonk","2013-11-03 12:11:12","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1138","1","28","Udaipur","2013-11-03 12:11:12","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1139","1","28","Udaipurwati","2013-11-03 12:11:12","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1140","1","28","Vijainagar","2013-11-03 12:11:12","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1141","1","29","Gangtok","2013-11-03 12:11:12","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1142","1","30","Arakkonam","2013-11-03 12:11:12","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1143","1","30","Arcot","2013-11-03 12:11:12","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1144","1","30","Aruppukkottai","2013-11-03 12:11:12","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1145","1","30","Bhavani","2013-11-03 12:11:12","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1146","1","30","Chengalpattu","2013-11-03 12:11:12","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1147","1","30","Chennai","2013-11-03 12:11:12","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1148","1","30","Chinna salem","2013-11-03 12:11:12","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1149","1","30","Coimbatore","2013-11-03 12:11:12","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1150","1","30","Coonoor","2013-11-03 12:11:12","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1151","1","30","Cuddalore","2013-11-03 12:11:12","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1152","1","30","Dharmapuri","2013-11-03 12:11:12","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1153","1","30","Dindigul","2013-11-03 12:11:13","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1154","1","30","Erode","2013-11-03 12:11:13","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1155","1","30","Gudalur","2013-11-03 12:11:13","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1156","1","30","Gudalur","2013-11-03 12:11:13","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1157","1","30","Gudalur","2013-11-03 12:11:13","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1158","1","30","Kanchipuram","2013-11-03 12:11:13","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1159","1","30","Karaikudi","2013-11-03 12:11:13","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1160","1","30","Karungal","2013-11-03 12:11:13","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1161","1","30","Karur","2013-11-03 12:11:13","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1162","1","30","Kollankodu","2013-11-03 12:11:13","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1163","1","30","Lalgudi","2013-11-03 12:11:13","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1164","1","30","Madurai","2013-11-03 12:11:13","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1165","1","30","Nagapattinam","2013-11-03 12:11:13","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1166","1","30","Nagercoil","2013-11-03 12:11:13","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1167","1","30","Namagiripettai","2013-11-03 12:11:13","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1168","1","30","Namakkal","2013-11-03 12:11:13","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1169","1","30","Nandivaram-guduvancheri","2013-11-03 12:11:13","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1170","1","30","Nanjikottai","2013-11-03 12:11:13","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1171","1","30","Natham","2013-11-03 12:11:13","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1172","1","30","Nellikuppam","2013-11-03 12:11:13","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1173","1","30","Neyveli","2013-11-03 12:11:13","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1174","1","30","O\' valley","2013-11-03 12:11:13","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1175","1","30","Oddanchatram","2013-11-03 12:11:13","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1176","1","30","P.n.patti","2013-11-03 12:11:13","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1177","1","30","Pacode","2013-11-03 12:11:13","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1178","1","30","Padmanabhapuram","2013-11-03 12:11:13","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1179","1","30","Palani","2013-11-03 12:11:13","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1180","1","30","Palladam","2013-11-03 12:11:13","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1181","1","30","Pallapatti","2013-11-03 12:11:13","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1182","1","30","Pallikonda","2013-11-03 12:11:13","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1183","1","30","Panagudi","2013-11-03 12:11:13","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1184","1","30","Panruti","2013-11-03 12:11:13","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1185","1","30","Paramakudi","2013-11-03 12:11:13","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1186","1","30","Parangipettai","2013-11-03 12:11:13","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1187","1","30","Pattukkottai","2013-11-03 12:11:13","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1188","1","30","Perambalur","2013-11-03 12:11:13","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1189","1","30","Peravurani","2013-11-03 12:11:13","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1190","1","30","Periyakulam","2013-11-03 12:11:13","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1191","1","30","Periyasemur","2013-11-03 12:11:13","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1192","1","30","Pernampattu","2013-11-03 12:11:14","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1193","1","30","Pollachi","2013-11-03 12:11:14","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1194","1","30","Polur","2013-11-03 12:11:14","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1195","1","30","Ponneri","2013-11-03 12:11:14","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1196","1","30","Pudukkottai","2013-11-03 12:11:14","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1197","1","30","Pudupattinam","2013-11-03 12:11:14","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1198","1","30","Puliyankudi","2013-11-03 12:11:14","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1199","1","30","Punjaipugalur","2013-11-03 12:11:14","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1200","1","30","Rajapalayam","2013-11-03 12:11:14","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1201","1","30","Ramanathapuram","2013-11-03 12:11:14","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1202","1","30","Rameshwaram","2013-11-03 12:11:14","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1203","1","30","Rasipuram","2013-11-03 12:11:14","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1204","1","30","Salem","2013-11-03 12:11:14","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1205","1","30","Sankarankoil","2013-11-03 12:11:14","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1206","1","30","Sankari","2013-11-03 12:11:14","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1207","1","30","Sathyamangalam","2013-11-03 12:11:14","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1208","1","30","Sattur","2013-11-03 12:11:14","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1209","1","30","Shenkottai","2013-11-03 12:11:14","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1210","1","30","Sholavandan","2013-11-03 12:11:14","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1211","1","30","Sholingur","2013-11-03 12:11:14","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1212","1","30","Sirkali","2013-11-03 12:11:14","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1213","1","30","Sivaganga","2013-11-03 12:11:14","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1214","1","30","Sivagiri","2013-11-03 12:11:14","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1215","1","30","Sivakasi","2013-11-03 12:11:14","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1216","1","30","Srivilliputhur","2013-11-03 12:11:14","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1217","1","30","Surandai","2013-11-03 12:11:14","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1218","1","30","Suriyampalayam","2013-11-03 12:11:14","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1219","1","30","Tenkasi","2013-11-03 12:11:14","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1220","1","30","Thammampatti","2013-11-03 12:11:14","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1221","1","30","Thanjavur","2013-11-03 12:11:14","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1222","1","30","Tharamangalam","2013-11-03 12:11:14","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1223","1","30","Tharangambadi","2013-11-03 12:11:14","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1224","1","30","Theni allinagaram","2013-11-03 12:11:14","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1225","1","30","Thirumangalam","2013-11-03 12:11:14","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1226","1","30","Thirunindravur","2013-11-03 12:11:14","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1227","1","30","Thiruparappu","2013-11-03 12:11:14","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1228","1","30","Thirupuvanam","2013-11-03 12:11:14","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1229","1","30","Thiruthuraipoondi","2013-11-03 12:11:14","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1230","1","30","Thiruvallur","2013-11-03 12:11:14","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1231","1","30","Thiruvarur","2013-11-03 12:11:14","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1232","1","30","Thoothukudi","2013-11-03 12:11:14","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1233","1","30","Thuraiyur","2013-11-03 12:11:14","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1234","1","30","Tindivanam","2013-11-03 12:11:14","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1235","1","30","Tiruchendur","2013-11-03 12:11:14","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1236","1","30","Tiruchengode","2013-11-03 12:11:14","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1237","1","30","Tiruchirappalli","2013-11-03 12:11:14","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1238","1","30","Tirukalukundram","2013-11-03 12:11:14","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1239","1","30","Tirukkoyilur","2013-11-03 12:11:14","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1240","1","30","Tirunelveli","2013-11-03 12:11:14","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1241","1","30","Tirupathur","2013-11-03 12:11:14","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1242","1","30","Tirupathur","2013-11-03 12:11:14","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1243","1","30","Tiruppur","2013-11-03 12:11:14","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1244","1","30","Tiruttani","2013-11-03 12:11:15","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1245","1","30","Tiruvannamalai","2013-11-03 12:11:15","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1246","1","30","Tiruvethipuram","2013-11-03 12:11:15","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1247","1","30","Tittakudi","2013-11-03 12:11:15","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1248","1","30","Udhagamandalam","2013-11-03 12:11:15","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1249","1","30","Udumalaipettai","2013-11-03 12:11:15","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1250","1","30","Unnamalaikadai","2013-11-03 12:11:15","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1251","1","30","Usilampatti","2013-11-03 12:11:15","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1252","1","30","Uthamapalayam","2013-11-03 12:11:15","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1253","1","30","Uthiramerur","2013-11-03 12:11:15","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1254","1","30","Vadakkuvalliyur","2013-11-03 12:11:15","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1255","1","30","Vadalur","2013-11-03 12:11:15","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1256","1","30","Vadipatti","2013-11-03 12:11:15","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1257","1","30","Valparai","2013-11-03 12:11:15","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1258","1","30","Vandavasi","2013-11-03 12:11:15","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1259","1","30","Vaniyambadi","2013-11-03 12:11:15","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1260","1","30","Vedaranyam","2013-11-03 12:11:15","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1261","1","30","Vellakoil","2013-11-03 12:11:15","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1262","1","30","Vellore","2013-11-03 12:11:15","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1263","1","30","Vikramasingapuram","2013-11-03 12:11:15","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1264","1","30","Viluppuram","2013-11-03 12:11:15","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1265","1","30","Virudhachalam","2013-11-03 12:11:15","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1266","1","30","Virudhunagar","2013-11-03 12:11:15","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1267","1","30","Viswanatham","2013-11-03 12:11:15","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1268","1","30","Chennai","2013-11-03 12:11:15","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1269","1","30","Coimbatore","2013-11-03 12:11:15","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1270","1","31","Agartala","2013-11-03 12:11:15","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1271","1","31","Badharghat","2013-11-03 12:11:15","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1272","1","31","Dharmanagar","2013-11-03 12:11:15","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1273","1","31","Indranagar","2013-11-03 12:11:15","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1274","1","31","Jogendranagar","2013-11-03 12:11:15","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1275","1","31","Kailasahar","2013-11-03 12:11:15","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1276","1","31","Khowai","2013-11-03 12:11:15","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1277","1","31","Pratapgarh","2013-11-03 12:11:15","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1278","1","31","Udaipur","2013-11-03 12:11:15","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1279","1","32","Achhnera","2013-11-03 12:11:15","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1280","1","32","Adari","2013-11-03 12:11:15","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1281","1","32","Agra","2013-11-03 12:11:15","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1282","1","32","Aligarh","2013-11-03 12:11:15","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1283","1","32","Allahabad","2013-11-03 12:11:15","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1284","1","32","Amroha","2013-11-03 12:11:15","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1285","1","32","Azamgarh","2013-11-03 12:11:16","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1286","1","32","Bahraich","2013-11-03 12:11:16","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1287","1","32","Ballia","2013-11-03 12:11:16","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1288","1","32","Balrampur","2013-11-03 12:11:16","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1289","1","32","Banda","2013-11-03 12:11:16","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1290","1","32","Bareilly","2013-11-03 12:11:16","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1291","1","32","Chandausi","2013-11-03 12:11:16","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1292","1","32","Dadri","2013-11-03 12:11:16","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1293","1","32","Deoria","2013-11-03 12:11:16","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1294","1","32","Etawah","2013-11-03 12:11:16","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1295","1","32","Fatehabad","2013-11-03 12:11:16","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1296","1","32","Fatehpur","2013-11-03 12:11:16","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1297","1","32","Fatehpur","2013-11-03 12:11:16","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1298","1","32","Greater noida","2013-11-03 12:11:16","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1299","1","32","Hamirpur","2013-11-03 12:11:16","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1300","1","32","Hardoi","2013-11-03 12:11:16","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1301","1","32","Jajmau","2013-11-03 12:11:16","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1302","1","32","Jaunpur","2013-11-03 12:11:16","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1303","1","32","Jhansi","2013-11-03 12:11:16","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1304","1","32","Kalpi","2013-11-03 12:11:16","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1305","1","32","Kanpur","2013-11-03 12:11:16","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1306","1","32","Kota","2013-11-03 12:11:16","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1307","1","32","Laharpur","2013-11-03 12:11:16","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1308","1","32","Lakhimpur","2013-11-03 12:11:16","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1309","1","32","Lal gopalganj nindaura","2013-11-03 12:11:16","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1310","1","32","Lalganj","2013-11-03 12:11:16","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1311","1","32","Lalitpur","2013-11-03 12:11:16","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1312","1","32","Lar","2013-11-03 12:11:16","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1313","1","32","Loni","2013-11-03 12:11:16","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1314","1","32","Lucknow","2013-11-03 12:11:16","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1315","1","32","Mathura","2013-11-03 12:11:16","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1316","1","32","Meerut","2013-11-03 12:11:16","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1317","1","32","Modinagar","2013-11-03 12:11:16","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1318","1","32","Muradnagar","2013-11-03 12:11:16","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1319","1","32","Nagina","2013-11-03 12:11:16","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1320","1","32","Najibabad","2013-11-03 12:11:16","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1321","1","32","Nakur","2013-11-03 12:11:16","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1322","1","32","Nanpara","2013-11-03 12:11:16","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1323","1","32","Naraura","2013-11-03 12:11:16","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1324","1","32","Naugawan sadat","2013-11-03 12:11:16","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1325","1","32","Nautanwa","2013-11-03 12:11:16","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1326","1","32","Nawabganj","2013-11-03 12:11:16","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1327","1","32","Nehtaur","2013-11-03 12:11:16","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1328","1","32","Noida","2013-11-03 12:11:16","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1329","1","32","Noorpur","2013-11-03 12:11:16","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1330","1","32","Obra","2013-11-03 12:11:16","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1331","1","32","Orai","2013-11-03 12:11:16","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1332","1","32","Padrauna","2013-11-03 12:11:16","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1333","1","32","Palia kalan","2013-11-03 12:11:17","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1334","1","32","Parasi","2013-11-03 12:11:17","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1335","1","32","Phulpur","2013-11-03 12:11:17","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1336","1","32","Pihani","2013-11-03 12:11:17","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1337","1","32","Pilibhit","2013-11-03 12:11:17","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1338","1","32","Pilkhuwa","2013-11-03 12:11:17","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1339","1","32","Powayan","2013-11-03 12:11:17","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1340","1","32","Pukhrayan","2013-11-03 12:11:17","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1341","1","32","Puranpur","2013-11-03 12:11:17","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1342","1","32","Purquazi","2013-11-03 12:11:17","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1343","1","32","Purwa","2013-11-03 12:11:17","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1344","1","32","Rae bareli","2013-11-03 12:11:17","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1345","1","32","Rampur","2013-11-03 12:11:17","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1346","1","32","Rampur maniharan","2013-11-03 12:11:17","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1347","1","32","Rasra","2013-11-03 12:11:17","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1348","1","32","Rath","2013-11-03 12:11:17","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1349","1","32","Renukoot","2013-11-03 12:11:17","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1350","1","32","Reoti","2013-11-03 12:11:17","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1351","1","32","Robertsganj","2013-11-03 12:11:17","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1352","1","32","Rudauli","2013-11-03 12:11:17","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1353","1","32","Rudrapur","2013-11-03 12:11:17","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1354","1","32","Sadabad","2013-11-03 12:11:17","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1355","1","32","Safipur","2013-11-03 12:11:17","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1356","1","32","Saharanpur","2013-11-03 12:11:17","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1357","1","32","Sahaspur","2013-11-03 12:11:17","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1358","1","32","Sahaswan","2013-11-03 12:11:17","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1359","1","32","Sahawar","2013-11-03 12:11:17","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1360","1","32","Sahjanwa","2013-11-03 12:11:17","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1361","1","32","Saidpur","2013-11-03 12:11:17","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1362","1","32","Sambhal","2013-11-03 12:11:17","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1363","1","32","Samdhan","2013-11-03 12:11:17","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1364","1","32","Samthar","2013-11-03 12:11:17","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1365","1","32","Sandi","2013-11-03 12:11:18","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1366","1","32","Sandila","2013-11-03 12:11:18","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1367","1","32","Sardhana","2013-11-03 12:11:18","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1368","1","32","Seohara","2013-11-03 12:11:18","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1369","1","32","Shahabad","2013-11-03 12:11:18","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1370","1","32","Shahabad","2013-11-03 12:11:18","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1371","1","32","Shahganj","2013-11-03 12:11:18","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1372","1","32","Shahjahanpur","2013-11-03 12:11:18","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1373","1","32","Shamli","2013-11-03 12:11:18","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1374","1","32","Shamsabad","2013-11-03 12:11:18","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1375","1","32","Shamsabad","2013-11-03 12:11:18","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1376","1","32","Sherkot","2013-11-03 12:11:18","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1377","1","32","Shikarpur","2013-11-03 12:11:18","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1378","1","32","Shikohabad","2013-11-03 12:11:18","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1379","1","32","Shishgarh","2013-11-03 12:11:18","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1380","1","32","Siana","2013-11-03 12:11:18","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1381","1","32","Sikanderpur","2013-11-03 12:11:18","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1382","1","32","Sikandra rao","2013-11-03 12:11:18","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1383","1","32","Sikandrabad","2013-11-03 12:11:18","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1384","1","32","Sirsaganj","2013-11-03 12:11:18","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1385","1","32","Sirsi","2013-11-03 12:11:18","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1386","1","32","Sitapur","2013-11-03 12:11:19","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1387","1","32","Soron","2013-11-03 12:11:19","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1388","1","32","Suar","2013-11-03 12:11:19","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1389","1","32","Sultanpur","2013-11-03 12:11:19","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1390","1","32","Sumerpur","2013-11-03 12:11:19","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1391","1","32","Tanda","2013-11-03 12:11:19","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1392","1","32","Tanda","2013-11-03 12:11:19","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1393","1","32","Tetri bazar","2013-11-03 12:11:19","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1394","1","32","Thakurdwara","2013-11-03 12:11:19","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1395","1","32","Thana bhawan","2013-11-03 12:11:19","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1396","1","32","Tilhar","2013-11-03 12:11:19","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1397","1","32","Tirwaganj","2013-11-03 12:11:19","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1398","1","32","Tulsipur","2013-11-03 12:11:19","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1399","1","32","Tundla","2013-11-03 12:11:19","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1400","1","32","Unnao","2013-11-03 12:11:19","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1401","1","32","Utraula","2013-11-03 12:11:19","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1402","1","32","Varanasi","2013-11-03 12:11:19","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1403","1","32","Vrindavan","2013-11-03 12:11:19","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1404","1","32","Warhapur","2013-11-03 12:11:19","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1405","1","32","Zaidpur","2013-11-03 12:11:19","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1406","1","32","Zamania","2013-11-03 12:11:19","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1407","1","33","Almora","2013-11-03 12:11:19","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1408","1","33","Bazpur","2013-11-03 12:11:19","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1409","1","33","Chamba","2013-11-03 12:11:19","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1410","1","33","Dehradun","2013-11-03 12:11:19","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1411","1","33","Haldwani","2013-11-03 12:11:19","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1412","1","33","Haridwar","2013-11-03 12:11:19","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1413","1","33","Jaspur","2013-11-03 12:11:19","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1414","1","33","Kashipur","2013-11-03 12:11:19","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1415","1","33","Kichha","2013-11-03 12:11:19","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1416","1","33","Kotdwara","2013-11-03 12:11:19","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1417","1","33","Manglaur","2013-11-03 12:11:19","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1418","1","33","Mussoorie","2013-11-03 12:11:19","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1419","1","33","Nagla","2013-11-03 12:11:19","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1420","1","33","Nainital","2013-11-03 12:11:20","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1421","1","33","Pauri","2013-11-03 12:11:20","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1422","1","33","Pithoragarh","2013-11-03 12:11:20","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1423","1","33","Ramnagar","2013-11-03 12:11:20","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1424","1","33","Rishikesh","2013-11-03 12:11:20","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1425","1","33","Roorkee","2013-11-03 12:11:20","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1426","1","33","Rudrapur","2013-11-03 12:11:20","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1427","1","33","Sitarganj","2013-11-03 12:11:20","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1428","1","33","Tehri","2013-11-03 12:11:20","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1429","1","33","Muzaffarnagar","2013-11-03 12:11:20","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1430","1","35","Calcutta","2013-11-03 12:11:20","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1431","1","35","Adra","2013-11-03 12:11:20","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1432","1","35","Alipurduar","2013-11-03 12:11:20","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1433","1","35","Arambagh","2013-11-03 12:11:20","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1434","1","35","Asansol","2013-11-03 12:11:20","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1435","1","35","Baharampur","2013-11-03 12:11:20","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1436","1","35","Bally","2013-11-03 12:11:20","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1437","1","35","Balurghat","2013-11-03 12:11:20","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1438","1","35","Bankura","2013-11-03 12:11:20","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1439","1","35","Barakar","2013-11-03 12:11:20","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1440","1","35","Barasat","2013-11-03 12:11:20","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1441","1","35","Bardhaman","2013-11-03 12:11:20","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1442","1","35","Bidhan nagar","2013-11-03 12:11:20","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1443","1","35","Chinsura","2013-11-03 12:11:20","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1444","1","35","Contai","2013-11-03 12:11:20","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1445","1","35","Cooch behar","2013-11-03 12:11:20","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1446","1","35","Darjeeling","2013-11-03 12:11:20","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1447","1","35","Durgapur","2013-11-03 12:11:20","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1448","1","35","Haldia","2013-11-03 12:11:20","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1449","1","35","Howrah","2013-11-03 12:11:20","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1450","1","35","Islampur","2013-11-03 12:11:20","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1451","1","35","Jhargram","2013-11-03 12:11:20","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1452","1","35","Kharagpur","2013-11-03 12:11:20","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1453","1","35","Kolkata","2013-11-03 12:11:20","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1454","1","35","Mainaguri","2013-11-03 12:11:20","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1455","1","35","Mal","2013-11-03 12:11:20","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1456","1","35","Mathabhanga","2013-11-03 12:11:20","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1457","1","35","Medinipur","2013-11-03 12:11:20","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1458","1","35","Memari","2013-11-03 12:11:20","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1459","1","35","Monoharpur","2013-11-03 12:11:20","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1460","1","35","Murshidabad","2013-11-03 12:11:20","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1461","1","35","Nabadwip","2013-11-03 12:11:20","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1462","1","35","Naihati","2013-11-03 12:11:20","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1463","1","35","Panchla","2013-11-03 12:11:20","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1464","1","35","Pandua","2013-11-03 12:11:20","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1465","1","35","Paschim punropara","2013-11-03 12:11:21","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1466","1","35","Purulia","2013-11-03 12:11:21","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1467","1","35","Raghunathpur","2013-11-03 12:11:21","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1468","1","35","Raiganj","2013-11-03 12:11:21","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1469","1","35","Rampurhat","2013-11-03 12:11:21","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1470","1","35","Ranaghat","2013-11-03 12:11:21","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1471","1","35","Sainthia","2013-11-03 12:11:21","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1472","1","35","Santipur","2013-11-03 12:11:21","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1473","1","35","Siliguri","2013-11-03 12:11:21","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1474","1","35","Sonamukhi","2013-11-03 12:11:21","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1475","1","35","Srirampore","2013-11-03 12:11:21","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1476","1","35","Suri","2013-11-03 12:11:21","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1477","1","35","Taki","2013-11-03 12:11:21","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1478","1","35","Tamluk","2013-11-03 12:11:21","0000-00-00 00:00:00");
INSERT INTO regions VALUES("1479","1","35","Tarakeswar","2013-11-03 12:11:21","0000-00-00 00:00:00");

DROP TABLE state;

CREATE TABLE `state` (
  `stateId` int(11) NOT NULL AUTO_INCREMENT,
  `countryId` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  PRIMARY KEY (`stateId`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

INSERT INTO state VALUES("1","1","Andaman & Nicobar Islands","2013-11-03 12:11:39");
INSERT INTO state VALUES("2","1","Andhra Pradesh","2013-11-03 12:11:39");
INSERT INTO state VALUES("3","1","Arunachal Pradesh","2013-11-03 12:11:39");
INSERT INTO state VALUES("4","1","Assam","2013-11-03 12:11:39");
INSERT INTO state VALUES("5","1","Bihar","2013-11-03 12:11:39");
INSERT INTO state VALUES("6","1","Chhattisgarh","2013-11-03 12:11:39");
INSERT INTO state VALUES("7","1","Dadra & Nagar Haveli","2013-11-03 12:11:39");
INSERT INTO state VALUES("8","1","Daman & Diu","2013-11-03 12:11:39");
INSERT INTO state VALUES("9","1","Delhi","2013-11-03 12:11:39");
INSERT INTO state VALUES("10","1","Goa","2013-11-03 12:11:39");
INSERT INTO state VALUES("11","1","Gujrat","2013-11-03 12:11:39");
INSERT INTO state VALUES("12","1","Haryana","2013-11-03 12:11:39");
INSERT INTO state VALUES("13","1","Himachal Pradesh","2013-11-03 12:11:39");
INSERT INTO state VALUES("14","1","Jammu & Kashmir","2013-11-03 12:11:39");
INSERT INTO state VALUES("15","1","Jharkhand","2013-11-03 12:11:39");
INSERT INTO state VALUES("16","1","Karnataka","2013-11-03 12:11:39");
INSERT INTO state VALUES("17","1","Kerala","2013-11-03 12:11:39");
INSERT INTO state VALUES("18","1","Lakshadweep","2013-11-03 12:11:39");
INSERT INTO state VALUES("19","1","Madhya Pradesh","2013-11-03 12:11:39");
INSERT INTO state VALUES("20","1","Maharashtra","2013-11-03 12:11:39");
INSERT INTO state VALUES("21","1","Manipur","2013-11-03 12:11:39");
INSERT INTO state VALUES("22","1","Meghalaya","2013-11-03 12:11:39");
INSERT INTO state VALUES("23","1","Mizoram","2013-11-03 12:11:39");
INSERT INTO state VALUES("24","1","Nagaland","2013-11-03 12:11:39");
INSERT INTO state VALUES("25","1","Orissa","2013-11-03 12:11:39");
INSERT INTO state VALUES("26","1","Pondicherry","2013-11-03 12:11:39");
INSERT INTO state VALUES("27","1","Punjab","2013-11-03 12:11:39");
INSERT INTO state VALUES("28","1","Rajasthan","2013-11-03 12:11:39");
INSERT INTO state VALUES("29","1","Sikkim","2013-11-03 12:11:39");
INSERT INTO state VALUES("30","1","Tamil Nadu","2013-11-03 12:11:39");
INSERT INTO state VALUES("31","1","Tripura","2013-11-03 12:11:39");
INSERT INTO state VALUES("32","1","Uttar Pradesh","2013-11-03 12:11:39");
INSERT INTO state VALUES("33","1","Uttarakhand","2013-11-03 12:11:39");
INSERT INTO state VALUES("35","1","West Bengal","2013-11-03 12:11:39");

DROP TABLE user;

CREATE TABLE `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` int(11) NOT NULL,
  `firstname` int(11) NOT NULL,
  `lastname` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `userId_2` (`userId`),
  KEY `userId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE usertype;

CREATE TABLE `usertype` (
  `roleId` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(2) NOT NULL,
  `created_date` datetime NOT NULL,
  PRIMARY KEY (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

SET foreign_key_checks = 1;


