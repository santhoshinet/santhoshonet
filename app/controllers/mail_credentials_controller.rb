class MailCredentialsController < ApplicationController

  def new
    @mail_cred = MailCrendential.new
  end

  def add
    unless params[:username].nil? and params[:password].nil?
      mail_cred = MailCrendential.new
      mail_cred.username = params[:username]
      mail_cred.password = params[:password]
      mail_cred.save
    end
    redirect_to :controller => "home"
  end

end
