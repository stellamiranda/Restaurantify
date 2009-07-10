require 'test_helper'
class RestaurantTest < Test::Unit::TestCase

  require 'test/unit'

  context "A Restaurant instance" do
    setup do
      @restaurant = Restaurant.find(:first)
    end

    should_validate_presence_of :name
    should_validate_presence_of :address
  end
end
