class Bird < ActiveRecord::Base
  belongs_to :user
  has_many :diary_items
  has_many :seasons
  has_and_belongs_to_many :bird_types
  mount_uploader :birdimage, BirdimageUploader

end
