class DiaryItem < ActiveRecord::Base
  belongs_to :food
  belongs_to :bird
  has_many :diary_weights, :dependent => :destroy, :autosave => true
  has_many :diary_foods, :dependent => :destroy, :autosave => true

  accepts_nested_attributes_for :diary_foods, allow_destroy: true
  accepts_nested_attributes_for :diary_weights, allow_destroy: true
end
