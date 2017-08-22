class Job < ApplicationRecord
	has_many :ship_jobs
	has_many :jobs, through: :ship_jobs
end
