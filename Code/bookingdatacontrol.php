<html>
<body>
    
    <?php
    $mysqli = new mysqli("localhost","root","","newdemo");
    if ($mysqli -> connect_errno) {
      echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
      exit();
    }
    
    $sql = "SELECT min(ticketno) as available from notbooked where flightcode = '".$_POST["flightcode"]."';";
    $result = $mysqli  -> query($sql);
    while($row = $result -> fetch_array(MYSQLI_ASSOC)){
        $availableno = $row["available"];
    }
    $sql = "INSERT INTO `booked`(`pid`, `ticketno`, `dateofbooking`) VALUES ('".$_POST["pid"]."','".$availableno."','".date("Y-m-d")."');";
    $result = $mysqli  -> query($sql);
    $mysqli -> close();
    header("location:mainpage.php");

    ?>
    </body>
    </html>