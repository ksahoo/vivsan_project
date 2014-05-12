class GadgetsController < ApplicationController
  def index
    @gadgets = Gadget.all
  end

  def new
    @gadget = Gadget.new
  end

  def create
    
    analysis_array = params[:gadget][:analysis_group]
    params[:gadget].delete('analysis_group')

    type_of_method_array = params[:gadget][:type_of_method]
    params[:gadget].delete('type_of_method')

    specific_parameters_array = params[:gadget][:specific_parameters_attributes]
    params[:gadget].delete('specific_parameters')

    qualify_areas_of_interest_array = params[:gadget][:qualify_areas_of_interests]
    params[:gadget].delete('qualify_areas_of_interest')

    @gadget = Gadget.new(title: params[:gadget][:title],
      method_or_gadget: params[:gadget][:method_or_gadget], 
      useful_for: params[:gadget][:useful_for], 
      analysis_group: params[:gadget][:analysis_group],
      gadget_description: params[:gadget][:gadget_description],
      cost: params[:gadget][:cost], 
      company_name: params[:gadget][:company_name], 
      company_description: params[:gadget][:company_description], 
      company_website: params[:gadget][:company_website], 
      technology_used: params[:gadget][:technology_used], 
      scientific_description: params[:gadget][:scientific_description], 
      field_1_explanation: params[:gadget][:field_1_explanation], 
      field2_useful_for_which_id: params[:gadget][:field2_useful_for_which_id], 
      field_2_explanation: params[:gadget][:field_2_explanation], 
      name: params[:gadget][:name], 
      comment: params[:gadget][:comment],
      currency_id: params[:gadget][:currency_id],
      tool_to_users: params[:gadget][:tool_to_users],
      gadget_website: params[:gadget][:gadget_website],
      brochure: params[:gadget][:brochure],
      usefulness_for_field_nrc: params[:gadget][:usefulness_for_field_nrc],
      usefulness_for_field_vivsan: params[:gadget][:usefulness_for_field_vivsan],
      evaluation_by_nrc: params[:gadget][:evaluation_by_nrc],
      evaluation_by_vivsan: params[:gadget][:evaluation_by_vivsan])
      
      
    if @gadget.save
      if !analysis_array.nil?   
        analysis_array.each do |group| 
          @gadget.analysis_groups <<  AnalysisGroup.find(group.to_i)
        end
      end

      if !type_of_method_array.nil?   
        type_of_method_array.each do |group| 
          @gadget.type_of_methods <<  TypeOfMethod.find(group.to_i)
        end
      end

      if !qualify_areas_of_interest_array.nil?   
        qualify_areas_of_interest_array.each do |group| 
          @gadget.qualify_areas_of_interests <<  QualifyAreasOfInterest.find(group.to_i)
        end
      end

      # if !specific_parameters_array.nil?
      #   specific_parameters_array.each do |group|

      #     @gadget.specific_parameters << SpecificParameter.find(group.lambda { |a| a[:name]}.to_i)
      #   end
      # else
      #   puts "The array has no values."
      # end

      flash[:notice] =  'Gadget successfully created.' 
      redirect_to gadgets_path
    else
      flash[:error] =  'Problem creating gadget' 
      render 'new'
    end
  end

  def show
    @gadget = Gadget.find(params[:id])
  end

  def edit
     @gadget = Gadget.find(params[:id])
    if !@gadget.nil?
      render 'edit'
    else
      render 'index'
    end
  end

  def update
    @gadget = Gadget.find(params[:id])

    analysis_array = params[:gadget][:analysis_group]
    params[:gadget].delete('analysis_group')

    type_of_method_array = params[:gadget][:type_of_method]
    params[:gadget].delete('type_of_method')

    specific_parameters_array = params[:gadget][:specific_parameter]
    params[:gadget].delete('specific_parameters')

    qualify_areas_of_interest_array = params[:gadget][:qualify_areas_of_interests]
    params[:gadget].delete('qualify_areas_of_interest')

    if @gadget.update_attributes(params.require(:gadget).permit(
      :title, :method_or_gadget, :useful_for, :gadget_description, 
      :cost, :company_name, :company_description, :company_website, 
      :currency_id, :brochure, :tool_to_users, :gadget_website,
      :field2_useful_for_which_id,:usefulness_for_field_nrc,
      :usefulness_for_field_vivsan, :evaluation_by_nrc, 
      :evaluation_by_vivsan ))

      if !analysis_array.nil?
        @gadget.analysis_groups.delete_all
      
        analysis_array.each do |group| 
          @gadget.analysis_groups <<  AnalysisGroup.find(group.to_i)
        end
      end

      if !type_of_method_array.nil?
        @gadget.type_of_methods.delete_all
      
        type_of_method_array.each do |group| 
          @gadget.type_of_methods <<  TypeOfMethod.find(group.to_i)
        end
      end

      if !qualify_areas_of_interest_array.nil? 
        @gadget.qualify_areas_of_interests.delete_all

        qualify_areas_of_interest_array.each do |group| 
          @gadget.qualify_areas_of_interests <<  QualifyAreasOfInterest.find(group.to_i)
        end
      end

      # if !specific_parameters_array.nil?
      #   @gadget.specific_parameters.delete_all

      #   specific_parameters_array.each do |group|
      #     @gadget.specific_parameters << SpecificParameter.find(group.to_i)
      #   end
      # end

      flash[:notice] = 'Gadget successfully updated'
      redirect_to gadget_path(@gadget)
    else
      flash[:notice] = 'Gadget could not be updated'
      render 'edit'
    end
  end

  def destroy
    @gadget = Gadget.find(params[:id])
    if @gadget.destroy
      flash[:notice] = 'Gadget successfully deleted'
    else
      flash[:notice] = 'Problem deleting gadget'
    end
    redirect_to gadget_path
  end
end
