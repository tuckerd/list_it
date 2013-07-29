class List < ActiveRecord::Base  
  validates :title, presence: :true
  has_many :items
  attr_accessible :title
end
