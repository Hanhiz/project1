class VehicleSchedulesController < ApplicationController
  before_action :set_vehicle_schedule, only: %i[ show edit update destroy ]

  # GET /vehicle_schedules or /vehicle_schedules.json
  def index
    @vehicle_schedules = VehicleSchedule.all
  end

  # GET /vehicle_schedules/1 or /vehicle_schedules/1.json
  def show
  end

  # GET /vehicle_schedules/new
  def new
    @vehicle_schedule = VehicleSchedule.new
  end

  # GET /vehicle_schedules/1/edit
  def edit
  end

  # POST /vehicle_schedules or /vehicle_schedules.json
  def create
    @vehicle_schedule = VehicleSchedule.new(vehicle_schedule_params)

    respond_to do |format|
      if @vehicle_schedule.save
        format.html { redirect_to vehicle_schedule_url(@vehicle_schedule), notice: "Vehicle schedule was successfully created." }
        format.json { render :show, status: :created, location: @vehicle_schedule }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @vehicle_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vehicle_schedules/1 or /vehicle_schedules/1.json
  def update
    respond_to do |format|
      if @vehicle_schedule.update(vehicle_schedule_params)
        format.html { redirect_to vehicle_schedule_url(@vehicle_schedule), notice: "Vehicle schedule was successfully updated." }
        format.json { render :show, status: :ok, location: @vehicle_schedule }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @vehicle_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicle_schedules/1 or /vehicle_schedules/1.json
  def destroy
    @vehicle_schedule.destroy

    respond_to do |format|
      format.html { redirect_to vehicle_schedules_url, notice: "Vehicle schedule was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle_schedule
      @vehicle_schedule = VehicleSchedule.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vehicle_schedule_params
      params.require(:vehicle_schedule).permit(:departure_time, :arrival_time, :route, :vehicle_id, :tour_id)
    end
end
