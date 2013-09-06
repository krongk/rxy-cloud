class CreateProductItems < ActiveRecord::Migration
  def change
    create_table :product_items do |t|
      t.references :product_cate, index: true
      t.string :title
      t.string :image_url
      t.text :content

      t.timestamps
    end
  end
end
