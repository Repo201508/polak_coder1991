class AddStyleNameToTatuer < ActiveRecord::Migration
  def change
    add_column :tatuers, :style_name, :string
  end
end
