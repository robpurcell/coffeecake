<div id="Navbar" class="navbar navbar-fixed-top">
  <div class="navbar-inner">
    <div class="container">
      <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </a>

      <a class="brand" href="${createLink(uri: '/')}">
        <r:img uri="/images/17_48x48.png"/>
        %{--${meta(name: 'app.name')}--}%
        %{--<small>v${meta(name: 'app.version')}</small>--}%
      </a>

      <div class="nav-collapse">
        <div class="pull-left">
          <ul class="nav">
          %{--<li class="dropdown">--}%
          %{--<a class="dropdown-toggle" data-toggle="dropdown" href="#">Browse <b class="caret"></b></a>--}%
          %{--<ul class="dropdown-menu">--}%
            <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName }}">
              <li class="controller"><g:link
                  controller="${c.logicalPropertyName}">${c.name}</g:link></li>
            </g:each>
          %{--</ul>--}%
          %{--</li>--}%
          </ul>
        </div>

        <div class="pull-right">
          <%--Right-side entries--%>
          <%--NOTE: the following menus are in reverse order due to "pull-right" alignment (i.e., right to left)--%>
          <input type="text" class="search-query" placeholder="Search">
          %{--<g:render template="/_menu/info"/>--}%
          %{--<g:render--}%
              %{--template="/_menu/user"/><!-- NOTE: the renderDialog for the "Register" modal dialog MUST be placed outside the NavBar (at least for Bootstrap 2.1.1): see bottom of main.gsp -->--}%
          %{--<g:render template="/_menu/admin"/>--}%
        </div>
      </div>
    </div>
  </div>
</div>
