<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background-color: #f8f9fa;
            color: #212529;
            padding: 50px 0;
        }

        h2, h5 {
            font-family: serif;
            color: black;
            text-align: center;
        }

        .form-container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            border: 2px solid #ffc107;
            border-radius: 10px;
            background-color: #FFFFF0;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .form-group label {
            font-weight: bold;
        }

        .text-warning {
            color: red !important;
            text-align: center;
            font-size: 1.2em;
            margin-top: 20px;
        }
    </style>
</head>
<body>
<div class="container">
    <h2 class="mt-5">Обновление стоимости</h2>
    <div class="form-container">
        <p class="text-warning">${message}</p>
        <form:form action="/admin/updatecost" method="post" modelAttribute="costForm">
            <div class="form-group">
                <label for="animalServiceId"><h5>Услуга:</h5></label>
                    <select name="animalServiceId" id="animalServiceId" class="form-select" required>
                        <option value="">-- Выберите услугу --</option>
                        <c:forEach items="${services}" var="service">
                            <option value="${service.id}">${service.serviceName}</option>
                        </c:forEach>
                    </select>
                <input type="hidden" name="animalService" value="${animalServiceId}" />
                <label for="cost"><h5>Стоимость:</h5></label>
                <form:input type="number" path="cost" class="form-control" id="cost"/>
                <form:errors path="cost" cssClass="text-danger"/>
            </div>
            <button type="submit" class="btn btn-primary w-100" style="margin-bottom: 5px">Обновить стоимость</button>
            <a class="btn btn-secondary w-100" href="/admin/adminpage" role="button">Вернуться на страницу администратора</a>
        </form:form>
    </div>
</div>
</body>
</html>
