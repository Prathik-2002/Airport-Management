TYPE=VIEW
query=select `newdemo`.`ticket`.`ticketno` AS `ticketno`,`newdemo`.`ticket`.`flightcode` AS `flightcode` from `newdemo`.`ticket` where !(`newdemo`.`ticket`.`ticketno` in (select `b`.`ticketno` from `newdemo`.`booked` `b`))
md5=7ad966845bc6b9dbb47d305c38b97ba6
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=0001670519983966196
create-version=2
source=select ticketno,flightcode from ticket where ticketno not in (select b.ticketno from booked as b)
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `newdemo`.`ticket`.`ticketno` AS `ticketno`,`newdemo`.`ticket`.`flightcode` AS `flightcode` from `newdemo`.`ticket` where !(`newdemo`.`ticket`.`ticketno` in (select `b`.`ticketno` from `newdemo`.`booked` `b`))
mariadb-version=100427
