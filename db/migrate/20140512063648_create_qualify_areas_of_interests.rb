class CreateQualifyAreasOfInterests < ActiveRecord::Migration
  def change
    create_table :qualify_areas_of_interests do |t|
    	t.string :name
      t.timestamps
    end
  end
end
