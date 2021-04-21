<%@page import="java.sql.*"%>
<%
String id = request.getParameter("id");
Connection con;
PreparedStatement pst;
ResultSet rs;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sms", "root", "surjit");
pst = con.prepareStatement("delete from student where s_id = ?");
pst.setString(1, id);
pst.executeUpdate();
%>
<!DOCTYPE html>
<html>
    <head>
    <title></title>
    
    </head>
    <body>
    <a href="Insert.jsp">Go to Home</a>
    </body>
    </html>


<script>
	alert("Record Deleted");
</script>