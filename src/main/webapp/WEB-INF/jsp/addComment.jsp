<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"/>
    <style>
        body {
            color: #f8f9fa;
            padding: 0px 50px 200px 50px;
        }

        h5 {
            font-family: serif;
            color: black;
            text-align: center;
        }

        h2 {
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
        }

        .form-group label {
            font-weight: bold;
        }

    </style>
</head>
<body>
<div class="container">
    <h2 class="mt-5">Оставить отзыв</h2>
    <div class="form-container">
        <form:form action="/all/salon/addcomment" method="post" modelAttribute="commentForm">
            <div class="form-group mb-3">
                <label for="comment"><h5>Отзыв:</h5></label>
                <form:textarea rows="4" cols="50" type="text" path="comment" class="form-control" id="name"/>
                <form:errors path="comment" cssClass="text-danger"/>
            </div>

            <button type="submit" class="btn btn-primary w-100">Оставить отзыв</button>
            <a class="btn btn-secondary w-100 mt-2" href="/all/salon/comment" role="button">Назад</a>
        </form:form>
    </div>
</div>
</body>
</html>
