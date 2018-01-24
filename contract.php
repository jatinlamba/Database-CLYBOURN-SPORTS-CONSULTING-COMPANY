
<html>
  <head>
  <title>contract details</title>
   <link rel="stylesheet" type="text/css" href="style.css"/>
  </head>
  
  
  <body>
  <center>
  <h1><font color="black">CONTRACT DETAILS</font></h1>
  
  <table align="center" border="0" width="800" height="400">
   <tr>
  <td>CONTRACT ID</td>
  <td>START DATE</td>
  <td>END DATE</td>
  <td>AGENT ID</td>
  <td>STUDENT ID</td>
  </tr>
  
 
  <?php
require "connection.php";

$str="select * from contract";
$res=mysqli_query($con,$str);
while($row=mysqli_fetch_array($res))
{
  echo'
  <tr><td>'.$row[0].'</td>
  <td>'.$row[1].'</td>
  <td>'.$row[2].'</td>
  <td>'.$row[3].'</td>
 <td>'.$row[4].'</td>
  </tr>';
 }
  ?>
  </table>
  </br></br></br>
  <a href="landing.html">BACK</a>
  </center>
  </body>
  </html>