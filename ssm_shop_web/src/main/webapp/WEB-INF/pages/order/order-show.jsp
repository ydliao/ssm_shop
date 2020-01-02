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
                <h1>订单管理<small>订单详情</small></h1>
            </div>
            <div>
                <div class="col-2">订单编号</div>
                <div class="col-4">
                    <input type="text" readonly="readonly" value="${order.orderNum}">
                </div>

                <div class="col-2">下单时间</div>
                <div class="col-4">
                    <input type="text" readonly="readonly" value="${order.orderTime}">
                 </div>

                <div class="col-2">路线名称</div>
                <div class="col-4">
                    <input type="text" readonly="readonly" value="${order.product.productName}"></div>

                <div class="col-2">出发城市</div>
                <div class="col-4">  <input type="text" readonly="readonly" value="${order.product.cityName}"></div>

                <div class="col-2">出发时间</div>
                <div class="col-4">  <input type="text" readonly="readonly" value="${order.product.departureTime}"></div>

                <div class="col-2">出行人数</div>
                <div class="col-4">  <input type="text" readonly="readonly" value="${order.peopleCount}"></div>

                <div class="col-2">其他信息</div>
                <div class="col-4"><textarea rows="3">${order.product.productDesc} </textarea></div>

            </div>

        </section>



        <table id="example1" class="table table-bordered table-hover">
            <thead>
            <tr>
                <td class="">人群</td>
                <td class=" ">姓名</td>
                <td class=" ">性别</td>
                <td class=" ">手机</td>
                <td class=" ">证件类型</td>
                <td class=" ">证件号码</td>
            </tr>
            </thead>
            <c:forEach items="${order.travellers}" var="traveller">
                <tr>
                    <td>${traveller.travellerType}</td>
                    <td>${traveller.name}</td>
                    <td>${traveller.sex}</td>
                    <td>${traveller.phoneNum}</td>
                    <td>${traveller.credentialsType}</td>
                    <td>${traveller.credentialsNum}</td>
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
    });
</script>
</body>
</html>