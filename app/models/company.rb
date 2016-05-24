class Company < ActiveRecord::Base

  validates :name, presence: true
  validates :image, presence: true
  validates :location, presence: true
  validates :website, presence: true

  has_many :jobs, dependent: :destroy
  belongs_to :user

end
