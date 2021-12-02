class Healthinsurance::HealthInsuranceController < ApplicationController
  
  def new
  	@insuranceid = Healthinsurance.new
  end

  
end
