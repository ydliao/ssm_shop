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
                <h1>产品管理<small>产品表单</small></h1>
            </div>
        </section>
        <div class="fa-pull-left col-sm-12">
            <div class="form-group form-inline">
                <div class="btn-group">
                    <button type="button" class="btn btn-default" title="新建" onclick="location.href='./product-add'"><i class="fa fa-file-o"></i> 新建</button>
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
                <td class="">数量</td>
                <td class=" ">产品名称</td>
                <td class=" ">城市</td>
                <td class=" ">时间</td>
                <td class=" ">价格</td>
                <td class="text-center sorting_asc_disabled sorting_desc_disabled">描述</td>
                <td class="text-center sorting_asc_disabled sorting_desc_disabled">状态</td>
                <td class="text-center sorting_asc_disabled sorting_desc_disabled">操作</td>
            </tr>
            </thead>
            <c:forEach items="${productPageInfo.list}" var="product">
                <tr>
                    <td><input name="ids" type="checkbox"></td>
                    <td>${product.id}</td>
                    <td>${product.productNum}</td>
                    <td>${product.productName}</td>
                    <td>${product.cityName}</td>
                    <td>${product.departureTimeStr}</td>
                    <td class="text-center">${product.productPrice}</td>
                    <td>${product.productDesc}</td>
                    <td class="text-center">${product.productStatusStr}</td>
                    <td class="text-center">
                        <button type="button" class="btn bg-olive btn-xs">订单</button>
                        <button type="button" class="btn bg-olive btn-xs">详情</button>
                    </td>
                </tr>
            </c:forEach>
        </table>

        <div class="fa-pull-left">
            <div class="form-group form-inline">
                总共${productPageInfo.pages}页 共 ${productPageInfo.total} 条数据,每页 ${ productPageInfo.pageSize}
                <select id="pageSize" class="form-control" >
                    <option  ${ productPageInfo.pageSize==5?"selected":""}>5</option>
                    <option  ${ productPageInfo.pageSize==10?"selected":""}>10</option>
                    <option  ${ productPageInfo.pageSize==20?"selected":""}>20</option>
                    <option  ${ productPageInfo.pageSize==50?"selected":""}>50</option>
                    <option  ${ productPageInfo.pageSize==100?"selected":""}>100</option>
                </select>
                条
            </div>
        </div>

        <div class="dataTables_paginate paging_simple_numbers">
            <ul class="pagination">
                <li class="paginate_button page-item previous disabled">
                    <a class="page-link" href="./findAll?page=1&size=${productPageInfo.pageSize}">首页</a>
                </li>
                <li class="paginate_button previous">
                    <a class="page-link" href="./findAll?page=${productPageInfo.pageNum-1}&size=${productPageInfo.pageSize}">上一页</a>
                </li>
                <c:forEach begin="1" end="${productPageInfo.pages}" var="pageNum">
                    <li class="paginate_button previous">
                        <a class="page-link" href="./findAll?page=${pageNum}&size=${productPageInfo.pageSize}">${pageNum}</a>
                    </li>
                </c:forEach>
                <li>
                    <a class="page-link" href="./findAll?page=${productPageInfo.pageNum+1}&size=${productPageInfo.pageSize}">下一页</a>
                </li>
                <li>
                    <a class="page-link" href="./findAll?page=${productPageInfo.pages}&size=${productPageInfo.pageSize}">尾页</a>
                </li>
            </ul>
        </div>
    </div>
    <jsp:include page="../layout/footer.jsp"></jsp:include>
</div>
<script src="${pageContext.request.contextPath}/plugins/datatables/jquery.dataTables.js"></script>
<script src="${pageContext.request.contextPath}/plugins/datatables-bs4/js/dataTables.bootstrap4.js"></script>
<script>
    $(function () {

        $('#example1').DataTable({
            "paging": false,
            "lengthChange": false,
            "searching": true,
            "ordering": true,
            "info": false,
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