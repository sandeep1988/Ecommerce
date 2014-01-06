class AdminMailer < ActionMailer::Base
  default from: "schourey1988@gmail.com"

  def user_added
	mail(:to => "schourey1988@gmail.com", :subject => "Your order has send to the customer")
 end
end
