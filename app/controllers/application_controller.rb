class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  before_action :doorkeeper_authorize!, only: :me

  def me
    render json: User.find(doorkeeper_token.resource_owner_id).as_json
  end
end
