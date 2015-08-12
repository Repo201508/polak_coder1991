class CreateTatuers < ActiveRecord::Migration
  def change
    create_table :tatuers do |t|
      t.string :first_name
      t.string :last_name
      t.string :description

      t.timestamps null: false
    end
  end
end
