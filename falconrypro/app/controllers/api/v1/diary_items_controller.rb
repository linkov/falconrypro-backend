class Api::V1::DiaryItemsController < Api::ApiController
  def index
    Rails.logger.info params
    season = Season.where(:id => params[:season_id]).first
    render json: DiaryItem.where(:season_id => season.id ).order(created_at: :desc)
  end

  def create
    bird = Bird.where(:id => diary_item_params[:bird_id]).first
    diary_item = bird.diary_items.create(diary_item_params)
    render :json => diary_item
  end

  def update
    item = DiaryItem.find(params[:id])
    item.update(diary_item_params)

    render :json => item
  end


  def diary_item_params
    params.require(:diary_item).permit!
  end
end
