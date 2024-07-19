<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
        <link rel="shortcut icon" href="assets/img/logo/favicon.svg">
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/font-awesome.css">
        <link rel="stylesheet" href="assets/css/animate.css">
        <link rel="stylesheet" href="assets/css/magnific-popup.css">
        <link rel="stylesheet" href="assets/css/meanmenu.css">
        <link rel="stylesheet" href="assets/css/swiper-bundle.min.css">
        <link rel="stylesheet" href="assets/css/nice-select.css">
        <link rel="stylesheet" href="assets/css/main.css">
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
                background-color: #f5f5f5;
                display: flex;
            }

            .sidebar {
                width: 250px;
                background-color: #333;
                color: white;
                padding: 20px;
                box-sizing: border-box;
            }

            .main-content {
                flex: 1;
                display: flex;
                flex-direction: column;
            }

            .table-container {
                display: grid;
                grid-template-columns: repeat(3, 1fr);
                gap: 20px;
                padding: 20px;
                box-sizing: border-box;
            }

            .table-container a {
                text-decoration: none;
                color: black;
            }

            @media (max-width: 1200px) {
                .table-container {
                    grid-template-columns: repeat(2, 1fr);
                }
            }

            @media (max-width: 900px) {
                .table-container {
                    grid-template-columns: 1fr;
                }
            }

            @media (max-width: 600px) {
                .table-container {
                    grid-template-columns: 1fr;
                }
            }

            .table-card {
                background-color: white;
                border-radius: 10px;
                box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
                padding: 20px;
                display: flex;
                flex-direction: column;
                justify-content: space-between;
            }

            .table-header {
                display: flex;
                justify-content: space-between;
                font-weight: bold;
            }

            .table-body {
                display: flex;
                justify-content: space-between;
                margin: 10px 0;
                flex-direction: column;
            }

            .table-footer {
                display: flex;
                justify-content: space-between;
            }

            .table-info {
                display: flex;
                justify-content: space-between;
                margin-top: 10px;
            }

            .time-label {
                color: gray;
            }

            .dine-in {
                border-left: 5px solid green;
            }

            .to-go {
                border-left: 5px solid red;
            }

            .delivery {
                border-left: 5px solid orange;
            }

            .sidebar {
                background-color: #ffffff;
                border-right: 1px solid #ddd;
                height: 100vh;
            }

            .sidebar a {
                color: #333;
                padding: 20px;
                display: block;
                text-decoration: none;
            }

            .sidebar a:hover {
                background-color: #f0f0f0;
            }

            .sidebar .logo img {
                width: 100px;
                margin: 20px;
            }

            .sidebar .user {
                margin-left: 20px;
                margin-top: 30px;
            }

            .sidebar .logo img {
                width: 150px;
                margin: 20px;
            }

            .order-info {
                background-color: #f9f9f9;
                border: 1px solid #ddd;
                border-radius: 5px;
                padding: 10px;
                margin-bottom: 10px;
                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            }

            .order-selecting {
                background-color: #ffeeba;
            }

            .order-waiting {
                background-color: #d4edda;
            }

            .order-confirm {
                background-color: #cce5ff;
            }
        </style>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    </head>
    <body>
        <div class="col-md-2 sidebar">
            <div class="logo">
                <img src="assets/img/logo/logo.svg" alt="Logo">
            </div>
            <c:if test="${sessionScope.admin != null}">
                <a href="dashboard"><i class="fas fa-home"></i> Trang chủ</a>
            </c:if>
            <c:if test="${sessionScope.admin == null}">
                <a href="tableControl"><i class="fas fa-users"></i> Bàn</a>
            </c:if>
            <c:if test="${sessionScope.admin == null}">
                <a href="Cash.jsp"><i class="fas fa-cash-register"></i> Tiền</a>
            </c:if>
            <c:if test="${sessionScope.admin != null}">
                <a href="managerproducts"><i class="fas fa-box-open"></i> Quản lí sản phẩm</a>
            </c:if>
            <c:if test="${sessionScope.admin != null}">
                <a href="managertable"><i class="fas fa-utensils"></i> Quản lí Bàn ăn</a>
            </c:if>
            <c:if test="${sessionScope.admin != null}">
                <a href="managerdiscount"><i class="fas fa-ticket"></i> Quản lí phiếu giảm giá</a>
            </c:if>
            <c:if test="${sessionScope.admin != null}">
                <a href="managerCustomer"><i class="fas fa-users"></i> Khách hàng</a>
            </c:if>
            <c:if test="${sessionScope.admin != null}">
                <a href="manageremployee"><i class="fas fa-users"></i> Nhân viên</a>
            </c:if>
            <c:if test="${sessionScope.admin != null}">
                <a href="workScheduleControl"><i class="fas fa-calendar-alt"></i> Lịch làm việc</a>
            </c:if>
            <c:if test="${sessionScope.admin != null}">
                <a href="salaries"><i class="fas fa-money-bill"></i> Quản lí lương</a>
            </c:if>
            <div class="user">
                <c:if test="${sessionScope.employ != null}">
                    <p style="color: black">Xin chào ${sessionScope.employ.name}</p>
                </c:if>
                <a href="logout"><i class="fas fa-sign-out-alt"></i> Đăng xuất</a>
            </div>
        </div>

        <div class="main-content">
            <div class="table-container">
                <c:choose>
                    <c:when test="${not empty requestScope.tableCarts}">
                        <c:forEach var="entry" items="${requestScope.tableCarts}">
                            <a href="tableDetailControl?tableName=${entry.key}">
                                <div class="table-card dine-in">
                                    <div class="table-header">
                                        <span><i class="fas fa-utensils"></i> ${entry.key}</span>
                                    </div>
                                    <div class="table-body">
                                        <c:forEach var="cart" items="${entry.value}" varStatus="status">
                                            <c:if test="${cart.status == 'Đang chờ xác nhận' || cart.status == 'Đã xác nhận'}">
                                                <div class="order-info
                                                     ${cart.status == 'Đang chọn món' ? 'order-selecting' : ''}
                                                     ${cart.status == 'Đang chờ xác nhận' ? 'order-waiting' : ''}
                                                     ${cart.status == 'Đã xác nhận' ? 'order-confirm' : ''}">
                                                    <span>Order ${status.index + 1}: ${cart.status}</span><br>
                                                    <span>Thời gian đặt món: ${cart.checkoutTime}</span>
                                                    <br/>
                                                </div>
                                            </c:if>
                                        </c:forEach>
                                    </div>
                                </div>
                            </a>
                        </c:forEach>
                    </c:when>
                    <c:otherwise>
                        <p>Không có bàn nào được tìm thấy</p>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </body>
</html>
