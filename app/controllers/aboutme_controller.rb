class AboutmeController < ApplicationController
  def index
    @time = DateTime.current
    @last_blog =
      BlogPost.where(state: "published").order("published_at DESC").first
  end
end
