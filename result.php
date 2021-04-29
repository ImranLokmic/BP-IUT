<!doctype HTML>
<?php


 $ime = $_POST["ime"];
 $prezime = $_POST["prezime"];
 $vrsta = $_POST["vrsta"];
 $leasetime = $_POST["lease"];

 $dbhost = "localhost";
 $dbuser = "root";
 $dbpass = "";
 $db = "bazepodataka";
 $conn = new mysqli($dbhost, $dbuser, $dbpass, $db);


 // Check connection
 if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

#CAR LEASE CHECK
$automobillease = "SELECT VIN, Lease, LeaseDate, LeaseAmount FROM automobili WHERE Lease = '1' ";
$resultlease = $conn->query($automobillease);
  if ($resultlease->num_rows > 0) {
      while($rowlease = $resultlease->fetch_assoc()) {
          if (strtotime($rowlease["LeaseDate"])+$rowlease["LeaseAmount"]<time()) {
            $updatelease="UPDATE automobili SET Lease = NULL, LeaseDate = NULL, LeaseAmount = NULL WHERE VIN = '$rowlease[VIN]'";
            if ($conn->query($updatelease) === TRUE) {
            } else {
              echo "Error updating record: " . $conn->error;
            }
          };
        }
      }

#VOZAC LEASE CHECK

$vozaclease = "SELECT VOZID, Lease, LeaseDate, LeaseAmount FROM vozaci WHERE Lease = '1' ";
$resultvozaclease = $conn->query($vozaclease);
  if ($resultvozaclease->num_rows > 0) {
      while($rowvozaclease = $resultvozaclease->fetch_assoc()) {
          if (strtotime($rowvozaclease["LeaseDate"])+$rowvozaclease["LeaseAmount"]<time()) {
            $updatevozaclease="UPDATE vozaci SET Lease = NULL, LeaseDate = NULL, LeaseAmount = NULL WHERE VOZID = '$rowvozaclease[VOZID]'";
            if ($conn->query($updatevozaclease) === TRUE) {
            } else {
              echo "Error updating record: " . $conn->error;
            }
          };
        }
      }

#NEMA AUTOMOBILA case

      $nocar = "SELECT VIN, Brand, Model, Type, Lease FROM automobili WHERE Type = '$vrsta' AND Lease IS NULL";
      $test = $conn->query($nocar);
        if ($test->num_rows > 0) {}
          else{
            global $carempty;
          $carempty = 1;
        }

    #MINISTARSTVO KORISNIKA
        $korisnik = "SELECT Ime, Prezime, Ministarstvo FROM uposlenici WHERE Ime = '$ime' AND Prezime = '$prezime'";
        $ministarstvo = $conn->query($korisnik);
        if ($ministarstvo->num_rows > 0) {

            while($row1 = $ministarstvo->fetch_assoc()) {
              #BIRANJE VOZAČA
              $vozac = "SELECT Ime, Prezime, Ministarstvo, Telefon, Lease FROM vozaci WHERE Ministarstvo = '$row1[Ministarstvo]' AND Lease IS NULL order by RAND() LIMIT 1";
              $result2 = $conn->query($vozac);
              if ($result2->num_rows > 0) {
                  while($row3 = $result2->fetch_assoc()) {
                    global $carempty;
                    if($carempty == 1){
                      $imevozaca = "Nema slobodnog vozača";
                      $prezimevozaca = "Nema slobodnog vozača";
                      $telefonvozaca = "Nema slobodnog vozača";
                    }
                    else{
                        global $imevozaca, $prezimevozaca, $telefonvozaca;
                        $imevozaca = $row3["Ime"];
                        $prezimevozaca = $row3["Prezime"];
                        $telefonvozaca = $row3["Telefon"];
                      }
                    }
                  }
                  else{
                    $imevozaca = "Nema slobodnog vozača";
                    $prezimevozaca = "Nema slobodnog vozača";
                    $telefonvozaca = "Nema slobodnog vozača";
                  }
                }
              }

      #BIRANJE AUTOMOBILA
      $automobil = "SELECT VIN, Brand, Model, Type, Lease FROM automobili WHERE Type = '$vrsta' AND Lease IS NULL order by RAND() LIMIT 1";
      $result = $conn->query($automobil);
        if ($result->num_rows > 0) {
            while($row2 = $result->fetch_assoc()) {
                global $carvin, $carname;
                if($imevozaca == "Nema slobodnog vozača"){
                  $carvin = "Nema slobodnog automobila";
                  $carname = "Nema slobodnog automobila";
                }else{
                $carvin =  $row2["VIN"];
                $carname =  $row2["Brand"]. " " . $row2["Model"];
              }
              }
            }
            else{
              $carvin = "Nema slobodnog automobila";
              $carname = "Nema slobodnog automobila";
            }

  ?>
<html>

<head>

  <title>Vozni park lease-time</title>
  <link rel="stylesheet" href="result.css">

</head>

<body>

  <div class="container">

    <a href="index.php" class="logo"><img src="capture.png" class="logo"></a>
    <h2 class="titlebanner">Zakup vozila voznog parka ZDK</h2>

    <form action="result.php" method="post" id="Form">
      <label class="ime">Ime</label>
      <h3 class="imeinput"><?php echo $ime; ?></h3>

      <label class="prezime">Prezime</label>
      <h3 class="prezimeinput"><?php echo $prezime; ?></h3>

      <label class="vrsta">Vrsta Vozila</label>
      <h3 class="vrstainput"><?php echo $vrsta; ?></h3>

      <label class="vozac">Vozač</label>
      <h3 class="imevozaca"><?php echo  $imevozaca ?></h3>
      <h3 class="prezimevozaca"><?php echo $prezimevozaca;?></h3>
      <h3 class="telefonvozaca"><?php echo $telefonvozaca;?></h3>

      <label class="automobil">Automobil</label>
      <h3 class="vin"><?php echo $carvin?></h3>
      <h3 class="nazivvozila"><?php echo $carname ?></h3>

    </form>


  </div>


</body>

</html>
<?php

#ASIGN CAR LEASE
$automobiltolease = "SELECT VIN, Lease, LeaseDate, LeaseAmount FROM automobili WHERE VIN = '$carvin' ";
$resulttolease = $conn->query($automobiltolease);
  if ($resulttolease->num_rows > 0) {
      while($rowtolease = $resulttolease->fetch_assoc()) {

            $updatetolease="UPDATE automobili SET Lease = '1', LeaseDate = CURRENT_TIMESTAMP, LeaseAmount = '$leasetime' WHERE VIN = '$rowtolease[VIN]'";
            if ($conn->query($updatetolease) === TRUE) {
            } else {
              echo "Error updating record: " . $conn->error;
            }

        }
      }

 #ASIGN VOZAC Lease

 $vozactolease = "SELECT VOZID, Lease, LeaseDate, LeaseAmount FROM vozaci WHERE Ime = '$imevozaca' AND Prezime = '$prezimevozaca' AND Telefon = '$telefonvozaca' ";
 $resultvozactolease = $conn->query($vozactolease);
   if ($resultvozactolease->num_rows > 0) {
       while($rowtolease = $resultvozactolease->fetch_assoc()) {

             $updatevozactolease="UPDATE vozaci SET Lease = '1', LeaseDate = CURRENT_TIMESTAMP, LeaseAmount = '$leasetime' WHERE Ime = '$imevozaca' AND Prezime = '$prezimevozaca' AND Telefon = '$telefonvozaca'";
             if ($conn->query($updatevozactolease) === TRUE) {
             } else {
               echo "Error updating record: " . $conn->error;
             }

         }
       }


$conn->close();
?>
