<%@ page import="com.hand.handjsonpool01.JsonController; com.hand.handjsonpool01.Json" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Hand Json Pool</title>
		<style type="text/css" media="screen">
			#status {
				background-color: #eee;
				border: .2em solid #fff;
				margin: 2em 2em 1em;
				padding: 1em;
				width: 12em;
				float: left;
				-moz-box-shadow: 0px 0px 1.25em #ccc;
				-webkit-box-shadow: 0px 0px 1.25em #ccc;
				box-shadow: 0px 0px 1.25em #ccc;
				-moz-border-radius: 0.6em;
				-webkit-border-radius: 0.6em;
				border-radius: 0.6em;
			}

			.ie6 #status {
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
			}

			#status ul {
				font-size: 0.9em;
				list-style-type: none;
				margin-bottom: 0.6em;
				padding: 0;
			}

			#status li {
				line-height: 1.3;
			}

			#status h1 {
				text-transform: uppercase;
				font-size: 1.1em;
				margin: 0 0 0.3em;
			}

			#page-body {
				/*margin: 2em 1em 1.25em 5em;*/
			}

			h2 {
				margin-top: 1em;
				margin-bottom: 0.3em;
				font-size: 1em;
			}

			p {
				line-height: 1.5;
				margin: 0.25em 0;
			}

			#controller-list ul {
				list-style-position: inside;
				list-style-type: none;
			}

			#controller-list li {
				line-height: 1.3;
				list-style-position: inside;
				margin: 0.25em 0;
				/*float: left;*/
			}

			@media screen and (max-width: 480px) {
				#status {
					display: none;
				}

				#page-body {
					margin: 0 1em 1em;
				}

				#page-body h1 {
					margin-top: 0;
				}
			}
			#hea{
				padding: 1em 2em 2em 3.5em;

			}
			#p{
				padding: 2em ;
			}

			.btn
			{
				width: 70px;/*按钮控件的宽度*/
				height: 29px;
				text-align: center;/*按钮控件中文本居中显示*/
				font-size: 21px;
				text-decoration: none;
				cursor: pointer;/*鼠标的形状*/
				border-radius:0.5em;/*圆角边框弧度*/
				border-color:#F5DEB3;/*边框的颜色*/
				border-width:0px;/*边框的粗细*/
				border-style:solid;/*边框的样式*/
				background-color:#f9fbeb;
				color: #666666;
			}

			.btn:hover
			{
				background-color: #F5DEB3;
				color: white;
			}
		</style>
	</head>
	<body>
		<a href="#page-body" class="skip"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		%{--<div id="status" role="complementary">
			<h1>Application Status</h1>
			<ul>
				<li>App version: <g:meta name="app.version"/></li>
				<li>Grails version: <g:meta name="app.grails.version"/></li>
				<li>Groovy version: ${GroovySystem.getVersion()}</li>
				<li>JVM version: ${System.getProperty('java.version')}</li>
				<li>Reloading active: ${grails.util.Environment.reloadingAgentEnabled}</li>
				<li>Controllers: ${grailsApplication.controllerClasses.size()}</li>
				<li>Domains: ${grailsApplication.domainClasses.size()}</li>
				<li>Services: ${grailsApplication.serviceClasses.size()}</li>
				<li>Tag Libraries: ${grailsApplication.tagLibClasses.size()}</li>
			</ul>
			<h1>Installed Plugins</h1>
			<ul>
				<g:each var="plugin" in="${applicationContext.getBean('pluginManager').allPlugins}">
					<li>${plugin.name} - ${plugin.version}</li>
				</g:each>
			</ul>
		</div>--}%
		<div id="page-body" role="main">
			%{--<h1>Welcome to HandJsonPool</h1>--}%
			%{--<p>Congratulations, you have successfully started your first Grails application! At the moment
			   this is the default page, feel free to modify it to either redirect to a controller or display whatever
			   content you may choose. Below is a list of controllers that are currently deployed in this application,
			   click on each to execute its default action:</p>--}%
		<div class="ma"  id="hea" >
		<p style="font-family:cursive ;font-size:1.5em;">What can we do ?</p>
		<p style="font-size:1em;">You can enter an url to get the JSON data by "<b><font color="#48802c">Send</font></b>".
		<br/>You can also click the "<b><font color="#48802C">USER</font></b>",
		"<b><font color="#48802C">PROJECT</font></b>" and
		"<b><font color="#48802C">JSON</font></b>"  to obtain the corresponding information.
		</p>
		<p style="font-family:cursive ;font-size:1.5em;">How to write url and get the JSON data ?</p>
		<p>The format of your url must be:<i> /username/projectname/method [<b><font color="#48802C">{1:"Posts",2:"Delete",3:"Put",4:"Get"}</font></b>]</i></p>
		<p>e.g. /admin/test/1 </p>
		<p style="font-family:cursive ;font-size:1.5em;">Thanks for your visiting !</p>
	</div>
		<div align="center">
			<form  name="formx"  >
			<div>
				<input type="text"   id="qu" size="60">&nbsp;&nbsp;
				<a href="javascript:;" onclick="check()" ><button class="btn" type="button" %{--onMouseOver="this.style.backgroundColor='#da7c0c'"
																   onMouseOut="this.style.backgroundColor='#f9fbeb'"--}%>Send</button></a>
				%{--<input type="text" name="txt"  id="qu" size="60">&nbsp;&nbsp;<input  type="submit" style=" background:#D3D3D3" value="Send" onclick="check()"
																					 onMouseOver="this.style.backgroundColor='#9999FF'"
																					 onMouseOut="this.style.backgroundColor='#D3D3D3'" ><font size="4" ></font></input><br/>--}%
				<script language="javascript">
					function check(){
						var loc=window.location.href.toString();
						var a=document.getElementById("qu").value;
						if(a=='')
						{
							window.alert('Url is null');
						}
						else
						{
							window.location.href=loc+"json"+a;
							return  true;
							/*var a=formx.txt.value;
							var b= a.match(/http:\/\/.+/);
							if(b==null){
								window.alert('Url is wrong');
								return false;
							}
							else{

							}*/
						}
					}
				</script>
				</div>
			</form>
		</div>
			%{--<div id="controller-list" role="navigation">
				--}%%{--<h2>Available Controllers:</h2>--}%%{--
				--}%%{--<ul>
					<g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
						<li class="controller"><g:link controller="${c.logicalPropertyName}">${c.logicalPropertyName}</g:link></li>
					</g:each>

				</ul>--}%%{--



				--}%%{--<div align="center">

					<p class="controller" ><g:link    controller="user" action="index">user</g:link></p>
					<p class="controller" ><g:link    controller="user" action="show">user</g:link></p>
				</div>--}%%{--

				--}%%{--<div><g:link controller="${com.hand.handjsonpool01.JsonController.logicalPropertyName}">${com.hand.handjsonpool01.JsonController.logicalPropertyName}</g:link></div>--}%%{--
			</div>--}%
		%{--<div><input ></div>--}%
		%{--</div>--}%
		<div align="center"  id="p">
			<p class="controller" ><g:link    controller="user"><font size="5">USER</font></g:link></p>
			<p>Query USER information, create USER, etc.</p>
			<p class="controller" ><g:link    controller="project"><font size="5">PROJECT</font></g:link></p>
			<p>Query PROJECT information, create PROJECT, etc.</p>
			<p class="controller" ><g:link    controller="json"><font size="5">JSON</font></g:link></p>
			<p>Query JSON information, create JSON, etc.</p>
		</div>
	</body>
</html>
