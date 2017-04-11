class Bird < ActiveRecord::Base
  belongs_to :bird_type
  belongs_to :user
  mount_uploader :birdimage, BirdimageUploader
end
