class ApplicationController < ActionController::Base
  def current_time
    render plain: Time.now.strftime("%Y-%m-%d %Hh:%Mm:%Ss")
  end
end
