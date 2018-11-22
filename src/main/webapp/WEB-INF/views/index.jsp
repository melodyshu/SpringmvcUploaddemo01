<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body>
<h2>Hello World!</h2>
<c:out value="${attributeName}"></c:out>
<c:out value="${userx.name}"></c:out>
<c:out value="${userx.age}"></c:out>
<div>
    <form action="/demo/testupload.do" method="post" enctype="multipart/form-data">
        选择文件：<input type="file" name="multiFile">
        <input type="submit" value="提交">
    </form>
    <a href="/demo/init2.do">testModelAndView1</a><br/>
    <c:out value="${name}"></c:out><br/>
    <a href="/demo/init3.do">testModelMap</a><br/>
    <c:out value="${name2}"></c:out><br/>
    <a href="/demo/init4.do">testModel</a><br/>
    <c:out value="${name3}"></c:out><br/>
    <a href="/demo/init5.do">testMap</a><br/>
    <c:out value="${name4}"></c:out><br/>
</div>
</body>
</html>
