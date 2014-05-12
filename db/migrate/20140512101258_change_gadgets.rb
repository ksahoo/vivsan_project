class ChangeGadgets < ActiveRecord::Migration
  def change
  	remove_column :gadgets, :field_2_useful_for_which, :string
  	add_column :gadgets, :field2_useful_for_which_id, :string
  end
end
