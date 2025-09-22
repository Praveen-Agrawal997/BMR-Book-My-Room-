<%@page import="java.sql.ResultSet"%>
<%@page import="dbpack.DbManager"%>
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
          <div class="row">
              <div class="col-sm-12" style="min-height: 1000px;">
                  <table class="table table-bordered" style="overflow-x: scroll;">
                      <tr>
                          <th>Id</th>
                          <th>Image</th>
                          <th>Name</th>
                          <th>Price</th>
                          <th>Room/Hostel/PG</th>
                          <th>Location</th>
                          <th>Phone Number</th>
                          <th>Status</th>
                          <th>Details</th>
                          <th>Date</th>
                      </tr>
                  <%
                  DbManager dm=new DbManager();
                  String mobile=session.getAttribute("userid").toString();
                  ResultSet rs=dm.select("select * from properties where mobile='"+mobile+"'");
                  int  i=1;
                  while(rs.next())
                  {
                  %>
                  <tr>
                      <td><%out.print(i);%></td>
                      <td><img src='../properties/<%=rs.getString("image")%>'height="200px" width="300px"></td>
                      <td><%=rs.getString("name")%></td>
                      <td><%=rs.getString("price")%></td>
                      <td><%=rs.getString("search")%></td>
                      <td><%=rs.getString("location")%></td>
                      <td><%=rs.getString("mobile")%></td>
                      <td><%=rs.getString("status")%></td>
                      <td><%=rs.getString("about")%></td>
                      <td><%=rs.getString("date")%></td>
                  </tr>
                  <%
                  i++;
                  }
                  %>
                  </table>
              </div>
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
<% } %>