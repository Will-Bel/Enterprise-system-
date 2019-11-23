<%-- 
    Document   : userlogin
    Created on : 20-Nov-2019, 20:42:20
    Author     : w2-belay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User login page</title>
    </head>
       <body>
        <div style="text-align: center">
        <h1>User Login</h1>
      <form method="POST" action="UserHome.jsp">
            <label for="username">UserName:</label>
            <input name="username" size="30" />
            <br><br>
            <label for="password">Password:</label>
            <input type="password" name="password" size="30" />
            <br>${message}
            <br><br>           
            <button type="submit">Login</button>
        </form>
    </div>
        <jsp:include page="foot.jsp"/><br  />
        </body>
</html>
