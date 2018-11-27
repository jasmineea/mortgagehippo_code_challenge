class Api::V1::UsersController < ApplicationController
    before_action :authenticate_user,  only: [:index, :update, :current]
    before_action :authorize_as_admin, only: [:destroy]
    before_action :authorize,          only: [:update]
    
    def index
      render json: {status: 200, msg: 'Logged-in'}
    end
    
    def transactions
      current_user.update!(last_login: Time.now)
      transactions = Transaction.where("user_id = ?", current_user)
      
      render json: transactions
    end
    
    def create
      @user = User.new(user_params)
      if @user.save
        UserMailer.welcome_email(@user).deliver
        render json: {status: 200, msg: 'User was created.'}
      end
    end
    
    def update
      user = User.find(params[:id])
      if user.update(user_params)
        render json: { status: 200, msg: 'User details have been updated.' }
      end
    end
    
    def destroy
      user = User.find(params[:id])
      if user.destroy
        render json: { status: 200, msg: 'User has been deleted.' }
      end
    end
    
    private
    
    def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation, :role)
    end
    
    def authorize
      return_unauthorized unless current_user && current_user.can_modify_user?(params[:id])
    end
  end
  
  