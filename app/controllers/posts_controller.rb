class PostsController < ApplicationController
	#throwing in httparty
	include HTTParty

	#grabbing all posts
	def index
		@posts = Post.all	
	end

	#grabbing a single post, all the comments and ordering them by the time they were created
	def show
		@post = Post.find(params[:id])
		@comments = @post.comments.order(:created_at)
		@comment = @post.comments.new(:user_id => current_user.id) #grabbing single comment by user id

		search = params[:search] #grabbing the user's search input
  		google_key = ENV['GOOGLE_API_KEY'] # grabbing the stored API key and storing both search/google_key in API url
  		url = "https://maps.googleapis.com/maps/api/place/textsearch/json?query=coffee+shop+in+#{search}&key=#{google_key}"
 		response = HTTParty.get(url) #getting the response of the url
    	@coffee = response["results"] #storing the response results in instance variable
    	# @name = @coffee[0]["name"]
  		if search # on a search, the user is redirected to the same page he/she is on to see the results
    		redirect_to "/posts/#{params[:id]}"
    		puts "search:", @search
 		end
	end

	def new   # gets a single post
		@post = Post.new
	end

	def create #method for creating a post
        @post = Post.create(post_params) # storing the parameters of a single post defined below into instance variable
        @post.user_id = current_user.id # storing the current user id into a single post's id

        puts "post:", params
        if @post.valid?
            
            @post.save
            redirect_to @post
        else
                        render :action => :new
        end
    end
	
	def edit #method enabling single posts to be edited

		@post = Post.find(params[:id])	
	end

	def update # method enabling single posts to be updated
        @post = Post.find(params[:id])
        if @post.update(post_params)
            redirect_to @post
        else
            render :action => :edit
        end
    end

    def destroy #method allowing single posts to be deleted by the post id
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to "/posts" # once deleted, the user stays on the same page
        
    end

	private #making methods here not accessible to the user

	def post_params # defining the parameters for a single post
		params.require(:post).permit(:title, :topic, :content, user_id: session[:user_id])
	end
end



