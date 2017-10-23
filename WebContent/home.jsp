<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Content-Style-Type" content="text/css" />
	<meta http-equiv="Content-Script-Type" content="text/javascript" />
	<meta http-equiv="imagetoolbar" content="no" />
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<title>Home画面</title>
	<style type="text/css">

        .main{
             margin-top:60px;
             text-align: center;
        }

        .logo{
             margin-top:40px;
             margin-left:160px;
        }

        .button{
             margin-top:-10px;
             margin-left:1310px;
        }



	</style>

</head>
<body>
<div class="logo">
<img src="img/logo.png" alt="" width="170" height="170" />
</div>

<div class="button">
<a href="login.jsp"><input type="submit" value="ログイン"></a>
</div>

<div class="main">

<s:iterator value = "itemList">
<a href='<s:url action="BuyItemAction" ><s:param name="id" ><s:property value="id"/></s:param></s:url>'>
<img src="<s:property value="itemImage"/>" class="img"></a>
</s:iterator>


<s:form >
<a href='<s:url action="BuyItemAction" ><s:param name="id" >1</s:param></s:url>'><img src="img/plants1.jpg" alt="" width="400" height="300" /></a>
<a href='<s:url action="BuyItemAction" ><s:param name="id" >2</s:param></s:url>'><img src="img/plants2.jpg" alt="" width="400" height="300" /></a>
<a href='<s:url action="BuyItemAction" ><s:param name="id" >3</s:param></s:url>'><img src="img/plants3.jpg" alt="" width="400" height="300" /></a>

<a href='<s:url action="BuyItemAction" ><s:param name="id" >4</s:param></s:url>'><img src="img/plants4.jpg" alt="" width="400" height="300" /></a>
<a href='<s:url action="BuyItemAction" ><s:param name="id" >5</s:param></s:url>'><img src="img/plants5.jpg" alt="" width="400" height="300" /></a>
<a href='<s:url action="BuyItemAction" ><s:param name="id" >6</s:param></s:url>'><img src="img/plants6.jpg" alt="" width="400" height="300" /></a>
</s:form>
</div>







		<div id="text-center">
			<s:form action="HomeAction">
				<s:submit value="商品購入"/>
			</s:form>
			<s:if test="#session.id != null">
				<p>ログアウトする場合は<a href='<s:url action="LogoutAction" />'>こちら</a></p>
			</s:if>
		</div>


</body>
</html>