angular.module('todoApp').controller "DashboardController", ($scope, $routeParams, $location, TaskList) ->

  $scope.init = ->
    @listService = new TaskList(serverErrorHandler)
    $scope.lists = @listService.all()
