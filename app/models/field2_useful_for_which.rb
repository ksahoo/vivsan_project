class Field2UsefulForWhich < ActiveRecord::Base
	attr_accessible :name
  has_many :gadgets
end
