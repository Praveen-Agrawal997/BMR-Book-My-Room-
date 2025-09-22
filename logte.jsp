<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Book My Room</title>
        <link rel="stylesheet" href="css/bootstrap.css">
        <script src="js/bootstrap.bundle.js"></script>
        <link href="images/1.jpg" rel="icon">
    </head>
    <body style=" background-image:url('images/10.jpg'); background-repeat: no-repeat;background-attachment: fixed;background-size: cover;">
        <form method="post" action="controller.jsp">
            <input type="hidden" name="page" value="tenantlogin">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-12"><img src="images/11.jpg" style="width: 150px;max-height:100px;margin-left: 40px;margin-top: 20px;"></div>
                </div>
                <div class="row" style="margin-top:70px;">
                    <div class="col-sm-7"></div>
                    <div class="col-sm-5">
                        <div style="height: 430px;width: 500px;border: 1px solid black;background-color: white;box-shadow: 0px 0px 30px 0px;">
                            <div class="col-sm-12 text-light bg-danger text-center" style="font-size: 20px;">Log In</div>
                            <h3 class="ms-3 mt-2">Login/Sign in</h3>
                            <b class="ms-4" style="font-size: 14px;">Please Enter Your Phone Number</b>
                            <input type="number" name="mobilenumber" placeholder="Enter Your Phone Number" style="width: 85%;margin-left: 25px;border-radius: 20px;margin-top: 10px;padding: 5px;padding-left: 10px;"/>
                            <br/><br/>
                            <b class="ms-4" style="font-size: 14px;">Please Enter Your Password</b>
                            <input type="password" name="password" placeholder="Enter Your Password" style="width: 85%;margin-left: 25px;border-radius: 20px;margin-top: 10px;padding: 5px;padding-left: 10px;"/>
                            <br/><br/>
                            <center><input type="submit" value="LogIn" class="bg-danger text-light" style="background-color:rgb(242, 84, 84);width: 80px;border-radius: 5px;"></center>
                            <br/>
                            <span class="ms-2" style="color: blue;">Forget Password</span>
                            <br/>
                            <center><a class="nav-link active" aria-current="page" href="index.jsp" style="color:blue;">Back to Home Page</a></center>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>