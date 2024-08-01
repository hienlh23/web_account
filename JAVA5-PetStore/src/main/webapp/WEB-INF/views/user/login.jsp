<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Đăng Nhập</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.2.0/mdb.min.css" rel="stylesheet" />
    <style>
        .form-outline label {
            margin-top: -10px;
        }
        .btn-block {
            width: 100%;
        }
        .btn:hover {
            background-color: #F9F3EC;
            border-color: #004085;
            color: red;
            transform: scale(1.05);
            transition: transform 0.2s ease-in-out;
        }
    </style>
</head>
<body>
    <form:form id="loginForm" modelAttribute="userLogin" method="post" action="${pageContext.request.contextPath}/user/login">
        <div class="form-outline mb-4">
            <form:input path="emailKH" id="form1Example14" cssClass="form-control form-control-lg" />
            <form:label path="emailKH" cssClass="form-label" for="form1Example14">Vui lòng nhập Email</form:label>
        </div>
        <div class="form-outline mb-4">
            <form:password path="matKhauKH" id="form1Example23" cssClass="form-control form-control-lg" />
            <form:label path="matKhauKH" cssClass="form-label" for="form1Example23">Mật khẩu</form:label>
        </div>
        
        <button type="submit" class="btn btn-info btn-lg btn-block">Đăng nhập</button>
        <button type="submit" class="btn btn-info btn-lg btn-block">Đăng ký</button>
    </form:form>
</body>
</html>
