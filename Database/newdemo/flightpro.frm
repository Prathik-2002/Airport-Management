TYPE=VIEW
query=select `flightwithsstate`.`flightcode` AS `flightcode`,`flightwithsstate`.`arrival` AS `arrival`,`flightwithsstate`.`departure` AS `departure`,`flightwithsstate`.`source` AS `source`,`flightwithsstate`.`destination` AS `destination`,`flightwithsstate`.`duration` AS `duration`,`flightwithsstate`.`airlineID` AS `airlineID`,`flightwithsstate`.`sid` AS `sid`,`flightwithsstate`.`did` AS `did`,`flightwithsstate`.`sstate` AS `sstate`,`a`.`astate` AS `dstate` from `newdemo`.`flightwithsstate` join `newdemo`.`airport` `a` where `flightwithsstate`.`did` = `a`.`Airportno`
md5=e60ad2d70b8f18c8cc84bcf7e9d83877
updatable=1
algorithm=0
definer_user=
definer_host=
suid=2
with_check_option=0
timestamp=0001670577662606760
create-version=2
source=SELECT `flightcode`, `arrival`, `departure`, `source`, `destination`, `duration`, `airlineID`, `sid`, `did` ,`sstate`,a.astate as dstate FROM `flightwithsstate`,`airport` as a where did = a.Airportno
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `flightwithsstate`.`flightcode` AS `flightcode`,`flightwithsstate`.`arrival` AS `arrival`,`flightwithsstate`.`departure` AS `departure`,`flightwithsstate`.`source` AS `source`,`flightwithsstate`.`destination` AS `destination`,`flightwithsstate`.`duration` AS `duration`,`flightwithsstate`.`airlineID` AS `airlineID`,`flightwithsstate`.`sid` AS `sid`,`flightwithsstate`.`did` AS `did`,`flightwithsstate`.`sstate` AS `sstate`,`a`.`astate` AS `dstate` from `newdemo`.`flightwithsstate` join `newdemo`.`airport` `a` where `flightwithsstate`.`did` = `a`.`Airportno`
mariadb-version=100427
