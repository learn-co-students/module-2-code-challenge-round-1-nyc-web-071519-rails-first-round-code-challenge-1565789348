class HeroinesController < ApplicationController

  def index
    @heroines = Heroine.all
  end

  def new
    @heroine = Heroine.new
    @powers = Power.all
  end

  def create
    @heroine = Heroine.new(heroine_params)
    if @heroine.save
      redirect_to @heroine
    else
      render :new 
    end
  end

  def edit
    @heroine = Heroine.find(params[:id])
  end

  def update
    @heroine = Heroine.find(params[:id])
    if @heroine.update(heroine_params)
      redirect_to @heroine 
    else
      render :edit 
    end
  end

  def show
    @heroine = Heroine.find(params[:id])
    @power_name = Power.find(params[:id]).name
  end 

  private

  #STRONG PARAMS

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end

end
