class AdminMailer < ActionMailer::Base
  default from: "from@example.com"

  def user_added
	mail(:to => “schourey1988@email.com”, :subject => “Order Mail has Send......”)
 end

end
