class Product < ApplicationRecord
  belongs_to :user
  validates :title, :delivery,  presence: true
  validates :price, numericality: true
  validates_presence_of :category, :quantity, :sold

  has_attached_file :product_image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :product_image, content_type: /\Aimage\/.*\z/
end

# Add a new model named ProductType.

# Add a foreign key to ProductType in the Product model.
# It must be non-nullable, which means that you will likely need to provide a default value for your migration to work.

# The only fields needed are the primary key, and Label.
