require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "should be valid at setup" do
    u = User.new(email: "jjbernal1@gmail.com", password: "password1", password_confirmation: "password1")
    assert(u.valid?, "Password is valid at setup")
  end

end
