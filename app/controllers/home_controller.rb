class HomeController < ApplicationController
  def index
    @time = DateTime.current
  end
end
