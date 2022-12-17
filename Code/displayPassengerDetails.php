<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Passenger details</title>
    <style>
        *{
            padding: 0;
            margin: 0;
        }
        p{
            font-weight: 400;
            font-size: 20px;
            padding: 4px;

        }
        .container{
            padding:1rem 4rem 0 4rem;
            padding-bottom: 0px;

        }
        hr{
            border: 1px solid black;
            height: 1px;
            background: black;
            margin: 30px 0;
        }
    </style>
</head>
<body>
    <div class="container passenger">
        <hr><div style="font-size: 40px;">Passenger details: </div><br>
    <?php
$mysqli = new mysqli("localhost","root","","newdemo");
  if ($mysqli -> connect_errno) {
    echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
    exit();
  }
  $passengerid = $_POST["passengerid"];
  $sql = "SELECT pid,fname,lname,paddress,sex,age,phone,passportno from passenger where pid=".$passengerid;
  $result = $mysqli  -> query($sql);
  while($row = $result -> fetch_array(MYSQLI_ASSOC)){
    
    echo "<p> Name : ".$row["fname"]." ".$row["lname"]."</p>";
    echo "<p> Address : ".$row["paddress"]."</p>";
    echo "<p> Sex : ".$row["sex"]."</p>";
    echo "<p> Age : ".$row["age"]."</p>";
    echo "<p> Phone : ".$row["phone"]."</p>";
    echo "<p> Passport Number : ".$row["passportno"]."</p><hr>";
    

  }


  ?>
  </div>
  <div class="container passenger" style="padding-top: 0px;">
        <div style="font-size: 40px;">Ticket Details: </div><br>
    <?php
$mysqli = new mysqli("localhost","root","","newdemo");
  if ($mysqli -> connect_errno) {
    echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
    exit();
  }
  $passengerid = $_POST["passengerid"];
  $sql = "SELECT t.ticketno,tsource,tdestination,seatno,price,flightcode from ticket t,booked b where t.ticketno = b.ticketno and b.pid=".$passengerid ;
  $result = $mysqli  -> query($sql);
  while($row = $result -> fetch_array(MYSQLI_ASSOC)){
    
    echo "<p> Ticket Number : ".$row["ticketno"]."</p>";
    echo "<p> Source : ".$row["tsource"]."</p>";
    echo "<p> Destination : ".$row["tdestination"]."</p>";
    echo "<p> Seat Number : ".$row["seatno"]."</p>";
    echo "<p> Price : ".$row["price"]."</p>";
    echo "<p> Flight code : ".$row["flightcode"]."</p>";
    $flightno = $row["flightcode"];
    

  }
  $sql = "SELECT arrival,departure,duration from flight where flightcode like '".$flightno."'" ;
  $result = $mysqli  -> query($sql);
  while($row = $result -> fetch_array(MYSQLI_ASSOC)){
    
    echo "<p> Arrival : ".$row["arrival"]."</p>";
    echo "<p> Departure : ".$row["departure"]."</p>";
    echo "<p> Duration : ".$row["duration"]."</p><hr>";
   

    

  }


  ?>
  </div>
</body>
</html>