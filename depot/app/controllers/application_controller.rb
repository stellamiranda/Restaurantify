class ApplicationController < ActionController::Base
  layout "store"

  helper :all
 before_filter :authorize, :except => :login
helper :all # include all helpers, all the time
protected
  def authorize
    unless User.find_by_id(session[:user_id])
      flash[:notice] = "Please log in"
      redirect_to :controller => 'admin' , :action => 'login'
    end
  end

end



