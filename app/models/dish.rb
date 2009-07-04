class Dish< ActiveRecord::Base
   validates_presence_of :name, :description, :price
   belongs_to :category


end