<?php

header("Content-Type: text/plain");

function getGetParameter(string $name): ?string
{
    return isset($_GET[$name]) ? $_GET[$name] : null;
}

$string = getGetParameter("text");

if ($string === null) 
{
	return;
}

$string = trim($string);
$length = strlen($string);
$i = 0;
$spaceCount = 0;
while ($i < $length)
{
    	if ($spaceCount > 0)
    	{	
    		$strout .= $string[$i];
	        $i++;
            $spaceCount = 0;
        }    
        else
        {	
        	$strout .= $string[$i];
            $spaceCount++;	
		    $i++;
		}	
}
echo $strout;