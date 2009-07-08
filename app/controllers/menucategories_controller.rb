class MenucategoriesController < ApplicationController
  before_filter :authenticate, :except => [:index, :show]
  def index
    @menucategories = Menucategory.all
    @menu = Menu.find(params[:menu_id])
    @dishes = Dish.all
    respond_to do |format|
      format.html
      format.xml  { render :xml => @menucategories}
    end
  end


  def edit
    @menucategories = Menucategory.find(params[:menus_id])
  end

  def new
    @menu = Menu.find(params[:menu_id])
    @menucategories = Menucategory.new
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml =>  @menucategories }
    end
  end


  def show
    @menucategories = Menucategory.find(params[:menus_id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @menucategories}
    end
  end



  def create

    @menu = Menu.find_by_id(params[:menu_id])
    @menucategory = @menu.menucategories.new(params[:menucategory])
  #  @restaurant = Restaurant.find_by_id(params[:restaurant_id])
      respond_to do |format|
       if @menucategory.save
        format.html {   redirect_to restaurant_menu_path(@menu.restaurant_id,@menu.id) }
       #  format.html {   redirect_to menus_path(@menu)}
         format.xml  { render :xml => @menucategory, :status => :created, :location => @menucategory }
        else
         format.html { render :action => "new" }
         format.xml  { render :xml => @menucategory.errors, :status => :unprocessable_entity }
      end
     end
  end
end
