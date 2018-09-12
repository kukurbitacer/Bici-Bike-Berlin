require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = users(:admin)
  end

  test '#tours' do
    assert_equal 2, @user.tours.size
  end
end
