class CreateGadgetsTypeOfMethods < ActiveRecord::Migration
  def change
    create_table :gadgets_type_of_methods, :id => false do |t| 
    	t.references :type_of_method
    	t.references :gadget
    end
  end
end
