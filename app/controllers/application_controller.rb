class ApplicationController < ActionController::Base
    layout :setting

    private 
    def setting
        if params[:controller].include?("admin")
            return "admin"
        else
            return "customer"
        end
    end
end
