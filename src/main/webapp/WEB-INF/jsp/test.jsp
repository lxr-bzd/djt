<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>Insert title here</title>
<script type="text/javascript" src="style/jquery.min.js"></script>
<style type="text/css">
table td.context{
width: 40%;
}
table td.context div{
width: 600px;
}

table tr{
height: 50px;
}
table td input{
width: 100%;
height: 100%;
}
</style>
</head>
<body>





</body>
<script type="text/javascript">

function output(input,text){
	$(input).parent().next().find(">div").html(text);
	
}



function onExcute(input){
	
	
	output(input,"。。。");
	
	
	var url = $(input).val();
	
	var x = (url.indexOf("?"));
	
	if(x>-1){ var pstr = url.substring(x+1,url.length);
	
	 var durl = url.substring(0,url.indexOf("?"));}
	else {
		
		 var pstr = "";
			
		 var durl = url;
	}
	
	$.ajax({
		url:durl,
		data:pstr,
		dataType : 'JSON',
		type:'post',
		async: false,
		success:function(data){
			
			console.log(data);
			
			output(input,JSON.stringify(data));
			
			
		}
	});
	
	

	
	
}


$(function(){
	var trs = $("table>tbody>tr");
	
	trs.each(function(i,e){
		var td = $(e).children("td:first-child")
		td.html(i+": "+td.html())
		
		
	});
	
});



</script>
</html>