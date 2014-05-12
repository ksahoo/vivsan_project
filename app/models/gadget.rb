class Gadget < ActiveRecord::Base
	attr_accessible  :comment, :company_description, :company_name, 
  :company_website, :cost, :field_1_explnation, :field_2_explanation, 
  :gadget_description, :method_or_gadget, :name, :currency_id, 
  :scientific_description, :technology_used, :title,:tool_to_users ,
  :useful_for, :gadget_website, :brochure, :field2_useful_for_which_id,
  :evaluation_by_nrc, :evaluation_by_vivsan, :usefulness_for_field_nrc,
  :usefulness_for_field_vivsan 

  attr_accessor :type_of_method
  
	has_and_belongs_to_many :analysis_groups
	has_and_belongs_to_many :type_of_methods
	has_and_belongs_to_many :qualify_areas_of_interests
	belongs_to :currency
	belongs_to :field2_useful_for_which
	
	has_many :specific_parameters, dependent: :destroy
	attr_accessible :specific_parameters_attributes 
  accepts_nested_attributes_for :specific_parameters, 
        :reject_if => lambda { |a| a[:name].blank? }, :allow_destroy => true
end
