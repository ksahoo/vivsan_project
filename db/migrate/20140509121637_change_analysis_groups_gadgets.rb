class ChangeAnalysisGroupsGadgets < ActiveRecord::Migration
  def change
  	drop_table :analysis_groups_gadgets
  	create_table :analysis_groups_gadgets, :id => false do |t|
    	t.references :analysis_group
    	t.references :gadget
    end
  end
end
