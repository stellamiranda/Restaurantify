class Menu< ActiveRecord::Base
has_one  :restaurants
has_many :menucategories
has_many :categories, :through => :menucategories

end