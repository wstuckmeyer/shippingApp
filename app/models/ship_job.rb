class ShipJob < ApplicationRecord
	belongs_to :ship 
	belongs_to :job
	validates :job_id, :uniqueness => {:scope => :ship_id}
end
