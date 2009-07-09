require 'rubygems'
require 'mechanize'
class MessWith
  def initialize(name)
    if name == "oscar"
      @ip = "http://192.168.1.69:3000"
      @username = "osjunior2007@hotmail.com"
    else
      @ip = "http://192.168.1.72:3000"
      @username = "stella@koombea.com"
    end
    @password = "123"
    @agent = WWW::Mechanize.new
  end

  def mess!(restaurant_name, restaurant_address)
    login
    get_new_restaurant_page
    @new_restaurant.forms.first.fields[1].value = restaurant_name
    @new_restaurant.forms.first.fields[2].value = restaurant_address
    @new_restaurant.forms.first.submit
  end

  protected
  def login
    @login = @agent.get("#{@ip}/sign_in")
    #set username
    @login.forms.first.fields[1].value = @username
    @login.forms.first.fields[2].value = @password
    @login.forms.first.submit
  end

  def get_new_restaurant_page
    @new_restaurant = @agent.get("#{@ip}/restaurants/new")
  end

end
