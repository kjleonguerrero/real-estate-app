class HomesController < ApplicationController
  def index
    @homes = Home.all
    render :index
  end

  def show
    @homes = Home.find_by(id: params["id"])
    render :show
  end
end
