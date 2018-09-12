require 'test_helper'

class GuideTest < ActiveSupport::TestCase

  def setup
    @guide = guides(:manuella)
  end

  # test "valid guide" do
  #   assert @guide.valid?
  # end

  test "guide should have a name" do
    @guide.name = nil
    refute @guide.valid?, 'saved guide without name'
    assert_not_nil @guide.errors[:name], 'no validation error for name'
  end

  test "guide should have an email" do
    @guide.email = nil
    refute @guide.valid?, 'saved guide without email'
    assert_not_nil @guide.errors[:email], 'no validation error for unexistant email'
    @guide.email = "string"
    refute @guide.valid?, 'saved invalid email'
    assert_not_nil @guide.errors[:email], 'no validation error for invalid email'
  end

  test "guide should have a phone" do
    @guide.phone = nil
    refute @guide.valid?, 'saved guide without phone'
    assert_not_nil @guide.errors[:phone], 'no validation error for phone'
  end

  test "guide should have a photo" do
    @guide.photo = nil
    refute @guide.valid?, 'saved guide without a photo'
    assert_not_nil @guide.errors[:photo], 'no validation error for photo'
  end

  test "guide should have a description" do
    @guide.description = nil
    refute @guide.valid?, 'saved guide without a description'
    assert_not_nil @guide.errors[:description], 'no validation error for desctiption'
  end

  test "guide should have a small_description" do
    @guide.small_description = nil
    refute @guide.valid?, 'saved guide without a small_description'
    assert_not_nil @guide.errors[:small_description], 'no validation error for desctiption'
  end

  test "guide should have german description" do
    I18n.locale = :de
    @guide.description = nil
    refute @guide.valid?, 'saved guide without german description translation'
    assert_not_nil @guide.errors[:description], 'no validation error for german description'
  end

end
