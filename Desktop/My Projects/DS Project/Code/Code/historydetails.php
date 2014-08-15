<?php

$meter_id = $_POST['meter_id'];

$con = mysql_connect("localhost","root","");

if(!$con)
{
	die('Could not connect: '.mysql_error());
	}
mysql_select_db("electricitydept",$con);

$result = mysql_query("SELECT * FROM stats where meter_id = ".$meter_id." ORDER BY id DESC") ;


while($row = mysql_fetch_assoc($result))
{
	$output[] = $row;
}


print(json_encode($output));


mysql_close($con);

?>