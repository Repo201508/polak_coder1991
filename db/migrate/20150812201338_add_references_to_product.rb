class AddReferencesToProduct < ActiveRecord::Migration
  def change
    add_reference :products, :tatuer, index: true, foreign_key: true
  end
end
