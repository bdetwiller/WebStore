class OrderProduct < ActiveRecord::Base
  attr_accessible :product_id, :order_id

  belongs_to :product
  belongs_to :order
end
