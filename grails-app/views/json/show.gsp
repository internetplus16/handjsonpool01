
<%@ page import="com.hand.handjsonpool01.Json" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'json.label', default: 'Json')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-json" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-json" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list json">
			
				<g:if test="${jsonInstance?.placeholderUrl}">
				<li class="fieldcontain">
					<span id="placeholderUrl-label" class="property-label"><g:message code="json.placeholderUrl.label" default="Placeholder Url" /></span>
					
						<span class="property-value" aria-labelledby="placeholderUrl-label"><g:fieldValue bean="${jsonInstance}" field="placeholderUrl"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jsonInstance?.method}">
				<li class="fieldcontain">
					<span id="method-label" class="property-label"><g:message code="json.method.label" default="Method" /></span>
					
						<span class="property-value" aria-labelledby="method-label"><g:fieldValue bean="${jsonInstance}" field="method"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jsonInstance?.jsonData}">
				<li class="fieldcontain">
					<span id="jsonData-label" class="property-label"><g:message code="json.jsonData.label" default="Json Data" /></span>
					
						<span class="property-value" aria-labelledby="jsonData-label"><g:fieldValue bean="${jsonInstance}" field="jsonData"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jsonInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="json.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${jsonInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${jsonInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="json.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${jsonInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${jsonInstance?.project}">
				<li class="fieldcontain">
					<span id="project-label" class="property-label"><g:message code="json.project.label" default="Project" /></span>
					
						<span class="property-value" aria-labelledby="project-label"><g:link controller="project" action="show" id="${jsonInstance?.project?.id}">${jsonInstance?.project?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:jsonInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${jsonInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
