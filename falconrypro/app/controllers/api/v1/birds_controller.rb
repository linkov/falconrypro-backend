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

    #   Rails.logger.info "BLA"
    # # Rails.logger.info params[:bird]
    # Rails.logger.info params[:bird].name
    params[:bird][:birdimage] = convert_to_upload(params[:bird][:birdimage])
    #
    bird.update(bird_params)
    render :json => bird
  end

  protected

def convert_to_upload(image)

  temp_img_file = Tempfile.new("data_uri-upload")
  temp_img_file.binmode
  temp_img_file << Base64.decode64(image)
  temp_img_file.rewind

  ActionDispatch::Http::UploadedFile.new({
                                             filename: "pic.png",
                                             type: "image/png",
                                             tempfile: temp_img_file
                                         })
end

def split_base64(uri_str)
  if uri_str.match(%r{^data:(.*?);(.*?),(.*)$})
    uri = Hash.new
    uri[:type] = $1 # "image/gif"
    uri[:encoder] = $2 # "base64"
    uri[:data] = $3 # data string
    uri[:extension] = $1.split('/')[1] # "gif"
    return uri
  end
end

  def bird_params
    params.require(:bird).permit!
  end
end
