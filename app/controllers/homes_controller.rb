class HomesController < ApplicationController

  def index
    @pagy, @posts = pagy(Post.all, items: 2)
  end

end