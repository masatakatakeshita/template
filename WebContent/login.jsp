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
	<title>Login画面</title>
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

		#top {
		   width:400px;
		   margin:200px auto;
		   border:1px solid #333;
           padding: 0.5em 1em;
           color: black;
           background: #f9f9f9;
           border-top: solid 5px black;
           box-shadow: 0 3px 5px rgba(0, 0, 0, 0.22);
           text-align: center;
		}


		#text-link {
			display: inline-block;
			text-align: right;
		}
	</style>
</head>

<body>

		<div id="top">
			<h3>商品を購入する際にはログインをお願いします。</h3>
			<s:form action="LoginAction">

		           <s:textfield name="loginUserId" label="ID"/>

				   <s:password name="loginPassword" label="Password"/>

				<s:submit value="ログイン"/>
			</s:form>
			<br/>

			<div id="text-link">
				<p>新規ユーザー登録は<a href='<s:url action="UserCreateAction" />'>こちら</a></p>
				<p>Homeへ戻る場合は<a href='<s:url action="GoHomeAction" />'>こちら</a></p>
		</div>
		</div>


</body>
</html>