class Api::V1::PinItemTypesController < Api::ApiController
  def index
    render json: PinItemType.all
  end
end
