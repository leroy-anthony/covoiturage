<%@ page import="fr.sigway.ref.Utilisateur" %>



			<div class="control-group fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'email', 'error')} required">
				<label for="email" class="control-label"><g:message code="utilisateur.email.label" default="Email" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="email" required="" value="${utilisateurInstance?.email}"/>
					<span class="help-inline">${hasErrors(bean: utilisateurInstance, field: 'email', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'password', 'error')} required">
				<label for="password" class="control-label"><g:message code="utilisateur.password.label" default="Password" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="password" required="" value="${utilisateurInstance?.password}"/>
					<span class="help-inline">${hasErrors(bean: utilisateurInstance, field: 'password', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'nom', 'error')} ">
				<label for="nom" class="control-label"><g:message code="utilisateur.nom.label" default="Nom" /></label>
				<div class="controls">
					<g:textField name="nom" value="${utilisateurInstance?.nom}"/>
					<span class="help-inline">${hasErrors(bean: utilisateurInstance, field: 'nom', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'prenom', 'error')} ">
				<label for="prenom" class="control-label"><g:message code="utilisateur.prenom.label" default="Prenom" /></label>
				<div class="controls">
					<g:textField name="prenom" value="${utilisateurInstance?.prenom}"/>
					<span class="help-inline">${hasErrors(bean: utilisateurInstance, field: 'prenom', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'adresseDomicile', 'error')} required">
				<label for="adresseDomicile" class="control-label"><g:message code="utilisateur.adresseDomicile.label" default="Adresse Domicile" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="adresseDomicile" name="adresseDomicile.id" from="${fr.sigway.ref.Adresse.list()}" optionKey="id" required="" value="${utilisateurInstance?.adresseDomicile?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: utilisateurInstance, field: 'adresseDomicile', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'adresseDestination', 'error')} required">
				<label for="adresseDestination" class="control-label"><g:message code="utilisateur.adresseDestination.label" default="Adresse Destination" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="adresseDestination" name="adresseDestination.id" from="${fr.sigway.ref.Adresse.list()}" optionKey="id" required="" value="${utilisateurInstance?.adresseDestination?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: utilisateurInstance, field: 'adresseDestination', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'accountExpired', 'error')} ">
				<label for="accountExpired" class="control-label"><g:message code="utilisateur.accountExpired.label" default="Account Expired" /></label>
				<div class="controls">
					<g:checkBox name="accountExpired" value="${utilisateurInstance?.accountExpired}" />
					<span class="help-inline">${hasErrors(bean: utilisateurInstance, field: 'accountExpired', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'accountLocked', 'error')} ">
				<label for="accountLocked" class="control-label"><g:message code="utilisateur.accountLocked.label" default="Account Locked" /></label>
				<div class="controls">
					<g:checkBox name="accountLocked" value="${utilisateurInstance?.accountLocked}" />
					<span class="help-inline">${hasErrors(bean: utilisateurInstance, field: 'accountLocked', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'enabled', 'error')} ">
				<label for="enabled" class="control-label"><g:message code="utilisateur.enabled.label" default="Enabled" /></label>
				<div class="controls">
					<g:checkBox name="enabled" value="${utilisateurInstance?.enabled}" />
					<span class="help-inline">${hasErrors(bean: utilisateurInstance, field: 'enabled', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'passwordExpired', 'error')} ">
				<label for="passwordExpired" class="control-label"><g:message code="utilisateur.passwordExpired.label" default="Password Expired" /></label>
				<div class="controls">
					<g:checkBox name="passwordExpired" value="${utilisateurInstance?.passwordExpired}" />
					<span class="help-inline">${hasErrors(bean: utilisateurInstance, field: 'passwordExpired', 'error')}</span>
				</div>
			</div>

