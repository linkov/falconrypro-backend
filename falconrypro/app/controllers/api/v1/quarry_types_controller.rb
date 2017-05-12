class Api::V1::QuarryTypesController < Api::ApiController
  def index
    render json: QuarryType.all
  end
end
