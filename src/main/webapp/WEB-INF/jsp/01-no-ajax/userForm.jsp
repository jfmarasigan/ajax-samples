<%@ page language="java" contentType="text/html; charset=ISO-8859-1"    pageEncoding="ISO-8859-1"%><!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"><%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %><%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><html>	<head>		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">		<title>Create a new User</title>		<style type="text/css">			form fieldset { padding: 20px; }			div.control-group { margin-bottom: 20px; }			div.control-group label.control-label { width: 300px; }			div.control-group div.controls { width: 400px; }			div.controls span { color: red; font-size: 0.8em; }		</style>	</head><body>	<div class="container" style="padding-top: 50px;">		<jsp:include page="../menu.jsp"/>				<c:if test="${successMessage !=  null}">			<h1>${successMessage}</h1>		</c:if>				<spring:url value="/userNoAjax.htm" var="formUrl" />		<form:form modelAttribute="user" action="${formUrl}">			<fieldset>				<div class="control-group">					<label class="control-label">Enter your first name:</label>					<div class="controls">						<form:input path="firstName"/>						<form:errors path="firstName"/>					</div>				</div>				<div class="control-group">					<label class="control-label">Enter your last name:</label>					<div class="controls">						<form:input path="lastName"/>						<form:errors path="lastName"/>					</div>				</div>								<div class="form-actions">					<button type="submit" class="btn btn-primary">Save changes</button>					<button type="reset" class="btn">Cancel</button>				</div>			</fieldset>		</form:form>	</div></body></html>