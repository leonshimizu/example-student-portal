class UsersController < ApplicationController
  def index
    users = User.where(role_id: 1)
    render json: users
  end
end
