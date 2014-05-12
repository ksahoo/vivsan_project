class CreateGadgetsQualifyAreasOfInterests < ActiveRecord::Migration
  def change
    create_table :gadgets_qualify_areas_of_interests, :id => false do |t|
    	t.references :gadget
    	t.references :qualify_areas_of_interest
    end
  end
end
