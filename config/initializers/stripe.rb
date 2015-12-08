if Rails.env.production?
	Rails.configuration.stripe = {
		:publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
		:secret_key => ENV['STRIPE_SECRET_KEY']
	}
else
	Rails.configuration.stripe = {
		:publishable_key => 'pk_test_gdLBCrHUIgbG2fLAESyVln0O',
		:secret_key => 'sk_test_Wr38IlEbvjfJmv8m6shOXfKg'
	}
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]