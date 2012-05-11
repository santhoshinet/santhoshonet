class UserContact < ActionMailer::Base

  def contact_us(from,name,message)
    mail_credential = MailCrendential.first
    unless mail_credential.nil?
      #ActionMailer::Base.default_url_options[:user_name] = mail_credential.username
      #ActionMailer::Base.default_url_options[:user_name] = mail_credential.password
      @from = from
      @name = name
      @message = message
      mail(:to => "santhoshinet@gmail.com", :subject => "Somebody wants to contact you", :from =>  from)
    end
  end

end
