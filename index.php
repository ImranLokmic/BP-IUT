<!doctype HTML>
<html>

<head>

  <title>Vozni park lease-time</title>
  <link rel="stylesheet" href="css.css">

</head>

<body>

  <div class="container">

    <img src="capture.png" class="logo">
    <h2 class="titlebanner">Zakup vozila voznog parka ZDK</h2>

    <form action="result.php" method="post" id="Form">
      <label class="ime">Ime</label>
      <input class="imeinput" name="ime" />

      <label class="prezime">Prezime</label>
      <input class="prezimeinput" name="prezime"/>

      <label class="vrsta">Vrsta Vozila</label>
      <select class="vrstainput" name="vrsta">
        <option value="Town Car">Town Car</option>
        <option value="SUV">SUV</option>
      </select>

      <button class="btn btn-inside btn-boarder"><img src="https://i.cloudup.com/gBzAn-oW_S-2000x2000.png" width="64px" height="64px" id="plane"></button>
			<div class="bg"><img src="https://i.cloudup.com/2ZAX3hVsBE-3000x3000.png" id="bg" width="32px" height="32px" style="opacity:0;"></div>
			<div class="around around-boarder" onclick="ani(); anitwo(); submit();"></div>

    </form>

<script>
    function ani(){
            document.getElementById('plane').className ='animation';
        }
    function anitwo(){
            document.getElementById('bg').className ='animation2';
        }
    function submit(){
            document.getElementById("Form").submit();
      }

</script>

  </div>


</body>

</html>
