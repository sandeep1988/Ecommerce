# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Demo::Application.initialize!
# Demo::Application.configure do 
#  config.action_mailer.delivery_method = :smtp
#  config.action_mailer.smtp_settings = {
#  	:address => "smtp.gmail.com",
#  	:port => 587,
#     :domain => "gmail.com",
#     :authentication => "plain",
#     :user_name => "schourey1988@gmail.com",
#     :password => "sandeep1988",
#     :enable_starttls_auto => true	
#  }
# end

