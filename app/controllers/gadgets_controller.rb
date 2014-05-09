class GadgetsController < ApplicationController
  def index
    @gadgets = Gadget.all
  end

  def new
    @gadget = Gadget.new
  end

  def create
    #render :text => params.inspect and return
    analysis_array = params[:gadget][:analysis_group]
    params[:gadget].delete('analysis_group')

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
      field_2_useful_for_which: params[:gadget][:field_2_useful_for_which], 
      field_2_explanation: params[:gadget][:field_2_explanation], 
      name: params[:gadget][:name], comment: params[:gadget][:comment])
      
      
    if @gadget.save
      if !analysis_array.nil?   
        analysis_array.each do |group| 
          @gadget.analysis_groups <<  AnalysisGroup.find(group.to_i)
        end
      end
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
    if @gadget.update_attributes(params.require(:gadget).permit(
      :title, :method_or_gadget, :useful_for, :gadget_description, 
      :cost, :company_name, :company_description, :company_website))

      if !analysis_array.nil?   
        analysis_array.each do |group| 
          @gadget.analysis_groups <<  AnalysisGroup.find(group.to_i)
        end
      end      
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
