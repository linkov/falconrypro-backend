class FoodSerializer < ActiveModel::Serializer
  attributes :id, :name, :popular


  def id
    object.id.to_s
  end


end
