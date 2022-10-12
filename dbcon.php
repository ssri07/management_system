<?php
    $server="localhost";
    $username="root";
    $password="";
    $dbname="sms";

    $con= mysqli_connect( $server , $username , $password , $dbname);
    if(!$con)
    {
        echo "Connection Error:".mysqli_connect_error();
    
    }

?>