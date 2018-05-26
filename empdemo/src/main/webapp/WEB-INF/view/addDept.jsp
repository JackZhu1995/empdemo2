<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>addDept</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/r/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/r/css/style.css">
</head>
<body>
<div class="container">
    <div class="row head"></div>
    <div class="row body">
        <form class="form-horizontal" id="addDeptForm" action="${pageContext.request.contextPath}/dept/addDept" method="post">
            <div class="form-group">
                <label for="dname" class="col-sm-2 control-label">部门名称</label>
                <div class="col-sm-5 dname">
                    <input type="text" class="form-control" id="dname" name="dname">
                </div>
            </div>
            <div class="form-group">
                <label for="location" class="col-sm-2 control-label">工作地点</label>
                <div class="col-sm-5 location">
                    <input type="text" class="form-control" id="location" name="location">
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="button" class="btn btn-primary sub">确认</button>
                </div>
            </div>
        </form>
    </div>
    <div class="row foot"></div>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath}/r/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/r/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript">
    var isDeptName = false;
    var isLocation = false;
    $(function () {
        $("#dname").blur(function () {
            var dname = $("#dname").val();
            var reg = /^[\u4e00-\u9fa5]{3,8}$/;
            if(reg.test(dname)){
                $(".dname").attr("class","col-sm-5 dname has-success");
                isDeptName = true;
            }else {
                $(".dname").attr("class","col-sm-5 dname has-error");
                isDeptName = false;
            }
        });
    });

    $(function () {
        $("#location").blur(function () {
            var location = $("#location").val();
            var reg = /^[\u4e00-\u9fa5]{2,10}$/;
            if(reg.test(location)){
                $(".location").attr("class","col-sm-5 location has-success");
                isLocation = true;
            }else {
                $(".location").attr("class","col-sm-5 location has-error");
                isLocation = false;
            }
        });
    });
    
    $(".sub").click(function () {
        if(isDeptName && isLocation) {
            //提交表单
            $("#addDeptForm").submit();
        }
    });

</script>
</body>
</html>
