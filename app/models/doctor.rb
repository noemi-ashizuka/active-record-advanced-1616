class Doctor < ActiveRecord::Base
  has_many :interns # gives me an array of intern instances
  has_many :consultations
  has_many :patients, through: :consultations

  validates :last_name, presence: true
  # validates :last_name, uniqueness: true
  validates :last_name, uniqueness: { scope: :first_name }

  # def capitalized_name
  #   first_name.capitalize
  # end
end
