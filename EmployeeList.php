<?php
require_once 'config/config.php';
require_once 'config/session.php';
require_once 'class/dbclass.php';
//include ('printform.php');
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <?php require_once 'config/commonJS.php'; ?>
    <script>
        $.fx.speeds._default = 1000;
        $(document).ready(function () {
            var oTable = $('#dataList').dataTable({
                "bJQueryUI": true,
                "sPaginationType": "full_numbers",
                "bProcessing": true,
                "bServerSide": true,
                "bRedraw": true,
                "sAjaxSource": "process/employeelData.php",
                "aoColumns": [
                    { "mDataProp": "EmpID" },
                    { "mDataProp": "EmpName" },
                    { "mDataProp": "EmpEmail" },
                    { "mDataProp": "EmpMobile" },
                    { "mDataProp": "EmpTechnology" },
                    { "mDataProp": "salary" },
                    { "mDataProp": "edit" },
                    { "mDataProp": "delete" }
                ],
                "aoColumnDefs": [
                    { "bSortable": false, "aTargets": [ 5 ] },
                    { "bSortable": false, "aTargets": [ 6 ] },
                    { "bSortable": false, "aTargets": [ 7 ] }
                ],
                "aaSorting": [
                    [ 4, "desc" ]
                ]
            });
            $('#delEmp').live('click', function () {
                var id = $(this).attr('val');
                var r = confirm("Are You Sure Delete Employee ?");
                if (r == true) {
                    $.ajax({
                        type: "POST",
                        url: "process/processEmpRegister.php",
                        data: {EmpID: id, type: 'salaryDelete'},
                        beforeSend: function () {
                            //$('#wait').html("Wait for checking");
                        },
                        success: function () {
                            oTable.fnDraw();
                            alert("Delete sucessful");
                        }
                    });
                } else {
                }
            });


        });
        function IncrementUpdate() {

        }
    </script>
    <!--        end Data tabel-->
    <script>
        window.onload = menuSelect('menuEmployeeList');
    </script>
</head>

<body>
<!-- wrap starts here -->
<div id="wrap">

    <div class="noprint">  <!--header -->
        <?php @require_once 'menu/header.php'; ?>

        <!-- navigation -->
        <?php @require_once 'menu/menu.php'; ?>

        <!-- content-wrap starts here -->

        <?php
        $name = "Employee List";
        ?>
    </div>
    <div id="content-wrap">
        <div id="main">
            <div class="clear"></div>
            <h3 class="report">  <?php echo "$name"; ?> </h3>

            <div class="report"><?php include 'printform.php'; ?></div>
            <div>
                <table class="displayGrid tbl" id="dataList" cellpadding="0" cellspacing="0" border="0"
                       style="table-layout: fixed;" width="600px">
                    <thead>
                    <tr>
                        <th rowspan="2" width="50px">ID</th>
                        <th rowspan="2" width="215px">Name</th>
                        <th rowspan="2" width="215px">Email</th>
                        <th rowspan="2" width="100px">Mobile</th>
                        <th rowspan="2" width="90px">Department</th>
                        <th rowspan="2" width="115px">Salary</th>
                        <th colspan="2" width="70px">Action</th>
                    </tr>
                    <tr>
                        <th>edit</th>
                        <th>delete</th>
                    </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
            </div>

            <div class="clear">
                <input name="" type="button" value="Print" onclick="javascript:window.print()"
                       style="cursor:pointer; float:left;"/>

            </div>
        </div>
        <?php @require_once 'menu/sidemenu.php'; ?>
        <!-- content-wrap ends here -->
    </div>
    <!--footer starts here-->
    <div class="noprint"><?php @require_once 'menu/footer.php'; ?></div>
    <!-- wrap ends here -->
</div>
</body>
</html>
