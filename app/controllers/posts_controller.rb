class PostsController < ApplicationController
  before_action :get_current_user

  def index
    if params[:user_id].present?
      @posts = Post.where(:user_id=>params[:user_id]).order("created_at DESC")
    else
      @posts = Post.order("created_at DESC")
   end
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(title:params[:title],:description=>params[:description],:user_id=>@current_user.id)
    if @post
      redirect_to posts_url, notice: "Post was successfully created"
   else
     render :new, status: :unprocessable_entity
   end
  end

  def edit
    @post = Post.find_by_id(params[:id])
  end

  def update
    @post = Post.find_sole_by(id:params[:id])
    if @post.update!(post_params)
      redirect_to posts_url, notice: "Post was successfully updated" 
    else
      render :edit, status: :unprocessable_entity 
    end
  end

  def destroy
    @task = Post.find_sole_by(id:params[:id],user_id:@current_user.id)
    @task.destroy
    render json: {message: "Success"}
  end




  private

  def post_params
    params.permit(:title,:description,:id)
  end
end
