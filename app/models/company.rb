class Company < ActiveRecord::Base

  validates :name, presence: true
  validates :image, presence: true
  validates :location, presence: true
  validates :website, presence: true

  has_many :jobs
  has_many :user_ids


end
