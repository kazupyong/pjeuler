<?php
//#驚くべきことに, 各桁を4乗した数の和が元の数と一致する数は3つしかない.
//#
//#    1634 = 14 + 64 + 34 + 44
//#8208 = 84 + 24 + 04 + 84
//#9474 = 94 + 44 + 74 + 44
//#ただし, 1=14は含まないものとする. この数たちの和は 1634 + 8208 + 9474 = 19316 である.
//#
//#    各桁を5乗した数の和が元の数と一致するような数の総和を求めよ.
$limit = pow(9,5) * 6;
$total = 0;
for($num = 2; $num <= $limit; $num++){
    preg_match_all('/./',strval($num),$matches);
    $x = $matches[0];
    $sum = 0;
    foreach($x as $i){
        $sum += pow($i,5);
    }
    if($sum===$num) $total += $num;
}
echo $total;