<!doctype HTML>
<?php


 $ime = $_POST["ime"];
 $prezime = $_POST["prezime"];
 $vrsta = $_POST["vrsta"];


 $dbhost = "localhost";
 $dbuser = "root";
 $dbpass = "";
 $db = "bazepodataka";
 // Create connection
 $conn = new mysqli($dbhost, $dbuser, $dbpass, $db);
 // Check connection
 if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
  ?>
<html>

<head>

  <title>Vozni park lease-time</title>
  <link rel="stylesheet" href="result.css">

</head>

<body>

  <div class="container">

    <a href="#" class="logo"><img src="capture.png" class="logo"></a>
    <h2 class="titlebanner">Zakup vozila voznog parka ZDK</h2>

    <form action="result.php" method="post" id="Form">
      <label class="ime">Ime</label>
      <h3 class="imeinput"><?php echo $ime; ?></h3>

      <label class="prezime">Prezime</label>
      <h3 class="prezimeinput"><?php echo $prezime; ?></h3>

      <label class="vrsta">Vrsta Vozila</label>
      <h3 class="vrstainput"><?php echo $vrsta; ?></h3>

      <label class="vozac">Vozač</label>
      <h3 class="imevozaca">
        <?php #MINISTARSTVO KORISNIKA
          $korisnik = "SELECT Ime, Prezime, Ministarstvo FROM uposlenici WHERE Ime = '$ime' AND Prezime = '$prezime'";
          $ministarstvo = $conn->query($korisnik);
          if ($ministarstvo->num_rows > 0) {

              while($row1 = $ministarstvo->fetch_assoc()) {
                #BIRANJE VOZAČA
                $vozac = "SELECT Ime, Prezime, Ministarstvo, Telefon FROM vozaci WHERE Ministarstvo = '$row1[Ministarstvo]' order by RAND() LIMIT 1";
                $result2 = $conn->query($vozac);
                if ($result2->num_rows > 0) {
                    while($row3 = $result2->fetch_assoc()) {
                          echo  $row3["Ime"] ;
                          }
                    } else {
                      echo "Nema slobodnog vozača";
                    }
                  }
                } else {
                  echo "Nema slobodnog vozača";
          }?>
      </h3>
      <h3 class="prezimevozaca"><?php #MINISTARSTVO KORISNIKA
        $korisnik = "SELECT Ime, Prezime, Ministarstvo FROM uposlenici WHERE Ime = '$ime' AND Prezime = '$prezime'";
        $ministarstvo = $conn->query($korisnik);
        if ($ministarstvo->num_rows > 0) {

            while($row1 = $ministarstvo->fetch_assoc()) {
              #BIRANJE VOZAČA
              $vozac = "SELECT Ime, Prezime, Ministarstvo, Telefon FROM vozaci WHERE Ministarstvo = '$row1[Ministarstvo]' order by RAND() LIMIT 1";
              $result2 = $conn->query($vozac);
              if ($result2->num_rows > 0) {
                  while($row3 = $result2->fetch_assoc()) {
                        echo  $row3["Prezime"] ;
                        }
                  } else {
                    echo "Nema slobodnog vozača";
                  }
                }
              } else {
                echo "Nema slobodnog vozača";
        }?>
      </h3>
      <h3 class="telefonvozaca"><?php #MINISTARSTVO KORISNIKA
        $korisnik = "SELECT Ime, Prezime, Ministarstvo FROM uposlenici WHERE Ime = '$ime' AND Prezime = '$prezime'";
        $ministarstvo = $conn->query($korisnik);
        if ($ministarstvo->num_rows > 0) {

            while($row1 = $ministarstvo->fetch_assoc()) {
              #BIRANJE VOZAČA
              $vozac = "SELECT Ime, Prezime, Ministarstvo, Telefon FROM vozaci WHERE Ministarstvo = '$row1[Ministarstvo]' order by RAND() LIMIT 1";
              $result2 = $conn->query($vozac);
              if ($result2->num_rows > 0) {
                  while($row3 = $result2->fetch_assoc()) {
                        echo  $row3["Telefon"] ;
                        }
                  } else {
                    echo "Nema slobodnog vozača";
                  }
                }
              } else {
                echo "Nema slobodnog vozača";
        }?>
      </h3>

      <label class="automobil">Automobil</label>
      <h3 class="vin">
        <?php
        $automobil = "SELECT VIN, Brand, Model, Type FROM automobili WHERE Type = '$vrsta' order by RAND() LIMIT 1";
        $result = $conn->query($automobil);
          if ($result->num_rows > 0) {
              while($row2 = $result->fetch_assoc()) {
                  echo  $row2["VIN"];
                }
              } else {
              echo "0 results";
          }?>
      </h3>
      <h3 class="nazivvozila">
      <?php
      $automobil = "SELECT VIN, Brand, Model, Type FROM automobili WHERE Type = '$vrsta' order by RAND() LIMIT 1";
      $result = $conn->query($automobil);
        if ($result->num_rows > 0) {
            while($row2 = $result->fetch_assoc()) {
                echo  $row2["Brand"]. " " . $row2["Model"];
              }
            } else {
            echo "0 results";
      }?>
      </h3>

    </form>


  </div>


</body>

</html>
<?php
$conn->close();
?>
