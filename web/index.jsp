<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2023/6/21
  Time: 17:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <style>

        body {
            background-image: linear-gradient(135deg, #ABDCFF 10%, #0396FF 100%);
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;

        }

        .container {
            width: 300px;
            margin: 100px auto;
            /*background-color: #fff;*/
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            background-image: linear-gradient(135deg, #ABDCFF 10%, #0396FF 100%);
        }

        h2 {
            text-align: center;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            font-weight: bold;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 5px;
            border-radius: 3px;
            border: 1px solid #ccc;
        }

        input[type="submit"] {
            display: block;
            width: 100%;
            padding: 10px;
            border: none;
            background-image: linear-gradient(135deg, #ABDCFF 10%, #0396FF 100%);
            color: #fff;
            font-weight: bold;
            cursor: pointer;
            border-radius: 3px;
        }

        input[type="submit"]:hover {
            background-image: linear-gradient(135deg, #ABDCFF 10%, #0396FF 100%);
        }

    </style>
</head>
<body>
<div class="container">
    <h2>登陆</h2>
    <form action="/loginServlet" method="POST">
        <% if (request.getAttribute("msg") != null) { %>
        <div class="form-group">
            <label style="color: red"><%=request.getAttribute("msg")%>
            </label>
        </div>
        <% } %>
        <div class="form-group">
            <label for="username">用户名:</label>
            <input type="text" id="username" name="username" required placeholder="默认admin">
        </div>
        <div class="form-group">
            <label for="password">密码:</label>
            <input type="password" id="password" name="password" required placeholder="默认123456">
        </div>
        <input type="submit" value="登陆">
    </form>
</div>
</body>
<script>

</script>
</html>
