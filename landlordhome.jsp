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
          <!--slider-->
          <div class="row">
              <div class="col-sm-12"><img src="../images/13.jpg" style="max-height: 500px;width:100%"></div>
          </div>
          <!--slider end-->
         <!--footer-->
              <div class="row py-4 text-center text-light bg-dark">
                  <div class="col-sm-12">
                      &copy;Copyright All Right Reserved Designed By <span style="color: yellow;">Book My Room Private Limited</span>
                  </div>
              </div>
              <!--footer end-->
      </div>
  </body>
</html>
<% } %>