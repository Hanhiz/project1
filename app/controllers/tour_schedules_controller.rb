class TourSchedulesController < ApplicationController
  before_action :set_tour_schedule, only: %i[ show edit update destroy ]

  # GET /tour_schedules or /tour_schedules.json
  def index
    @tour_schedules = TourSchedule.all
  end

  # GET /tour_schedules/1 or /tour_schedules/1.json
  def show
  end

  # GET /tour_schedules/new
  def new
    @tour_schedule = TourSchedule.new
  end

  # GET /tour_schedules/1/edit
  def edit
  end

  # POST /tour_schedules or /tour_schedules.json
  def create
    @tour_schedule = TourSchedule.new(tour_schedule_params)

    respond_to do |format|
      if @tour_schedule.save
        format.html { redirect_to tour_schedule_url(@tour_schedule), notice: "Tour schedule was successfully created." }
        format.json { render :show, status: :created, location: @tour_schedule }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tour_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tour_schedules/1 or /tour_schedules/1.json
  def update
    respond_to do |format|
      if @tour_schedule.update(tour_schedule_params)
        format.html { redirect_to tour_schedule_url(@tour_schedule), notice: "Tour schedule was successfully updated." }
        format.json { render :show, status: :ok, location: @tour_schedule }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tour_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tour_schedules/1 or /tour_schedules/1.json
  def destroy
    @tour_schedule.destroy

    respond_to do |format|
      format.html { redirect_to tour_schedules_url, notice: "Tour schedule was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tour_schedule
      @tour_schedule = TourSchedule.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tour_schedule_params
      params.require(:tour_schedule).permit(:itinerary, :day_number, :activity_description, :tour_id)
    end
end
