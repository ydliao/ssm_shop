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
                <h1>产品管理<small>产品表单</small></h1>
            </div>
        </section>

        <form action="./save" method="post">
            <section class="content">
                <div class="card card-success">
                    <div class="card-header">
                        <h3 class="card-title">Different Width</h3>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-2 title">产品编号</div>
                            <div class="col-4 data">
                                <input type="text" class="form-control" placeholder="产品编号" name="productNum">
                            </div>

                            <div class="col-2 title">产品名称</div>
                            <div class="col-4 data">
                                <input type="text" class="form-control" placeholder="产品名称" name="productName">
                            </div>

                            <div class="col-2 title">出发时间</div>
                            <div class="col-4 data">
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="far fa-calendar-alt"></i></span>
                                    </div>
                                    <input type="text" class="form-control" id="departureTime" name="departureTime" data-inputmask-alias="datetime" data-inputmask-inputformat="yyyy/mm/dd" data-mask>
                                </div>


<%--                                <div class="input-group date">--%>
<%--                                    <div class="input-group-append">--%>
<%--                                        <i class="fa fa-calculator"></i>--%>
<%--                                    </div>--%>
<%--                                    <input type="text" class="form-control fa-pull-right" placeholder="出发时间"--%>
<%--                                           name="departureTime" id="datepicker-a3">--%>
<%--                                </div>--%>
                            </div>


                            <div class="col-2 title">出发城市</div>
                            <div class="col-4 data">
                                <input type="text" class="form-control" placeholder="出发城市" name="cityName">
                            </div>

                            <div class="col-2 title">产品价格</div>
                            <div class="col-4 data">
                                <input type="text" class="form-control" placeholder="产品价格" name="productPrice">
                            </div>

                            <div class="col-2 title">产品状态</div>
                            <div class="col-4 data">
                                <select class="form-control select2" name="productStatus">
                                    <option value="0" selected="selected">关闭</option>
                                    <option value="1">开启</option>

                                </select>
                            </div>
                            <div class="col-2 title ">其他信息</div>
                            <div class="col-4 data ">
                                <textarea class="form-control" rows="3" name="productDesc" placeholder="其他信息"></textarea>
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