<?php
/**
 * http://stackoverflow.com/questions/779986/insert-multiple-rows-via-a-php-array-into-mysql
 * MYSQL is deprecated avoid using this
 */

$sql = array(); 

$data = array(
    0 => array('text' => 'hello', 'category_id' => 1),
    1 => array('text' => 'hello1', 'category_id' => 2)
);

foreach( $data as $row ) {
    $sql[] = '("'.$row['text'].'", '.$row['category_id'].')';
}

//echo 'INSERT INTO table (text, category) VALUES '.implode(',', $sql);
//exit;
mysql_query('INSERT INTO table (text, category) VALUES '.implode(',', $sql));

?>
