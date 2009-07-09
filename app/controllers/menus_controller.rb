class MenusController < ApplicationController
 
  before_filter :authenticate, :except => [:index, :show]
  def index
   @menus = Menu.all
   @restaurant = Restaurant.find(params[:restaurant_id])
 respond_to do |format|
       format.html
     format.xml  { render :xml =>  @menus}
    end
  end


  def new
  
     @menus = Menu.new
      @restaurant = Restaurant.find(params[:restaurant_id])
  respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml =>  @menus }
    end
  end

  def edit
    @menus = Menu.find(params[:id])
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

    def show
     @menus = Menu.find(params[:id])
     @menucategories = @menus.menucategories
   #  @category = @menucategories.category.id
     @restaurant = Restaurant.find(params[:restaurant_id])
     render :text => @menucategories.category
#      respond_to do |format|
#      format.html # show.html.erb
#      format.xml  { render :xml =>  @menus}
#     end
  end


    def create
 
     @restaurant = Restaurant.find(params[:restaurant_id])
      @menus = @restaurant.menus.create(params[:menu])
      respond_to do |format|
      if  @menus.save
        flash[:notice] = 'Menu was successfully created.'
        format.html { redirect_to  restaurant_menus_path(@restaurant.id) }
        format.xml  { render :xml => @menus, :status => :created, :location => @menus }
      else
        format.html { render :action => "new" }
       format.xml  { render :xml =>@menus.errors, :status => :unprocessable_entity }
      end
    end
 end

  def update
    @menus =  Menu.find(params[:id])
    @restaurant = Restaurant.find(params[:restaurant_id])
    respond_to do |format|
      if @menus.update_attributes(params[:menu])
        flash[:notice] = 'Menu was successfully updated.'
        format.html { redirect_to restaurant_path(@restaurant.id) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @menus.errors, :status => :unprocessable_entity }
      end
    end
  end



 def destroy
    @Menus = Menu.find(params[:id])
    @restaurant =  @Menus.restaurant_id
    @Menus.destroy
    respond_to do |format|
    format.html { redirect_to restaurant_menus_path(@restaurant) }
    format.xml  { head :ok }
   end
  end


end
