class SpecificParameter < ActiveRecord::Base
  attr_accessible :name
	belongs_to :gadget
end
