class DiaryItem < ActiveRecord::Base
  belongs_to :food
  belongs_to :bird
end
