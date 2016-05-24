class Job < ActiveRecord::Base

  validates :title, presence: true
  validates :company, presence: true
  validates :title, presence: true
 
  belongs_to :company
end
