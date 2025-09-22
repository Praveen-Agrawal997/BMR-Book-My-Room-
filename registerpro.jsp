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
          <form action="../AddImage" method="post" enctype="multipart/form-data">
          <div class="row my-4 py-4">
              <div class="col-sm-1"></div>
              <div class="col-sm-10" style="box-shadow: 5px 5px 10px 5px black">
                  <div class="row text-center bg-danger text-light"><h2>Register Your Properties Here</h2></div>
                  <div class="row py-4">
                      <table class="table table-bordered">
                          <tr>
                              <td>Upload Properties Image</td>
                              <td><input type="file" name="image"></td>
                          </tr>
                          <tr>
                              <td>Name</td>
                              <td><input type="text" name="name" placeholder="Ex.1BHK or Girls Hostel or Boys Hostel"></td>
                          </tr>
                          <tr>
                              <td>Room,Hostel or PG</td>
                              <td><input type="radio" name="status" value="Room">Room
                                  <input type="radio" name="status" value="Hostel">Hostel
                                  <input type="radio" name="status" value="PG">PG
                              </td>
                          </tr>
                           <tr>
                              <td>Price</td>
                              <td><input type="number" name="price" placeholder="Enter Rent"></td>
                          </tr>
                          <tr>
                              <td>Location</td>
                              <td><textarea cols="49" rows="2" name="location" placeholder="Enter Property Location"></textarea></td>
                          </tr>
                          <tr>
                              <td>Details</td>
                              <td><textarea cols="49" rows="2" name="about" placeholder="Enter Property Details"></textarea></td>
                          </tr>
                          <tr class="text-center">
                              <td colspan="2">
                                  <input type="submit" value="Upload" class="bg-danger text-light">
                              </td>
                          </tr>
                      </table>
                  </div>
              </div>
              <div class="col-sm-1"></div>
          </div>
          </form>
          <!--main body end-->
      </div>
  </body>
</html>
<% } %>