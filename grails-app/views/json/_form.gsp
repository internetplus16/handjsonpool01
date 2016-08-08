<%@ page import="com.hand.handjsonpool01.Json" %>



<div class="fieldcontain ${hasErrors(bean: jsonInstance, field: 'placeholderUrl', 'error')} required">
	<label for="placeholderUrl">
		<g:message code="json.placeholderUrl.label" default="Placeholder Url" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="placeholderUrl" required="" value="${jsonInstance?.placeholderUrl}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: jsonInstance, field: 'method', 'error')} required">
	<label for="method">
		<g:message code="json.method.label" default="Method" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="method" from="${jsonInstance.constraints.method.inList}" required="" value="${jsonInstance?.method}" valueMessagePrefix="json.method"/>

</div>

<div class="fieldcontain ${hasErrors(bean: jsonInstance, field: 'jsonData', 'error')} required">
	<label for="jsonData">
		<g:message code="json.jsonData.label" default="Json Data" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="jsonData" required="" value="${jsonInstance?.jsonData}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: jsonInstance, field: 'project', 'error')} required">
	<label for="project">
		<g:message code="json.project.label" default="Project" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="project" name="project.id" from="${com.hand.handjsonpool01.Project.list()}" optionKey="id" required="" value="${jsonInstance?.project?.id}" class="many-to-one"/>

</div>

