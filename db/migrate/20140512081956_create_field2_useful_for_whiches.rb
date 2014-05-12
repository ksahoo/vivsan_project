class CreateField2UsefulForWhiches < ActiveRecord::Migration
  def change
    create_table :field2_useful_for_whiches do |t|
    	t.string :name

      t.timestamps
    end
  end
end
