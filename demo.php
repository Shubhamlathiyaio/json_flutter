<?php
    $con=mysqli_connect("localhost","id21724581_user_shubham","Shubham@123","id21724581_name_shubham")or die("jkhdsgjk");

    // $name="Shubham";
    // $num="9484444047";
    // $city="Surt";
    // $query= "INSERT INTO jjson VALUES(null,'$name','$num','$city')";

    // $res=mysqli_query($con,$query);
    echo"hello0";
    $a=array();
    if($res)
    {
        $a['aa']="done";
        json_encode($a);
        echo ($a["aa"]);
        echo json_encode($a);
    }
?>