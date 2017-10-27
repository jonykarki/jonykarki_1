class BlogsController < ApplicationController
    
    def index
        @blogs = Blog.all.order('created_at DESC')
    end
    
    def new
        @blog = Blog.new
    end
    
    def create
        @blog = Blog.new(blog_params)
        @blog.User_id = current_user
        @blog.save
        redirect_to action: 'index'
    end
    

    private
    def blog_params
        params.require(:blog).permit(:title, :body)
    end
end
