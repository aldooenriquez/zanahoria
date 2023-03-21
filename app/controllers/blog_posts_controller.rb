class BlogPostsController < ApplicationController
  def index
    @blog_posts =
      BlogPost
        .where(state: "published")
        .order("published_at DESC")
        .page(params[:page])
  end

  def show
    @blog_post = BlogPost.friendly.find params[:title]
  end
end
