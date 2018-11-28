class UserMailer < ApplicationMailer
<<<<<<< HEAD
    def welcome_email(user)
		@user = user
		mail(to: @user.email, subject: "Welcome to Coin API")		
	end

	def coin_low(users, coin, coins)
		@coin = coin
		@coins = coins
		@emails = []
		users.each { |user| @emails.push(user.email) }
		mail(to: @emails, subject: "Welcome to Coin API")	
	end
=======
    default from: "mortgagehippo@email.com"

    def low_coin(user, current_coin_count, current_total)
        @user = user
        @current_coin_count = current_coin_count + 1
        @current_total = current_total

        mail to: user.email, subject: "Coin count is low. Please add more coins."
    end
>>>>>>> 9568bf8e87d3e6ac8c2cfeae9ddc30c4f37c75d1
end
