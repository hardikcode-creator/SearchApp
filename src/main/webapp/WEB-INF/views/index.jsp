
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <!-- Linking static files -->
<link href="<c:url value = "/resources/css/style.css" />">
<script src="<c:url value="/resources/js/script.js"/>"></script>
    <title>Search App</title>
</head>


<body>
<h3>This is as Home Pages</h3>
<img alt='img-alt' src="<c:url value="/resources/images/IMG_5701.jpeg"/>"/>
<div clas="container">
<div class="alert alert-danger" role="alert">
      <form:errors path="student.*"/>
    </div>
    <div class="card  mx-auto mt-5 bg-secondary" style="width: 50%">
    <div class="card-body">
        <form action="search" method="post">
            <div class="form-group">
                <input type="text" name="query-box" placeholder="Enter your search" class="form-control"/>
            </div>
            <div class="container text-center" >


                <button type="submit" class="btn btn-primary">Search</button>
            </div>
        </form>
    </div>

    </div>
</div>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>