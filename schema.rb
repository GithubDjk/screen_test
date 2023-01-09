# Problem 6:
# Model the following entity relation requirement.
# A system has many shops. A shop has many products, which can fall into one or many
# categories. The products can have different prices on different dates.
# The solution to this can be an ER diagram with crow-foot notation, or it can be a text file that
# lists relevant classes and has active record relation statements.

class Shop < ApplicationRecord
  has_many :products
  # name:string, address:string
end

Class ProductCategoryAssignment < ApplicationRecord
  belongs_to :category
  belongs_to :product
end

Class Category < ApplicationRecord
 has_many :product_category_assignment
 has_many :products, through: :product_category_assignment
end

class Product < ApplicationRecord
  belongs_to :shop
  has_many :prices
 # price:bigint, name:string
end

class Price < ApplicationRecord
  belongs_to :product
end
