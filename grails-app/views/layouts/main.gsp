<!DOCTYPE html>

<html lang="${session.'org.springframework.web.servlet.i18n.SessionLocaleResolver.LOCALE'}">

<head>
  <title><g:layoutTitle default="${meta(name: 'app.name')}"/></title>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">

  <link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
  <link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">

  <style type="text/css">
  body {
    padding-top: 60px;
    padding-bottom: 40px;
  }
  ul.nav {
    padding-top: 15px;
  }
  div.pull-right input.search-query {
    margin-top: 20px;
  }
  </style>

  <r:require modules="bootstrap"/>
  <r:require modules="bootstrap-responsive-css"/>

  <g:layoutHead/>
  <r:layoutResources/>
</head>

<g:set var="grailsParams" value="${params.collect { it.key + '=\'' + it.value + '\'' }.join('; ')}"/>
<body ng-init="${grailsParams}">
  <g:render template="/_menu/navbar"/>


  %{--<div ng-controller="${jsController}">--}%
  %{--<g:layoutBody/>--}%
  %{--</div>--}%

  <!-- Enable to overwrite Header by individual page -->
  <g:if test="${pageProperty(name: 'page.header')}">
    <g:pageProperty name="page.header"/>
  </g:if>
  <g:else>
    <g:render template="/layouts/header"/>
  </g:else>

  <!-- use different templates for HTML structure based on layout (e.g., grid or fluid; Default is grid) -->
  <g:render template="/layouts/content_grid"/>

  <!-- Enable to overwrite Footer by individual page -->
  %{--<g:if test="${pageProperty(name: 'page.footer')}">--}%
    %{--<g:pageProperty name="page.footer"/>--}%
  %{--</g:if>--}%
  %{--<g:else>--}%
    %{--<g:render template="/layouts/footer"/>--}%
  %{--</g:else>--}%

  <!-- Enable to insert additional components (e.g., modals, javascript, etc.) by any individual page -->
  <g:if test="${pageProperty(name: 'page.include.bottom')}">
    <g:pageProperty name="page.include.bottom"/>
  </g:if>
  <g:else>
    <!-- Insert a modal dialog for registering (for an open site registering is possible on any page) -->
    <g:render template="/_common/modals/registerDialog" model="[item: item]"/>
  </g:else>

  <!-- Included Javascript files and other resources -->
  <r:layoutResources/>
</body>
</html>

