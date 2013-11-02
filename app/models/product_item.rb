class ProductItem < ActiveRecord::Base
  belongs_to :product_cate
  self.per_page = 25
  
  validates_presence_of :title, :content
end
