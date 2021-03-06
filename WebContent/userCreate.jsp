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
	<title>UserCreate画面</title>
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

		#main {
		   width: 100%;
		   height: 500px;
		   text-align: center;
	    }


	</style>
</head>

<body>

		<div id="top">
			<h3>新規ユーザー登録</h3>

			<s:if test="errorMassage != ''">
				<s:property value="errorMassage" escape="false" />
			</s:if>

			<table>
			  <s:form action="UserCreateConfirmAction">
				<tr>
					<td>
						<label>ログインID:</label>
					</td>
					<td>
						<input type="text" name="loginUserId"  value="" />
					</td>
				</tr>
				<tr>
					<td>
						<label>ログインPassword:</label>
					</td>
					<td>
						<input type="text" name="loginPassword" value="" />
					</td>
				</tr>
				<tr>
					<td>
						<label>ユーザー名:</label>
					</td>
					<td>
						<input type="text" name="userName" value="" />
					</td>
				</tr>
				<s:submit value="登録"/>
			  </s:form>
			</table>
			<div>
				<span>前画面に戻る場合は</span><a href='<s:url action="HomeAction" />'>こちら</a>
			</div>
	    </div>

</body>
</html>