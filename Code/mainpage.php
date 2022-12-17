<?php

?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>

  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet" />

  <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet" />

  <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.0.1/mdb.min.css" rel="stylesheet" />

  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.0.1/mdb.min.js"></script>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
    crossorigin="anonymous"></script>
  <style>
    .nav .nav-item a {
      margin: 3px;
      border: 1px solid rgba(127, 125, 125, 0.424);
    }

    .nav .nav-item a[aria-selected="false"]:hover {
      background-color: rgba(216, 216, 216, 0.222);
    }

    .nav .nav-item {
      margin: 2px;
    }
  </style>
 

</head>

<body>
  <h1 style="text-align: center;">Airport Management</h1>
  <div style="width: 80%; margin: auto;">
    <ul class="nav nav-pills nav-justified mb-3" id="ex1" role="tablist">
      <li class="nav-item" role="presentation">
        <a class="nav-link active" id="tab-passenger" data-mdb-toggle="pill" href="#pills-passenger" role="tab"
          aria-controls="pills-passenger" aria-selected="true">Passenger Details</a>
      </li>
      <li class="nav-item" role="presentation">
        <a class="nav-link" id="tab-register" data-mdb-toggle="pill" href="#pills-register" role="tab"
          aria-controls="pills-register" aria-selected="false">Add Tickets</a>
      </li>
      <li class="nav-item" role="presentation">
        <a class="nav-link" id="tab-table" data-mdb-toggle="pill" href="#pills-table" role="tab"
          aria-controls="pills-table" aria-selected="false">Table</a>
      </li>
    </ul>
    <hr>

    <div class="tab-content">

      <div class="tab-pane fade show active" id="pills-passenger" role="tabpanel" aria-labelledby="tab-passenger">
        <div class="row g-3">

          <div class="col-sm-12">
            <form action="displayPassengerDetails.php" method="post" id="done" onsubmit="">

              <label for="inputFname" class="form-label">Enter Passenger ID</label>
              <br>
              <input type="text" name="passengerid" class="form-control" style="width:50%; display:inline; margin-right: 2rem;" id="inputpid" autocomplete="off">
              <button type="submit" class="btn btn-primary" id="pid-search">Submit</button>
            </form>
            
          </div>
            
          
        </div>
        <div id="displayinfo"></div>
          <?php
            $lname = $fname = $email = $address = $phone = $age = $passno = "";
            if (isset($_POST["passno"])){
            
              $fname = $_POST["fname"];
              $lname = $_POST["lname"];
              
              $address = $_POST["address"];
              $phone = $_POST["phone"];
              $age = $_POST["age"];
              $passno = $_POST["passno"];
              $gender = $_POST["Gender"];


              $mysqli = new mysqli("localhost","root","","newdemo");
              if ($mysqli -> connect_errno) {
                echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
                exit();
              }
              // echo "<div>Gender: ".$gender."name : ".$fname."address: ".$address."</div>";
              $sql = "SELECT max(pid) as getpid from passenger";
              $result = $mysqli -> query($sql);
              while($row = $result -> fetch_array(MYSQLI_ASSOC)){
                $pid = $row["getpid"];
              }
              $pid = $pid + 1;
              $sql = "INSERT INTO `passenger`(`pid`, `paddress`, `fname`, `lname`, `age`, `sex`, `phone`, `passportno`, `flightcode`) VALUES ('".$pid."','".$address."','".$fname."','".$lname."','".$age."','".$gender."','".$phone."','".$passno."',NULL)";
              $result = $mysqli  -> query($sql);

              
              echo "<br><br><p>Your new PID is : ".$pid."</p>";

            }
            else{
           


          ?>
          <div>

            <button class="btn btn-primary col-sm-3 mt-4" id="ht">Add New Passenger</button>
          </div>

        
        <div id="addpassenger" style="display: none; margin: 1rem;">
        
          <form class="row g-3" method="post" action="">
            <div class="col-sm-6">
              <label for="inputFname" class="form-label">First Name</label>
              <input type="text" name="fname"class="form-control" id="inputFname">
            </div>
            <div class="col-sm-6">
              <label for="inputLname" class="form-label">Last Name</label>
              <input type="text" name="lname" class="form-control" id="inputLname">
            </div>
            

            <!--Gender-->
            <div class="col-sm-6 gender">
              <div style="margin-bottom: 7px; cursor: context-menu;">Gender</div>
              <input type="radio" class="btn-check" name="Gender" value="M" id="Gender-Male">
              <label class="btn btn-secondary" for="Gender-Male">Male</label>

              <input type="radio" class="btn-check" name="Gender" value="F" id="Gender-Female">
              <label class="btn btn-secondary" for="Gender-Female">Female</label>

              <input type="radio" class="btn-check" name="Gender" value="O" id="Gender-Other">
              <label class="btn btn-secondary" for="Gender-Other">Other</label>
            </div>
            <!--Address-->
            <div class="col-12">
              <label for="inputAddress" class="form-label">Address</label>
              <textarea name="address" class="form-control" id="inputAddress"></textarea>
            </div>
            <!--Phone-->
            <div class="col-sm-3">
              <label for="inputPhone" class="form-label">Phone</label>
              <input type="text" name="phone" class="form-control" id="inputPhone">
            </div>
            <!--Age-->
            <div class="col-sm-2">
              <label for="inputAge" class="form-label">Age</label>
              <input type="text" name="age" class="form-control" id="inputAge" autocomplete="off">
            </div>
            <div class="col-sm-6">
              <label for="inputPassportNo" class="form-label">Passport Number</label>
              <input type="text" name="passno" class="form-control" id="inputPassportNo" autocomplete="off">
            </div>

            <div class="col-12">
              <input type="submit" class="btn btn-primary" id="redirect">
            </div>
          </form>
          <?php
            }

          ?>

        </div>
      </div>

