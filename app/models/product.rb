class Product < ActiveRecord::Base
  belongs_to :user
  has_many :title
  validates :title, presence: true,
                    length: {minimum: 5 }
end

# Add a new model named ProductType.

# Add a foreign key to ProductType in the Product model.
# It must be non-nullable, which means that you will likely need to provide a default value for your migration to work.

# The only fields needed are the primary key, and Label.
