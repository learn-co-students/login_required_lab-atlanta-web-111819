class SessionsController < ApplicationController
    def new

    end

    def create
        name = params[:name]
        if name && !name.empty?
            session[:name] = name
            redirect_to '/'
        else
            redirect_to login_path
        end
    end

    def destroy
        session[:name] = nil
        redirect_to '/'
    end
end