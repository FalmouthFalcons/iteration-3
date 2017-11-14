class Product < ApplicationRecord
  belongs_to :user
end

# Add a new model named ProductType.

# Add a foreign key to ProductType in the Product model.
# It must be non-nullable, which means that you will likely need to provide a default value for your migration to work.

# The only fields needed are the primary key, and Label.


# Given a user is authenticated
# And performs a gesture on the Sell a product hyperlink
# When the product form is rendered
# Then there should be a dropdown that displays all product categories

# Given a user has filled out the product form, but not chosen a category
# When the user clicks on the Sell button
# Then the user should be alerted to select a product category
