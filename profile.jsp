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
          <%
          DbManager dm=new DbManager();
          String userid=session.getAttribute("userid").toString();
          ResultSet rs=dm.select("select * from landlordinfo where mobile='"+userid+"'");
          while(rs.next())
          {
          %>
          <!--main body-->
          <div class="row">
              <div class="col-sm-2"></div>
              <div class="col-sm-8 my-4" style="box-shadow: 5px 5px 10px 5px black;">
                  <div class="row text-center bg-danger text-light py-2"><h2 align="center">Profile</h2></div>
                  <table class="table table-bordered">
                      <tr>
                          <td>Name</td>
                          <td><%=rs.getString("name")%></td>
                      </tr>
                      <tr>
                          <td>Date Of Birth</td>
                          <td><%=rs.getString("dob")%></td>
                      </tr>
                      <tr>
                          <td>Mobile Number</td>
                          <td><%=rs.getString("mobile")%></td>
                      </tr>
                      <tr>
                          <td>Email</td>
                          <td><%=rs.getString("email")%></td>
                      </tr>
                      <tr>
                          <td>Aadhar</td>
                          <td><%=rs.getString("aadhar")%></td>
                      </tr>
                      <% } %>
                  </table>
              </div>
                  <div class="col-sm-2"></div>
          </div>
              <!--main body end-->
      </div>
  </body>
</html>
<% } %>