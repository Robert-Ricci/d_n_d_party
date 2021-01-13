class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.create 
            # if @user.save
        redirect_to @user
    end

    def show 
        @user = User.find_by(id: params[:id])
    end

end
