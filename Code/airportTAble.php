<?php
  $mysqli = new mysqli("localhost","root","","newdemo");
  if ($mysqli -> connect_errno) {
    echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
    exit();
  }
  $tablestring = '<div class="table-container"><table class="table"><thead><tr><th scope="col">#</th><th scope="col">Airport Name</th><th scope="col">State</th><th scope="col">City</th><th scope="col">Country</th></tr></thead><tbody class="table-group-divider">';
  $sql = "SELECT * from airport";
  $result = $mysqli  -> query($sql);
  while($row = $result -> fetch_array(MYSQLI_ASSOC)){
    $tablestring = $tablestring.'<tr><th scope="row">'.$row["Airportno"].'</th><td>'.$row["airportname"].'</td><td>'.$row["astate"].'</td><td>'.$row["city"].'</td><td>'.$row["country"].'</td></tr>';
  
  }
  $tablestring = $tablestring."</tbody></table></div>";

  echo "displayTable.innerHTML = '".$tablestring."';";
  $result -> free_result();
  $mysqli -> close();
  ?>