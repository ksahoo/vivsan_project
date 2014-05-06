class UsersController < ApplicationController

  def sign_in
    
  end

  def sign_up
    
  end

  def create
    @user = User.new(firstname: params[:user][:first_name],lastname: params[:user][:last_name], email: params[:user][:email], institution: params[:user][:institution], role: params[:user][:role], password: params[:user][:password])
    if @user.save
      redirect_to(:controller => 'users_admin', :action => 'index')
    else
        #puts "error messages"
        #puts @user.errors
        render(:controller => 'users', :action => 'sign_up')
    end
  end
end
