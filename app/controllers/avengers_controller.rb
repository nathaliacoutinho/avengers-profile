class AvengersController < ApplicationController
  before_action :set_avenger, only: [:show, :edit, :update, :destroy]

  def index
    @avengers = Avenger.all

  end

  def show
  end

  def new
    @avenger = Avenger.new
  end

  def create
    @avenger = Avenger.create(avenger_params)
  end

  def edit
  end

  def update
    @avenger.update(avenger_params)
  end

  def destroy
    @avenger.destroy
    redirect_to avengers_path
  end

  private

  def set_avenger
    @avenger = Avenger.find(params[:id])
  end

  def avenger_params
    params.require(:avenger).permit(:name, :strength, :weakness, :known_as)
  end


end
