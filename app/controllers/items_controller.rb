class ItemsController < ApplicationController
  before_action :set_item, only: %i[ show edit update destroy ]

  def index
    @items = Item.all
    @cities = City.all
  end

  def show
    @cities = City.all
    @city = City.find_by(id: params[:id])
  end

  def new
    @item = Item.new
    @cities = City.all
    @city = City.find_by(id: params[:id])
  end

  def edit
    @cities = City.all
    @city = City.find_by(id: params[:id])
  end

  def create
    @item = Item.new(item_params)
    @cities = City.all
    @city = City.find_by(id: params[:id])

    respond_to do |format|
      if @item.save
        format.html { redirect_to item_url(@item), notice: "Item was successfully created." }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @cities = City.all
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to item_url(@item), notice: "Item was successfully updated." }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @item.destroy

    respond_to do |format|
      format.html { redirect_to items_url, notice: "Item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_item
      @item = Item.find(params[:id])
    end

    def item_params
      params.require(:item).permit(:name, :quantity, :city_id)
    end
end
