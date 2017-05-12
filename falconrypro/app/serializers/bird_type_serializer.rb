class BirdTypeSerializer < ActiveModel::Serializer
  attributes :id, :name, :latin, :popular
  def id
    object.id.to_s
  end
end
