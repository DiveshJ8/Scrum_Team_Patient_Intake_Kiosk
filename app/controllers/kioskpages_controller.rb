class KioskpagesController < ApplicationController
    def mainapp
        '''
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
        '''
    end

    def userdetails
        render :template => "kioskpages/userdetails", :locals => {:progval => "10000"}
    end

    def userinsurance
        
    end

    def userconsent
    
    end

    def userhealth    
    end
    '''
    def userreview
        origin_type = #read url origin header
        if(origin_type == "signup"){
            render :template => "kioskpages/userconsent", :locals => {:typeval => "0"}
        }
        else{
            render :template => "kioskpages/userconsent", :locals => {:typeval => "1"}
        }
    end
    '''
    
end
