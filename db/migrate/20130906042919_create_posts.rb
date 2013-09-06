class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, index: true
      t.text :content
      t.text :image_url, default: '/assets/blog.png'
      t.string :cate, default: '默认'
      t.string :keywords

      t.timestamps
    end
  end
end
