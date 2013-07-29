class Item < ActiveRecord::Base
  belongs_to :items
  attr_accessible :product, :quantity
end
