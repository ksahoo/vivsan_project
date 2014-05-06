class RolesController < ApplicationController
  def new
  end

  def index
  	@roles = Role.all
  end

  def create
  	@role = Role.new(role: params[:role][:role])
  	if @role.save
  		redirect_to roles_path
    else
        #puts "error messages"
        #puts @user.errors
        render 'new'
    end
  end

  def destroy
  	@role = Role.find(params[:id])
    if @role.destroy
      redirect_to(:action => 'index')
    else
      render 'index'
    end
  end

  def edit
  	@role = Role.find(params[:id])
    if !@role.nil?
      render 'edit'
    else
      render 'index'
    end
  end

  def update
  	@role = Role.find(params[:id])
    @role.role= params[:role][:role]

    if @role.save  
      @roles = Role.all
      render 'index'
    end
  end
end
