class ChangeDateTypeInOrders < ActiveRecord::Migration
  def change
  	change_column :orders, :date, :string
  end
end
