<html>
<head>

<title>Repository Agreement Administration</title>

</head>
<body>

<#include "header.ftl">

<form method="POST" action="/repositories">
	<fieldset>
		<legend>Link a repository to an agreement</legend>

		<label for="candidateRepository">Repository:</label>
		<select name="candidateRepository" required="true">
		<#list candidateRepositories as candidateRepository>
			<option value="${candidateRepository}">${candidateRepository}</option>
		</#list>
		</select>
		<label for="candidateAgreement">Agreement:</label>
		<select name="candidateAgreement" required="true">
		<#list candidateAgreements as candidateAgreement>
			<option value="${candidateAgreement.id}">${candidateAgreement.name}</option>
		</#list>
		</select>

		<button type="submit">Link</button>
	</fieldset>
</form>

</body>
</html>
