class Api::V1::SeasonsController < Api::ApiController
  def index
    render json: Season.where(:bird_id => params[:bird_id])
  end


  def create
    bird = Bird.where(:id => params[:bird_id]).first
    season = bird.seasons.create(season_params)
    render :json => season
  end

  def update
    item = Season.find(params[:id])
    item.update(season_params)

    render :json => item
  end


  def season_params
    params.require(:season).permit!
  end


end
