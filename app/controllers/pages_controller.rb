class PagesController < ApplicationController

  def payment
    Stripe.api_key = ENV['STRIPE_SECRET_KEY']

    @stripe_publish_key = ENV['STRIPE_PUBLISH_KEY']

    @session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        price_data: {
          currency: 'jpy',
          product_data: {
            name: 'SMORQサブスクリプション',
          },
          unit_amount: 555,
        },
        quantity: 1,
      }],
      mode: 'payment',
      success_url: request.base_url + '/pages/success?session_id={CHECKOUT_SESSION_ID}',
      cancel_url: request.base_url + '/pages/payment',
    )
  end

  def success
  end
end
