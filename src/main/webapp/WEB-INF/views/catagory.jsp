<%--
  Created by IntelliJ IDEA.
  User: Niroj
  Date: 8/12/2017
  Time: 12:06 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Product Catagory</title>
    <link rel="stylesheet" href="../css/signup.css"/>
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
          crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
          integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
          crossorigin="anonymous">
    <!-- Latest compiled and minified JavaScript -->
    <script
            src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
            integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
            crossorigin="anonymous"></script>
</head>
<body>

<div id="container">
    <form:form action="/addCatagory" method="post" modelAttribute="catagory">
        <div class="form-group required">
            <label class="control-label col-md-4  requiredField">Product Catagory
            </label>
            <div class="controls col-md-8 ">
                    <%--<input class="input-md  textinput textInput form-control"--%>
                    <%--name="categoryName" placeholder="Name" type="text" required/>--%>
                <form:input path="categoryName" cssClass="form-control" placeholder="Product category "/>
                <form:errors path="categoryName" cssClass="form-control text-warning"/>
            </div>
        </div>
        <div class="form-group required">
            <label class="control-label col-md-4  requiredField">
                Description </label>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <%--<div class="controls col-md-8 ">--%>
                <%--<textarea class="input-md  textinput textInput form-control"--%>
                <%--name="description" required></textarea>--%>
            <form:input path="description" cssClass="form-control" placeholder="Product category "/>
            <form:errors path="description" cssClass="form-control text-warning"/>
        </div>
        <div class="buttons">
            <button type="submit" class="btn btn-primary">Add</button>
        </div>
    </form:form>
    <br/>
    <form action="<c:url value='/controlPage' />" method="post">
        <div class="buttons">
            <button type="submit" class="btn btn-primary">Back To Control Panel</button>
        </div>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    </form>
    <form action="<c:url value='/productPage' /> " method="post">
        <div class="buttons" style="padding: 10px">
            <button type="submit" class="btn btn-primary">Home</button>
        </div>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    </form>
</div>

</div>


<script
        src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<script type="text/javascript" src="static/js/fileupload.js"></script>


</body>
</html>
