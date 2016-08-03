class Api::TaskListsController < Api::BaseController
  before_action :check_owner, only: [:show]

  def show
    render json: task_list
  end

end
