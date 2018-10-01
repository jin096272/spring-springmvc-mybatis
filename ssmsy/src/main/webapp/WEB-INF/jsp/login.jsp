<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.3.1.js"></script>
<script type="text/javascript">
	function onclick() {
		alert(11);
		$.ajax({
			type : "post",
			url : "http://localhost:8080/ssmsy/user/selUser.do",
			data : {
				"name" : "小小",
				"password" : "123"
			},
			success : function(returnData) {
				var arr = eval(returnData);
				$.each(arr, function(index, content) {
					$("#result").append(
							"<div>" + content.name + "</div><div>"
									+ content.password + "</div></hr>");
				});
			}
		})
	}
</script>
</head>
<body>
	<input type="button" id="kick" value="kick" onclick="onclick()" />
	<div id='result'></div>
</body>
</html>