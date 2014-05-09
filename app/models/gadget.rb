class Gadget < ActiveRecord::Base
	attr_accessible  :comment, :company_description, :company_name, 
  :company_website, :cost, :field_1_explnation, :field_2_explanation, 
  :gadget_description, :method_or_gadget, :name, 
  :scientific_description, :technology_used, :title, :useful_for 
  
	has_and_belongs_to_many :analysis_groups
end
