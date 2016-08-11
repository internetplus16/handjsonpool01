
<%@ page import="com.hand.handjsonpool01.Project" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'project.label', default: 'Project')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-project" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
	%{--<g:if test="${flash.message}">
		<div class="message" role="status">${flash.message}</div>
	</g:if>--}%
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>

		<div id="list-project" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>

			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="creationDate" title="${message(code: 'project.creationDate.label', default: 'Creation Date')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'project.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="lastUpdateDate" title="${message(code: 'project.lastUpdateDate.label', default: 'Last Update Date')}" />
					
						<g:sortableColumn property="projectName" title="${message(code: 'project.projectName.label', default: 'Project Name')}" />
					
						<th><g:message code="project.user.label" default="User" /></th>
					
					</tr>
				</thead>
				<tbody>

				<g:each in="${projectInstanceList}" status="i" var="projectInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

						%{--<g:if test="${projectInstance.user.loginName==session.user.loginName||session.user.loginName=="admin"}">--}%

							<td><g:link action="show" id="${projectInstance.id}">${fieldValue(bean: projectInstance, field: "creationDate")}</g:link></td>

							<td>${fieldValue(bean: projectInstance, field: "description")}</td>

							<td><g:formatDate date="${projectInstance.lastUpdateDate}" /></td>

							<td>${fieldValue(bean: projectInstance, field: "projectName")}</td>

							<td>${fieldValue(bean: projectInstance, field: "user")}</td>
						%{--</g:if>--}%

					</tr>
				</g:each>

				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${projectInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
