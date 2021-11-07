class PostCommentsController < ApplicationController

  before_action :set_post, only: [:create]
  before_action :authenticate_user!, only: [:create]


  def create
    @comment = current_user.post_comments.create(comment: params[:post_comment][:comment], post_id: @post.id)
  end


  private

  def set_post
    @post = Post.find(params[:id])
    redirect_to root_path, notice: "invalid post" unless @post
  end

end