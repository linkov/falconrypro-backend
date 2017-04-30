class DiaryItemSerializer < ActiveModel::Serializer
  attributes :id, :weight, :diet_offered, :diet_eaten, :note, :food_name, :offered, :eaten, :weight_s, :created_at, :created
  has_one :food

  def id
    object.id.to_s
  end
  
  def food_name
    object.food.name
  end

  def offered
    object.diet_offered.to_s
  end

  def created
    object.created_at.strftime("%B %d %Y")
  end

  def eaten
    object.diet_eaten.to_s
  end

  def weight_s
    object.weight.to_s
  end

end
