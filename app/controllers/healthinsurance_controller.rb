class HealthinsuranceController < ApplicationController
  
  # GET /healthinsurance/new
  def new
  @healthinsurance = Healthinsurance.new
  end
  
  # POST /healthinsurance or /healthinsurance.json
  def create
    @healthinsurance = Healthinsurance.new(user_params)
    if @healthinsurance.save
      session[:healthinsurance] = @healthinsurance.id
      redirect_to root_path, notice: "Successfully saved data"
    else
      render :new
    end
  end

  private

  def user_params  #params.require(:insuranceid).permit(:healthinsurance_id, :insurer_name, :patient_id, :serial_id)
 params.require(:healthinsurance).permit(:healthinsurance_id)
  end

  
end
