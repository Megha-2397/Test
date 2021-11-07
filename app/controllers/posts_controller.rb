class PostsController < ApplicationController

  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def show
    @comments = @post.post_comments.order("created_at DESC")
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.new(post_params)

    if @post.save
      redirect_to root_path, notice: "Created successfully."
    else
      render :new
    end
  end


  def update
    if @post.update(post_params.merge({user_id: current_user.id}))
      redirect_to root_path, notice: "Post was successfully updated."
    else
      render :edit
    end
  end


  def destroy
    unless @post.post_comments.present?
      @post.destroy
      redirect_to root_path, notice: 'Post was successfully destroyed.'
    else
      redirect_to root_path, notice: "Post contain comment so you can't delete it"
    end
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:user_id, :title, :post_date, :description, :category_id)
  end

end