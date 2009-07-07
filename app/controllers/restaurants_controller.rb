class RestaurantsController < ApplicationController

before_filter :authenticate
  def index
   @restaurants = Restaurant.find(:all)

 respond_to do |format|
       format.html
     format.xml  { render :xml => @restaurants}
    end
  end

  def new
    @restaurants = Restaurant.new
  respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @restaurants }
    end
  end

  def edit
   @restaurants = Restaurant.find(params[:id])
  end

    def show
    @restaurants = Restaurant.find(params[:id])
    @menus = Menu.all
  
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @restaurants}
    end
  end


    def create
    @restaurants = Restaurant.new(params[:restaurant])

    respond_to do |format|
      if @restaurants.save
        flash[:notice] = 'Product was successfully created.'
        format.html { redirect_to(@restaurants) }
        format.xml  { render :xml => @restaurants, :status => :created, :location => @restaurants }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml =>@restaurants.errors, :status => :unprocessable_entity }
      end
    end
  end


    def update
    @restaurants= Restaurant.find(params[:id])

    respond_to do |format|
      if @restaurants.update_attributes(params[:restaurant])
        flash[:notice] = 'Product was successfully updated.'
        format.html { redirect_to(@restaurants) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @restaurants.errors, :status => :unprocessable_entity }
      end
    end
  end


     def destroy
    @restaurants = Restaurant.find(params[:id])
    @restaurants.destroy

    respond_to do |format|
      format.html { redirect_to(restaurants_url) }
      format.xml  { head :ok }
    end
  end


end
