<html>
<head>
<title>Consulting Firm Sample</title>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<link rel='stylesheet' type='text/css' href='//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css'>
<style>
  .bs-example{
    	margin: 20px;
    }
	.table {
		width:60%;
	}
</style>
</head>
<body>


    <nav role="navigation" class="navbar navbar-default">

        <!-- Brand and toggle get grouped for better mobile display -->

        <div class="navbar-header">
            <button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle">

                <span class="sr-only">Toggle navigation</span>

                <span class="icon-bar"></span>

                <span class="icon-bar"></span>

                <span class="icon-bar"></span>

            </button>

            <a href="displayagent.php" class="navbar-brand">Consulting</a>

        </div>

        <!-- Collection of nav links and other content for toggling -->

        <div id="navbarCollapse" class="collapse navbar-collapse">

            <ul class="nav navbar-nav">

                <li class="active"><a href="displayagent.php">Home</a></li>

                <li><a href="#">Second Page</a></li>

                <li><a href="#">Third Page</a></li>

            </ul>

            <ul class="nav navbar-nav navbar-right">

                <li><a href="#">Login</a></li>

            </ul>

        </div>

    </nav>


</body>
</html>

<?php include("dbconfig.php"); ?>
<?php
// comment the first line and uncomment the below two lines if you are unable to include dbconfig.php file 
// $connection = mysql_connect('localhost', 'root', ''); //The Blank string is the password
// mysql_select_db('consulting');
$query = "SELECT * FROM agents"; //You don't need a ; like you do in SQL
$result = mysql_query($query);

echo "<div class='bs-example'>";
echo "<table class='table table-striped'>"; // start a table tag in the HTML
echo "<tr><th>AgentID</th><th>Last Name</th><th>Region</th><th>Rate</th><th>Years</th><th>Manager</th></td>";
while($row = mysql_fetch_array($result)){   //Creates a loop to loop through results
echo "<tr><td>" . $row['AgentID'] . "</td><td >" . $row['FName'] . "</td><td >" . $row['LName'] . "</td><td >" . $row['Region'] . "</td><td >" . $row['Years'] . "</td><td >" . $row['Manager'] . "</td></tr>";  //$row['index'] the index here is a field name
}

echo "</table>"; //Close the table in HTML
echo "</div>";

mysql_close(); //Make sure to close out the database connection

?>
Output:
