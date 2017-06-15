class Api::V1::DiaryItemsController < Api::ApiController
  def index
    Rails.logger.info params
    season = Season.where(:id => params[:season_id]).first
    render json: DiaryItem.where(:season_id => season.id ).order(created_at: :desc)
  end

  def create
    Rails.logger.info "CREATE"
    Rails.logger.info diary_item_params
    Rails.logger.info diary_item_params[:diary_item]
    Rails.logger.info params


    if diary_item_params[:diary_item]["diary_weights_attributes"] == nil
      diary_item_params[:diary_item]["diary_weights_attributes"] = []
    end

    if diary_item_params[:diary_item]["pin_items_attributes"] == nil
      diary_item_params[:diary_item]["pin_items_attributes"] = []
    end


    if diary_item_params[:diary_item]["diary_foods_attributes"] == nil
      diary_item_params[:diary_item]["diary_foods_attributes"] = []
    end

    bird = Bird.where(:id => diary_item_params[:diary_item][:bird_id]).first
    diary_item = bird.diary_items.create(diary_item_params[:diary_item])
    render :json => diary_item
  end

  def update

    if diary_item_params[:diary_item]["diary_weights_attributes"] == nil
      diary_item_params[:diary_item]["diary_weights_attributes"] = []
    end

    if diary_item_params[:diary_item]["pin_items_attributes"] == nil
      diary_item_params[:diary_item]["pin_items_attributes"] = []
    end


    if diary_item_params[:diary_item]["diary_foods_attributes"] == nil
      diary_item_params[:diary_item]["diary_foods_attributes"] = []
    end


    item = DiaryItem.find(params[:id])
    item.update(diary_item_params[:diary_item])


    if diary_item_params[:diary_item]["diary_weights_attributes"] == []
      item.diary_weights.destroy_all
    end

    if diary_item_params[:diary_item]["pin_items_attributes"] == []
      item.pin_items.destroy_all
    end


    if diary_item_params[:diary_item]["diary_foods_attributes"] == []
      item.diary_foods.destroy_all
    end

    item.save!

    render :json => item
  end


  def diary_item_params
    params.permit!
  end
end
