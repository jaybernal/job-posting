class Job < ActiveRecord::Base

  validates :title, presence: true
  validates :company_id, presence: true
  validates :job_title, presence: true

  belongs_to :company
end
