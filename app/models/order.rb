class Order < ApplicationRecord
  has_many :products, through :order_products
end

# The Order model must have a foreign key field to the PaymentType model, but it can be nullable. However, before an order can be completed, there must be a value for the PaymentType field.