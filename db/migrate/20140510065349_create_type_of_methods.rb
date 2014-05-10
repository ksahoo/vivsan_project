class CreateTypeOfMethods < ActiveRecord::Migration
  def change
    create_table :type_of_methods do |t|
    	t.string :name
      t.timestamps
    end
  end
end
