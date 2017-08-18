class Api::V1::DiaryPhotosController < Api::ApiController


  def create
    bird = Bird.where(:id => params[:bird_id]).first
    ph = bird.diary_photos.create(diary_photo_params)
    ph.pin_item_type_id = params[:pin_item_type_id]
    ph.save
    render :json => ph
  end

  def index

    if params[:bird]
      models = DiaryPhoto.where(:bird => params[:bird])
    else
      userDiaryItems = DiaryItem.where(:bird => current_user.birds)
      models = DiaryPhoto.where(:diary_item => userDiaryItems )
    end
    render json: models
  end


  def diary_photo_params
    params.require(:diary_photo).permit!
  end

end
