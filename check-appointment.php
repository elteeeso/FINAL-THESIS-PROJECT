<?php
//error_reporting(0);
include_once('includes/dbconnection.php');
include_once('includes/functions.php');
allowedIfLogged();

?>
<!doctype html>
<html lang="en">

<head>
    <title>Doctor Appointment Management System || Check Page</title>

    <!-- CSS FILES -->
    <link rel="preconnect" href="https://fonts.googleapis.com">

    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600;700&display=swap" rel="stylesheet">

    <link href="css/bootstrap.min.css" rel="stylesheet">

    <link href="css/bootstrap-icons.css" rel="stylesheet">

    <link href="css/owl.carousel.min.css" rel="stylesheet">

    <link href="css/owl.theme.default.min.css" rel="stylesheet">

    <link href="css/templatemo-medic-care.css" rel="stylesheet">
    <script>
        function getdoctors(val) {
            alert(val);
            $.ajax({
                type: "POST",
                url: "get_doctors.php",
                data: 'sp_id=' + val,
                success: function(data) {
                    $("#doctorlist").html(data);
                }
            });
        }
    </script>
</head>

<body id="top">

    <main>

        <?php include_once('includes/header.php'); ?>







        <section class="section-padding" id="booking">
            <div class="container">
                <div class="row">

                    <div class="col-lg-12 col-12 mx-auto">
                        <div class="booking-form">
                            <h2 class="text-center mb-lg-3 mb-2">Your appointments is here.</h2>
                        </div>
                            <div class="widget-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered table-hover js-basic-example dataTable table-custom">
                                        <thead>
                                            <tr>
                                                <th>S.No</th>
                                                <th>Appointment Number</th>
                                                <th>Patient Name</th>
                                                <th>Mobile Number</th>
                                                <th>Email</th>
                                                <th>Status</th>
                                                <th>Remark</th>

                                            </tr>
                                        </thead>

                                        <tbody>
                                            <?php


                                            $cnt = 1;

                                            foreach (getUserAppointments() as $row) {?>
                                                <tr>
                                                    <td><?php echo htmlentities($cnt); ?></td>
                                                    <td><?php echo htmlentities($row->AppointmentNumber); ?></td>
                                                    <td><?php echo htmlentities($row->Name); ?></td>
                                                    <td><?php echo htmlentities($row->MobileNumber); ?></td>
                                                    <td><?php echo htmlentities($row->Email); ?></td>
                                                    <?php if ($row->Status == "") { ?>

                                                        <td><?php echo "Not Updated Yet"; ?></td>
                                                    <?php } else { ?> <td><?php echo htmlentities($row->Status); ?>
                                                        </td>
                                                    <?php } ?>

                                                    <?php if ($row->Remark == "") { ?>

                                                        <td><?php echo "Not Updated Yet"; ?></td>
                                                    <?php } else { ?> <td><?php echo htmlentities($row->Remark); ?>
                                                        </td>
                                                    <?php }} ?>

                                                </tr>


                                        </tbody>

                                    </table>
                                </div>

                            </div>
                    </div>
        </section>

    </main>
    <?php include_once('includes/footer.php'); ?>
    <!-- JAVASCRIPT FILES -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/scrollspy.min.js"></script>
    <script src="js/custom.js"></script>
</body>

</html>