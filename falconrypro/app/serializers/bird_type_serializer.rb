class BirdTypeSerializer < ActiveModel::Serializer
  attributes :id, :name, :latin
  def id
    object.id.to_s
  end
end
