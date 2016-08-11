<%--
  Created by IntelliJ IDEA.
  User: jackjoons
  Date: 2016/7/25
  Time: 15:47
--%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main" />
    <title>Login</title>
    <style type="text/css">
    #ta{
        background:#F5F5DC;
        width:420px;
        height:200px;
    }
        #log tr:hover{
            background:  local;
        }
        /*#logline{
            /!*line-height: 1em;*!/
            height:1em;
        }*/
        #bt{
            width: 90px;/*按钮控件的宽度*/
            height: 45px;
            text-align: center;/*按钮控件中文本居中显示*/
            text-decoration: none;
            cursor: pointer;/*鼠标的形状*/
            border-radius:0.5em;/*圆角边框弧度*/
            /*border-color: #F5DEB3 ;/!*边框的颜色*!/*/
            border-color: #F5DEB3 ;/*边框的颜色*/
            /*border-color:#F0F8FF;*/
            border-width:0px;/*边框的粗细*/
            border-style:solid;/*边框的样式*/
            background-color: #F5F5DC;
            font-size: 20px;
            padding: 2px;
            color: #666666;
        }
        #bt:hover{
            color:white;
            background-color:  #F5DEB3 ;
        }
    </style>
</head>
<body>
<div class="body" align="center">
%{--<h1>Login</h1>--}%
    <g:if test="${flash.message}">
        <div class="message">${flash.message}</div>
    </g:if>
<div  style="align:center;width:400px;height:400px;">
    <g:form action="authenticate" method="post" >
        <br/><br/><br/>
        <table border="0" id="ta">
            <tbody id="log">

            <tr class="prop">
                <td valign="top" class="name" align="right">
                    <font size="5" color="#666666">%{--<label for="login">--}%Login Name:%{--</label>--}%</font>
                </td>
                <td valign="top" align="left">
                    <input type="text" id="login" name="loginName" size="18"/>
                </td>
            </tr>
            <tr class="prop">
                <td valign="top" class="name"  align="right">
                    <font size="5" color="#666666">%{--<label for="password">--}%Password:%{--</label>--}%</font>
                </td>
                <td valign="top" align="left">
                    <input type="password" id="password" name="password" size="18" />
                </td>
            </tr>
            <tr id="logline">
                <td colspan="2"> <div align="center"><span class="button">
                    <input id="bt" type="submit" value=" LOGIN "/>
                </span></div></td>
            </tr>
            </tbody>
        </table>
        </div>
        <div >
            <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*If you want to return homepage, please click on the top words "Welcome To Hand Json Pool"</font><br/>
        </div>
    %{--<div class="buttons">--}%
    %{--<span class="button">--}%
    %{--<input type="submit" value="Login" />--}%
    %{--</span>--}%
    %{--</div>--}%
    </g:form>
</div>
</div>
</body>
</html>
