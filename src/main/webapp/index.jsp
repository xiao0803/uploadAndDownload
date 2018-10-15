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
    <meta http-equiv="Content-Type" content="text/html; charset=GBK" />
    <link rel="stylesheet" type="text/css"	href="jquery-easyui-1.5/themes/default/easyui.css">
    <!--引入CSS样式-->
    <link rel="stylesheet" type="text/css" href="/jquery-easyui-1.5/themes/icon.css">
	<!--Icon引入-->
	<script language="JavaScript" type="text/javascript" src="jquery-easyui-1.5/jquery.min.js" charset="GBK"></script>
	<!--(指定编码方式，防止出现乱码)引入EasyUI中使用的Jquery版本-->
	<script language="JavaScript" type="text/javascript" src="jquery-easyui-1.5/jquery.easyui.min.js" charset="GBK"></script>
	<!--(指定编码方式，防止出现乱码)引入EasyUi文件-->
	<script language="JavaScript" type="text/javascript" src="jquery-easyui-1.5/locale/easyui-lang-zh_CN.js"></script>
	<!--汉化-->
<base href="<%=basePath%>">
<title>Insert title here</title>

<script type="text/javascript">
function test(){
	var a = $('#aaa').val();
	alert(a);
  }
</script>
</head>
<body>
	<hr>
	<a href="<%=basePath%>fileOperate/to_upload.do">登录123</a>
	<hr />
	<input id="aaa" name="aaa" value="123"><br>
	<button onclick="test()">bbb</button>
</body>
</html>