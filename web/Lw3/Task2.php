<?php

function getGetParameter(string $name): ?string
{
    return isset($_GET[$name]) ? $_GET[$name] : null;
}

if (getGetParameter("identifier") === null) 
{
	return;
}

$string = getGetParameter("identifier");
$f1 = true;

if ((empty($string)) or (is_numeric($string[$i])) or (!(is_numeric($string[$i])) and !(ctype_alpha($string[$i]))))
{
	echo 'no';
	$f1 = False;
} 
else 
{
	while (!(empty($string[$i]))) 
	{
		if ((is_numeric($string[$i])) or (ctype_alpha($string[$i])))
		{
			$string = substr($string, 1);
		} 
		else 
		{
			echo 'no';
			$string = '';
			$f1 = false;
		}
	}
}
if ($f1)
{
	echo 'yes';
}