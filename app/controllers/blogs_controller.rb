class BlogsController < ApplicationController
    before_action :authenticate_user!

    def index
        @blogs = Blog.all
    end
    
    def new
        @blog = Blog.new
    end
    
    def create
        @blog = Blog.new(blog_params)
        @blog.user = current_user
        @blog.save
        redirect_to action :'index'
    end
    
    private
    def blog_params
        params.require(:blog).permit(:title, :body)
    end
        
end
