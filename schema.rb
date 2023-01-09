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
