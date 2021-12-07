class KioskpagesController < ApplicationController
    def mainapp
        @paramIn = params[:id]
        if(@paramIn == "userdetails")
            render :template => "kioskpages/mainapp", :locals => {:compval => "10000", :progval => "10000"}
        elsif(@paramIn == "userinsurance")
            render :template => "kioskpages/mainapp", :locals => {:compval => "01000", :progval => "11000"}
        elsif(@paramIn == "userhealth") 
            render :template => "kioskpages/mainapp", :locals => {:compval => "00100", :progval => "11100"}
        elsif(@paramIn == "userconsent")
            render :template => "kioskpages/mainapp", :locals => {:compval => "00010", :progval => "11110"}
        elsif(@paramIn == "userreview")
            render :template => "kioskpages/mainapp", :locals => {:compval => "00001", :progval => "11111"}
        else
            render :template => "kioskpages/mainapp", :locals => {:compval => "00000", :progval => "00000"}
        end
    end
    def signup
    end
    def signin
    redirect_to "https://patient-login.herokuapp.com/sign_in"
    end
    def login
    end
    def logout
    end
end
