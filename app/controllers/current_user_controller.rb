class CurrentUserController < ApplicationController
    before_action :authorized
       
    def index
      render json: current_user, status: :ok
    end
  
  end
  
       
      