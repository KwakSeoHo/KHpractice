<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</head>
<body>
<input type=text id=data1>

<input type=text id=data2>

<button id=asJson>asJson</button>

<script>

$("#asJson").on("click",function(){

$.ajax({

url:"asJson",

data:{data1:$("#data1").val(), data2:$("#data2").val()},

success:function(resp){

console.log(resp.data1 + " : " + resp.data2);

}

})

})

</script>
</body>
</html>