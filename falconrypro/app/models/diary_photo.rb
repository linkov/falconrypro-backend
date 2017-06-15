class DiaryPhoto < ActiveRecord::Base
  belongs_to :quarry_type
  belongs_to :pin_type
end
