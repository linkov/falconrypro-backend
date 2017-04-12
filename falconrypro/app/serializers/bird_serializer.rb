class BirdSerializer < ActiveModel::Serializer
  attributes :id, :name
  belongs_to :bird_type
end
