class UserMailer < ApplicationMailer
    default from: "mortgagehippo@email.com"

    def low_coin(user, current_coin_count, current_total)
        @user = user
        @current_coin_count = current_coin_count + 1
        @current_total = current_total

        mail to: user.email, subject: "Coin count is low. Please add more coins."
    end
end
