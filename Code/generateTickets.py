# INSERT INTO `flight` (`flightcode`, `arrival`, `departure`, `source`, `destination`, `duration`, `airlineID`, `sid`, `did`) VALUES ('AXB08', '2022-12-10 22:15:00', '2022-12-11 23:30:00', 'Chhatrapati Shivaji Maharaj International Airport', 'Kempegowda International Airport', '01:15:00', 'AI', '2', '5');

ticketno = 10280
for i in range(10):
    print("INSERT INTO `ticket`(`ticketno`, `tsource`, `tdestination`, `dateoftravel`, `seatno`, `price`, `flightcode`) VALUES ('",(ticketno+i),"','Chhatrapati Shivaji Maharaj International Airport','Kempegowda International Airport','2022-12-10','",(1+i),"','8060','AXB08');")

