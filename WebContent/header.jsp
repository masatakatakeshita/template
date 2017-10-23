<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>header</title>
<style type="text/css">
header{
	left:0;
	top:0;
	position:fixed;
	width:100%;
	height:50px;
	margin:0;
	padding:10px;
	font-family:メイリオ;
	background-color:white;
	z-index: 10;
	font-size:13px;

}
.logo{
	margin-right:2em;
	position:relative;
	top:0px;
	width:110px;
	height:110px;
}

.header_btn {
	margin:1em;
	font-weight: bold;
    display: inline-block;
    padding: 0.5em 1em;
    text-decoration: none;
    color: black;
    border: double 4px black;
    border-radius: 3px;
    transition: .4s;
    background:#ffffff;
    z-index: 12;
}
.header_btn:hover {
    background: #c0c0c0;
}
</style>
<body>

<header><!-- ログイン状態 -->
	<s:if test="#session.userId != null">
		<!-- トップページ -->
		<a href="home.jsp"><img class="logo" src="img/logo.png"></a>
		<!--　ログアウト logout.actionを必須 -->
		<a href="<s:url action="LogoutAction"/>" class="header_btn"><s:text name="ログアウト" /></a>
		<!-- マイページ -->
		<a href="myPage.jsp"><input type="submit" value="マイページ"></a>
		<!-- カート -->
		<a href="<s:url action="GoCartAction"/>" class="header_btn"><s:text name="カート" /></a>

	</s:if>

	<s:else><!-- 非ログイン状態 -->
		<!-- トップページ -->
		<a href="index.jsp"><img class="logo" src="img/logo.jpg"></a>
		<!--ログイン  -->
		<a href="login.jsp"><input type="submit" value="ログイン"></a>

	</s:else>
	</header>


</body>
</html>