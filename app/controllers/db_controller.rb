class DbController < ApplicationController

  def reset
    system "rake db:reset"
    render :'home/index'
  end

end
