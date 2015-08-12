class AddAttachmentAvatarToTatuers < ActiveRecord::Migration
  def self.up
    change_table :tatuers do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :tatuers, :avatar
  end
end
