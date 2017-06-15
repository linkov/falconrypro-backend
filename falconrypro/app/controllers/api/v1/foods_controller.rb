class Api::V1::FoodsController < Api::ApiController
  def index
    render json: Food.all
  end

  def create
    custom_group = FoodGroup.where(:name => "custom").first
    food = Food.create(food_params)
    food.food_group_id = custom_group.id
    food.save!
    render :json => food
  end

  def food_params
    params.require(:food).permit!
  end

end
