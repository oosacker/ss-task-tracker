<article>
  
  <h1>$Title</h1>

	<% if $CurrentMember %>
		<h3>Welcome back, $CurrentMember.FirstName</h3>
	<% else %>
		Please <a href="/admin">login</a> to continue
	<% end_if %>

	<div class="container">
    $Content
  </div>

</article>

$Form
