<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
table
{
table-layout: fixed; 
}
td
{
max-width: 12px;
}
#main{
width=900px;
margin:0 auto;
}
#lefta
{
width:20%;
height:100%;
float:left;
background-color: lime;
}
#cent
{
width=60%;
float:left;
background-color: aqua;

}
</style>
</head>
<body>
<div id="main">

<div id="lefta">
some menu
</div>

<div id="cent">
<table>
<tr>
<td>name</td>
<td>email</td>
<td>phone</td>
<td>address</td>
<td>ccnumber</td>
</tr>
<c:forEach items="${customers}" var="customer">
<tr>

<td> <c:out value="${customer.name}" /> </td>
<td> <c:out value="${customer.email}" /> </td>
<td> <c:out value="${customer.phone}" /> </td>
<td> <c:out value="${customer.address}" /> </td>
<td> <c:out value="${customer.ccNumber}" /> </td>
<td> <a href="/asdf/Customer/edit?id=${customer.id}">edit</a> </td>
</tr>

</c:forEach>
</table>
</div>

</div>

</body>
</html>