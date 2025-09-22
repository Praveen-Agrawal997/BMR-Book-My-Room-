<%
if(session.getAttribute("userid")==null || session.getAttribute("userid")=="")
{
response.sendRedirect("../logla.jsp");
}
else
{
%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Book My Room</title>
    <link href="../css/bootstrap.css" rel="stylesheet">
    <link href="../images/1.jpg" rel="icon">
    <script src="../js/bootstrap.bundle.js"></script>
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />

  </head>
  <body>
      <div class="container-fluid">
              <!--navbar-->
              <jsp:include page="header.jsp"/>
          <!--navbar end-->
          <!--main body-->
          <form action="controller.jsp" method="post">
              <input type="hidden" name="page" value="changepassword">
                <div class="row" style="margin-top:70px;">
                    <div class="col-sm-4"></div>
                    <div class="col-sm-5">
                        <div style="height: 450px;width: 500px;border: 1px solid black;background-color: white;box-shadow: 0px 0px 30px 0px;">
                            <div class="col-sm-12 text-light bg-danger text-center py-1" style="font-size: 20px;"><h3>Change Password</h3></div>
                                <b class="ms-4" style="font-size: 14px;">Enter Old Password</b>
                                <input type="password" name="oldpassword" placeholder="Enter Your Phone Number" style="width: 85%;margin-left: 25px;border-radius: 20px;margin-top: 10px;padding: 5px;padding-left: 10px;"/>
                                <br/><br/>
                                <b class="ms-4" style="font-size: 14px;">Enter New Password</b>
                                <input type="password" name="newpassword" placeholder="Enter Your Password" style="width: 85%;margin-left: 25px;border-radius: 20px;margin-top: 10px;padding: 5px;padding-left: 10px;"/>
                                <br/><br/>
                                 <b class="ms-4" style="font-size: 14px;">Enter Confirm Password</b>
                                <input type="password" name="newpassword" placeholder="Enter Your Password" style="width: 85%;margin-left: 25px;border-radius: 20px;margin-top: 10px;padding: 5px;padding-left: 10px;"/>
                                <br/><br/>
                                <center><input type="submit" value="LogIn" class="bg-danger text-light" style="background-color:rgb(242, 84, 84);width: 80px;border-radius: 5px;"></center>
                                <br/>
                                <span class="ms-2" style="color: blue;">Forget Password</span>
                        </div>
                    </div>
                </div>
          </form>
              <!--main body end-->
      </div>
  </body>
</html>
<% } %>