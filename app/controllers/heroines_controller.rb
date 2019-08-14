class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def new
    @heroine = Heroine.new
  end

  def create
    if Heroine.all.map {|h| h.name}.uniq == Heroine.all.map {|h| h.name}
    @heroine = Heroine.create({name: params[:heroine][:name], super_name: params[:heroine][:super_name], power_id: params[:heroine][:power_id]})
    end
    redirect_to heroines_path
  end

  def show
    @heroine = Heroine.find(params[:id])
    @powers = Power.all
  end

  private

  def heroine_params #💪
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end
  
end

