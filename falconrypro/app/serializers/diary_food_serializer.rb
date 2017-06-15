class DiaryFoodSerializer < ActiveModel::Serializer
  attributes :id, :eaten, :time, :food

end
