class Season < ActiveRecord::Base
  has_many :diary_items
  belongs_to :bird
end
