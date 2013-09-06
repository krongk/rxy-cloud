class CreateResourceItems < ActiveRecord::Migration
  def change
    create_table :resource_items do |t|
      t.string :cate
      t.string :name
      t.string :path

      t.timestamps
    end
  end
end
