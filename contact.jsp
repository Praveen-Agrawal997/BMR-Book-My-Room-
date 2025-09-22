<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <script src="js/bootstrap.bundle.js"></script>
    <link href="images/1.jpg" rel="icon">
</head>
<body>
            <div class="container-fluid">
                <div class="row bg-warning py-2">
              <div class="col-sm-5" style="font-family: Caladea"><h2>Book My Room</h2></div>
              <div class="col-sm-5"></div>
              <div class="col-sm-2" style="font-size: 25px">
                  <i class="fa-brands fa-facebook px-1"></i>
                  <i class="fa-brands fa-twitter px-1"></i>
                  <i class="fa-brands fa-instagram px-1"></i>
                  <i class="fa-brands fa-linkedin px-1"></i>
                  <i class="fa-solid fa-envelope px-1"></i>                  
              </div>
          </div>
          <div class="row">
              <!--navbar-->
              <!--<div class="col-sm-12 mt-2">-->
                  <nav class="navbar navbar-expand-lg bg-body-tertiary">
                      <div class="container-fluid bg-info py-1" style="font-size: 17px">
                          <a class="navbar-brand" href="#"><img src="images/1.jpg" style="max-height:50px;"></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Registration
          </a>
          <ul class="dropdown-menu bg-info">
            <li><a class="dropdown-item" href="reste.jsp">Tenant</a></li>
            <li><a class="dropdown-item " href="resla.jsp">Landlord</a></li>
          </ul>
        </li>
            <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Login
          </a>
             <ul class="dropdown-menu bg-info">
            <li><a class="dropdown-item" href="logte.jsp">Tenant</a></li>
            <li><a class="dropdown-item" href="logla.jsp">Landlord</a></li>
            <li><a class="dropdown-item" href="logad.jsp">Admin</a></li>            
          </ul>
        </li>
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="about.jsp">About Us</a>
        </li><li class="nav-item">
            <a class="nav-link active" aria-current="page" href="contact.jsp">Contact Us</a>
        </li> 
      </ul>
    </div>
  </div>
</nav>
              </div>
                <div class="row py-5">
                    <div class="col-sm-4"></div>
                    <div class="col-sm-5">
                         <form method="post" action="controller.jsp">
        <input type="hidden" name="page" value="contact">
                        <div style="height: 600px;width: 600px;background-color: white;box-shadow: 0px 0px 30px 0px;">
                                <div class="col-sm-12 text-light bg-dark text-center" style="font-size: 30px;">Enquiry/Contact</div>
                                <hr/>
                                <b class="ms-4" style="font-size: 14px;">Name</b>
                                <input type="text" name="name" placeholder="Enter Your Name" style="width: 85%;margin-left: 25px;border-radius: 20px;margin-top: 10px;padding: 5px;padding-left: 10px;">
                                <br><br>
                                <b class="ms-4" style="font-size: 14px;">Mobile Number</b>
                                <input type="number" name="mobilenumber" placeholder="Enter Your Phone Number" style="width: 85%;margin-left: 25px;border-radius: 20px;margin-top: 10px;padding: 5px;padding-left: 10px;"/>
                                <br/><br/>
                                <b class="ms-4" style="font-size: 14px;">Email Id</b>
                                <input type="email" name="emailid" placeholder="Enter Email Address" style="width: 85%;margin-left: 25px;border-radius: 20px;margin-top: 10px;padding: 5px;padding-left: 10px;"/>
                                <br/><br/>
                                <b class="ms-4" style="font-size: 14px;">Enquiry Subject</b>
                                <textarea name="subject" cols="30" rows="5" placeholder="Please Enter Your Complaints"></textarea>
                                <br/><br/>
                                <center><input type="submit" value="Submit" class="bg-dark text-light" style="background-color:rgb(242, 84, 84);width: 80px;border-radius: 5px;"></center>
                                <center><a class="nav-link active mt-2" aria-current="page" href="index.jsp" style="color:blue;">Back to Home Page</a></center>
                            </div>
        </form>
                        </div>
                    </div>
                <div class="row py-4 text-center text-light bg-dark">
                  <div class="col-sm-12">
                      &copy;Copyright All Right Reserved Designed By <span style="color: yellow;">Book My Room Private Limited</span>
                  </div>
              </div>
                </div>
</body>
</html>