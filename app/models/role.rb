class Role < ActiveRecord::Base
	attr_accessible :role

	validates_presence_of :role
	validates_uniqueness_of :role
end
