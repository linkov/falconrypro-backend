class DiaryPhoto < ActiveRecord::Base
  belongs_to :quarry_type
  belongs_to :pin_item_type
  belongs_to :diary_item
  belongs_to :bird

  mount_uploader :photo, DiaryPhotoUploader

end
