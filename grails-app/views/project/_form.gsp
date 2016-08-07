<%@ page import="com.hand.handjsonpool01.Project" %>



<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'creationDate', 'error')} required">
	<label for="creationDate">
		<g:message code="project.creationDate.label" default="Creation Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="creationDate" precision="day"  value="${projectInstance?.creationDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="project.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${projectInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'json', 'error')} ">
	<label for="json">
		<g:message code="project.json.label" default="Json" />
		
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'lastUpdateDate', 'error')} required">
	<label for="lastUpdateDate">
		<g:message code="project.lastUpdateDate.label" default="Last Update Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="lastUpdateDate" precision="day"  value="${projectInstance?.lastUpdateDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'projectName', 'error')} required">
	<label for="projectName">
		<g:message code="project.projectName.label" default="Project Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="projectName" required="" value="${projectInstance?.projectName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="project.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${com.hand.handjsonpool01.User.list()}" optionKey="id" required="" value="${projectInstance?.user?.id}" class="many-to-one"/>

</div>

