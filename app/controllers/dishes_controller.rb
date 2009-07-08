class DishesController < ApplicationController
before_filter :authenticate, :except => [:index]
  def index
   @diches = Dish.all

 respond_to do |format|
       format.html
     format.xml  { render :xml => @dishes}
    end
  end

  def new
    @diches = Dish.new
   
   respond_to do |format|
   format.html # new.html.erb
   format.xml  { render :xml => @diches }
   end
  end

   def edit
   @dishes = Dish.find(params[:id])
  end

    def show
    @dishes = Dish.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @dishes}
    end
  end


    def create
    
    @category = Category.find_by_id(params[:category_id])
    @dishes = @category.dish.create(params[:category])
    render :text => @category
    respond_to do |format|
      if @dishes.save
        flash[:notice] = 'Dish was successfully created.'
        format.html { redirect_to(@dishes) }
        format.xml  { render :xml => @dishes, :status => :created, :location => @dishes }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml =>@dishes.errors, :status => :unprocessable_entity }
      end
    end
  end

    def update
    @dishes =  Dish.find(params[:id])

    respond_to do |format|
      if @dishes.update_attributes(params[:dish])
        flash[:notice] = 'Dish was successfully updated.'
        format.html { redirect_to(@dishes) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @dishes.errors, :status => :unprocessable_entity }
      end
    end
  end


     def destroy
    @dishes = Dish.find(params[:id])
    @dishes.destroy

    respond_to do |format|
      format.html { redirect_to(dishes_url) }
      format.xml  { head :ok }
    end
  end


end 