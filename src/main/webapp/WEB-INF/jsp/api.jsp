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
<div>
<p>洪城停车app接口</p>
<p>一：请求</p>
1：对于每个请求都应检查 response头的Set-Cookie,获取两个cookie JSESSIONID和token并缓存更新（示例：Set-Cookie:stoken=8199d9bac3b7c0c5906c8f4db46ce969 JSESSIONID=6046264633934F5C57538C8C714D8C32;）<br>
2：得到JSESSIONID和token每个请求都应设置到请求头（示例：Cookie:stoken=32a4db63b154976b948808ce0cc45215; JSESSIONID=6046264633934F5C57538C8C714D8C32;）<br>
3: 参数统一使用post提交<br>
4：接口根路径http://m.0791jr.com/sapi
<p>二：返回json格式</p>
示例： {"status":0,"msg":"750812","data":null}<br>
字段<br>
 status=0 业务处理成功<br>
 status=1 业务处理失败<br>
 status=4 //接口调用错误，请查看业务流程<br>
  status=5 //未登录<br>
 status=100 //参数不合法<br>
 msg 提示信息<br>
 data 业务处理结果<br>

</div>
<table style="width: 100%;border-style:solid" border="1" cellspacing="0">
	<col style="width: 10%" />
	<col style="width: 50%" />
	<col style="width: 20%" />
	<col style="width: 20%" />
<thead>


<tr>
      <th >名称</th>
      <th width="50%">接口</th>
      <th>测试返回</th>
       <th>说明</th>
    </tr>

