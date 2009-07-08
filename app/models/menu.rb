class Menu< ActiveRecord::Base
belongs_to  :restaurant
has_many :menucategories
has_many :categories, :through => :menucategories

end