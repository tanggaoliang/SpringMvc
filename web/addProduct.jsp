<%--
  Created by IntelliJ IDEA.
  User: Tanggl
  Date: 2018/11/27
  Time: 14:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>增加商品</title>
</head>
<body>
<div align="center">
    <form action="addProduct" method="post">
        产品名称:<input type="text" name="name"/><br>
        产品价格:<input type="text" name="price"/><br>
        <input type="submit" value="增加商品">
    </form>

</div>

</body>
</html>
