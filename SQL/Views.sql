DROP TABLE IF EXISTS `driver_rating`;
CREATE TABLE `driver_rating` (
  `driver_rater_id` varchar(255) NOT NULL,
  `delivery_time` mediumint DEFAULT NULL,
  `attitude` varchar(255) DEFAULT NULL,
  `protection` varchar(255) DEFAULT NULL,
  `fee` int DEFAULT NULL,
  `rd_id` int DEFAULT NULL,
  PRIMARY KEY (`driver_rater_id`)
);
INSERT INTO `driver_rating` VALUES ('AQO04BKW7AQ',5,'Bad','No',2,160),('BJP06PWA2WQ',3,'Good','No',1,156),('CGR04MYS5IM',1,'Bad','No',5,174),('CNR32ICL5PD',5,'Bad','Yes',4,166),('EBD49ZAC3BR',5,'Bad','Yes',2,172),('EDK07FPY7MO',5,'Bad','Yes',4,168),('EHD23VSW9GA',4,'Bad','Yes',1,171),('EPV83JLX7JW',1,'Good','Yes',2,177),('GAB68YAU2KN',3,'Good','Yes',4,187),('HUC25IVW5QE',2,'Bad','Yes',4,173),('IHZ21OKC9DQ',5,'Good','No',4,186),('IKO12AFO3CJ',1,'Bad','Yes',2,152),('ILU27WMV9SO',3,'Good','Yes',5,167),('JFJ92MTX7PE',4,'Good','Yes',5,168),('JYN61SNQ3EM',1,'Bad','Yes',5,153),('KPF49KQY7ZW',4,'Good','No',2,176),('KPL85FAI7PD',3,'Bad','No',1,178),('KSQ37ENG5TE',1,'Good','Yes',3,162),('MYA97XRR6OS',5,'Good','Yes',3,179),('NBA99LJI3JU',5,'Bad','Yes',3,175),('OBS37IYB9TT',2,'Good','Yes',5,182),('ODZ58QAN6EE',1,'Bad','Yes',3,189),('OMG75RQH7UD',4,'Good','No',1,156),('OVP66YNN4OX',3,'Good','Yes',4,150),('QBU69AOR8GW',1,'Good','Yes',5,160),('RWL29LGJ1OC',4,'Bad','Yes',1,150),('RYM64AEQ1TX',2,'Good','Yes',1,152),('SBI22ZQY0ML',5,'Bad','Yes',5,163),('TER53XBX2IT',3,'Bad','No',3,163),('UTO26BYK6ZK',1,'Good','Yes',5,169),('VTS76ZTO5IN',4,'Bad','Yes',3,181),('WHO71TPM6WT',4,'Good','No',3,167),('WHS79HMV9WX',4,'Good','Yes',1,165),('XCS33INT0MC',5,'Bad','No',5,157),('XGC43TNE6OX',2,'Good','Yes',4,178),('XPE54NUQ4LU',1,'Bad','Yes',4,183),('XZO39YPO1JE',5,'Good','Yes',1,157),('YHS26TWM0RG',4,'Good','No',2,170),('ZCI34OAL7VE',2,'Bad','No',1,158),('ZIO24DFR6RM',4,'Good','Yes',2,154);

