<!DOCTYPE html>

<html lang="$ContentLocale">

	<head>
		<% base_tag %>
		<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		$MetaTags(false)

		<link 
			href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" 
			rel="stylesheet" 
			integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" 
			crossorigin="anonymous"
		>

	</head>

	<body 
		class="$ClassName.ShortName<% if not $Menu(2) %> no-sidebar<% end_if %>" 
		<% if $i18nScriptDirection %>dir="$i18nScriptDirection"<% end_if %>
	>

	<% include Header %>

	<div class="main container mt-3" role="main">
		$Layout
	</div>

	<%-- <% include Footer %> --%>

	<script 
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" 
		integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" 
		crossorigin="anonymous"
	></script>

	</body>

</html>
