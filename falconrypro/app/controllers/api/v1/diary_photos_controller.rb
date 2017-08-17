class Api::V1::DiaryPhotosController < Api::ApiController
  def index

    if params[:bird]
      userDiaryItems = DiaryItem.where(:bird => params[:bird])
      models = DiaryPhoto.where(:diary_item => userDiaryItems)
    else
      userDiaryItems = DiaryItem.where(:bird => current_user.birds)
      models = DiaryPhoto.where(:diary_item => userDiaryItems )
    end
    render json: models
  end
  
end
