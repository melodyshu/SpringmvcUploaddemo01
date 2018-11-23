<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>开始使用layui</title>
    <link rel="stylesheet" href="../../layui/css/layui.css">
</head>
<body>
<c:out value="ssss"></c:out>
<script src="../../layui/layui.js"></script>
<script>
    //一般直接写在一个js文件中
    layui.use(['layer', 'form'], function(){
        var layer = layui.layer
            ,form = layui.form;
        layer.msg("hello world");
    });
   var device = layui.device();
</script>
<div class="layui-tab">
    <ul class="layui-tab-title">
        <li>标题一</li>
        <li class="layui-this">标题二</li>
        <li>标题三</li>
    </ul>
    <div class="layui-tab-content">
        <div class="layui-tab-item layui-show">内容1</div>
        <div class="layui-tab-item">内容2</div>
        <div class="layui-tab-item">内容3</div>
    </div>
</div>
<button class="layui-btn" lay-submit lay-filter="login">登录</button>
<div class="layui-container">
    <div class="layui-row layui-col-space10">
        <div class="layui-col-md4">
            1/3
        </div>
        <div class="layui-col-md4">
            1/3
        </div>
        <div class="layui-col-md4">
            1/3
        </div>
    </div>
</div>

<form class="layui-form" method="post" action="">
    <div class="layui-form-item">
        <label class="layui-form-label">输入框</label>
        <div class="layui-input-block">
            <input class="layui-input" type="text" name="title" required="required" placeholder="请输入标题">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">密码框</label>
        <div class="layui-input-inline">
            <input class="layui-input" type="password" name="password" required="required" placeholder="请输入标题">
        </div>
        <div class="layui-form-mid layui-word-aux">辅助文字</div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">选择框</label>
        <div class="layui-input-block" style="width: 100px">
            <select name="city" required="" lay-search>
                <c:forEach items="${city}" var="li">
                        <option value="${li.id}">${li.name}</option>
                </c:forEach>
            </select>
        </div>
    </div>
</form>
</body>
</html>