DROP TABLE IF EXISTS `restaurant_rating`;
CREATE TABLE `restaurant_rating` (
  `restaurant_rater_id` varchar(255) NOT NULL,
  `recommendation` varchar(255) DEFAULT NULL,
  `quality` int DEFAULT NULL,
  `variety` varchar(255) DEFAULT NULL,
  `cleanliness` varchar(255) DEFAULT NULL,
  `affordable` varchar(255) DEFAULT NULL,
  `rr_id` int DEFAULT NULL,
  PRIMARY KEY (`restaurant_rater_id`)
);
INSERT INTO `restaurant_rating` VALUES ('AJW49YQZ3RM','No',4,'Yes','No','Yes',181),('ANN24NRY6WQ','No',2,'No','Yes','Yes',169),('BCO06IBR4KA','No',1,'No','Yes','No',189),('EOS10PMG6OJ','Yes',2,'Yes','Yes','Yes',150),('EUN79XZC3JI','Yes',1,'Yes','No','Yes',174),('FEZ69VDR7DP','No',3,'Yes','No','No',185),('FIH07RXJ1AW','No',1,'Yes','Yes','Yes',154),('FME55IJE6AV','Yes',5,'Yes','Yes','No',178),('FVQ39FHS5MU','No',5,'No','No','No',174),('FZB71FQX8JD','No',3,'Yes','Yes','Yes',150),('GKK64DUS8GC','No',3,'Yes','Yes','Yes',161),('GNG41ZZQ1ME','Yes',2,'No','Yes','No',155),('GWE25KQS9LR','No',5,'No','No','Yes',187),('HHI81FGD1PK','No',5,'No','No','No',158),('HNK23STB5CD','No',2,'Yes','Yes','No',157),('HOW22WTY3KZ','No',4,'No','No','Yes',150),('HYP68AHP5GD','Yes',3,'Yes','No','No',166),('JAP10TEL9IH','No',2,'No','Yes','Yes',165),('KDU72FAH1JE','Yes',5,'No','Yes','Yes',178),('KZD45MVT3AU','No',1,'Yes','No','No',167),('MXK47HXN2OA','No',2,'Yes','No','No',187),('NXH54ISK9GF','Yes',5,'Yes','Yes','No',184),('OBZ60HRC4RT','Yes',4,'Yes','Yes','Yes',177),('OCG98THN0XW','Yes',2,'No','Yes','Yes',166),('OEV36KKF5JI','No',4,'No','No','Yes',166),('PZR83TDB2HK','No',2,'Yes','No','No',183),('RAF93YFA5HK','Yes',1,'Yes','No','No',152),('RDQ18XIS0QB','No',1,'No','Yes','Yes',184),('RLS63RDT7WE','Yes',5,'Yes','No','Yes',183),('RYT89ODZ5XV','Yes',3,'No','No','Yes',163),('TMQ45GRB8AN','Yes',3,'No','Yes','Yes',189),('URA82QFU4HA','Yes',4,'No','Yes','Yes',183),('UVE87FPS9ZL','Yes',2,'Yes','No','No',176),('VKF27PKX5HR','Yes',5,'No','Yes','Yes',178),('XAH22HNN1WC','No',2,'No','Yes','Yes',163),('XMM05NLG1CP','Yes',5,'Yes','Yes','No',150),('YQQ85OJE0YK','Yes',5,'No','No','No',163),('ZDW30KMT8GA','Yes',3,'No','No','Yes',184),('ZFQ20XKV4XP','Yes',1,'Yes','Yes','No',182),('ZWO57EBX6SR','No',4,'Yes','No','Yes',169);

DROP TABLE IF EXISTS `rating`;
CREATE TABLE `rating` (
  `rating_id` int NOT NULL,
  `stars` int DEFAULT NULL,
  `o_id` int DEFAULT NULL,
  PRIMARY KEY (`rating_id`)
);
INSERT INTO `rating` VALUES (150,4,39),(151,5,44),(152,1,64),(153,5,84),(154,5,61),(155,3,34),(156,1,12),(157,4,86),(158,1,97),(159,2,62),(160,2,55),(161,3,84),(162,2,75),(163,5,74),(164,2,6),(165,3,80),(166,5,58),(167,3,34),(168,1,78),(169,2,42),(170,2,43),(171,1,86),(172,4,8),(173,1,2),(174,5,5),(175,5,99),(176,5,35),(177,2,21),(178,4,51),(179,4,9),(180,5,63),(181,2,81),(182,3,59),(183,4,79),(184,4,69),(185,5,33),(186,3,95),(187,5,68),(188,2,44),(189,3,50);


DROP VIEW IF EXISTS rating_summary;
CREATE VIEW rating_summary AS
SELECT rating_id, COUNT(*) AS rating_count,
	AVG(stars) AS average_rating
FROM rating r JOIN `order` o
ON r.o_id = o.order_id
GROUP BY rating_id;
SELECT * FROM rating_summary;

DROP VIEW IF EXISTS price_rating;
CREATE VIEW price_rating AS
SELECT o.total_price, rating_id, COUNT(*) AS rating_count, stars
FROM rating r JOIN `orders` o
ON r.o_id = o.order_id
WHERE o.total_price > 10
GROUP BY rating_id;
SELECT * FROM price_rating;

DROP VIEW IF EXISTS rating_dr;
CREATE VIEW rating_dr AS 
SELECT rating_id, stars, attitude as driver_attitude, quality as food_quality
FROM  rating r, `orders` o, driver_rating d, restaurant_rating rr
WHERE r.o_id = o.order_id
	AND d.rd_id = r.rating_id
	AND rr.rr_id = r.rating_id
GROUP BY rating_id
ORDER BY rating_id;
SELECT * FROM rating_dr;


select * from restaurant;