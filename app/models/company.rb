class Company < ActiveRecord::Base

  validates :name, presence: true
  validates :image, presence: true
  validates :location, presence: true
  validates :website, presence: true

  has_many :jobs
  belongs_to :user

end
