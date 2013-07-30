<html>
<head>
	<title>Contributor License Agreement Administration</title>
</head>
<body>
	<#include "header.ftl">

	<h2>Contributor License Agreements</h2>
	<ul>
	<#list agreements as agreement>
		<li><a href="/admin/agreements/${agreement.id}">${agreement.name} (${agreement.type.displayString})</a></li>
	</#list>
	</ul>

	<hr />

	<form method="POST" action="/admin/agreements">
		<h3>Create a new Agreement</h3>

		<input type="radio" name="type" id="individual" value="INDIVIDUAL"><label for="individual">Individual</label>
		<input type="radio" name="type" id="corporate" value="CORPORATE"><label for="corporate">Corporate</label>
		<br/>

		<label for="name">Name:</label><input type="text" name="name" id="name">
		<br/>

		<button type="submit">Create</button>

	</form>

</body>
</html>
