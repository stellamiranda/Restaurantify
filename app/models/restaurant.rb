class Restaurant < ActiveRecord::Base
   validates_presence_of :name, :address
   has_many :menus
   belongs_to :user
end