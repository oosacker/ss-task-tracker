<nav class="navbar navbar-expand-lg navbar-dark bg-dark">

  <div class="container">

    <a class="navbar-brand" href="$BaseHref">
      $SiteConfig.Title
    </a>

    <button 
      class="navbar-toggler" 
      type="button" 
      data-bs-toggle="collapse" 
      data-bs-target="#navbarNavDropdown" 
      aria-controls="navbarNavDropdown" 
      aria-expanded="false" 
      aria-label="Toggle navigation"
    >
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarNavDropdown">

      <ul class="navbar-nav">

        <% loop $Menu(1) %>

          <li class="nav-item">
            <a class="nav-link" href="$Link">$MenuTitle.XML</a>
          </li>

        <% end_loop %>

      </ul>

    </div>

  </div>

</nav>
