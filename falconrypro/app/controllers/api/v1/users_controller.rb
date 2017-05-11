class Api::V1::UsersController < Api::ApiController
  def index
    render json: User.all
  end

  def create
    item = User.create(item_params)
    render :json => item
  end

  def update
    item = User.find(params[:id])
    item.update(item_params)

    render :json => item
  end


  def item_params
    params.require(:user).permit!
  end
end
