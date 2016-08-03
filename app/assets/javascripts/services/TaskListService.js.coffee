angular.module('todoApp').factory 'TaskList', ($resource, $http) ->
  class TaskList
    constructor: (errorHandler) ->
      @service = $resource('/api/task_lists/:id',
      {id: '@id'},
      {update: {method: 'PATCH'}})
    @errorHandler = errorHandler
