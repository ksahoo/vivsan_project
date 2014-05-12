class AddToolToUsersToGadget < ActiveRecord::Migration
  def change
  	add_column :gadgets, :tool_to_users, :string
  end
end
