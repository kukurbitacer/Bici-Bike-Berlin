require 'test_helper'

class BookingTest < ActiveSupport::TestCase
  def setup
    @booking = bookings(:booking)
  end

  test "booking should be valid" do
    assert @booking.valid?
  end

  test "booking should have a first name" do
    @booking.first_name = nil
    refute @booking.valid?, 'saved without a first name'
    assert_not_nil @booking.errors[:first_name], 'no validation error for first_name'
  end

  test "booking should have a last name" do
    @booking.last_name = nil
    refute @booking.valid?, 'saved without a last name'
    assert_not_nil @booking.errors[:last_name], 'no validation error for last_name'
  end

  test "booking should have a email" do
    @booking.email = nil
    refute @booking.valid?, 'saved without an email'
    assert_not_nil @booking.errors[:email], 'no validation error for last_name'
  end

  test "booking should have a date" do
    @booking.booking_date = nil
    refute @booking.valid?, 'saved without a date'
    assert_not_nil @booking.errors[:booking_date], 'no validation error for date'
  end

  test "booking should have a tour" do
    @booking.tour_id = nil
    refute @booking.valid?, 'saved without a tour'
    assert_not_nil @booking.errors[:tour_id], 'no validation error for tour'
  end

  test "booking should have a number of people attending, should be an integer" do
    @booking.person_attending = nil
    refute @booking.valid?, 'saved without a number of people attending'
    assert_not_nil @booking.errors[:booking_date], 'no validation error for people attending'
    @booking.person_attending = 1.5
    refute @booking.valid?, 'number of people should be integer'
    assert_not_nil @booking.errors[:booking_date], 'no validation error valid format for people attending'
  end

end
