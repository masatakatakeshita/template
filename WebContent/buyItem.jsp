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
	<title>BuyItem画面</title>
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
		}

        .img {
        position: absolute;
        width:600px;
        height:500px;
        left: 15%;
        top: 20%;
        }

        .name {
        position:absolute;
        top:20%;
        left: 60%;
        width: 200px;
        border-bottom: solid 3px gray;
        }


        .price{
        position:absolute;
        top:30%;
        left: 65%;
        }

        .stockbtn{
        position:absolute;
        top:50%;
        left:65%;
         }



		}


	</style>
</head>
<body>

   <s:action name ="BuyItemAction" />
   <s:iterator value="itemList">
  <div class ="image">
  <img class="img" src="./<s:property value="itemImage"/>"  />
  </div>


<div class="name"><h1><s:property value="itemName" /></h1></div>

<div class = "clear"></div>

<div class="price"><h2><s:property value="itemPrice" /><s:text name="円" /></h2></div>

<div class = "stockbtn">

  <span>数量</span>
  <select name="stock">
  <option value="1" selected="selected">1</option>
     <option value="2">2</option>
     <option value="3">3</option>
     <option value="4">4</option>
     <option value="5">5</option>
  </select>
<a href='<s:url action="BuyItemConfirmAction" ><s:param name="id" ><s:property value="id"/></s:param></s:url>'><input type="submit" value="<s:text name="購入" />"></a>
</div>
<div class = "clear"></div>


			<div>
				<span>前画面に戻る場合は</span><a href='<s:url action="HomeAction" />'>こちら</a>

		</div>

      </s:iterator>
</body>
</html>