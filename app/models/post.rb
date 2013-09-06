class Post < ActiveRecord::Base
  validates_presence_of :title, :content

  self.per_page = 9
  def self.recent(count = 5)
    Post.order("updated_at DESC").limit(count)
  end
end
