<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%
if (request.getParameter("submit") != null) {
	String id = request.getParameter("id");
	String name = request.getParameter("sname");
	String course = request.getParameter("course");
	String fee = request.getParameter("fee");

	Connection con;
	PreparedStatement pst;
	ResultSet rs;

	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sms", "root", "surjit");
	pst = con.prepareStatement("update student set s_name = ?,s_course =?,s_fee= ? where s_id = ?");
	pst.setString(1, name);
	pst.setString(2, course);
	pst.setString(3, fee);
	pst.setString(4, id);
	pst.executeUpdate();
%>

<script>
	alert("Record Updated");
</script>
<%
}
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
	crossorigin="anonymous">
<style>
body {
	background-image:
		url("https://images.pexels.com/photos/1762851/pexels-photo-1762851.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260");
	background-size: cover;
	background-attachment: fixed;
	background-repeat: no-repeat;
	margin-top: 30px;
}

.regis {
	margin-left: 620px;
	font-family: ms comic sans serif;
}

.regis1 {
	margin-left: 500px;
}
</style>

</head>
<body>
	<h1 class="regis">Student Update</h1>


	<div class="row">
		<div class="col-sm-8">
			<form method="POST" action="#">

				<%
				Connection con;
				PreparedStatement pst;
				ResultSet rs;

				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sms", "root", "surjit");
				String id = request.getParameter("id");

				pst = con.prepareStatement("select * from student where s_id = ?");
				pst.setString(1, id);
				rs = pst.executeQuery();

				while (rs.next()) {
				%>
				<div alight="left" class="regis1">
					<label class="form-label">Student Name</label> <input type="text"
						class="form-control" placeholder="Student Name"
						value="<%=rs.getString("s_name")%>" name="sname" id="sname"
						required>
				</div>

				<div alight="left" class="regis1">
					<label class="form-label">Course</label> <input type="text"
						class="form-control" placeholder="Course" name="course"
						value="<%=rs.getString("s_course")%>" id="course" required>
				</div>

				<div alight="left" class="regis1">
					<label class="form-label">Fee</label> <input type="text"
						class="form-control" placeholder="Fee" name="fee" id="fee"
						value="<%=rs.getString("s_fee")%>" required>
				</div>

				<%
				}
				%>



				</br>

				<div alight="right" class="regis1">
					<input type="submit" id="submit" value="submit" name="submit"
						class="btn btn-info"> <input type="reset" id="reset"
						value="reset" name="reset" class="btn btn-warning">
				</div>

				<div align="right">

					<p>
						<a href="Insert.jsp">Go to home</a>
					</p>


				</div>

			</form>
		</div>
	</div>

</body>
<script>
<!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous">
</script>
</script>

</html>