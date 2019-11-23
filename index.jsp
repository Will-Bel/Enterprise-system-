<%-- 
    Document   : index
    Created on : 09-Mar-2016, 16:52:19
    Author     : me-aydin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
    </head>
    <BODY Background = "background.jpg">
      <h1> XYZ Driving Association </h1></br>
        
        <tr>
        <td>====================================================================</td>
        </tr>
        <form method="POST" action="UserService.do">
        <p />
        <td> <h3> Users </h3>
           <input type="radio" name="tbl" value="Registor">Registor<br />
            <input type="radio" name="tbl" value="userlogin">Login<br/>
        <td>====================================================================</td>
            <h3> Admin </h3> 
            <input type="radio" name="tbl" value="adminlogin">Login<br />
        <td>====================================================================</td>
            <h3> Add New User </h3> 
           <input type="radio" name="tbl" value="NewUser">New User<br />
           <%-- 
             <input type="radio" name="tbl" value="List">List Users<br />
            <input type="radio" name="tbl" value="Delete">Delete a User<br /><br />
           --%><br />
           <td>====================================================================</td>
            <input type=submit value="Go"> <br />
            </td>
            </table>
        </form> 
    </body>
</html>

