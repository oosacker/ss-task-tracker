<article>
  <%-- <h3>$Title</h3> --%>

  <% if $CurrentMember %>

    <h5 class="my-3">Welcome back, $CurrentMember.FirstName [<a href=$LogoutURL>Log out</a>]</h5>

    $Content

    <div class="tasks">

      <div class="row">
        
      <% loop $getUserTasks() %>
        <div class="col-md-6 col-sm-12 mb-4">
          <div class="card">
            <div class="card-body">
              <h5 class="card-text">$Text</h5>
              <p class="card-text">$DateTime.Nice</p>
              <p class="card-text">
                <% if $Reminder %>
                  <small style="color:red; display:block; font-style:bold;">You will be reminded about this task!</small>
                <% else %>
                  <small style="color:blue; display:block;">No reminder</small>
                <% end_if %>
              </p>
              <a href="#" class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#exampleModal">Update</a>
            </div>
          </div>
        </div>
      <% end_loop %>

  
</div>

    <div class="modal" id="exampleModal" tabindex="-1">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">Update</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>

          <div class="modal-body">
            <form method="post" action="/tasks/update">
              <div class="form-group">
                <label for="text_input">Text</label>
                <input type="text" class="form-control" id="text_input" placeholder="Enter task info">
              </div>
              <div class="form-check">
                <label class="form-check-label" for="exampleCheck1">Check me out</label>
                <input type="checkbox" class="form-check-input" id="exampleCheck1">
              </div>
              <button type="submit" class="btn btn-primary">Submit</button>
            </form>
          </div>

        </div>
      </div>
    </div>

  </div>

  <% else %>
    <h5 class="my-3">Please login to continue...</h5>
    $LoginForm
  <% end_if %>
</article>