TYPE=VIEW
query=select `newdemo`.`flight`.`flightcode` AS `flightcode`,`newdemo`.`flight`.`arrival` AS `arrival`,`newdemo`.`flight`.`departure` AS `departure`,`newdemo`.`flight`.`source` AS `source`,`newdemo`.`flight`.`destination` AS `destination`,`newdemo`.`flight`.`duration` AS `duration`,`newdemo`.`flight`.`airlineID` AS `airlineID`,`newdemo`.`flight`.`sid` AS `sid`,`newdemo`.`flight`.`did` AS `did`,`a`.`astate` AS `sstate` from `newdemo`.`flight` join `newdemo`.`airport` `a` where `newdemo`.`flight`.`sid` = `a`.`Airportno`
md5=652c8bc71182a40eedbe5d1972f93c4c
updatable=1
algorithm=0
definer_user=
definer_host=
suid=2
with_check_option=0
timestamp=0001670576876561961
create-version=2
source=SELECT `flightcode`, `arrival`, `departure`, `source`, `destination`, `duration`, `airlineID`, `sid`, `did` ,a.astate as sstate FROM `flight`,`airport` as a where sid = a.Airportno
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `newdemo`.`flight`.`flightcode` AS `flightcode`,`newdemo`.`flight`.`arrival` AS `arrival`,`newdemo`.`flight`.`departure` AS `departure`,`newdemo`.`flight`.`source` AS `source`,`newdemo`.`flight`.`destination` AS `destination`,`newdemo`.`flight`.`duration` AS `duration`,`newdemo`.`flight`.`airlineID` AS `airlineID`,`newdemo`.`flight`.`sid` AS `sid`,`newdemo`.`flight`.`did` AS `did`,`a`.`astate` AS `sstate` from `newdemo`.`flight` join `newdemo`.`airport` `a` where `newdemo`.`flight`.`sid` = `a`.`Airportno`
mariadb-version=100427
