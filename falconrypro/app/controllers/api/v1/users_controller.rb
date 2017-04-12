class Api::V1::UsersController < Api::ApiController
  def index
    render json: User.all
  end
end
