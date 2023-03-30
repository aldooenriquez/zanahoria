class AboutmeController < ApplicationController
  def index
    @time = DateTime.current
  end
end
