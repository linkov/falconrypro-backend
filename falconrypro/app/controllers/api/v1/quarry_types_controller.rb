class Api::V1::QuarryTypesController < Api::ApiController
  def index
    render json: QuarryType.all
  end


  def create
    custom_group = QuarryGroup.where(:name => "custom").first
    quarry = QuarryType.create(quarry_params)
    quarry.quarry_group_id = custom_group.id
    quarry.save!
    render :json => quarry
  end

  def quarry_params
    params.require(:quarry_type).permit!
  end


end
