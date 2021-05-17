<article>
  <h3>$Title</h3>

	<% if $CurrentMember %>

		<h5 class="my-3">Welcome back, $CurrentMember.FirstName [<a href=$LogoutURL>Log out</a>]</h5>

		$Content

		<div class="tasks">

			<% loop $GetUserTasks() %>
			<div class="card" style="width: 18rem;">
				<div class="card-body">
					<h5 class="card-text">$Text</h5>
					<p class="card-text">$DateTime.Nice</p>
					<a href="#" class="btn btn-primary">Go somewhere</a>
				</div>
			</div>
		<% end_loop %>

		</div>

	<% else %>
		<h5 class="my-3">Please login to continue...</h5>
		$LoginForm
	<% end_if %>
</article>