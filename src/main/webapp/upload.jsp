<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=GBK" />
    <link rel="stylesheet" type="text/css"	href="<%=basePath%>jquery-easyui-1.5/themes/default/easyui.css">
    <!--引入CSS样式-->
    <link rel="stylesheet" type="text/css" href="<%=basePath%>jquery-easyui-1.5/themes/icon.css">
	<!--Icon引入-->
	<script language="JavaScript" type="text/javascript" src="<%=basePath%>jquery-easyui-1.5/jquery.min.js" charset="GBK"></script>
	<!--(指定编码方式，防止出现乱码)引入EasyUI中使用的Jquery版本-->
	<script language="JavaScript" type="text/javascript" src="<%=basePath%>jquery-easyui-1.5/jquery.easyui.min.js" charset="GBK"></script>
	<!--(指定编码方式，防止出现乱码)引入EasyUi文件-->
	<script language="JavaScript" type="text/javascript" src="<%=basePath%>jquery-easyui-1.5/locale/easyui-lang-zh_CN.js"></script>
	<!--汉化-->
       <title>EasyUI入门</title>
       <base href="<%=basePath%>">
    <script type="text/javascript">
       function doUpload() {  
    	     var formData = new FormData($("#uploadForm")[0]);  
    	     $.ajax({  
    	          url: '<%=basePath%>fileOperate/upload.do' ,  
    	          type: 'POST',  
    	          data: formData,  
    	          async: false,  
    	          cache: false,  
    	          contentType: false,  
    	          processData: false,  
    	          success: function (returndata) {  
    	              alert(returndata);  
    	          },  
    	          error: function (returndata) {  
    	              alert(returndata);  
    	          }  
    	     });  
    	}
       function test(){
    		var a = $('#aaa').val();
    		alert(a);
    	  }
    </script>
</head>
<body>
	<input id="aaa" name="aaa" value="123"><br>
	<button onclick="test()">bbb</button>
<form id="uploadForm" enctype="multipart/form-data" method="post" name="fileinfo">
    <table>
        <tr>
            <td><label>Your email address:</label></td>
            <td><input type="email" autocomplete="on" autofocus name="userid" placeholder="email" required size="32"
                       maxlength="64"/>
            </td>
        </tr>
        <tr>
            <td><label>Custom file label:</label></td>
            <td><input type="text" name="filelabel" size="12" maxlength="32"/><br/>
            </td>
        </tr>
        <tr>
            <td><label>File to stash:</label></td>
            <td><input type="file" name="file" required/>
            </td>
        </tr>
    </table>
</form>
<div id="output"></div>
<a href="javascript:doUpload()">Stash the file!</a>
</body>

 </html>