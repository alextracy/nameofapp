class ChangePriceInProductsAgain < ActiveRecord::Migration
  def change
  	change_column :products, :price, :integer, precision: 8, scale: 2
  end
end
