class Job < ApplicationRecord
	has_many :ship_jobs
	has_many :ships, through: :ship_jobs
	

	validates :destination, presence: true,
                    length: { minimum: 50 }
    validates :name, uniqueness: true
    validates_numericality_of :cost, greater_than: 1000

end
