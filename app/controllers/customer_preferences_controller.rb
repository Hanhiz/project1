class CustomerPreferencesController < ApplicationController
  before_action :set_customer_preference, only: %i[ show edit update destroy ]

  # GET /customer_preferences or /customer_preferences.json
  def index
    @customer_preferences = CustomerPreference.all
  end

  # GET /customer_preferences/1 or /customer_preferences/1.json
  def show
  end

  # GET /customer_preferences/new
  def new
    @customer_preference = CustomerPreference.new
  end

  # GET /customer_preferences/1/edit
  def edit
  end

  # POST /customer_preferences or /customer_preferences.json
  def create
    @customer_preference = CustomerPreference.new(customer_preference_params)

    respond_to do |format|
      if @customer_preference.save
        format.html { redirect_to customer_preference_url(@customer_preference), notice: "Customer preference was successfully created." }
        format.json { render :show, status: :created, location: @customer_preference }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @customer_preference.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customer_preferences/1 or /customer_preferences/1.json
  def update
    respond_to do |format|
      if @customer_preference.update(customer_preference_params)
        format.html { redirect_to customer_preference_url(@customer_preference), notice: "Customer preference was successfully updated." }
        format.json { render :show, status: :ok, location: @customer_preference }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @customer_preference.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_preferences/1 or /customer_preferences/1.json
  def destroy
    @customer_preference.destroy

    respond_to do |format|
      format.html { redirect_to customer_preferences_url, notice: "Customer preference was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_preference
      @customer_preference = CustomerPreference.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def customer_preference_params
      params.require(:customer_preference).permit(:preferred_destination, :preferred_travel_date, :user_id)
    end
end
