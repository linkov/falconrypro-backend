class Api::V1::BirdTypesController < Api::ApiController
  def index
    render json: BirdType.all
  end
end
