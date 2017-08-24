class Ship < ApplicationRecord
	has_many :ship_jobs
	has_many :jobs, through: :ship_jobs
	mount_uploader :avatar, AvatarUploader
end
