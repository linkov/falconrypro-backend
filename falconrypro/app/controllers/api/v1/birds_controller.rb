class Api::V1::BirdsController < Api::ApiController
  def index
    render json: Bird.where(:user => current_user)
  end

  def create
    bird = current_user.birds.create(bird_params)
    render :json => bird
  end

  def update
    bird = Bird.find(params[:id])
    bird.update(bird_params)


    if bird_params["dead"] == ""
      bird.dead = nil
    end

    if bird_params["deleted"] == ""
      bird.deleted = nil
    end


    if bird_params["sold"] == ""
      bird.sold = nil
    end


    bird.save!
    #
    # #   Rails.logger.info "BLA"
    # # # Rails.logger.info params[:bird]
    # # Rails.logger.info params[:bird].name
    # params[:bird][:birdimage] = convert_to_upload(params[:bird][:birdimage])
    #
    render :json => bird
  end


  def bird_params
    params.require(:bird).permit!
  end
end
