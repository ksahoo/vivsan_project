class AddUsefulnessFieldsToGadgets < ActiveRecord::Migration
  def up
  	add_column :gadgets, :usefulness_for_field_nrc, :string
  	add_column :gadgets, :usefulness_for_field_vivsan, :string  
  end

  def down
  	remove_column :gadgets, :usefulness_for_field_nrc
  	remove_column :gadgets, :usefulness_for_field_vivsan
  end
end
