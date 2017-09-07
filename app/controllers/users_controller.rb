class UsersController < ApplicationController
  
	def show
    @user = User.find(params[:id]) #grabs the user by id to show his/her profile
    # @ratings = Rating.all()
    puts @user.name
    @ratings = Rating.where(:rated_user => @user.name)
  end

  def new #creates signup page
    @user = User.new
    @users = User.all
  end

  def create #method for creating new user and saving to the database
    @user = User.new(user_params)
   if @user.save
     session[:user_id] = @user.id # creates a session for that user
     redirect_to @user # if the user gets saved correctly, redirect to that user's profile page
   else
     redirect_to '/signup' # if user doesn't save, redirect to the signup page
   end
 end
  

private
   def user_params # setting parameters for users
     params.require(:user).permit(:name, :phone_num, :email, :skype, :whatsapp, :facetime, :password)
   end


end
