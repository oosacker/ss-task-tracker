<article>
  <h1>$Title</h1>
	<% if $CurrentMember %>
		<h5>Welcome back, $CurrentMember.FirstName</h5>
		$Content
		<a href=$LogoutURL>Log out</a>
	<% else %>
		Please login to continue...
		$LoginForm
	<% end_if %>
</article>