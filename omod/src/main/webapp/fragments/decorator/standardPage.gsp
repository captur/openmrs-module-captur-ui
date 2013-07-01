<% ui.includeJavascript("kenyaui", "jquery.js") %>
<% ui.includeJavascript("kenyaui", "jquery-ui.js") %>
<% ui.includeJavascript("kenyaui", "select2.js") %>
<% ui.includeJavascript("kenyaui", "jquery.toastmessage.js") %>
<% ui.includeJavascript("kenyaui", "pagebus/simple/pagebus.js") %>
<% ui.includeJavascript("kenyaui", "ui.js") %>
<% ui.includeJavascript("kenyaui", "kenyaui.js") %>

<% ui.includeCss("kenyaui", "jquery-ui.css") %>
<% ui.includeCss("kenyaui", "select2.css") %>
<% ui.includeCss("kenyaui", "kenyaui.css") %>
<% ui.includeCss("kenyaui", "toastmessage/css/jquery.toastmessage.css") %>

<% if (!config.allowAnonymous) { %>
${ ui.includeFragment("kenyaui", "maybeRequireLogin") }
<% } %>

<!DOCTYPE html>
<html>
	<head>
		<title>Kenya EMR</title>
		<link rel="shortcut icon" type="image/ico" href="${ ui.resourceLink("kenyaui", "images/logos/favicon.ico") }">
		<link rel="icon" type="image/png" href="${ ui.resourceLink("kenyaui", "images/logos/favicon.png") }">

		<%= ui.resourceLinks() %>

	</head>
	<body>
		<script type="text/javascript">
			var OPENMRS_CONTEXT_PATH = '${ contextPath }';
			var CONTEXT_PATH = '${ contextPath }';
		</script>
		<style type="text/css">
			.ke-loading {
				background-image: url('${ ui.resourceLink("kenyaui", "images/loader_small.gif") }');
			}
		</style>

		${ ui.includeFragment("kenyaui", "notifications") }

		<% if (config.beforeContent) { %>
			${ config.beforeContent }
		<% } %>

		<div id="content">
			<%= config.content %>
		</div>

	</body>
</html>