</thead>
<tbody>
<tr>

		<td>获取短信</td>
			<td class="context"><input type="text" value="login/sms.do?phone=18279915667&debug=true" onkeydown="if (event.keyCode == '13') {onExcute(this)}"></td>
			<td class="context"><div></div></td>
			<td class="context"><div>在调试环境下加参数debug=true 直接返回验证码，不发短信</div></td>
		</tr>
		
		<tr>
		
		<td>登录</td>
			<td class="context"><input type="text" value='login.do?account=18279915667&type=sms&vcode=641455' onkeydown="if (event.keyCode == '13') {onExcute(this)}"></td>
			<td class="context"><div ></div></td>
			<td class="context"><div></div></td>
		</tr>
		
		<tr>
		<td>登录退出</td>
			<td class="context"><input type="text" value='user/logout.do' onkeydown="if (event.keyCode == '13') {onExcute(this)}"></td>
			<td class="context"><div ></div></td>
			<td class="context"><div></div></td>
		</tr>
		
		
		
		
		<tr>
		<td>获取用户信息</td>
			<td class="context"><input type="text" value="user.do" onkeydown="if (event.keyCode == '13') {onExcute(this)}"></td>
			<td class="context"><div ></div></td>
			<td class="context"><div></div></td>
		</tr>
		
		
		<tr>
		<td>修改用户</td>
			<td class="context"><input type="text" value="user/update.do?nickName=二狗" onkeydown="if (event.keyCode == '13') {onExcute(this)}"></td>
		<td class="context"><div ></div></td>
		<td class="context"><div>一：参数<br>
		nickName：昵称
		</div></td>
		</tr>
		
		<tr>
		<td>修改用户头像</td>
			<td class="context">
			<form  method="post" action="user/update.do" enctype="multipart/form-data" novalidate="novalidate">
		
			<input type="text" value="user/update.do?avatarFile=" >
			<input name= "avatarFile" type="file">
		</form>
			</td>
		<td class="context"><div ></div></td>
		<td class="context"><div>一：参数<br>
		nickName：昵称
		</div></td>
		</tr>
		
		
		<tr>
		<td>设置支付密码</td>
			<td class="context"><input type="text" value="user/update.do?payPassword=e10adc3949ba59abbe56e057f20f883e" onkeydown="if (event.keyCode == '13') {onExcute(this)}"></td>
			<td class="context"><div ></div></td>
			<td class="context">密码都需md5加密
			一：参数<br>
			payPassword：支付密码
			
			</td>
		</tr>
		
		<tr>
		<td>修改支付密码</td>
			<td class="context"><input type="text" value="user/update.do?payPassword=e10adc3949ba59abbe56e057f20f883e&newPwd=670b14728ad9902aecba32e22fa4f6bd" onkeydown="if (event.keyCode == '13') {onExcute(this)}"></td>
			<td class="context"><div ></div></td>
			<td class="context">原密码，新密码都需md5加密
			一：参数<br>
			payPassword：原支付密码
			newPwd：新支付密码
			</td>
		</tr>
		
		
		<tr>
		<td>找回支付密码短信</td>
			<td class="context"><input type="text" value="user/pwd/sms.do?phone=18279915667&debug=true" onkeydown="if (event.keyCode == '13') {onExcute(this)}"></td>
			<td class="context"><div ></div></td>
			<td class="context">
			一：参数<br>
			
			</td>
		</tr>
		<tr>
		<td>找回支付密码</td>
			<td class="context"><input type="text" value="user/pwd/review.do?vcode=123456&pwd=e10adc3949ba59abbe56e057f20f883e" onkeydown="if (event.keyCode == '13') {onExcute(this)}"></td>
			<td class="context"><div ></div></td>
			<td class="context">原密码，新密码都需md5加密
			一：参数<br>
			payPassword：原支付密码
			newPwd：新支付密码
			</td>
		</tr>
		
		
		<tr>
		<td>停车资讯列表查询</td>
			<td class="context"><input type="text" value="news/list.do?limit=10&page=1" onkeydown="if (event.keyCode == '13') {onExcute(this)}"></td>
			<td class="context"><div ></div></td>
			<td class="context"><div>一：参数<br>
			limit：一页几条
			page：第几页
			</div></td>
		</tr>
		
		<tr>
		<td>停车资讯详情页面</td>
			<td class="context"><input type="text" value="news/info.do?id=130" onkeydown="if (event.keyCode == '13') {onExcute(this)}"></td>
			<td class="context"><div ></div></td>
			<td class="context"><div>一：参数<br>
			id:资讯id
			</div></td>
		</tr>
		
			<tr>
		<td></td>
			<td class="context"><input type="text" value="" onkeydown="if (event.keyCode == '13') {onExcute(this)}"></td>
			<td class="context"><div ></div></td>
			<td class="context"><div></div></td>
		</tr>
		
	<tr>
		<td>优惠券列表查询</td>
			<td class="context"><input type="text" value="voucher/list.do" onkeydown="if (event.keyCode == '13') {onExcute(this)}"></td>
			<td class="context"><div></div></td>
			<td class="context"><div>一：参数<br></div></td>
		</tr>
		
			<tr>
		<td>获取优惠券</td>
			<td class="context"><input type="text" value="voucher/get.do?id=20170927000011" onkeydown="if (event.keyCode == '13') {onExcute(this)}"></td>
			<td class="context"><div ></div></td>
			<td class="context"><div>一：参数<br>
			id:优惠券id
			</div></td>
		</tr>
		
		<tr>
		<td>优惠券查询我的</td>
			<td class="context"><input type="text" value="voucher/list.do?type=my&sta=1" onkeydown="if (event.keyCode == '13') {onExcute(this)}"></td>
			<td class="context"><div></div></td>
			<td class="context"><div>一：参数<br>
			type:固定my<br>
			sta:1 已使用代金券，2：未使用，3：已过期<br>
			</div></td>
		</tr>
		
		<tr>
		<td>反馈</td>
			<td class="context"><input type="text" value="user/complain/save.do?content=aaa" onkeydown="if (event.keyCode == '13') {onExcute(this)}"></td>
			<td class="context"><div ></div></td>
			<td class="context"><div>一：参数<br>
			content:反馈内容
			</div></td>
		</tr>
		
		
	<tr>
		<td>绑定车牌号</td>
			<td class="context"><input type="text" value="user/car/bind.do?carPlate=赣A37486" onkeydown="if (event.keyCode == '13') {onExcute(this)}"></td>
			<td class="context"><div ></div></td>
			<td class="context"><div >
			最多绑定3个车牌<br>
			一：参数<br>
			
			</div></td>
		</tr>
		
			<tr>
		<td>解绑车牌号</td>
			<td class="context"><input type="text" value="user/car/update.do?id=20171102105322973841843345162244&bindStatus=0" onkeydown="if (event.keyCode == '13') {onExcute(this)}"></td>
			<td class="context"><div ></div></td>
			<td class="context"><div >
			
			一：参数<br>
			id：车牌id
			bindStatus:固定0
			</div></td>
		</tr>
		
				<tr>
		<td>设置车牌号自动支付</td>
			<td class="context"><input type="text" value="user/car/update.do?id=20171102105322973841843345162244&autoPay=1" onkeydown="if (event.keyCode == '13') {onExcute(this)}"></td>
			<td class="context"><div ></div></td>
			<td class="context"><div >
			
			一：参数<br>
			id：车牌id
			autoPay:0：关闭自动支付，1：打开自动支付
			</div></td>
		</tr>
		
		<tr>
		<td>车牌认证</td>
			<td class="context"><input type="text" value="user/car/auth.do?id=20171102105322973841843345162244&carPlate=赣A37486&owner=张三&carframeNumber=123&engineNumber=1233&brandModel=23435" onkeydown="if (event.keyCode == '13') {onExcute(this)}"></td>
			<td class="context"><div ></div></td>
			<td class="context"><div >一：参数<br>
			id:车牌id<br>
			carPlate：车牌号<br>
			owner：车主姓名<br>
			carframeNumber：车架号码<br>
			engineNumber：发动机号<br>
			brandModel：品牌型号<br>
			</div></td>
		</tr>
		
		<tr>
		<td>查询车牌号</td>
			<td class="context"><input type="text" value="user/car/list.do" onkeydown="if (event.keyCode == '13') {onExcute(this)}"></td>
			<td class="context"><div ></div></td>
			<td class="context"><div >一：参数<br>

