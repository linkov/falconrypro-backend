class DiaryWeight < ActiveRecord::Base
  belongs_to :diary_item
  validates_presence_of :weight
end
