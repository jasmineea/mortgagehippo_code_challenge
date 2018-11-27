class UserMailer < ApplicationMailer
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
end
