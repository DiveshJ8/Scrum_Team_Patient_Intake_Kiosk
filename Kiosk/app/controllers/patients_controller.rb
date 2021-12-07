class PatientsController < ApplicationController
  before_action :set_patient, only: %i[ show edit update destroy ]

  # GET /patients or /patients.json
  def index
    @patients = Patient.all
  end

  def patient_details
	patients = Patient.order('id');
    	render json: {status: 'Success', message: 'Loaded patients', patients: patients}, status: :ok
  end

  # GET /patients/1 or /patients/1.json
  def show
	patient = Patient.find(params[:id])
	render json: {"patient" => patient}, status: :ok
  end

  # GET /patients/new
  def new
    @patient = Patient.new
  end

  # GET /patients/1/edit
  def edit
  end

  # POST /patients or /patients.json
  def create
    @patient = Patient.new(patient_params)

    respond_to do |format|
      if @patient.save
        format.html { redirect_to @patient, notice: "Patient was successfully created." }
        format.json { render :show, status: :created, location: @patient }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patients/1 or /patients/1.json
  def update
    respond_to do |format|
	patient = Patient.find(params[:id])
      if @patient.update(patient_params)
        format.html { redirect_to @patient, notice: "Patient was successfully updated." }
        format.json { render :show, status: :ok, location: @patient }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patients/1 or /patients/1.json
  def destroy
    @patient.destroy
    respond_to do |format|
      format.html { redirect_to patients_url, notice: "Patient was successfully destroyed." }
      format.json { head :no_content }
    end
  end


  def personalDetails
	patient = Patient.select(:id,:user_id,:license_no,:sex,:height,:weight,:marital_status,:emergency_contact_number,:emergency_contact_name,:emergency_contact_address,:emergency_contact_email, :email, :first_name, :last_name, :street, :city, :state, :zip, :phone_no).where(id: params[:id]).joins("INNER JOIN users ON users.id = patients.user_id")
	render json: {"patient" => patient}, status: :ok
  end
  def insuranceDetails
	patient = Patient.select(:id,:user_id,:insurance_no,:rx_group,:rx_bin,:rx_pcn).find(params[:id])
	render json: {"patient" => patient}, status: :ok
  end
  def demographicDetails
	patient = Patient.select(:id,:user_id,:marital_status,:race,:ethnicity,:income_group).find(params[:id])
	render json: {"patient" => patient}, status: :ok
  end
  def currentVisitReason
	patient = Patient.select(:id,:user_id,:visit_detail).find(params[:id])
	render json: {"patient" => patient}, status: :ok  end
  def blueButton
	patient = Patient.select(:id,:user_id,:blue_button_approval).find(params[:id])
	render json: {"patient" => patient}, status: :ok
  end

def personalDetailsUpdate
	patient = Patient.update(patient_params)
	render json: {"patient" => patient}, status: :ok
  end

def demographicDetailsUpdate
	patient = Patient.update(patient_params)
	render json: {"patient" => patient}, status: :ok
  end
def insuranceDetailsUpdate
	patient = Patient.update(patient_params)
	render json: {"patient" => patient}, status: :ok
  end
def blueButtonUpdate
	patient = Patient.update(patient_params)
	render json: {"patient" => patient}, status: :ok
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient
      @patient = Patient.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def patient_params
      params.require(:patient).permit(:user_id, :license_no, :sex, :height, :weight,:marital_status, :race, :ethnicity,:income_group,:emergency_contact_number, :emergency_contact_name,:emergency_contact_address,:emergency_contact_email, :rx_group, :rx_bin, :rx_pcn, :blue_button_approval, :visit_detail, :legal_consent, :insurance_no)
    end
end
