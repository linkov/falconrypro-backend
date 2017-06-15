class PinItem < ActiveRecord::Base
  belongs_to :diary_item
  belongs_to :pin_item_type

  mount_uploader :photo, PinPhotoUploader
end
