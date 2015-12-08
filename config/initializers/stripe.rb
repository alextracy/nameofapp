if Rails.env.production?
	Rails.configuration.stripe = {
		:publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
		:secret_key => ENV['STRIPE_SECRET_KEY']
	}
else
	Rails.configuration.stripe = {
		:publishable_key => 'pk_test_9JNxhYTceRHWZb6BpmvUxf2S',
		:secret_key => 'sk_test_KTChhGvjihyKT3p1lwDTDT91'
	}
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]