
<%@ page import="fr.sigway.ref.Utilisateur" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'utilisateur.label', default: 'Utilisateur')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-utilisateur" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="utilisateur.email.label" default="Email" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: utilisateurInstance, field: "email")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="utilisateur.password.label" default="Password" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: utilisateurInstance, field: "password")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="utilisateur.nom.label" default="Nom" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: utilisateurInstance, field: "nom")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="utilisateur.prenom.label" default="Prenom" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: utilisateurInstance, field: "prenom")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="utilisateur.adresseDomicile.label" default="Adresse Domicile" /></td>
				
				<td valign="top" class="value"><g:link controller="adresse" action="show" id="${utilisateurInstance?.adresseDomicile?.id}">${utilisateurInstance?.adresseDomicile?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="utilisateur.adresseDestination.label" default="Adresse Destination" /></td>
				
				<td valign="top" class="value"><g:link controller="adresse" action="show" id="${utilisateurInstance?.adresseDestination?.id}">${utilisateurInstance?.adresseDestination?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="utilisateur.accountExpired.label" default="Account Expired" /></td>
				
				<td valign="top" class="value"><g:formatBoolean boolean="${utilisateurInstance?.accountExpired}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="utilisateur.accountLocked.label" default="Account Locked" /></td>
				
				<td valign="top" class="value"><g:formatBoolean boolean="${utilisateurInstance?.accountLocked}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="utilisateur.enabled.label" default="Enabled" /></td>
				
				<td valign="top" class="value"><g:formatBoolean boolean="${utilisateurInstance?.enabled}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="utilisateur.passwordExpired.label" default="Password Expired" /></td>
				
				<td valign="top" class="value"><g:formatBoolean boolean="${utilisateurInstance?.passwordExpired}" /></td>
				
			</tr>
		
		</tbody>
	</table>
	<div class="buttons">
		<g:form>
			<g:hiddenField name="id" value="${utilisateurInstance?.id}" />
			<span class="button"><g:actionSubmit class="btn btn-primary" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
			<span class="button"><g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
		</g:form>
	</div>
</section>

</body>

</html>
