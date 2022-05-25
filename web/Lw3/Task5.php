<?php

function getGetParameter(string $name): ?string
{
    return isset($_GET[$name]) ? $_GET[$name] : null;
}

if (getGetParameter("email") === null) 
{
	return;
}

$email = getGetParameter("email");
$namefile = $email . ".txt";

if ((file_exists($namefile)) and (strlen($email) > 0))
{
	$array = file($namefile);
	for ($i = 0; $i <= 4; $i++)
	{
		echo "$array[$i] <br />";
	}
}