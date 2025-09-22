<%@page import="java.sql.ResultSet"%>
<%@page import="dbpack.DbManager"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Book My Room</title>
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="images/1.jpg" rel="icon">
    <script src="js/bootstrap.bundle.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
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
            <li><hr class="dropdown-divider"></li>
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
          <!--navbar end-->
          <!--slider-->
          <div class="row">
              <img src="images/6.jpg" style="max-height: 500px;width:100%">
          </div>
          <!--slider end-->
          <!--news-->
          <div class="row py-3">
              <div class="col-sm-1"></div>
              <div class="col-sm-10 py-2 text-light" style="min-height: 30px;background-color: rgb(39, 63, 239);border-radius: 35px;font-size: 20px;">
                  <%
                      DbManager dm=new DbManager();
                      ResultSet rs=dm.select("select * from news");
                      while(rs.next())
                      {
                  %>
                  <marquee scrollamount="5" onmouseover="stop()" onmouseout="start()"><%=rs.getString("news")%></marquee>
                  <% } %>
              </div>
      </div>
          <!--news end-->
          <!--main body-->
          <div class="row py-3">
              <%
                      ResultSet sr=dm.select("select * from properties where status='Accepted'");
                      while(sr.next())
                      {
              %>
              <div class="col-sm-3 mt-2 mb-2">
                  <div class="card" style="">
                      <img src="properties/<%=sr.getString("image")%>" height="200px" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Price : <%=sr.getString("price")%></h5>
    <p>Status : <%=sr.getString("search")%></p>
    <p>Location : <%=sr.getString("location")%></p>
    <!--<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>-->
    <a href="tenant/book.jsp?id=<%=sr.getString("id")%>" class="btn btn-primary" style="margin-bottom: 5px;">Book Now</a>
  </div>
</div>
                  
              </div>
    <% } %>
          </div>
              <!--main body end-->
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