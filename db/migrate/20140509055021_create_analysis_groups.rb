class CreateAnalysisGroups < ActiveRecord::Migration
  def change
    create_table :analysis_groups do |t|
    	t.string :name

      t.timestamps
    end
  end
end
