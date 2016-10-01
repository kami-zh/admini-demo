class Admin::PostsController < ActionController::Base
  include Admini::Resources
  include ActionView::Helpers::UrlHelper

  def create
    redirect_to admin_posts_path
  end

  def update
    redirect_to admin_posts_path
  end

  def destroy
    redirect_to admin_posts_path
  end

  private

  def index_attributes
    %i(id title status created_at)
  end

  def new_attributes
    %i(title content status)
  end

  def show_attributes
    %i(id title content status created_at)
  end

  def enum_attributes
    %i(status)
  end

  def search_attributes
    %i(title content)
  end

  def render_title(resource)
    path = case resource.status
           when 'draft'
             preview_post_path(resource, token: resource.preview_token)
           when 'published'
             post_path(resource)
           end
    link_to resource.title, path, target: :blank
  end

  def render_created_at(resource)
    l(resource.created_at, format: :long)
  end
end
