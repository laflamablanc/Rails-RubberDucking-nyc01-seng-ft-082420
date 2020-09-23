class DucksController < ApplicationController
  before_action :set_duck, only: [:show, :edit, :update]

  def index
    @ducks = Duck.all
  end

  def show
  end

  def new
    @duck = Duck.new
  end

  def create
    @duck = Duck.new(duck_params)
  end

  def edit
  end

  def update
    redirect_to duck_path(@duck)
  end

  private

  def set_duck
    @duck = Duck.find(params[:id])
  end

  def duck_params
    require(:duck).permit(:name, :mod)
  end

end
