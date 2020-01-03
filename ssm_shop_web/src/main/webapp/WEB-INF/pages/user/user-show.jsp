<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../plugins/treeTable/jquery.treetable.css">
    <link rel="stylesheet" href="../plugins/treeTable/jquery.treetable.theme.default.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/datatables-bs4/css/dataTables.bootstrap4.css">
</head>
<body class="hold-transition sidebar-mini layout-navbar-fixed">
<div class="wrapper">
    <jsp:include page="../layout/header.jsp"></jsp:include>
    <div class="content-wrapper">
        <section class="content-header">
            <div class="col-sm-6">
                <h1>用户管理<small>用户详情</small></h1>
            </div>
            <div>
                <div class="col-2">用户名称</div>
                <div class="col-4">
                    <input type="text" readonly="readonly" value="${user.username}">
                </div>
                <div class="col-2">邮箱</div>
                <div class="col-4">
                    <input type="text" readonly="readonly" value="${user.email}">
                 </div>
                <div class="col-2">手机</div>
                <div class="col-4">
                    <input type="text" readonly="readonly" value="${user.phoneNum}">
                </div>
            </div>
        </section>
        <!--树表格-->
        <div class="tab-pane" id="tab-treetable">
            <table id="collapse-table" class="table table-bordered table-hover dataTable">
                <thead>
                <tr>
                    <th>角色/权限</th>
                    <th>描述/URL</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${user.roles}" var="role">
                    <tr data-tt-id="${role.id}" >
                    <td>${role.roleName}</td>
                    <td>${role.roleDesc}</td>
                    </tr>
                    <c:forEach items="${role.permissions}" var="permissions">
                        <tr data-tt-id="${role.id}-${permissions.id}" data-tt-parent-id="${role.id}">
                            <td>${permissions.permissionName}</td>
                            <td>${permissions.url}</td>
                        </tr>
                    </c:forEach>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
    <jsp:include page="../layout/footer.jsp"></jsp:include>
</div>
<script src="${pageContext.request.contextPath}/plugins/datatables/jquery.dataTables.js"></script>
<script src="${pageContext.request.contextPath}/plugins/datatables-bs4/js/dataTables.bootstrap4.js"></script>
<script src="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.js"></script>
<script>
    $(function () {
        /*table tree*/
        $("#collapse-table").treetable({
            expandable: true
        });
    });
</script>
</body>
</html>