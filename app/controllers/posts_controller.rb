class PostsController < ActionController::Base
  def show
    @post = Post.published.find(params[:id])
  end

  def preview
    @post = Post.find_by!(id: params[:id], preview_token: params[:token])
    render :show
  end
end
