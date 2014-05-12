class AddBrochureToGadgets < ActiveRecord::Migration
  def change
  	add_column :gadgets, :brochure, :string
  end
end
