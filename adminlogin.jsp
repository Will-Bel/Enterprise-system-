<%-- 
    Document   : adminlogin
    Created on : 20-Nov-2019, 19:18:42
    Author     : w2-belay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <body>
        <div style="text-align: center">
        <h1>Admin Login</h1>
        <form method="POST" action="AdminHome.jsp">  
        <form action="login" method="post">
            <label for="Adminname">adminName:</label>
            <input name="Adminname" size="30" />
            <br><br>
            <label for="password">Password:</label>
            <input type="password" name="password" size="30" />
            <br>${message}
            <br><br>           
            <button type="submit">Login</button>
        </form>
    </div>
        <jsp:include page="foot.jsp"/><br  />
    </head>
    </body>
</html>
