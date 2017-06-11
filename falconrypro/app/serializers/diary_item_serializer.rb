class DiaryItemSerializer < ActiveModel::Serializer
  attributes :id, :note, :created_at, :created, :bird
  has_many :diary_weights
  has_many :diary_foods
  has_many :diary_foods
  has_many :quarry_types
  has_many :pin_items

  def id
    object.id.to_s
  end

 def created_at

   if object.created_date
     object.created_date
   else
     object.created_at
   end
 end

  def bird
    object.bird.id.to_s
  end

  def created
    object.created_at.strftime("%B%e %Y")
  end

end
