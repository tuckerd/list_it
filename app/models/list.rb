class List < ActiveRecord::Base  
  validates :title, presence: :true
  
  attr_accessible :title
end
