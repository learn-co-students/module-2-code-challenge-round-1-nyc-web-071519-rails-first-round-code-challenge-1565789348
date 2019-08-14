class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show
    @heroine = Heroine.find(params[:id])
    @powers = Power.all
  end 

  def new
    @heroine = Heroine.new
    @powers = Power.all
  end

  def create 
    @heroine = Heroine.create(heroine_params)
    redirect_to heroine_path(@heroine)
  end

  # private methods
  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end
  
end