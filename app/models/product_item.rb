class ProductItem < ActiveRecord::Base
  belongs_to :product_cate

  validates_presence_of :title, :content
end
