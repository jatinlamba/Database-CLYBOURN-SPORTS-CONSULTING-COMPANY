
<html>
  <head>
  <title>fee details</title>
   <link rel="stylesheet" type="text/css" href="style.css"/>
  </head>
  
  
  <body>
  <center>
  <h1><font color="black">CONSULTING FEE DETAILS</font></h1>
  
  <table align="center" border="0" width="800" height="400">
   <tr>
  <td>FEE ID</td>
  <td>AMOUNT</td>
  <td>GAME ID</td>
  </tr>
  
 
  <?php
require "connection.php";

$str="select * from consultingfees";
$res=mysqli_query($con,$str);
while($row=mysqli_fetch_array($res))
{
  echo'
  <tr><td>'.$row[0].'</td>
  <td>'.$row[1].'</td>
  <td>'.$row[2].'</td>
  </tr>';
 }
  ?>
  </table>
  </br></br></br>
  <a href="landing.html">BACK</a>
  </center>
  </body>
  </html>