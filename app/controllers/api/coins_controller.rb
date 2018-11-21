class Api::CoinsController < ApplicationController

    # View all Coins
    def index
        @coins = Coin.all
        render "index.json.jbuilder"
    end
     # Create new coin
    def create
        @coin = Coin.new(
            value: params[:value],
            name: params[:name],
        )
        if coin.save
            render "show.json.jbuilder"
        else
            render json: {errors: @coin.errors.full_messages},
            status: :unprocessable_entity
    end
end

# View a single Coin
def show 
    id_input = params['id']
    @coin = Coin.find_by(id: id_input)
    render "show.json.jbuilder"
end
 # Update attributes on an existing coin
def update
    @coin = Coin.find_by(id: params[:id])
    @coin.name = params[:name] || @coin.name
    @coin.value = params[:value] || coin.value

    if @coin.save
        render "show.json.jbuilder"
    else
        render json: {errors: @coin.errors.full_messages},
        status: :unprocessable_entity
    end
end
# Delete a Coin from the System
def destroy
    @coin = Coin.find_by(id: params[:id])
    @coin.destroy
    render json: {message: "The coin was deleted."}
end

end
