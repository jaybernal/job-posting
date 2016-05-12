require 'test_helper'

class JobTest < ActiveSupport::TestCase

  test "This should be valid a setup" do
    j = Job.new(title: "Front-End Developer", company_id: 3, job_type: "Full-Time", pay: "35k-45k", experience: "Junior", languages: "CSS, JS, HTML")
    assert(j.valid?, "This is valid at setup")
  end
  
  test "This should not be vailid without a Job Title" do
    j = Job.new(title: "Front-End Developer", company_id: 3, job_type: "Full-Time", pay: "35k-45k", experience: "Junior", languages: "CSS, JS, HTML")
    j.title = nil
    refute(j.valid?, "should have a title")
    assert(j.errors[:title])
  end

  test "This should not be valid without a company ID" do
    j = Job.new(title: "Front-End Developer", company_id: 3, job_type: "Full-Time", pay: "35k-45k", experience: "Junior", languages: "CSS, JS, HTML")
    j.company_id = nil
    refute(j.valid?, "should have a company ID")
    assert(j.errors[:company_id])
  end




end


