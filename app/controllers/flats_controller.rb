class FlatsController < ApplicationController
  before_action :set_id, only: [:show, :edit, :update, :delete]

  def index
    @flats = Flat.all
  end

  def show
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(set_params)
    if @flat.save 
      redirect_to flats_path(@flat)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def set_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end

  def set_id
    @flat = Flat.find(params[:id])
  end

end
