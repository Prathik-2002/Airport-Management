<?php
  $mysqli = new mysqli("localhost","root","","newdemo");
  if ($mysqli -> connect_errno) {
    echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
    exit();
  }
  $tablestring = '<div class="table-container"><table class="table"><thead><tr><th scope="col">#</th><th scope="col">Flight Code</th><th scope="col">Departure</th><th scope="col">Arrival</th><th scope="col">Source</th><th scope="col">Destination</th><th scope="col">Duration</th></tr></thead><tbody class="table-group-divider">';
  $sql = "SELECT * from flight";
  $count = 1;
  $result = $mysqli  -> query($sql);
  while($row = $result -> fetch_array(MYSQLI_ASSOC)){
    $tablestring = $tablestring.'<tr><th scope="row">'.$count.'</th><td>'.$row["flightcode"].'</td><td>'.$row["departure"].'</td><td>'.$row["arrival"].'</td><td>'.$row["source"].'</td><td>'.$row["destination"].'</td><td>'.$row["duration"].'</td></tr>';
    $count = $count + 1;
  }
  $tablestring = $tablestring."</tbody></table></div>";

  echo "displayTable.innerHTML = '".$tablestring."';";
  $result -> free_result();
  $mysqli -> close();
  ?>