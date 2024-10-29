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
    </style>
</head>
<body>
<div class="container">
    <h2 class="mt-5">Записаться к мастеру</h2>
    <div class="form-container">
        <p class="text-warning">${message}</p>
        <form:form action="/all/chooseday" method="post">
            <input type="hidden" name="animalServiceId" value="${animalServiceId}">
            <input type="hidden" name="masterId" value="${masterId}">
            <label for="day"><h5>Выберите дату:</h5></label>
            <select name="day" id="day" class="form-select" required>
                <option value="">-- Выберите дату --</option>
                <c:forEach items="${days}" var="day">
                    <option value="${day}">${day}</option>
                </c:forEach>
            </select>
            <button type="submit" class="btn btn-primary w-100" style="margin-bottom: 5px">Далее</button>
            <a class="btn btn-secondary w-100" href="/all/salon/main" role="button">Вернуться на главную</a>
        </form:form>
    </div>
</div>
</body>
</html>
