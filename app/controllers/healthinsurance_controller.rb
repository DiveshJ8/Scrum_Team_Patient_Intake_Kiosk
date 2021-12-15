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
  
# GET /intake/:id/insuranceDetails get patient insurance details
  def insuranceDetails
	#patient = Patient.select(:id,:user_id,:insurance_no,:rx_group,:rx_bin,:rx_pcn, :provider, priority).find(params[:id])
	
	patient = Patient.select(:healthinsurance_id, :insurer_name, :patient_id, :serial_id).find(params[:id])
	render json: {"patient" => patient}, status: :ok
  end

  private

  def user_params  #params.require(:insuranceid).permit(:healthinsurance_id, :insurer_name, :patient_id, :serial_id)
 params.require(:patient).permit(:id,:user_id, :license_no, :sex, :height, :weight,:marital_status, :race, :ethnicity,:income_group,:emergency_contact_number, :emergency_contact_name,:emergency_contact_address,:emergency_contact_email, :rx_group, :rx_bin, :rx_pcn, :blue_button_approval, :visit_detail, :legal_consent, :insurance_no, :provider, :priority, :healthinsurance_id, :insurer_name, :patient_id, :serial_id)
  end

  
end
