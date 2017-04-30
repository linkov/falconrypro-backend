class Api::V1::FoodsController < Api::ApiController
  def index
    render json: Food.all
  end
end
