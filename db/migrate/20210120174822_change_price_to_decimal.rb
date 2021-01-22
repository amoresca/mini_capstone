class ChangePriceToDecimal < ActiveRecord::Migration[6.0]
  def change
    change_column :products, :price, :decimal, precision: 5, scope: 2
  end
end
