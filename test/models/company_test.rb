require 'test_helper'

class CompanyTest < ActiveSupport::TestCase

  test "this should be a valid test at initialization" do
    c = Company.new(name: "Fuse", image: "http://static1.squarespace.com/static/53d690c7e4b0907fe7be5c09/t/543557bee4b03176bba5921b/1458677988544/?format=1500w", location: "Lincoln, NE", website: "http://www.fusecoworking.com")
    assert(c.valid?, "Should be valid at setup")
  end

  test "this is not valid without a company name" do
    c = Company.new(name: "Fuse", image: "http://static1.squarespace.com/static/53d690c7e4b0907fe7be5c09/t/543557bee4b03176bba5921b/1458677988544/?format=1500w", location: "Lincoln, NE", website: "http://www.fusecoworking.com")
    c.name = nil
    refute(c.valid?, "Should have a company name")
    assert(c.errors[:name])
  end

  test "this is not valid without a location" do
    c = Company.new(name: "Fuse", image: "http://static1.squarespace.com/static/53d690c7e4b0907fe7be5c09/t/543557bee4b03176bba5921b/1458677988544/?format=1500w", location: "Lincoln, NE", website: "http://www.fusecoworking.com")
    c.image = nil
    refute(c.valid?, "Should have a image attached")
    assert(c.errors[:image])
  end

  test "this is not valid with a website" do
    c = Company.new(name: "Fuse", image: "http://static1.squarespace.com/static/53d690c7e4b0907fe7be5c09/t/543557bee4b03176bba5921b/1458677988544/?format=1500w", location: "Lincoln, NE", website: "http://www.fusecoworking.com")
    c.location = nil
    refute(c.valid?, "Should have a location")
    assert(c.errors[:location])
  end

end



