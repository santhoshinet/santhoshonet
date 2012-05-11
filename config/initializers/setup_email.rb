ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "santhoshonet.com",
  #:user_name            => "santhoshonet@gmail.com",
  #:password             => "",
  :authentication       => "plain",
  :enable_starttls_auto => true,
  :to => "santhoshonet@gmail.com"
}