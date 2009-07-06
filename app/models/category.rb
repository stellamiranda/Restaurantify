class Category< ActiveRecord::Base
has_many :dishes
has_many :menucategories
has_many :menus, :through => :menucategories
end