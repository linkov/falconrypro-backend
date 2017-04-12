class Api::V1::BirdsController < Api::ApiController
  def index
    render json: Bird.where(:user => current_user)
  end
end
