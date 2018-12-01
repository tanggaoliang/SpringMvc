<%--
  Created by IntelliJ IDEA.
  User: Tanggl
  Date: 2018/11/27
  Time: 16:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>上传</title>
</head>
<body>
<div align="center">
    <form action="uploadImage" method="post" enctype="multipart/form-data">

        选择图片<input type="file" name="image" accept="image/*"><br>
        <input type="submit" value="上传">
    </form>

</div>
</body>
</html>
