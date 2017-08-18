<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Hatake
  Date: 8/14/2017
  Time: 10:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Shipping Address</title>
</head>
<body>
<%--<form:form action="/checkout" modelAttribute="shippingAddress" method="post">--%>
<form action="/checkout" method="post">
    <div class="panel panel-default">
        <div class="panel-body">
            <fieldset class="form-group">
                <legend>Enter your Shipping Address</legend>
                <div class="form-group">
                    <label>Street</label>
                    <input type="text" name="street"  placeholder="street" required/>
                    <%--<form:input type="text" path="street" cssClass="form-control" placeholder="street"/>--%>
                    <%--<div>Error..<form:errors path="street" cssStyle="color:red"/></div>--%>
                </div>
                <div class="form-group">
                    <label>City</label>
                    <input type="text" name="city"  placeholder="city" required/>
                    <%--  <form:input type="text" path="city" class="form-control" placeholder="city"/>
                      <form:errors path="city"/>
                 --%> </div>
                <div class="form-group">
                    <label>State</label>
                    <input type="text" name="stateUS" placeholder="state" required/>
                   <%-- <form:input type="text" path="stateUS" class="form-control" placeholder="state"/>
                    <form:errors path="stateUS"/>--%>
                </div>
                <div class="form-group">
                    <label>Zip</label>
                    <input type="text" name="zipCode"  placeholder="zip" required/>
                    <%--<form:input type="text" path="zipCode" class="form-control" placeholder="zip"/>
                    <form:errors path="zipCode"/>--%>
                </div>
                <div class="form-group">
                    <label>Country</label>
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    <input type="text" name="country" placeholder="country" required/>
                    <%--<form:input type="text" path="country" class="form-control" placeholder="country"/>
                    <form:errors path="country"/>--%>
                </div>
            </fieldset>
        </div>
    </div>
    <div class="buttons">
        <button type="submit">CheckOut</button>
    </div>
</form>
</body>
</html>
