if Rails.env.production?
	Rails.configuration.stripe = {
		:publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
		:secret_key => ENV['STRIPE_SECRET_KEY']
	}
else
	Rails.configuration.stripe = {
		:publishable_key => 'sk_0Hl5xWGPsAvrn0xvM8nCqG5QKsXpA',
		:secret_key => 'pk_0Hl5J1xCFpEYC22l3W4dmVxYuYR9q'
	}
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]