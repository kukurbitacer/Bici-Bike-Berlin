require 'test_helper'

class TourTest < ActiveSupport::TestCase

  def setup
    @first = tours(:first)
    @second = tours(:second)
  end

  # test "valid tour" do
  #   assert @first.valid?
  # end

end
