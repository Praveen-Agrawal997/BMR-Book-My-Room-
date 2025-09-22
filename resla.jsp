<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Registration Page</title>
    <link href="css/bootstrap.css" rel="stylesheet">
    <script src="js/bootstrap.bundle.js"></script>
    <link href="images/1.jpg" rel="icon">
  </head>
  <body style=" background-image:url('images/7.jpg'); background-repeat: no-repeat;background-size: cover;overflow: auto;">
      <form method="post" action="controller.jsp">
          <input type="hidden" name="page" value="landlordregistration">
          <div style="height:800px;width: 700px;margin:100px auto;background-color: rgb(144, 240, 238);box-shadow: 0px 0px 100px 0px">
            <div class="container-fluid">
              <div class="row">
                  <div class="col-sm-12 text-center" style="background-color: rgb(132, 245, 104);color: rgb(0, 0, 0);">
                      <span style="font-size: 25px;font-family: Cambria;">Landlord Registration</span>
                  </div>
              </div>
                <h4>Registration/SignUp</h4>
                <b>Name</b>
                <br/>
                <input type="text" name="name" placeholder="Enter Your Name" style="width: 80%;border-radius: 35px;margin-left:10px ;padding-left: 10px"/>
                <br/>
                <br/>
                <b>Date Of Birth</b>
                <br/>
                <input type="date" name="dob" style="width: 80%;border-radius: 35px;margin-left:10px ;padding-left: 10px;">
                <br/>
                <br/>
                <b>Mobile Number</b>
                <br/>
                <input type="number" name="mobilenumber" placeholder="Enter Your Mobile Number" style="width: 80%;border-radius: 35px;margin-left:10px ;padding-left: 10px;">
                <br/>
                <br/>
                <b>Email Id</b>
                <br/>
                <input type="email" name="emailid" placeholder="Enter Your Email" style="width: 80%;border-radius: 35px;margin-left:10px ;padding-left: 10px;">
                <br/>
                <br/>
                <b>Address</b>
                <br/>
                <textarea rows="2" cols="50" placeholder="Enter Your Address" minlength="10" name="address" style="width: 80%;border-radius: 35px;margin-left:10px ;padding-left: 10px;"></textarea>
                <br/>
                <br/>
                <b>Aadhar Number</b>
                <br/>
                <input type="number" name="aadharnumber" placeholder="Enter Your Aadhar Number" style="width: 80%;border-radius: 35px;margin-left:10px ;padding-left: 10px;">
                <br/>
                <br/>
                <b>Password</b>
                <br/>
                <input type="password" name="password" placeholder="Create Password" style="width: 80%;border-radius: 35px;margin-left:10px ;padding-left: 10px;">
                <br/>
                <br/>
                <b>Confirm Password</b>
                <br/>
                <input type="password" name="confirmpassword" placeholder="Confirm Password" style="width: 80%;border-radius: 35px;margin-left:10px ;padding-left: 10px;">
                <br/>
                <br/>
                <center><input type="submit" value="LogIn" style="background-color:rgb(132, 245, 104);width: 80px;border-radius: 5px;"/>
                    <a class="nav-link active" aria-current="page" href="index.jsp" style="color:blue;">Back to Home Page</a>
                </center>
            </div>
          </div>
      </form>
  </body>
</html>