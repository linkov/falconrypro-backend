class DiaryItemSerializer < ActiveModel::Serializer
  attributes :id, :note, :created_at, :created, :bird
  has_many :diary_weights
  has_many :diary_foods

  def id
    object.id.to_s
  end


  def bird
    object.bird.id.to_s
  end

  def created
    object.created_at.strftime("%B%e %Y")
  end

end
