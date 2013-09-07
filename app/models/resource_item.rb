class ResourceItem < ActiveRecord::Base
  has_attached_file :avatar,  :styles => { :medium => "400x400>", :thumb => "80x80#" }, :default_url => "/images/:style/missing.png"
end

# :styles => { :medium => "400x400>", :thumb => "80x80#" },
