class CreateSpecificParameters < ActiveRecord::Migration
  def change
    create_table :specific_parameters do |t|
    	t.string :name
      t.references :gadget
      t.timestamps
    end
    add_index :specific_parameters, :gadget_id
  end
end
