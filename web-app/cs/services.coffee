angular.module('coffeecakeServices', ['ngResource']).service 'Grails', ($resource) ->
  getResource: (scope) ->
    $resource "/#{appName}/:controller/:action/:id",
      {controller: scope.controller || '', action: scope.action || '', id: scope.id || ''}, ->
