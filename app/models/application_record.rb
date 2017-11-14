class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end

# User registration and login.

# Product creation form for user to sell a product.

# List of all product types.

# Provide a view to show all products that are of a particular product type.

# List all products, with the name text as a hyperlink to the detail view.

# Provide a product detail view.

# List payment types for current customer.

# On the product detail view, have an Add to Order button that, when clicked, either creates a new order for a customer that doesn't have an active one, or adds to an existing open order.

# In the navigation bar, have an affordance that shows the current customer how many items are in their order.

# If the user clicks on their order in the navigation bar, take them to the order detail view, which lists products, their prices, and current total for order.

# On the order detail view, have a button labeled Complete Order.

# When a customer starts to complete an order, show them a list of payment types that are assigned to them. When they select one to add to the order, then the order is complete.