<%-- 
    Document   : UserHome
    Created on : 20-Nov-2019, 19:09:33
    Author     : w2-belay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Home Page</title>
    </head>
 <body>
        <h1>Welcome To XYZ Driving Association Home page</h1>
        <form method="POST" action="UserService.do">
        <p />
            View a table <br />
            
            <input type="radio" name="tbl" value="Claim">List Claims<br />
            <input type="radio" name="tbl" value="Update">Password Change<br />
     
            <input type=submit value="Action"> <br />
        </form> 
    </body>
</html>
