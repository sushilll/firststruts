<%@page import="java.net.URI"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.Out"%>
<%@page import="firststruts.Dao"%>
<%@page import="java.sql.Connection"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<s:form action="product">
<s:textfield name="id" label="Product Id"></s:textfield>
<s:textfield name="name" label="Product Name"></s:textfield>
<s:textfield name="price" label="Product Price"></s:textfield>
<s:submit value="save"></s:submit>
</s:form>

<%
Class.forName("org.postgresql.Driver");
URI dbUri = new URI(System.getenv("DATABASE_URL"));

String username = dbUri.getUserInfo().split(":")[0];
String password = dbUri.getUserInfo().split(":")[1];
String dbUrl = "jdbc:postgresql://" + dbUri.getHost() + dbUri.getPath();

Connection con = DriverManager.getConnection(dbUrl, username, password); 
out.println(con);%>
