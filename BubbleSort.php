<?php
function bubblesort(&$Array, $n)
{
	$temp;
	for ($i = 0; $i < $n; $i++) {
		for ($j = 0; $j < $n - $i - 1; $j++) {
			if ($Array[$j] > $Array[$j + 1]) {
				$temp = $Array[$j];
				$Array[$j] = $Array[$j + 1];
				$Array[$j + 1] = $temp;
			}
		}
	}
}

function PrintArray($Array, $n)
{
	for ($i = 0; $i < $n; $i++) echo $Array[$i] . " ";
}

function ArrayOfRandomInt($min, $max, $count)
{
	$range = array();
	global $i;
	while ($i++ < $count) {
		while (in_array($num = mt_rand($min, $max), $range));
		$range[] = $num;
	}
	return $range;
}

$Array = ArrayOfRandomInt(1, 100, 5);
$n = sizeof($Array);
echo "Original Array: ";
PrintArray($Array, $n);

bubblesort($Array, $n);
echo "\nSorted Array: ";
PrintArray($Array, $n);
?>