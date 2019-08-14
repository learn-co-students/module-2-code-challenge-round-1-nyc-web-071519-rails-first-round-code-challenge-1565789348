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
    @power = Power.create(power_params)
    redirect_to powers_path
  end

  private

  def power_params
    params.require(:power).permit(:name, :description)
  end

end
