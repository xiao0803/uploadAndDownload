<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/ajaxfileupload.js"></script>
<script type="text/javascript">
	$().ready(function(){
		
		$("#but01").click(function(){
			var userNumber = $("#userNumber").val();
			if(userNumber.length == 0){
				alert('请输入账号');
			}else{
				$.post("<%=basePath%>ajaxUser.do"
						,{userNumber:userNumber}
						,function(data){
							alert(data);
						});
			     }
		});
		
		$("#but02").click(function(){
			var userId = $("#userId").val();
			$.post("<%=basePath%>ajaxUser3.do"
					,{userId:userId}
					,function(data){
						alert(data.userId+' --'+data.userName+' --- '+data.userAge);
					}
					,"json");
		});

		$("#but03").click(function(){
			$.ajaxFileUpload  
		    (  
		        {  
		            url:'<%=basePath%>ajaxUser4.do',
						secureuri : false,
						fileElementId : 'fileTest',
						dataType : 'json',
						success : function(data, status) {
							alert("1" + data);
						},
						error : function(data, status, e) {
							alert("2" + data);
						}
					})

				});

			});
</script>
</head>
<body>

	<hr>
	test传参：
	<input type="text" id="userNumber" name="userNumber" value="${para }"/>
	<input type="text" id="userNumber" name="para" />
	<hr />

	<hr>
	账号：
	<input type="text" id="userNumber" name="userNumber" />
	<input type="button" id="but01" value="验证" />
	<hr />

	编号：
	<input type="text" id="userId" name="userId" />
	<input type="button" id="but02" value="查询" />
	<hr />

	上传：
	<input type="file" id="fileTest" name="fileTest" />
	<input type="button" id="but03" value="上传" />
</body>
</html>