auto_pay：0：关闭自动支付，1：打开自动支付<br>

bind_time：绑定时间<br>
car_plate：车牌号<br>
certified：1：已认证，0：未认证<br>
id：车牌id<br>

			</div></td>
		</tr>
		
		<tr>
			<td></td>
			<td class="context"></td>
			<td class="context"><div ></div></td>
			<td class="context"><div></div></td>
		</tr>
		
			
		<tr>
		<td>查询停车状态</td>
			<td class="context"><input type="text" 
			value="user/parking/state.do" onkeydown="if (event.keyCode == '13') {onExcute(this)}"></td>
			<td class="context"><div ></div></td>
			<td class="context"><div>
			
			一：参数<br>
			二：返回值<br>
			参考亿车api 3.2 当前停车
			</div></td>
		</tr>
		
		<tr>
		<td>申请停车</td>
			<td class="context"><input type="text" 
			value="user/parking/order/submit.do?berthCode=201004&applyDuration=60&carType=1&payMoney=10&sectionName=宝安区坪洲片区李佳慧测试道路&payPasswordMD5=670b14728ad9902aecba32e22fa4f6bd" onkeydown="if (event.keyCode == '13') {onExcute(this)}"></td>
			<td class="context"><div ></div></td>
			<td class="context"><div>车辆类型 1 小型车 2 大型车
			
			一：参数<br>
			berthCode：<br>
			ApplyDuration：申请时长，单位分钟，<br>
			carType：车辆类型<br>
			payPasswordMD5：支付密码<br>
			sectionName:路段名称<br>
			二：返回值<br>
			如出现支付密码错误等会有业务结果返回：<br>
			如：{"state":1,"msg":"支付密码错误"}<br>
			参考亿车api 3.4 停车申请<br>
			<span style="color:red;">2017-11-7 字段变更 (增加参数sectionName)</span>
			</div></td>
		</tr>
		
		
		<tr>
		<td>停车续费</td>
			<td class="context"><input type="text" 
			value="user/parking/order/renew.do?orderid=20171103153331110234235489312995&berthCode=201012&applyduration=30&pwd=c33367701511b4f6020ec61ded352059" onkeydown="if (event.keyCode == '13') {onExcute(this)}"></td>
			<td class="context"><div ></div></td>
			<td class="context"><div>
			
			一：参数<br>
			code：泊位号<br>
			applyduration：申请时长，单位分钟，<br>
			二：返回值<br>
			参考亿车api 3.5 停车续费
			</div></td>
		</tr>
		
