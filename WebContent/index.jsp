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

<%! Connection con = Dao.getConnection();%>
<%= out.print(con) %>
