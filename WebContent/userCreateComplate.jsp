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
	<meta charset="utf-8">
	<title>UserCreateComplate画面</title>
	<style type="text/css">
		/* ========TAG LAYOUT======== */
		body {
		   margin:0;
		   padding:0;
		   line-height:1.6;
		   letter-spacing:1px;
		   font-family:Verdana, Helvetica, sans-serif;
		   font-size:12px;
		   color:#333;
		   background:#fff;
		   background-image: url("img/t1.png" );
		}

		table {
			text-align:center;
			margin:0 auto;
		}

		/* ========ID LAYOUT======== */
		#top {
		   width:780px;
		   margin:200px auto;
		   border:1px solid #333;
		   background:#fff;
		}

		#main {
		   width: 100%;
		   height: 500px;
		   text-align: center;
		}


	</style>
</head>

<body>

	<div id="main">
		<div id="top">
			<h2>ユーザーの登録が完了致しました。</h2>
		</div>
			<a href='<s:url action="HomeAction" />'>ログインへ</a>
    </div>

</body>
</html>

