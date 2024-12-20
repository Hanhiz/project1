class ToursController < ApplicationController
  before_action :set_tour, only: %i[ show edit update destroy ]

  # GET /tours or /tours.json
  def index
    @tours = Tour.all
    @tours_by_destination = Tour.group(:destination).count
  
    if params[:term].present?
      @tours = @tours.where('name LIKE ?', "%#{params[:term]}%")
    end
  
    if params[:destination].present?
      @tours = @tours.where('destination LIKE ?', "%#{params[:destination]}%")
    end
  
    if params[:min_price].present? && params[:max_price].present?
      @tours = @tours.where(minimum_price: params[:min_price]..params[:max_price])
    end
  
    if params[:start_date].present? && params[:end_date].present?
      @tours = @tours.where(start_date: params[:start_date]..params[:end_date])
    end
  end

  # GET /tours/1 or /tours/1.json
  def show
  end

  # GET /tours/new
  def new
    @tour = Tour.new
  end

  # GET /tours/1/edit
  def edit
  end
  
  # POST /tours or /tours.json
  def create
    @tour = Tour.new(tour_params)

    respond_to do |format|
      if @tour.save
        format.html { redirect_to tour_url(@tour), notice: "Tour was successfully created." }
        format.json { render :show, status: :created, location: @tour }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tours/1 or /tours/1.json
  def update
    respond_to do |format|
      if @tour.update(tour_params)
        format.html { redirect_to tour_url(@tour), notice: "Tour was successfully updated." }
        format.json { render :show, status: :ok, location: @tour }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tours/1 or /tours/1.json
  def destroy
    @tour.destroy

    respond_to do |format|
      format.html { redirect_to tours_url, notice: "Tour was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tour
      @tour = Tour.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tour_params
      params.require(:tour).permit(:name, :destination, :start_date, :end_date, :minimum_price, :max_capcity, :term, :image)
    end
end
