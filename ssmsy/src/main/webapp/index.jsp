<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.3.1.js"></script>
<script type="text/javascript">
	$(document).ready(
		function() {
			$("#kick").click(
				function() {
					$.ajax({
						type : "post",
						url : "http://localhost:8080/ssmsy/user/selUser.do",
						data : {
							"name" : "小小",
							"password" : "123"
								},
						success : function(returnData) {
							var arr = eval(returnData);
							var str = "";
							for (var i = 0; i < arr.length; i++) {
								for (var j = 0; j < arr[i].length; j++) {
									str += "<div>id:"+ arr[i][j].id +"  name:"+ arr[i][j].name+ "  password:"+ arr[i][j].password + "</div>"
								}
							}
							$("#result").append(str);
							}
						})
					}
				)
			}
		)
</script>
</head>
<body>
	<input type="button" id="kick" value="lick" />
	<div id='result'></div>
</body>
</html>