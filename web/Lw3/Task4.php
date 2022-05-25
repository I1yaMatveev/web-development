<?php

// http://localhost:8080/Task4.php?email=ivan.ivanov@gmail.com&first_name=Ivan&last_name=Ivanov&age=20
function getGetParameter(string $name): ?string
{
    return isset($_GET[$name]) ? $_GET[$name] : null;
}

if (getGetParameter("email") === null) 
{
	return;
}

$first_name = getGetParameter("first_name");
$last_name = getGetParameter("last_name");
$email = getGetParameter("email");
$age = getGetParameter("age");
$namefile = $email . ".txt";

if (file_exists($namefile))
{
	$array = file($namefile);
	if (!(empty($first_name)))
	{
		$array[0] = "First Name: $first_name \n";
	}
	if (!(empty($last_name)))
	{
		$array[1] = "Last Name: $last_name \n";
	}
	if (!(empty($email)))
	{
		$array[2] = "Email: $email \n";
	}
	if (!(empty($age)))
	{
		$array[3] = "Age: $age";
	}
	file_put_contents($namefile, $array);
} 
else 
{
	$fp = fopen($namefile, "w");
	fwrite($fp, "First Name:  $first_name \n");
	fwrite($fp, "Last Name: $last_name \n");
	fwrite($fp, "Email: $email \n");
	fwrite($fp, "Age: $age");

	fclose($fp);
}