<!-- ----ADD--TICKETS-------------------------------------------------------- -->

      <div class="tab-pane fade" id="pills-register" role="tabpanel" aria-labelledby="tab-register">
        <form method="post" action="searchFlightResult.php">
      <div class="col-12" style="display: flex; justify-content: space-between; ">
        <div class="col-3">
          <label for="Source">Source</label>
         <select class="p-2 rounded shadow-sm outline-none col-12" name="source" id="Source">

            <?php

              $mysqli = new mysqli("localhost","root","","newdemo");
              if ($mysqli -> connect_errno) {
                echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
                exit();
              }
              $sql = "SELECT DISTINCT(astate) from airport";
              $result = $mysqli -> query($sql);
              while($row = $result -> fetch_array(MYSQLI_ASSOC))
              echo "<option value='".$row["astate"]."'>".$row["astate"]."</option>";
              $result -> free_result();
              
            ?>
          </select>
        </div>  
              
        
        <div class="col-3">
          
          <label for="Destination">Destination</label>
          <select class="p-2 rounded shadow-sm outline-none col-12" name="destination" id="Destination">
            <?php 
                $result = $mysqli -> query($sql); 
                while($row = $result -> fetch_array(MYSQLI_ASSOC))
                echo "<option value='".$row["astate"]."'>".$row["astate"]."</option>";
                $result -> free_result();
                $mysqli -> close();
                ?>
          </select>
        </div>
        <!-- <div class="date col-3" >
          <label for="getdate">Date of Travel</label>
          <input type="date" class="col-12 p-2 rounded outline-none shadow-sm" id="getdate">
        </div> -->
        <div> <button type="submit" class="btn btn-primary p-2" style="margin-top:25px;" id="searchFlight">Search Flights</button></div>
      </div>
    </form>
            </div>
      
      

