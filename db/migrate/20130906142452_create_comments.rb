class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.string :email
      t.string :mobile_phone, null: false
      t.text :content, null: false
      t.boolean :is_processed, defalut: false

      t.timestamps
    end
  end
end
