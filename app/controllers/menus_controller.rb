class MenusController < ApplicationController

  def new
    @menus = Category.new
  respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @menus }
    end
  end

end
