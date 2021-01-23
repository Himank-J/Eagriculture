<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%
String currentPassword=request.getParameter("current");
String Newpass=request.getParameter("new");
String conpass=request.getParameter("confirm");
String connurl = "jdbc:mysql://localhost:3306/eagriculture";
Connection con=null;
String pass="";
int id=0;

try{
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection(connurl, "root", "");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from register where password='"+currentPassword+"'");
while(rs.next()){
id=rs.getInt(1);
pass=rs.getString(4);
} 
System.out.println(id+ " "+pass);

if(pass.equals(currentPassword))
{
	if(Newpass.equals(conpass))
	{
		Statement st1=con.createStatement();
		int i=st1.executeUpdate("update register set password='"+Newpass+"' where id='"+id+"'");
		response.sendRedirect("Logout1");
		st1.close();
		con.close();
	}
	else
	{
		request.getRequestDispatcher("changepassword.jsp").include(request, response);  
		out.print("<html><body>");  
	    out.print("<b style='font-size:18px;color:red;position:relative;left:0px;'>New Password and Confirmed Password Does Not Match</b><br>");   
	    out.print("</body></html>");
	}
}
else
{
	request.getRequestDispatcher("changepassword.jsp").include(request, response);  
	out.print("<html><body>");  
    out.print("<b style='font-size:18px;color:red;position:relative;left:100px;'>Invalid Current Password</b><br>");   
    out.print("</body></html>");
}

}
catch(Exception e){
out.println(e);
}
%>