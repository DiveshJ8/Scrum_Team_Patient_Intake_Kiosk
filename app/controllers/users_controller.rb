class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]

  def get_personaldetails
    
  end

  def up_personaldetails
    user = User.find_by(user_id: params[:userid])
    #user.update()
  end

  def get_user
    user = params[:id]
    if(user.user_type == "Patient")
      user1 = User.where(user_id: params[:userid])
      render json: user, status: :ok
    #else
      #if(user.user_type == "")
    end
  End

  def createuser

    data = {"hi":"there"}
    #users = User.new(email:"hello")
    #puts data
    render json: data, status: :ok
  end

  def update_user
  end

  def delete_user
  end

  def signup
    
  end

  def signin
    redirect_to "https://patient-login.herokuapp.com/sign_in"
  end

  end

  def login
    
      
    
  end

  def logout
  end

  def authenticate
    
  end

  def loginchk
    
    

  end


  # GET /users or /users.json
  def index
    @users = User.all
  end

  # GET /users/1 or /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users or /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: "User was successfully created." }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1 or /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: "User was successfully updated." }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1 or /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: "User was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
	params.require(:user).permit(:client_id, :password, :last_login, :first_name, :last_name, :dob, :email, :street, :city, :state, :zip, :phone_no)
    end
end
