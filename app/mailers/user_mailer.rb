class UserMailer < ActionMailer::Base
	default from: "from@example.com"

	def contact_form(email, name, message)
		@message = message
		mail(:from => email, 
				:to => 'atracy60@gmail.com',
				:subject => "A new contact form message from #{name}")
	end
end
