class AddEvaluationFieldsToGadgets < ActiveRecord::Migration
  def up
  	add_column :gadgets, :evaluation_by_vivsan, :boolean, default: false
  	add_column :gadgets, :evaluation_by_nrc, :boolean, default: false  
  end

  def down
  	remove_column :gadgets, :evaluation_by_vivsan
  	remove_column :gadgets, :evaluation_by_nrc
  end
end
