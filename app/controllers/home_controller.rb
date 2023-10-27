class HomeController < ApplicationController
  def index
    @homes = Home.all
    render :index
  end
end
