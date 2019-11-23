<%-- 
    Document   : driver
    Created on : 01-Nov-2015, 15:18:08
    Author     : me-aydin
--%>

<%@page import="model.Jdbc"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registor Main Page</title>
    </head>
    <body>
        <h2>User's Registration Form:</h2>
        <%! int i=0;
            String str="Submit"; 
            String url = "Registor.do";
        %>
        <form method="POST" action="<%=url%>">     
             
            <table style="with: 50%">
                <tr>
                    <th></th>
                    <th>Please fill in your details</th>
                </tr>
				<tr>
					<td>Full Name</td>
					<td><input type="text" name="full_name" /></td>
				</tr>
				<tr>
					<td>Address</td>
					<td><input type="text" name="address" /></td>
				</tr>
				<tr>
					<td>UserName</td>
					<td><input type="text" name="username" /></td>
				</tr>
					<tr>
					<td>Password</td>
					<td><input type="password" name="password" /></td>
				</tr>
				<tr>
					<td>Date of Birth</td>
					<td><input type="text" name="dob" value = "MM/DD/YYYY"/></td>
				</tr>
				<tr>
					<td>Register Date</td>
					<td><input type="text" name="rod" value = "MM/DD/YYYY" /></td>
                                        <tr>
					<td>Status</td>
					<td><input type="text" name="status" /></td>
				</tr>
				<tr>
					<td>Amount</td>
					<td><input type="text" name="balance" /></td>
				<tr> 
                  
                </tr>
                                </tr></table>
                       
            </table>

    <input type="reset" value = "clear" name= "clear">
    <input type="submit" value="<%=str%>"/>
    </form>   
        <%
            if (i++>0 && request.getAttribute("message")!=null) {
                out.println(request.getAttribute("message"));
                i--;
            }
        %>
        </br>
        <jsp:include page="foot.jsp"/>
    </body>
</html>
