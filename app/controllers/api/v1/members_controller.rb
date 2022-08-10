class Api::V1::MembersController < ApplicationController
    before_action :authenticate_api_v1_user!

    def show
      render json: { message: "If you see this, you're in!" }
    end
  end