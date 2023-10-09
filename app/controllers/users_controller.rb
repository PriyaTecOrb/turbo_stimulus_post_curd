class UsersController < ApplicationController
  
  def new
  	@show_signup_form = true
  end


  def login
  	@show_signup_form = false
  end

  def create
    @user = User.new(signup_params)
    if @user.save
      redirect_to root_path, notice: "User was successfully created"
    else
      render :new, status: :unprocessable_entity
    end
  end
  

  def authenticate_user
  	user = User.find_by(email: params[:email])
  	if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to posts_path
  	else
  		redirect_to root_path, notice: "Unauthroized access" 
  	end
  end


  def logout
    session[:user_id] = nil
    redirect_to root_path, info: "User Successfully Logout"
  end

  private

  def signup_params
    params.permit(:first_name,:email,:password)
  end
end
