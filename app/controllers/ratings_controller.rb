class RatingsController < ApplicationController

	def index # creating page for all ratings
		# byebug
		@ratings = Rating.all()

	end
	def show # getting a single rating
		@rating = Rating.find(params[:id])
	end
	def new 
		@rating = Rating.new  
		@users = User.all
	end
	def create
		@rating = Rating.new(rating_params) 
		@rating.user_id = current_user.id


		if @rating.save # if the rating gets saved correctly, redirect to posts page
			redirect_to "/posts"
		else
			render :action => :new
		end

	end

	def edit
		@rating = Rating.find() #allows a rating to be edited
	end


	private

	def rating_params # sets the parameters for a single rating
		params.require(:rating).permit(:rated_user, :title, :comment, :rating,session[:user_id])
	end

end #<<this is the closing class 
