class Api::V1::UsersController < ApplicationController
    def create
        @user = User.new(user_params)
        if @user.save
            render json: @user, status: :created
        else
            render @user.errors, status: :unprocessable_entity
        end
    end

    def index
        @users = User.all
        render json: @users, status: :ok
    end

    private
    def user_params
      params.require(:user).permit(:email, :password)
    end
end