class Role < ActiveRecord::Base
	validates_presence_of :role
	validates_uniqueness_of :role
end
