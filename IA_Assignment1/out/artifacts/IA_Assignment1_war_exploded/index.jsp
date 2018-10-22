<%--
  Created by IntelliJ IDEA.
  User: Noura Adel
  Date: 10/18/2018
  Time: 3:05 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Welcome</title>
  </head>
  <body style="background-color: #371027">
  <center>
      <form action="ServletPage" method="post">
    <table border="1" style="background-color: slategrey; margin-top: 150px">
      <tr>
        <td style="height: 30px; width: 200px;">The Number</td>
        <td style="height: 30px; width: 200px;"><input type="text" name="number" style="height: 30px; width: 250px;"></td>
      </tr>
      <tr>
        <td style="height: 20px; width: 150px;"><input type="submit" value="Show"style="height: 30px; width: 200px;"></td>
      </tr>
    </table>
  </form>
  </center>
  </body>
</html>
