class Job < ApplicationRecord
	has_many :ship_jobs
	has_many :jobs, through: :ship_jobs
	validates :destination, presence: true,
                    length: { minimum: 50 }
end
