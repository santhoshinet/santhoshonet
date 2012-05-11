class HomeController < ApplicationController
  protect_from_forgery :except => [:index, :contact]
  def index
  end

  def opensources
  end

  def aboutme
  end

  def contact
    if params[:name].nil? || params[:email].nil? || params[:message].nil?
      @error = true
      @status = false
    else
      puts params[:name]
      puts params[:email]
      puts params[:message]
      @error = false
      @status = true
      UserContact.deliver_contact_us(params[:email],params[:name],params[:message]).deliver
    end
    render :layout =>  false
  end
end
