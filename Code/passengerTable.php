<?php
  $mysqli = new mysqli("localhost","root","","newdemo");
  if ($mysqli -> connect_errno) {
    echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
    exit();
  }
  $tablestring = '<div class="table-container"><table class="table"><thead><tr><th scope="col">#</th><th scope="col">Passenger Id</th><th scope="col">Address</th><th scope="col">First Name</th><th scope="col">Last Name</th><th scope="col">Age</th><th scope="col">Sex</th><th scope="col">Phone</th><th scope="col">Passport Number</th></tr></thead><tbody class="table-group-divider">';
  $sql = "SELECT * from passenger";
  $count = 1;
  $result = $mysqli  -> query($sql);
  while($row = $result -> fetch_array(MYSQLI_ASSOC)){
    $tablestring = $tablestring.'<tr><th scope="row">'.$count.'</th><td>'.$row["pid"].'</td><td>'.str_replace("\r\n", " ", $row["paddress"]).'</td><td>'.$row["fname"].'</td><td>'.$row["lname"].'</td><td>'.$row["age"].'</td><td>'.$row["sex"].'</td><td>'.$row["phone"].'</td><td>'.$row["passportno"].'</td></tr>';
    $count = $count + 1;
  }
  $tablestring = $tablestring."</tbody></table></div>";

  echo "displayTable.innerHTML = '".$tablestring."';";
  $result -> free_result();
  $mysqli -> close();
  ?>