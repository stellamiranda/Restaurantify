class Menu< ActiveRecord::Base
belongs_to  :restaurants
has_many :menucategories
has_many :categories, :through => :menucategories

end