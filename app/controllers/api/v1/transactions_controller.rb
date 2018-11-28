class Api::V1::TransactionsController < ApplicationController
    before_action :authenticate_user
    
    def index
      @transaction = Transaction.all
  
      render json: @transaction
    end
  
    def show
        @transaction = Transaction.find(params[:id])
  
        render json: @transaction
    end
  
      def create
      @transaction = Transaction.new(transaction_params)
      @coin = Coin.find(params[:transaction][:coin_id])
  
      if @transaction.save && @transaction.deposit == true && @transaction.withdrawal == false
          @coin.update_attributes(value: @coin.value + 1)
  
        render json: @transaction, status: :created, location: api_v1_transactions_url
      elsif @transaction.save && @transaction.deposit == false && @transaction.withdrawal == true
        if @coin.value > 0
          @coin.update_attributes(value: @coin.value - 1)
  
          if @coin.value < 4
            @coins = Coin.all
            @admins = User.where("role = ?", "admin")
            UserMailer.coin_low(@admins, @coin, @coins).deliver
          end 
  
          render json: @transaction, status: :created, location: api_v1_coins_url
        else
          render json: { status: :unprocessable_entity, msg: 'Not enough coins available' }
        end
      else
        render json: @transaction.errors, status: :unprocessable_entity
      end
    end
  
    private
      def transaction_params
        params.require(:transaction).permit(:coin_id, :deposit, :withdrawal, :user_id)
      end
  end
  