class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def show
    @power = Power.find(params[:id])
  end

  def new
    @power = Power.new
  end

  def create
    @power = Power.new(params.require(:power).permit(:name, :description))
    @power.save
    redirect_to power_path(@power)
  end
end
