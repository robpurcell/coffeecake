<div id="Content" class="container">

<!-- print system messages -->
  <g:if test="${flash.message}">
    <div class="alert alert-info">${flash.message}</div>
  </g:if>

  <div class="row-fluid">
    <div class="span2">
      <g:render template="/_menu/menubar"/>
    </div>

    <!-- Show page's content -->
    <div class="span10">
      <g:layoutBody/>
      <g:pageProperty name="page.body"/>
    </div>
  </div>
</div>
