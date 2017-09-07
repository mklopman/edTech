class SessionsController < ApplicationController
	def new	#
	end

	def create # creating a new session
      session[:user_id] = nil
      @user = User.find_by_email(params[:session][:email].downcase)
      session[:user_id] = @user.id 

      # redirect_to @user
      if @user
      if @user.authenticate(params[:session][:password]) #if the session successfully gets created, the user goes to the profile page
           session[:user_id] = @user.id
            redirect_to @user
          else
            redirect_to '/login' # if the login fails, redirect to the login page 
      end
    end

  end

      def destroy # method for logging out
      session[:user_id] = nil
      redirect_to '/login' # once logged out the user is redirected to the login page
    end

end
