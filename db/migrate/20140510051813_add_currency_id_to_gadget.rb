class AddCurrencyIdToGadget < ActiveRecord::Migration
  def change
  	add_column :gadgets, :currency_id, :integer
  end
end
