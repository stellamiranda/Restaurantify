class CategoriesController < ApplicationController
before_filter :authenticate, :except => [:index]
  def index
   @categories = Category.find(:all)

    respond_to do |format|
      format.html
      format.xml  { render :xml => @categories}
    end
  end

   def show
    @categories = Category.find(params[:id])
    @dishes = Dish.all
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @categories}
    end
  end



 def new
    @categories = Category.new
  respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @categories }
    end
  end

  def create
    @categories = Category.new(params[:category])
    
   respond_to do |format|
      if @categories.save
        flash[:notice] = 'Product was successfully created.'
        format.html { redirect_to(@categories) }
        format.xml  { render :xml => @categories, :status => :created, :location => @categories }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml =>@categories.errors, :status => :unprocessable_entity }
      end
    end
  end

  def edit
 @categories = Category.find(params[:id])
  end

  def update
    @categories =Category.find(params[:id])

    respond_to do |format|
      if @categories.update_attributes(params[:category])
        flash[:notice] = 'Product was successfully updated.'
        format.html { redirect_to(@categories) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @categories.errors, :status => :unprocessable_entity }
      end
    end
  end

   def destroy
    @categories = Category.find(params[:id])
    @categories.destroy

    respond_to do |format|
      format.html { redirect_to(categories_url) }
      format.xml  { head :ok }
    end
  end

end
