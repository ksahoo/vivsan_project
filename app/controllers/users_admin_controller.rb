class UsersAdminController < ApplicationController
	def index
		@users = User.all	
	end

	def new
		@user = User.new
	end

  def create
    # render :text => params.inspect and return
    @user = User.new(firstname: params[:user][:firstname],lastname: params[:user][:lastname], email: params[:user][:email], institution: params[:user][:institution], role: params[:user][:role], password: params[:user][:password])
    if @user.save
      flash[:notice] =  'User successfully created.' 
      redirect_to users_admin_index_path
    else
        flash[:error] =  'Problem creating user.' 
        render 'new'
    end
  end

	def show
		@user = User.find(params[:id])
    if !@user.nil?
      render 'show'
    else
      render 'index'
    end
	end

	def edit
    @user = User.find(params[:id])
    if !@user.nil?
      render 'edit'
    else
      render 'index'
    end
  end

  def update
    @user = User.find(params[:id])
    puts ("ID:")
    puts (@user.id)
    @user.firstname = params[:user][:firstname]
    @user.lastname= params[:user][:lastname]
    @user.email= params[:user][:email]
    @user.institution= params[:user][:institution]
    @user.role= params[:user][:role]

    # if @user.update_attributes(params.require(:user).permit(:firstname, :lastname, :email, :institution, :role))
    if @user.save  
      puts "entered in to if of update"
      @users = User.all
      redirect_to users_admin_index_path
    else
      render 'edit'
    # else
    #   render 'update'
    end
    # @user = User.find(params[:id])
    # if @user.update_attributes(params.require(:user).permit(:firstname, :lastname, :email, :institution, :role))
    #   @users = UserData.all
    #   render ('index')
    # end
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      redirect_to(:action => 'index')
    else
      render 'index'
    end
  end
end
