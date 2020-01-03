<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>

    <title>Title</title>
    <!-- daterange picker -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/datatables-bs4/css/dataTables.bootstrap4.css">
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
    <jsp:include page="../layout/header.jsp"></jsp:include>
    <div class="content-wrapper">
        <section class="content-header">
            <div class="col-sm-6">
                <h1>用户管理<small>用户表单</small></h1>
            </div>
        </section>

        <form action="./save" method="post">
            <section class="content">
                <div class="card card-success">
                    <div class="card-header">
                        <h3 class="card-title">用户信息</h3>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-2 title">用户名</div>
                            <div class="col-4 data">
                                <input type="text" class="form-control" placeholder="用户名" name="username">
                            </div>

                            <div class="col-2 title">密码</div>
                            <div class="col-4 data">
                                <input type="password" class="form-control" placeholder="密码" name="password">
                            </div>
                            <div class="col-2 title">邮箱</div>
                            <div class="col-4 data">
                                <input type="text" class="form-control" placeholder="邮箱" name="email">
                            </div>
                            <div class="col-2 title">电话</div>
                            <div class="col-4 data">
                                <input type="text" class="form-control" placeholder="电话" name="phoneNum">
                            </div>

                            <div class="col-2 title">用户状态</div>
                            <div class="col-4 data">
                                <select class="form-control select2" name="status">
                                    <option value="0" selected="selected">关闭</option>
                                    <option value="1">开启</option>

                                </select>
                            </div>
                        </div>
                    </div>
                    <!-- /.card-body -->
                    <div class="card-footer">
                        <button type="submit" class="btn btn-primary">保存</button>
                        <button type="submit" class="btn btn-default" onclick="history.back(-1);">返回</button>
                    </div>
                </div>
            </section>
        </form>
    </div>
    <jsp:include page="../layout/footer.jsp"></jsp:include>
</div>
<script src="${pageContext.request.contextPath}/plugins/inputmask/min/jquery.inputmask.bundle.min.js"></script>
<script>
    $(function(){
        //Money Euro
        $('#departureTime').inputmask()
    });
</script>
</body>
</html>