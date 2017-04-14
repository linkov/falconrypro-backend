class BirdSerializer < ActiveModel::Serializer
  attributes :id, :name, :thumb, :pic
  belongs_to :bird_type

  def thumb
    object.birdimage.url(:thumb)
  end

  def pic
    object.birdimage.url()
  end
end
