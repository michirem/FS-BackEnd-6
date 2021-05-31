<?php include 'classes/autoload.php';

    Session::init();
   
    if (!isset($_SESSION['user']) && !isset($_SESSION['adm'])) {
        header("Location: home.php");
        exit;    
    }
    if (isset($_SESSION["user"])) {
        header("Location: home.php");
        exit;
    }

    if (!isset($_GET['custId']) || $_GET['custId'] == 'NULL') {
        echo '<script> window.location = "inbox.php"; </script>';
    }else{
        $id = preg_replace('/[^-a-zA-Z0-9_]/', '', $_GET['custId']);
    }

   if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        echo '<script> window.location = "inbox.php"; </script>';
    }
 ?>
 <title>Customer - Paint Of Heart</title>
<div class="grid_10">
    <div class="box round first grid">
        <h2>Customer Address</h2>
        <div class="block copyblock"> 
    <?php 
        $customer = new User();
        $result = $customer->getUserById($id);
        if ($result) {
            while ($customer = $result->fetch_assoc()) { ?>   

                 <form action="" method="post">
                    <table class="form">					
                        <tr>
                            <td>Name</td>
                            <td>
                                <input type="text" value="<?php echo $customer['f_name']." ".$customer['l_name'] ; ?>" class="medium" readonly />
                            </td>
                        </tr>
                      
                        <tr>
                            <td>Address</td>
                            <td>
                                <input type="text" value="<?php echo $customer['address'] ?>" class="medium" readonly />
                            </td>
                        </tr>
                        <tr>
                            <td>Email</td>
                            <td>
                                <input type="text" value="<?php echo $customer['email'] ?>" class="medium" readonly />
                            </td>
                        </tr>    
						<tr> 
                            <td></td>
                            <td>
                                <input type="submit" name="submit" Value="Ok" />
                            </td>
                        </tr>
                    </table>
                    </form>
    <?php } } ?>
                </div>
            </div>
        </div>
<?php include 'components/footer.php';?>