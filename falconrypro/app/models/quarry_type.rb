class QuarryType < ActiveRecord::Base
  belongs_to :quarry_group
  has_and_belongs_to_many :diary_items
end
