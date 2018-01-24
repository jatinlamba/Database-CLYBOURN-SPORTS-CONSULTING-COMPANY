
<html>
  <head>
  <title>student details</title>
   <link rel="stylesheet" type="text/css" href="style.css"/>
  </head>
  
  
  <body>
  <center>
  <h1><font color="black">STUDENT DETAILS</font></h1>
  
  <table align="center" border="0" width="800" height="400">
   <tr>
  <td>STUDENT ID</td>
  <td>FIRST NAME</td>
  <td>LAST NAME</td>
  <td>LOCATION</td>
  <td>AGENT ID</td>
  </tr>
  
 
  <?php
require "connection.php";

$str="select * from students";
$res=mysqli_query($con,$str);
while($row=mysqli_fetch_array($res))
{
  echo'
  <tr><td>'.$row[0].'</td>
  <td>'.$row[1].'</td>
  <td>'.$row[2].'</td>
  <td>'.$row[3].'</td>
 <td>'.$row[4].'</td></tr>';
 }
  ?>
  </table>
  </br></br></br>
  <a href="landing.html">BACK</a>
  </center>
  </body>
  </html>