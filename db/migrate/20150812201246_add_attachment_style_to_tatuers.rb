class AddAttachmentStyleToTatuers < ActiveRecord::Migration
  def self.up
    change_table :tatuers do |t|
      t.attachment :style
    end
  end

  def self.down
    remove_attachment :tatuers, :style
  end
end
