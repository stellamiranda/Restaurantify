require 'test_helper'

class DishTest < ActionController::IntegrationTest
  fixtures :accounts, :ledgers, :registers, :people

  def test_signup_new_person
    go_to_login
    go_to_signup
    signup :name => "Bob", :user_name => "bob", :password => "secret"
  end



end