<!-- -----TABLES--------------------------------------------------------- -->


    

      <div class="tab-pane fade" id="pills-table" role="tabpanel" aria-labelledby="tab-table">
        
        <botton class="btn btn-primary" id="passengertable">Passengers</botton>
        <!-- <botton class="btn btn-primary" id="tickettable">Tickets</botton> -->
        <botton class="btn btn-primary" id="flighttable">Flights</botton>
        <botton class="btn btn-primary" id="airporttable">Airports</botton>


        <div id="displayTable" class="p-3"></div>
        
        <!-- <div class="table-container">
          <table class="table">
            <thead><tr><th scope="col">#</th><th scope="col">First</th><th scope="col">Last</th><th scope="col">Handle</th></tr>
            </thead><tbody class="table-group-divider">
              <tr><th scope="row">1</th><td>Mark</td><td>Otto</td><td>@mdo</td>
              </tr>
              <tr>
                <th scope="row">2</th>
                <td>Jacob</td>
                <td>Thornton</td>
                <td>@fat</td>
              </tr>
              <tr>
                <th>3</th>
                <td>Larry the Bird</td>
                <td>Ninja</td>
                <td>@twitter</td>
              </tr>
              <tr>
                <th scope="row">1</th>
                <td>Mark</td>
                <td>Otto</td>
                <td>@mdo</td>
              </tr>
              
              
            </tbody>
          </table>
        </div> -->

      </div>
    </div>  
  </div>
  <script>

      const btn = document.querySelector("#ht");
      function addPassenger(e) {
        e.preventDefault();

        var dom = document.getElementById("addpassenger");

        //var text = '<div class="container"> <form class="row g-3"><div class="col-sm-6"><label for="inputFname" class="form-label">From</label><input type="text" class="form-control" id="inputFname" ></div><div class="col-sm-6"><label for="inputLname" class="form-label">To</label><select class="form-control" id="inputLname" ></div><div class="col-sm-6"><label for="inputEmail4" class="form-label">Email</label><input type="email" class="form-control" id="inputEmail4"></div><!--Gender--><div class="col-sm-6 gender"><div style="margin-bottom: 7px; cursor: context-menu;">Gender</div><input type="radio" class="btn-check" name="Gender" id="Gender-Male" ><label class="btn btn-secondary" for="Gender-Male">Male</label><input type="radio" class="btn-check" name="Gender" id="Gender-Female"><label class="btn btn-secondary" for="Gender-Female">Female</label><input type="radio" class="btn-check" name="Gender" id="Gender-Other"><label class="btn btn-secondary" for="Gender-Other">Other</label></div><!--Address--><div class="col-12"><label for="inputAddress" class="form-label">Address</label><input type="text" class="form-control" id="inputAddress" ></div><div class="col-sm-3"><label for="inputPhone" class="form-label">Phone</label><input type="text" class="form-control" id="inputPhone"></div><div class="col-sm-2"><label for="inputAge" class="form-label">Age</label><input type="text" class="form-control" id="inputAge" autocomplete="off"></div><div class="col-sm-6"><label for="inputPassportNo" class="form-label">Passport Number</label><input type="text" class="form-control" id="inputPassportNo" autocomplete="off"></div><div class="col-12"><button class="btn btn-primary">Done</button></div></form></div>';
        if (dom.style.display == "none")
          dom.style.display = "block";
        else
          dom.style.display = "none";
      }
      btn.addEventListener("click",addPassenger);
</script>



<script>
      const airporttable = document.querySelector("#airporttable")
      function addAirportTable(e){
        e.preventDefault();
        var displayTable = document.getElementById("displayTable");
      
      <?php 
      include("airportTAble.php");
      ?>
      
      }
      airporttable.addEventListener("click",addAirportTable);

      const flighttable = document.querySelector("#flighttable")
      function addFlightTable(e){
        e.preventDefault();
        var displayTable = document.getElementById("displayTable");
      
      <?php 
      include("flightTable.php");
      ?>
      
      }
      flighttable.addEventListener("click",addFlightTable);

      // const tickettable = document.querySelector("#tickettable")
      // function addTicketTable(e){
      //   e.preventDefault();
      //   var displayTable = document.getElementById("displayTable");
      
      // <?php 
      // include("ticketTable.php");
      // ?>
      
      // }
      // tickettable.addEventListener("click",addTicketTable);

      const passengertable = document.querySelector("#passengertable")
      function addPassengerTable(e){
        e.preventDefault();
        var displayTable = document.getElementById("displayTable");
      
      <?php 
      include("passengerTable.php");
      ?>
      
      }
      passengertable.addEventListener("click",addPassengerTable);

      // search pid
      const searchpid = document.querySelector("#pid-search")
      function pidSearch(e){
        e.preventDefault();
        var dom = document.getElementById("ht");
        var dom2 = document.getElementById("inputpid");
        var pid = dom2.value;
        var data = {
          userpid: pid
        };
        dom.style.display = "none";

        var dom4 = document.getElementById("done");
        dom4.submit();

        var dom3= document.getElementById("displayinfo");
        <?php 
          include("displayinfo.php");
        ?>


      
      
      
      }
      searchpid.addEventListener("click",pidSearch);
</script>


</body>


</html>
<!-- 
create TABLE TICKET (tickNo int primary key, 
                     Tsource varchar(30),
                     Tdestination varchar(30),
                     dateoftravel date,
                     seatno int,
                     price int,
                     flightNo varchar(5),

                     create TABLE flight (flightno int primary key, 
                     Fsource varchar(30),
                     Fdestination varchar(30),
                     departure datetime,
                     arrival datetime,
                     duration time,
                    flightcode varchar(5),
                     FOREIGN key ()       
                    
                    
create table airlines(airlineID varchar(10),al_name varchar(20), 3digitcode int, airportname varchar(50),
                      primary key(airlineID),
                      FOREIGN KEY (airportname) REFERENCES airport(airportname) on DELETE cascade on update CASCADE)
                    
                    
                    
                    
                    
                    
                    
                    -->