class Api::SessionController < Devise::SessionsController
  before_action :warden_authenticate

  private

  def warden_authenticate
    self.resource = warden.authenticate!(auth_options)
  end

end
