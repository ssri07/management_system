<?php
session_start();
if (isset($_SESSION['password'])) {
    echo "";
} else {
    header("location: ../admin.php");
}
?>
<?php
include("header.php");
?>

<div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card card-plain" style="margin:0">
                    <div class="card-header card-header-primary">
                        <h4 class="card-title ">Details</h4>
                        <p class="card-category">Students with matching details</p>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table">
                                <thead class=" text-primary">
                                    <th>S.NO.</th>
                                    <th>Image</th>
                                    <th>Name</th>
                                    <th>Roll.NO.</th>
                                    <th>Edit</th>
                                </thead>
                                <tbody>
                                    <?php

                                    include("../dbcon.php");
                                    $sql = "SELECT * FROM student";
                                    $run = mysqli_query($con, $sql);
                                    if (mysqli_num_rows($run) < 1) {
                                        echo "<tr><td colspan='5'>NO RECORD FOUND</td></tr>";
                                    } else {
                                        $count = 0;
                                        while ($data = mysqli_fetch_assoc($run)) {
                                            $count++;
                                    ?>
                                            <tr>
                                                <td class="col-2 text-white"><?php echo $count; ?></td>
                                                <td class="col-3 text-white"> <img src="../dataimg/<?php echo $data['image']; ?>" style="max-width:50px"></td>
                                                <td class="col-3 text-white"><?php echo $data['name']; ?></td>
                                                <td class="col-2 text-white"><?php echo $data['rollno']; ?></td>
                                                <td class="col-2 text-white text-primary"><a href="updateform.php?sid=<?php echo $data['rollno']; ?>">Edit</a></td>
                                                </td>
                                            </tr>
                                    <?php
                                        }
                                    }

                                    ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    document.querySelector('.for-active li:nth-child(2)').classList.add("active");
</script>


<?php
include("footer.php");
?>
<?php
if (isset($_POST['submit'])) {
    include("../dbcon.php");
    $rollno = $_POST['rollno'];
    $pwd = $_POST['password'];
    $name = $_POST['name'];
    $city = $_POST['city'];
    $pcon = $_POST['pcon'];
    $branch = $_POST['branch'];
    $std = $_POST['std'];
    $imagename = $_FILES['simg']['name'];
    $tempname = $_FILES['simg']['tmp_name'];
    move_uploaded_file($tempname, "../dataimg/$imagename");
    $qry = "INSERT INTO student (rollno,name,password,city,pcon,standard,branch,image) VALUES('$rollno','$name',MD5('$pwd'),'$city','$pcon','$std','$branch','$imagename')";
    $run = mysqli_query($con, $qry);
    if ($run == true) {
?>
        <script>
            alert('Data Inserted SUCCESSFUL');
        </script>
<?php
    }
}
?>
<!-- Designed by ©Sanskar Srivastava and Edited by Raja Harsh Vardhan Singh All right reserved 2021. -->