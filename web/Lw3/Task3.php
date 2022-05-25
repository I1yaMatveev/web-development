<?php

function getGetParameter(string $name): ?string
{
    return isset($_GET[$name]) ? $_GET[$name] : null;
}

$password = getGetParameter("password");

if ($password === null) 
{
	return;
}

$length = strlen($password);

if (!(ctype_alnum($password))) 
{
    echo "$password is not a password";
} 
else 
{
	$reliability += 4*$length;
	for ($i = 0; $i < $length; $i++) 
	{
		if (is_numeric($password[$i])) 
		{
			$n++;			
		}
	}
	$reliability += $n*4;
	$n = 0;
	for ($i = 0; $i < $length; $i++)
	{
		if (ctype_upper($password[$i]))
		{
			$n++;			
		}
	}
	if ($n !== 0)
	{
		$reliability += ($length - $n)*2;
	}
	$n = 0;
	for ($i = 0; $i < $length; $i++)
	{
		if (ctype_lower($password[$i]))
		{
			$n++;	
		}
	}
	if ($n !== 0)
	{
		$reliability += ($length - $n)*2;
	}
	$n = 0;
	if (ctype_alpha($password))
	{
		$reliability -= $length;			
	}
	if (ctype_digit($password))
	{
		$reliability -= $length;			
	}
	$result = count_chars($password);
	foreach ($result as $val)
	{
		if ($val > 1)
		{
			$reliability -= $val;
		}
	}	
	echo "Reliability : $reliability";
}