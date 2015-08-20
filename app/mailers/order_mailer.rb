class OrderMailer < ApplicationMailer

	def order_email(user)
		@user = user
		mail(to: @user.email, subject: 'Your order is realised!')
	end
end
