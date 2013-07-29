class Item < ActiveRecord::Base
  attr_accessible :product, :quantity
  validates :product, presence: :true
end
