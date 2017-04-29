class BirdSerializer < ActiveModel::Serializer
  attributes :id, :name, :thumb, :pic, :fat_weight, :hunting_weight, :code, :birthday, :type_name, :sex
  has_many :bird_types

  def id
    object.id.to_s
  end
  def thumb
    object.birdimage.url(:thumb)
  end

  def type_name
    object.bird_types.pluck(:name)
  end

  def pic
    object.birdimage.url()
  end
end
