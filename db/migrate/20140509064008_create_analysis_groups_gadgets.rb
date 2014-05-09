class CreateAnalysisGroupsGadgets < ActiveRecord::Migration
  def up
    create_table :analysis_groups_gadgets, :id => false do |t|
    	t.references :analysis_group_id
    	t.references :gadget_id
    end
  end
  def down
  	drop_table :analysis_groups_gadgets
  end
end
