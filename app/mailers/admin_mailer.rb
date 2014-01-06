class AdminMailer < ActionMailer::Base
  default from: "schourey1988@email.com"

  def user_added
	mail(:to => "schourey1988@email.com", :subject => "New order added")
 end

end
