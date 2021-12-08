class HealthHistoriesController < ApplicationController
  before_action :set_health_history, only: %i[ show edit update destroy ]

  # GET /health_histories or /health_histories.json
  def index
    @health_histories = HealthHistory.all
  end

  # GET /health_histories/1 or /health_histories/1.json
  def show
  end

  # GET /health_histories/new
  def new
    @health_history = HealthHistory.new
  end

  # GET /health_histories/1/edit
  def edit
  end

  # POST /health_histories or /health_histories.json
  def create
    #@health_history = HealthHistory.new(health_history_params)

    #respond_to do |format|
      #if @health_history.save
        #format.html { redirect_to @health_history, notice: "Health history was successfully created." }
        #format.json { render :show, status: :created, location: @health_history }
      #else
        #format.html { render :new, status: :unprocessable_entity }
        #format.json { render json: @health_history.errors, status: :unprocessable_entity }
      #end
    #end
    begin
        HealthHistory.transaction do
            @hh = HealthHistory.create!(health_history_params)
        end
    rescue ActiveRecord::RecordInvalid => exception
        @bands = {
            error: {
                status: 422,
                message: exception
            }
        }
    end
  
        render json: @bands
    end
  
    private
  
    def bands_params
        params.permit(bands: [:name, :year]).require(:bands)
    end

  # PATCH/PUT /health_histories/1 or /health_histories/1.json
  def update
    respond_to do |format|
      if @health_history.update(health_history_params)
        format.html { redirect_to @health_history, notice: "Health history was successfully updated." }
        format.json { render :show, status: :ok, location: @health_history }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @health_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /health_histories/1 or /health_histories/1.json
  def destroy
    @health_history.destroy
    respond_to do |format|
      format.html { redirect_to health_histories_url, notice: "Health history was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_health_history
      @health_history = HealthHistory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def health_history_params
params.require(:health_history).permit(:patient_id, :medications, :tetanus, :flu, :zoster, :pnuemovax, :prevnar, :asthma, :cancer, :depression, :diabetes, :heart_disease, :high_blood_pressure, :high_cholesterol, :stroke, :other, :surgeries, :family_medical_history)

    end
end
