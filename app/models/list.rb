class List < ActiveRecord::Base  
  validates :title, presence: :true
  has_many :items, dependent: :delete_all
  belongs_to :user
  attr_accessible :title, :user
end
