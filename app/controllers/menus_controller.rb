class MenusController < ApplicationController

  def index
   @menus = Menu.all

 respond_to do |format|
       format.html
     format.xml  { render :xml =>  @menus}
    end
  end


  def new
     @menus = Menu.new
  respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml =>  @menus }
    end
  end

  def edit
    @menus = Menu.find(params[:id])
  end

    def show
     @menus = Menu.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml =>  @menus}
    end
  end


    def create
     @menus = Menu.new(params[:restaurant])

    respond_to do |format|
      if  @menus.save
        flash[:notice] = 'Product was successfully created.'
        format.html { redirect_to(@menus) }
        format.xml  { render :xml => @menus, :status => :created, :location => @menus }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml =>@menus.errors, :status => :unprocessable_entity }
      end
    end
  end


end
