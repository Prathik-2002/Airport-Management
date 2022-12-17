<!DOCTYPE html>
<html lang="en">
<head>

<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet" />
    
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet" />
    
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.0.1/mdb.min.css" rel="stylesheet" />
    
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.0.1/mdb.min.js"></script>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
    crossorigin="anonymous"></script>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        *{
            padding: 0;
            margin: 0;
        }
        .circle{
            width:15px;
            height: 15px;
            border: 1px solid black;
            border-radius: 12312px;
            position: relative;
            background-color: red;

        }
        .left{
            
            

        }
        .diagram{
            display: flex;
            gap:0;
            align-items: center;
            flex: 30%;
            

        }
        .diagram .circle span{
            position: absolute;
            top: -60px;
        }
        .line{
            border: 1px dotted black;
            height: 1px;
            width: 50%;
        }
        .main-container{
            display: flex;
            height: 100%;
            align-items: center;
            justify-content: center;
            padding: 2rem;
            padding-top: 4rem;

        }
        .circle .first{
            position: relative;
            left: -4rem;
            width:7.8rem;
            text-align: center;
            font-size: 0.9rem;
        }
        .text{
            width: 15rem;
            padding: 1rem;
        }

    </style>
</head>
<body>
    <div style="padding-top:4rem; margin: auto; width:50%;" >
    <label for="inputFname" class="form-label">Enter Passenger ID : </label>
              
              <input type="text" name="passengerid" class="form-contro" style="width:50%; display:inline; margin-right: 2rem;" value="" id="inputpid" autocomplete="off">
              <button class="btn btn-primary" id="pid-search" onclick="handlepidbtn()">Set</button>
    </div>
    <hr>
    <?php
    $mysqli = new mysqli("localhost","root","","newdemo");
    if ($mysqli -> connect_errno) {
      echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
      exit();
    }
    
    $sql = "SELECT * from flightpro where sstate like '".$_POST["source"]."' and dstate like '".$_POST["destination"]."';";
    $result = $mysqli  -> query($sql);
    $c = 0;
    while($row = $result -> fetch_array(MYSQLI_ASSOC)){
        $sql2 = "SELECT price from ticket where flightcode = '".$row["flightcode"]."' and seatno = 1";
        $result2 = $mysqli -> query($sql2);
        $c = $c + 1; 
        while($row2 = $result2 -> fetch_array(MYSQLI_ASSOC)){
            $price = $row2["price"];
        }
        echo '<form method="post" action="bookingdatacontrol.php" ><div class="ticketcard container-fluid rounded bordered shadow-sm " style=" margin-top: 30px; height: 8rem; width: 70%; border:1px solid black">
        <div class="main-container">
            <input type="text" id="flightcode" name="flightcode" style="display: none;" value="'.$row["flightcode"].'">
            <input type="text" id="pid'.$c.'" name="pid" style="display: none;" value="">

            <div class="diagram">
                <div class="text source">'.$row["source"].'</div>
                <div class="circle left">        <span class="first" style="font-weight:600;">'.$row["arrival"].'</span>
                </div>
                <div class="line"></div>
                <div class="circle right">        <span class="first" style="font-weight:600;">'.$row["departure"].'</span>
                </div>
                <div class="text distination">'.$row["destination"].'</div>
            </div>
            <div style="padding: 1rem;">$'.$price.'.00</div>
            <div>
                
                <button type="submit" class="btn btn-primary">Book Ticket</button>
            </div>
        </div>
    </div>

</div></form>';

        // header('location: mainpage.php');

    }
  
    $result -> free_result();
    $mysqli -> close();


    ?>
    <script>
        function handlepidbtn(){
            for(var li = 1;li <= <?php echo $c ?>;li++){
                var stri = "pid" + li;
            var dom = document.getElement ById(stri);
            var dom2 = document.getElementById("inputpid");
            dom.value = dom2.value;
        }
            console.log(dom.value);
        }
        
    </script>
</body>
</html>