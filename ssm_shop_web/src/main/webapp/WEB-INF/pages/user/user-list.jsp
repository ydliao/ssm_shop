<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>

    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/datatables-bs4/css/dataTables.bootstrap4.css">
</head>
<body class="hold-transition sidebar-mini layout-navbar-fixed">
<div class="wrapper">
    <jsp:include page="../layout/header.jsp"></jsp:include>
    <div class="content-wrapper">
        <section class="content-header">
            <div class="col-sm-6">
                <h1>用户管理<small>用户表单</small></h1>
            </div>
        </section>
        <div class="fa-pull-left col-sm-12">
            <div class="form-group form-inline">
                <div class="btn-group">
                    <button type="button" class="btn btn-default" title="新建" onclick="location.href='./user-add'"><i class="fa fa-file-o"></i> 新建</button>
                    <button type="button" class="btn btn-default" title="删除"><i class="fa fa-trash-o"></i> 删除</button>
                    <button type="button" class="btn btn-default" title="开启"><i class="fa fa-check"></i> 开启</button>
                    <button type="button" class="btn btn-default" title="屏蔽"><i class="fa fa-ban"></i> 屏蔽</button>
                    <button type="button" class="btn btn-default" title="刷新"><i class="fa fa-refresh"></i> 刷新</button>
                </div>
            </div>
        </div>

        <table id="example1" class="table table-bordered table-hover">
            <thead>
            <tr>
                <td class="sorting_asc_disabled sorting_desc_disabled">选择</td>
                <td class="sorting_asc_disabled sorting_desc_disabled">id</td>
                <td class="">邮箱</td>
                <td class=" ">用户名</td>
                <td class=" ">密码</td>
                <td class=" ">手机号码</td>
                <td class=" ">状态</td>
                <td class="text-center sorting_asc_disabled sorting_desc_disabled">操作</td>
            </tr>
            </thead>
            <c:forEach items="${userPageInfo.list}" var="user">
                <tr>
                    <td><input name="ids" type="checkbox"></td>
                    <td>${user.id}</td>
                    <td>${user.email}</td>
                    <td>${user.username}</td>
                    <td>${user.password}</td>
                    <td>${user.phoneNum}</td>
                    <td>${user.status}</td>
                    <td class="text-center">
                        <button type="button" class="btn bg-olive btn-xs">订单</button>
                        <button type="button" class="btn bg-olive btn-xs">详情</button>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
    <jsp:include page="../layout/footer.jsp"></jsp:include>
</div>
<script src="${pageContext.request.contextPath}/plugins/datatables/jquery.dataTables.js"></script>
<script src="${pageContext.request.contextPath}/plugins/datatables-bs4/js/dataTables.bootstrap4.js"></script>
<script>
    $(function () {

        $('#example1').DataTable({
            "paging": true,
            "lengthChange": false,
            "searching": true,
            "ordering": true,
            "info": true,
            "autoWidth": true,
        });
        $('#pageSize').change(function () {
            let pageSize = $("#pageSize").val();
            location.href = "./findAll?page=1&size=" + pageSize;
        });
    });
</script>
</body>
</html>