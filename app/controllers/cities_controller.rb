class CitiesController < ApplicationController
  before_action :set_city, only: %i[ show edit update destroy ]

  # GET /cities or /cities.json
  def index
    @cities = City.all
    @city = City.find_by(id: params[:id])
  end

  # GET /cities/1 or /cities/1.json
  def show
  end

  # GET /cities/new
  def new
    @city = City.new
  end

  # POST /cities or /cities.json
  def create
    @city = City.new(city_params)

    respond_to do |format|
      if @city.save
        format.html { redirect_to city_url(@city), notice: "City was successfully created." }
        format.json { render :show, status: :created, location: @city }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @city.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_city
      @city = City.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def city_params
      params.require(:city).permit(:name)
    end
end
