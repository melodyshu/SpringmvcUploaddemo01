<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<h2>Hello World!</h2>
<div>
    <form action="/demo/testupload.do" method="post" enctype="multipart/form-data">
        选择文件：<input type="file" name="multiFile">
        <input type="submit" value="提交">
    </form>
</div>
</body>
</html>
