class UserMailer < ApplicationMailer::Base
	default from: "from@example.com"

	def contact_from(email, name, message)
		@message = message
		mail(:from => email, 
				:to => 'atracy60@gmail.com',
				:subject => "A new contact form message from #{name}")
	end
end
