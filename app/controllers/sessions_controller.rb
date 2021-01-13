class SessionsController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.find_by(username: params[:user][:username])
    
    end

end
