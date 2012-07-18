
<%@ page import="fr.sigway.ref.Utilisateur" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'utilisateur.label', default: 'Utilisateur')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-utilisateur" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="email" title="${message(code: 'utilisateur.email.label', default: 'Email')}" />
			
				<g:sortableColumn property="password" title="${message(code: 'utilisateur.password.label', default: 'Password')}" />
			
				<g:sortableColumn property="nom" title="${message(code: 'utilisateur.nom.label', default: 'Nom')}" />
			
				<g:sortableColumn property="prenom" title="${message(code: 'utilisateur.prenom.label', default: 'Prenom')}" />
			
				<th><g:message code="utilisateur.adresseDomicile.label" default="Adresse Domicile" /></th>
			
				<th><g:message code="utilisateur.adresseDestination.label" default="Adresse Destination" /></th>
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${utilisateurInstanceList}" status="i" var="utilisateurInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${utilisateurInstance.id}">${fieldValue(bean: utilisateurInstance, field: "email")}</g:link></td>
			
				<td>${fieldValue(bean: utilisateurInstance, field: "password")}</td>
			
				<td>${fieldValue(bean: utilisateurInstance, field: "nom")}</td>
			
				<td>${fieldValue(bean: utilisateurInstance, field: "prenom")}</td>
			
				<td>${fieldValue(bean: utilisateurInstance, field: "adresseDomicile")}</td>
			
				<td>${fieldValue(bean: utilisateurInstance, field: "adresseDestination")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${utilisateurInstanceTotal}" />
	</div>
</section>

</body>

</html>
