class AddGadgetWebsiteToGadgets < ActiveRecord::Migration
  def change
  	add_column :gadgets, :gadget_website, :string
  end
end
