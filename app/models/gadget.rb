class Gadget < ActiveRecord::Base
	attr_accessible  :comment, :company_description, :company_name, 
  :company_website, :cost, :field_1_explnation, :field_2_explanation, 
  :gadget_description, :method_or_gadget, :name, :currency_id, 
  :scientific_description, :technology_used, :title, :useful_for 

  attr_accessor :type_of_method
  
	has_and_belongs_to_many :analysis_groups
	has_and_belongs_to_many :type_of_methods
	belongs_to :currency
end
