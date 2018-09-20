<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 2017/12/26
  Time: 10:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="upload.action" method="post" enctype="multipart/form-data" >
    请选择需要上传的文件：<input type="file" id="dofile" name="file"/><br />
    <input type="submit" >Submit
</form>
</body>
</html>
