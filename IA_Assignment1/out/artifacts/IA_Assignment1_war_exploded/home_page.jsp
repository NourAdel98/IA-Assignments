<%--
  Created by IntelliJ IDEA.
  User: Noura Adel
  Date: 10/18/2018
  Time: 3:09 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title style="text-decoration-color: #371027">The Math Show</title>
</head>
<body style="background-color: slategrey; margin-top: 100px;" text="#371027">
<center>
    <% if(Boolean.parseBoolean(request.getAttribute("error").toString())){ %>
        <h1>Not a Number !!</h1>
    <% } else { %>
    <% if(!Boolean.parseBoolean(request.getAttribute("isFloat").toString()) &&
            !Boolean.parseBoolean(request.getAttribute("isNegative").toString())) { %>

        <h1>The Math Show</h1>
        <br><br>
        <h3> The number (
            <%=Integer.parseInt(request.getAttribute("number").toString()) %>) is
            <%
                if(Boolean.parseBoolean(request.getAttribute("isPrime").toString()))
                    out.print("A prime number.");
                else
                    out.print("not a prime number.");
            %>

        </h3>
        <br>
        <h3>
            The Factorial of <%= Integer.parseInt(request.getAttribute("number").toString()) %> is:
            [<%= Float.parseFloat(request.getAttribute("factorial").toString())%>].
        </h3>

        <% } else if ( Boolean.parseBoolean(request.getAttribute("isFloat").toString())) { %>
            <h1>    Sorry, it is a float number.</h1>
        <% } else { %>
            <h1>    Sorry, it is a negative number.</h1>
        <% } %>
    <% } %>

    <%--<% if(Boolean.parseBoolean(session.getAttribute("error").toString())){ %>
        <h1 style="align-content: center">Not a Number !!</h1>
   <% } else { %>
    <% if( !Boolean.parseBoolean(session.getAttribute("isFloat").toString()) &&
            !Boolean.parseBoolean(session.getAttribute("isNegative").toString())) { %>

    <h1>The Math Show</h1>
    <br><br>
    <h3> The number (
        <%=Integer.parseInt(session.getAttribute("number").toString()) %>) is

        <%
            if(Boolean.parseBoolean(session.getAttribute("isPrime").toString()))
                out.print("A prime number.");
            else
                out.print("not a prime number.");
        %>

    </h3>
    <br>
    <h3>
        The Factorial of <%=Integer.parseInt(session.getAttribute("number").toString())%> is:
        [<%= Float.parseFloat(session.getAttribute("factorial").toString())%>].
    </h3>

    <% } else if (Boolean.parseBoolean(session.getAttribute("isFloat").toString())) { %>
    <h1>    Sorry, it is a float number.</h1>
    <% } else { %>
    <h1>    Sorry, it is a negative number.</h1>
    <% } %>

    <% }%>--%>

    <br><br>
    <form action="index.jsp" method="post">
        <input type="submit" name="submit" value="Do More !!" style="width:100px; height:50px;">
    </form>
</center>

</body>
</html>
