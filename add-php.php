<?PHP
$sum = 0;
foreach(array_slice($argv,1) as $num) {
  $sum += (int)$num;

}
print($sum);

?>