<!-- <tr>
		<td> 手动结束订单</td>
			<td class="context"><input type="text" 
			value="user/parking/order/over.do?orderid=60" onkeydown="if (event.keyCode == '13') {onExcute(this)}"></td>
			<td class="context"><div ></div></td>
			<td class="context"><div>
			
			一：参数<br>
			
			二：返回值<br>
			
			</div></td>
		</tr> -->
		
			<tr>
		<td> 补缴欠费单</td>
			<td class="context"><input type="text" 
			value="user/parking/order/arrear/pay.do?arrearid=20171021090708185652253141076589&payPwd=e10adc3949ba59abbe56e057f20f883e" onkeydown="if (event.keyCode == '13') {onExcute(this)}"></td>
			<td class="context"><div ></div></td>
			<td class="context"><div>车辆类型 1 小型车 2 大型车
			一：参数<br>
			arrearid:欠费单号
			code：泊位号<br>
			applyduration：申请时长，单位分钟，<br>
			二：返回值<br>
			参考亿车api 3.11 补缴欠费单<br>
			</div></td>
		</tr>
		
		<tr>
		<td>查询停车预付费</td>
			<td class="context"><input type="text" value="user/parking/berth/preFree.do?code=201004&duration=60&carType=1" onkeydown="if (event.keyCode == '13') {onExcute(this)}"></td>
			<td class="context"><div ></div></td>
			<td class="context"><div>carType车辆类型 1-小车 2-大车 
			一：参数<br>
			code:泊位号
			orderid:订单id（续费时传）
			carType：车辆类型
			duration：时长
			二：返回值<br>
			参考亿车api 3.13 预付费查询停车费
			</div></td>
		</tr>
		
		
		<tr>
		<td>查询泊位状态</td>
			<td class="context"><input type="text" value="user/parking/berth/check.do?code=201004" onkeydown="if (event.keyCode == '13') {onExcute(this)}"></td>
			<td class="context"><div ></div></td>
			<td class="context"><div>
			一：参数<br>
			二：返回值<br>
			参考亿车api 3.3 泊位状态
			</div></td>
		</tr>
		
		<tr>
		<td>查询泊位收费规则</td>
			<td class="context"><input type="text" value="user/parking/berth/rate.do?berthCode=201004" onkeydown="if (event.keyCode == '13') {onExcute(this)}"></td>
			<td class="context"><div ></div></td>
			<td class="context"><div>
			一：参数<br>
			二：返回值<br>
			参考亿车api 3.14 根据泊位号获取计费策略和收费规则
			</div></td>
		</tr>
		
		<tr>
		<td>查询泊位收费规则页面</td>
			<td class="context"><input type="text" value="user/parking/berth/rateView.do?berthCode=201004" onkeydown="if (event.keyCode == '13') {onExcute(this)}"></td>
			<td class="context"><div ></div></td>
			<td class="context"><div>
			一：参数<br>
			二：返回值<br>
			参考亿车api 3.14 根据泊位号获取计费策略和收费规则
			</div></td>
		</tr>
		
		
		
		<tr>
		<td>账户详情</td>
			<td class="context"><input type="text" value="user/account.do" onkeydown="if (event.keyCode == '13') {onExcute(this)}"></td>
			<td class="context"><div ></div></td>
			<td class="context"><div>
			一：参数<br>
			</div></td>
		</tr>
		
		
		<tr>
		<td>余额明细查询</td>
			<td class="context"><input type="text" value="user/account/water.do?page=1&limit=10" onkeydown="if (event.keyCode == '13') {onExcute(this)}"></td>
			<td class="context"><div ></div></td>
			<td class="context"><div>
			一：参数<br>
			二：返回<br>
			参考 3.18 钱包流水明细（列表）<br>
			<span style="color:red;">2017-11-4 字段变更</span>
			</div></td>
		</tr>
		
		
		
		
		 
		
		
			<tr>
			<td></td>
			<td class="context"></td>
			<td class="context"><div ></div></td>
			<td class="context"><div></div></td>
		</tr>
		
			<tr>
		<td>欠费订单查询</td>
			<td class="context"><input type="text" value="user/parking/order/arrears.do" onkeydown="if (event.keyCode == '13') {onExcute(this)}"></td>
			<td class="context"><div ></div></td>
			<td class="context"><div>
			一：参数<br>
			
			二：返回值<br>
			参考亿车api 3.9 欠费订单
			</div></td>
		</tr>
		
			<tr>
		<td>欠费订单详情</td>
			<td class="context"><input type="text" value="user/parking/order/arrearInfo.do?id=20170323164745841714733915020577" onkeydown="if (event.keyCode == '13') {onExcute(this)}"></td>
			<td class="context"><div ></div></td>
			<td class="context"><div>
			一：参数<br>
			
			二：返回值<br>
			参考亿车api 3.10 欠费单详情
			</div></td>
		</tr>
		

	<tr>
		<td>路边订单</td>
			<td class="context"><input type="text" value="user/parking/order.do?page=1&limit=10" onkeydown="if (event.keyCode == '13') {onExcute(this)}"></td>
			<td class="context"><div ></div></td>
			<td class="context"><div>
			一：参数<br>
			
			二：返回值<br>
			参考亿车api 3.7 路边订单记录
			</div></td>
		</tr>
		
		
			<tr>
			<td></td>
			<td class="context"></td>
			<td class="context"><div ></div></td>
			<td class="context"><div></div></td>
		</tr>
		
		 	<tr>
		<td>根据路段 id 获取路段详情</td>
			<td class="context"><input type="text" value="nearby/section.do?sectionid=10" onkeydown="if (event.keyCode == '13') {onExcute(this)}"></td>
			<td class="context"><div ></div></td>
			<td class="context"><div>
			一：参数<br>
			
			二：返回值<br>
			参考亿车api 3.16 根据路段 id 获取路段详情
			</div></td>
		</tr>
		
		 	<tr>
		<td>根据路段 id 获取路段详情html页面</td>
			<td class="context"><input type="text" value="nearby/section/view.do?id=20171024111833802169704987877209&distance=1.3Km" onkeydown="if (event.keyCode == '13') {onExcute(this)}"></td>
			<td class="context"><div ></div></td>
			<td class="context"><div>
			一：参数<br>
			
			二：返回值<br>
		
			</div></td>
		</tr>
		
		
		  	<tr>
		<td>搜索停车场</td>
			<td class="context"><input type="text" alue="park/plo.do?page=1&limit=10&ploname=" onkeydown="if (event.keyCode == '13') {onExcute(this)}"></td>
			<td class="context"><div ></div></td>
			<td class="context"><div>
			一：参数<br>
			ploname：车场名模糊查询
			二：返回值<br>
			<span style="color:red;">2017-11-7 接口删除</span>
			</div></td>
		</tr> 
		
			<tr>
		<td>	根据半径和当前位置获取停车场和路边泊位</td>
			<td class="context"><input type="text" value="nearby.do?lng=114.0199773259&lat=22.6404055637&radius=3000" onkeydown="if (event.keyCode == '13') {onExcute(this)}"></td>
			<td class="context"><div ></div></td>
			<td class="context"><div>
			一：参数<br>
			lng:经度<br>
			lat:纬度<br>
			radius:半径<br>
			二：返回值<br>
			参考亿车api 3.15 根据半径和当前位置获取停车场和路边泊位
			</div></td>
		</tr> 
		
		

		
		
			<tr>
			<td></td>
			<td class="context"></td>
			<td class="context"><div ></div></td>
			<td class="context"><div></div></td>
		</tr>
		
			
		 	<tr>
		<td>微信充值</td>
			<td class="context"><input type="text" value="user/wxpay.do?totalFee=10.00" onkeydown="if (event.keyCode == '13') {onExcute(this)}"></td>
			<td class="context"><div></div></td>
			<td class="context"><div>
			一：参数<br>
			
			二：返回值<br>
			参考亿车api 3.16 根据路段 id 获取路段详情
			</div></td>
		</tr>
		
		
		 	<tr>
		<td>消息拉取</td>
			<td class="context"><input type="text" value="user/message.do" onkeydown="if (event.keyCode == '13') {onExcute(this)}"></td>
			<td class="context"><div></div></td>
			<td class="context"><div>
			一：参数<br>
			
			二：返回值<br>
			
			</div></td>
		</tr>
		
		
			<tr>
		<td>月卡获取</td>
			<td class="context"><input type="text" value="user/monthcard/get.do?car=赣A37486" onkeydown="if (event.keyCode == '13') {onExcute(this)}"></td>
			<td class="context"><div></div></td>
			<td class="context"><div>
			一：参数<br>
			
			二：返回值<br>
			
			</div></td>
		</tr>
		
		
		<tr>
		<td>查询月卡列表</td>
			<td class="context"><input type="text" value="user/monthcard.do" onkeydown="if (event.keyCode == '13') {onExcute(this)}"></td>
			<td class="context"><div></div></td>
			<td class="context"><div>
			一：参数<br>
			
			二：返回值<br>
			begintime:开始时间
			finaltime：结束时间
			ploname：停车场名称
			carnumber：车牌号
			
			</div></td>
		</tr>
		
			<tr>
		<td>解绑月卡</td>
			<td class="context"><input type="text" value="user/monthcard/unbind.do?carid=20171108000001" onkeydown="if (event.keyCode == '13') {onExcute(this)}"></td>
			<td class="context"><div></div></td>
			<td class="context"><div>
			一：参数<br>
			
			二：返回值<br>
			
			</div></td>
		</tr>
		
		
			<tr>
			<td></td>
			<td class="context"></td>
			<td class="context"><div ></div></td>
			<td class="context"><div></div></td>
		</tr>
		
	 	<tr>
		<td>获取最新app</td>
			<td class="context"><input type="text" value="app/get.do?apptype=1" onkeydown="if (event.keyCode == '13') {onExcute(this)}"></td>
			<td class="context"><div></div></td>
			<td class="context"><div>
			一：参数<br>
			apptype:1:android,2:ios
			二：返回值<br>
			
			
			</div></td>
		</tr>
		
			<tr>
		<td>支付宝充值</td>
			<td class="context"><input type="text" value="user/alipay.do?money=10.1" onkeydown="if (event.keyCode == '13') {onExcute(this)}"></td>
			<td class="context"><div></div></td>
			<td class="context"><div>
			一：参数<br>
			
			二：返回值<br>
			
			
			</div></td>
		</tr>
		
			<tr>
		<td>首页数据</td>
			<td class="context"><input type="text" value="index.do?lng=114.0199773259&lat=22.6404055637&radius=3000" onkeydown="if (event.keyCode == '13') {onExcute(this)}"></td>
			<td class="context"><div></div></td>
			<td class="context"><div>
			一：参数<br>
			
			二：返回值<br>
			
			
			</div></td>
		</tr>
		
		
			<tr>
		<td>银行卡绑定</td>
			<td class="context"><input type="text" value="user/bankcard/bind.do?bankcard=8800330000000079&cardtype=1" onkeydown="if (event.keyCode == '13') {onExcute(this)}"></td>
			<td class="context"><div></div></td>
			<td class="context"><div>
			一：参数<br>
			bankcard:卡号
			cardtype：1：洪城一卡通
			二：返回值<br>
			
			
			</div></td>
		</tr>
		
		
		
			<tr>
		<td>查询银行卡</td>
			<td class="context"><input type="text" value="user/bankcard.do?cardtype=1" onkeydown="if (event.keyCode == '13') {onExcute(this)}"></td>
			<td class="context"><div></div></td>
			<td class="context"><div>
			一：参数<br>
			
			二：返回值<br>
			
			
			</div></td>
		</tr>
		
		
		<tr>
		<td>一卡通支付</td>
			<td class="context"><input type="text" value="user/ykt.do?bankcard=8800330000000079&pwd=888888&money=0.1" onkeydown="if (event.keyCode == '13') {onExcute(this)}"></td>
			<td class="context"><div></div></td>
			<td class="context"><div>
			一：参数<br>
			
			二：返回值<br>
			
			
			</div></td>
		</tr>
		
		<tr>
		<td>用户协议</td>
			<td class="context"><input type="text" value="substance.do?name=用户协议" onkeydown="if (event.keyCode == '13') {onExcute(this)}"></td>
			<td class="context"><div></div></td>
			<td class="context"><div>
			一：参数<br>
			
			二：返回值<br>
			
			
			</div></td>
		</tr>
		
			<tr>
		<td>关于我们</td>
			<td class="context"><input type="text" value="substance.do?name=about" onkeydown="if (event.keyCode == '13') {onExcute(this)}"></td>
			<td class="context"><div></div></td>
			<td class="context"><div>
			一：参数<br>
			
			二：返回值<br>
			
			
			</div></td>
		</tr>
		
		<tr>
		<td>解绑一卡通</td>
			<td class="context"><input type="text" value="user/bankcard/unbind.do?bankcardid=28" onkeydown="if (event.keyCode == '13') {onExcute(this)}"></td>
			<td class="context"><div></div></td>
			<td class="context"><div>
			一：参数<br>
			
			二：返回值<br>
			
			
			</div></td>
		</tr>
		
</tbody>
	</table>


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