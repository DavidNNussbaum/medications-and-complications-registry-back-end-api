class CurrentUserController < ApplicationController
    before_action :authorized
       
    def index
      token = encode_token({user_id: current_user.id})
      render json: {user: UserSerializer.new(current_user), token: token}, status: :ok
    end
  
  end
  
       
      