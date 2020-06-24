Rails.configuration.stripe = {
  Stripe.setPublishableKey("pk_test_51Guw15LBsMZeYb07DWNl1rr2X575otShpRvR4wnRKbZ7xYLoGKKFe5hyro9OARbQdmAfhANnxXYx7s03HcMoPPBl00Q2NLihdQ");
  secret_key:      ENV['STRIPE_SECRET_KEY'],
  signing_secret:  ENV['STRIPE_WEBHOOK_SECRET_KEY']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
StripeEvent.signing_secret = Rails.configuration.stripe[:signing_secret]

StripeEvent.configure do |events|
  events.subscribe 'checkout.session.completed', StripeCheckoutSessionService.new
end
