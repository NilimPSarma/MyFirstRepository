<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>



<%
if (request.getParameter("submit") != null) {
	String name = request.getParameter("s_name");
	String course = request.getParameter("s_course");
	String fee = request.getParameter("s_fee");

	Connection con;
	PreparedStatement pst;
	ResultSet rs;

	Class.forName("com.mysql.jdbc.Driver");
	String dbUrl = "jdbc:mysql://localhost:3306/sms?user=root&password=surjit";
	con = DriverManager.getConnection(dbUrl);
	pst = con.prepareStatement("insert into student(s_name,s_course,s_fee)values(?,?,?)");
	pst.setString(1, name);
	pst.setString(2, course);
	pst.setString(3, fee);
	pst.executeUpdate();
%>
<script>
	alert("Record Added successfully");
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
	background-image: url("https://images.pexels.com/photos/1762851/pexels-photo-1762851.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260");
	background-size: cover;
	background-attachment: fixed;
	background-repeat: no-repeat;
	margin-top: 30px;

}
.regis{
		margin-left: 495px;
		font-family: ms comic sans serif;
	
}
.regis1{
		margin-left: 500px;
	
}
.button{
	margin-left: 140px;
}
.tab{
	margin-left: 230px;
	margin-top: 30px;
}

</style>
<!-- CSS only -->
</head>
<body>
	<h1 class="regis">Student Registration System</h1>
	</br>
	<div class="row regis1" >
		<div class="col-sm-5">
			<form method="POST" action="#">

				<div alight="left">
					<label class="form-label">Student Name</label> <input type="text"
						class="form-control" placeholder="Student Name" name="s_name"
						id="sname" required>
				</div>

				<div alight="left">
					<label class="form-label">Course</label> <input type="text"
						class="form-control" placeholder="Course" name="s_course"
						id="course" required>
				</div>

				<div alight="left">
					<label class="form-label">Fee</label> <input type="text"
						class="form-control" placeholder="Fee" name="s_fee" id="fee"
						required>
				</div>
				</br>

				<div alight="right">
					<input type="submit" id="submit" value="submit" name="submit"
						class="btn btn-info button"> <input type="reset" id="reset"
						value="reset" name="reset" class="btn btn-warning">
				</div>

			</form>
		</div>
		</div>
		<div cla>

		<div class="col-sm-8 tab">
			<div class="panel-body">
				<table id="tbl-student "
					class="table table-responsive table-bordered" cellpadding="0"
					width="100%">
					<thead>
						<tr>
							<th>Student Name</th>
							<th>Course</th>
							<th>Fee</th>
							<th>Edit</th>
							<th>Delete</th>
						</tr>

						<%
						Connection con;
						PreparedStatement pst;
						ResultSet rs;

						Class.forName("com.mysql.jdbc.Driver");
						String dbUrl = "jdbc:mysql://localhost:3306/sms?user=root&password=surjit";
						con = DriverManager.getConnection(dbUrl);
						String query = "select * from student";
						Statement st = con.createStatement();

						rs = st.executeQuery(query);

						while (rs.next()) {
							String id = rs.getString("s_id");
						%>

						<tr>
							<td><%=rs.getString("s_name")%></td>
							<td><%=rs.getString("s_course")%></td>
							<td><%=rs.getString("s_fee")%></td>
							<td><a href="update.jsp?id=<%=id%>">Edit</a></td>
							<td><a href="delete.jsp?id=<%=id%>">Delete</a></td>
						</tr>


						<%
						}
						%>
					
				</table>
			</div>

		</div>
	</div>
	</div>

</body>
<script>
<!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous">
</script>
</script>
</html>