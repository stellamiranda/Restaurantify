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
     @menus = Menu.new(params[:menu])

    respond_to do |format|
      if  @menus.save
        flash[:notice] = 'Menu was successfully created.'
        format.html { redirect_to(@menus) }
        format.xml  { render :xml => @menus, :status => :created, :location => @menus }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml =>@menus.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @menus =  Menu.find(params[:id])

    respond_to do |format|
      if @menus.update_attributes(params[:menu])
        flash[:notice] = 'Menu was successfully updated.'
        format.html { redirect_to(@menus) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @menus.errors, :status => :unprocessable_entity }
      end
    end
  end



   def destroy
    @Menus = Menu.find(params[:id])
    @Menus.destroy

    respond_to do |format|
      format.html { redirect_to(menus_url) }
      format.xml  { head :ok }
    end
  end


end
