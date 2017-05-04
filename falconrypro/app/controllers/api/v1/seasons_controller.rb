class Api::V1::SeasonsController < Api::ApiController
  def index
    render json: Season.where(:bird_id => params[:bird_id])
  end
end
