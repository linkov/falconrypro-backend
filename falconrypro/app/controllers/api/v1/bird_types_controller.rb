class Api::V1::BirdTypesController < Api::ApiController
  def index
    render json: BirdType.all.order(popular: :desc, name: :asc)
  end
end
