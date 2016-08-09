<%@ page import="com.hand.handjsonpool01.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'loginName', 'error')} required">
	<label for="loginName">
		<g:message code="user.loginName.label" default="Login Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="loginName" required="" value="${userInstance?.loginName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="password" required="" value="${userInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'phone', 'error')} required">
	<label for="phone">
		<g:message code="user.phone.label" default="Phone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="phone" required="" value="${userInstance?.phone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'creationDate', 'error')} required">
	<label for="creationDate">
		<g:message code="user.creationDate.label" default="Creation Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="creationDate" precision="day"  value="${userInstance?.creationDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'lastUpdateDate', 'error')} required">
	<label for="lastUpdateDate">
		<g:message code="user.lastUpdateDate.label" default="Last Update Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="lastUpdateDate" precision="day"  value="${userInstance?.lastUpdateDate}"  />

</div>

