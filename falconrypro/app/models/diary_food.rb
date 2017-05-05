class DiaryFood < ActiveRecord::Base
  belongs_to :food
  belongs_to :diary_item
end
