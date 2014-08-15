<?php

$meter_id = $_POST['meter_id'];

$con = mysql_connect("localhost","root","");

if(!$con)
{
	die('Could not connect: '.mysql_error());
	}
mysql_select_db("electricitydept",$con);

$result = mysql_query("SELECT Name,PhoneNo,Address,modelno,load_value FROM customer,meter,stats where meter.meter_id = ".$meter_id." AND Customer.cust_id in (SELECT cust_id from meter where meter_id = ".$meter_id.") ORDER BY stats.id DESC limit 0,1");


while($row = mysql_fetch_assoc($result))
{
	$output[] = $row;
}


print(json_encode($output));


mysql_close($con);

?>