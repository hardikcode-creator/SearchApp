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

  <title>Hello, world!</title>
</head>
<body>
<form class=" mx-auto border rounded p-5 w-75 " action="submit" method="post" >
  <div class="form-group" >
<div class="alert alert-danger" role="alert">
      <form:errors path="student.*"/>
    </div>

    <label for="email">Email address</label>
    <input type="text" name="email" class="form-control" id="email" placeholder="name@example.com">
  </div>
  <div class="form-group" >
      <label for="dob">Date of birth</label>
      <input type="text" name="date" class="form-control" id="dob" placeholder="dd/mm/yyyy">
    </div>
  <div class="form-group">
    <label for="courses">Select Courses</label>
    <select name="courses" class="form-control" id="courses">
      <option>English</option>
      <option>hindi</option>
      <option>math</option>
    </select>
  </div>

  <div class="form-group">
    <label for="exampleFormControlTextarea1">Comments</label>
    <textarea name="description" class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
  </div>
  <div class="form-group">
    <label for="phoneNumber">Number</label>
    <input type="text" name="number" class="form-control" id="phoneNumber"></p>
  </div>
  <div class="container border border-secondary my-5">
    <p>Address </p>
    <div class="form-group">
        <label for="city">city</label>
        <input type="text" name="address.city" class="form-control" id="city"></p>
      </div>
      <div class="form-group">
          <label for="street">street</label>
          <input type="text" name="address.street" class="form-control" id="street"></p>
        </div>
  </div>
  <button class="btn btn-primary" type="submit">Submit</button>
</form>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>