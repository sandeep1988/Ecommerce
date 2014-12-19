Demo::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb
  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Log error messages when you accidentally call methods on nil.
  config.whiny_nils = true

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send
  config.action_mailer.raise_delivery_errors = false
  #config.action_mailer.delivery_method = :sendmail
  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin

  # Raise exception on mass assignment protection for Active Record models
  config.active_record.mass_assignment_sanitizer = :strict

  # Log the query plan for queries taking more than this (works
  # with SQLite, MySQL, and PostgreSQL)
  config.active_record.auto_explain_threshold_in_seconds = 0.5

  # Do not compress assets
  config.assets.compress = false

  # Expands the lines which load the assets
   config.assets.debug = true
   config.force_ssl = true

 # config.action_mailer.delivery_method = :smtp
 # config.action_mailer.smtp_settings = {
 #    :address => "smtp.gmail.com",
 #    :port => 587,
 #    :domain => "gmail.com",
 #    :authentication => "plain",
 #    :user_name => "schourey1988@gmail.com",
 #    :password => "sandeep1988",
 #    :enable_starttls_auto => false  
 # }
 # config.action_mailer.raise_delivery_errors = true

#  config.after_initialize do
#   ActiveMerchant::Billing::Base.mode = :test
#   paypal_options = {
#     :login => "schourey1988-facilitator_api1.gmail.com",
#     :password => "8UH32FGA86XRKGEF",
#     :signature => "AFcWxV21C7fd0v3bYYYRCpSSRl31A-qtjVAaebj353SFz1hp9D.wNR4q"
#   }
#   ::STANDARD_GATEWAY = ActiveMerchant::Billing::PaypalGateway.new(paypal_options)
#   ::EXPRESS_GATEWAY = ActiveMerchant::Billing::PaypalExpressGateway.new(paypal_options)
# end

config.action_mailer.raise_delivery_errors = true
 config.action_mailer.delivery_method = :smtp
  ActionMailer::Base.smtp_settings = {
    :address              => "smtp.gmail.com",
    :port                 => 587,
    :user_name            => "schourey1988test@gmail.com",
    :password             => 'sandeep9754431024test',
    :authentication       => "plain",
    :enable_starttls_auto => true
  }
end
