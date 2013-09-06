class ProductCate < ActiveRecord::Base
  has_many :product_items

  validates_presence_of :name
  validates_uniqueness_of :name
end
