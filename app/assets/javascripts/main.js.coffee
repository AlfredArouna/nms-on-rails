angular.module('ngNms', ['ngRoute', 'ngResource']).config( ($routeProvider, $locationProvider, $httpProvider) ->
  $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content');

  $routeProvider
    # Route for '/post'
    .when('/:network_id', { templateUrl: window.BASEURL + '/assets/homeIndex.html', controller: 'HomeCtrl' })
    # Default
    .otherwise({ templateUrl: window.BASEURL + '/assets/homeIndex.html', controller: 'HomeCtrl' })
)

