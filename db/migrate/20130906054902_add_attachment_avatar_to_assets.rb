class AddAttachmentAvatarToAssets < ActiveRecord::Migration
  def self.up
    change_table :assets do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :assets, :avatar
  end
end
