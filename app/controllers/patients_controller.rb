class PatientsController < ApplicationController
  require 'rest-client'
  before_action :set_patient, only: %i[ show edit update destroy ]

  # GET /patients or /patients.json
  def index
    @patients = Patient.all
  end
  # GET /patientDetails gets all patients and their first and last names
  def patient_details
	patients = ActiveRecord::Base.connection.exec_query("select patients.id, c.first_name, c.last_name from patients inner join users as c on c.id = patients.user_id")
    	render json: {status: 'Success', message: 'Loaded patients', patients: patients}, status: :ok
  end

  # GET /patients/1 or /patients/1.json
  def show
	patient = Patient.find(params[:id])
	render json: patient, status: :ok
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

  # GET /intake/:id/personalDetails get patient details
  def personalDetails
	patient = Patient.select(:id,:user_id,:license_no,:sex,:height,:weight,:marital_status,:emergency_contact_number,:emergency_contact_name,:emergency_contact_address,:emergency_contact_email).find(params[:id])
	render json: {"patient" => patient}, status: :ok
  end

  # GET /intake/:id/insuranceDetails get patient insurance details
  def insuranceDetails
	patient = Patient.select(:id,:user_id,:insurance_no,:rx_group,:rx_bin,:rx_pcn, :provider, priority).find(params[:id])
	render json: {"patient" => patient}, status: :ok
  end

  # GET /intake/:id/demographicDetails get patient demographic details

  def demographicDetails
	patient = Patient.select(:id,:user_id,:marital_status,:race,:ethnicity,:income_group).find(params[:id])
	render json: {"patient" => patient}, status: :ok
  end

  # GET /intake/:id/blueButton get patient blueButton health history

  def blueButton
	patient = Patient.select(:id,:user_id,:blue_button_approval).find(params[:id])
	if patient.blue_button_approval == true
		#fetch data from blue button
		patient = RestClient.get("https://fierce-ocean-20863.herokuapp.com/patient/entireData")
		render json: {"patient" => patient}, status: :ok
	else	
	patient = Patient.where(id: params[:id]).joins("INNER JOIN health_histories ON health_histories.patient_id = patients.id")

		render json: {"patient" => patient}, status: :ok
	end
  end

  # PATCH /intake/:id/personalDetails update patient details

def personalDetailsUpdate
	patient = Patient.update(patient_params)
	render json: {"patient" => patient}, status: :ok
  end

  # PATCH /intake/:id/demographicDetails update patient demographic details

def demographicDetailsUpdate
	patient = Patient.update(patient_params)
	render json: {"patient" => patient}, status: :ok
  end

  # PATCH /intake/:id/insuranceDetails update patient insurance details

def insuranceDetailsUpdate
	patient = Patient.update(patient_params)
	render json: {"patient" => patient}, status: :ok
  end

  # PATCH /intake/:id/blueButton update patient blueButton health history

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
      params.require(:patient).permit(:id,:user_id, :license_no, :sex, :height, :weight,:marital_status, :race, :ethnicity,:income_group,:emergency_contact_number, :emergency_contact_name,:emergency_contact_address,:emergency_contact_email, :rx_group, :rx_bin, :rx_pcn, :blue_button_approval, :visit_detail, :legal_consent, :insurance_no, :provider, :priority)
    end
end
