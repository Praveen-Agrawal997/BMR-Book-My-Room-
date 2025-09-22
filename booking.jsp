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
          <div class="row py-4"><h2 align="center">Booking History</h2></div>
          <div class="row pb-5">
              <div class="col-sm-12" style="overflow-x: scroll">
                  <table class="table table-bordered ">
                      <tr>
              <th>Room Id</th>
              <th>Room Image</th>
              <th>Name</th>
              <th>Room/Hostel/PG</th>
              <th>Location</th>
              <th>Price</th>
              <th>Tenant Phone Number</th>
              <th>Check In Date</th>
              <th>Booking Date</th>
              <th>Status</th>
              <th>Details</th>
              <th>Button</th>
          </tr>
                      <%
          DbManager dm=new DbManager();
          String userid=session.getAttribute("userid").toString();
          ResultSet rs=dm.select("select * from booked where lmobile='"+userid+"' and status='pending'");
          while(rs.next())
          {
          %>
          <tr>
              <td><%=rs.getString("roomid")%></td>
              <td><img src="../properties/<%=rs.getString("image")%>" height="200px" width="300px"></td>
              <td><%=rs.getString("name")%></td>
              <td><%=rs.getString("search")%></td>
              <td><%=rs.getString("location")%></td>
              <td><%=rs.getString("price")%></td>
              <td><%=rs.getString("tmobile")%></td>
              <td><%=rs.getString("cdate")%></td>
              <td><%=rs.getString("date")%></td>
              <td><%=rs.getString("status")%></td>
              <td><%=rs.getString("about")%></td>
              <td>
                  <a class="btn btn-success" href="acceptorder.jsp?id=<%=rs.getString("id")%>">Accept</a>
                  <a class="btn btn-danger" href="rejectorder.jsp?id=<%=rs.getString("id")%>">Reject</a>
              </td>
          </tr>
                       <% } %>
                  </table>
              </div>
                  <div class="col-sm-2"></div>
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