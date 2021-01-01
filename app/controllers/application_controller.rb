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

    class Rejected < ActionController::ActionControllerError; end
    
    rescue_from RuntimeError , with: :routing
    rescue_from Rejected, with: :rejected

    def routing
        render template: "errors/routing"
    end

    def rejected(e)
        @ex = e
        render template: "errors/rejected"
    end
end