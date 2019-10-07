<?php

$pap_connection = mysql_connect('dockerhost', 'root', '');
 if(!$pap_connection) 
 {
     die ("Something went wrong while connecting to papDB".mysql_error());   
 }

 if(mysql_select_db ('pan_aff',$pap_connection)){
     echo "success";
 }else{
     echo mysql_error();
 }



?>
