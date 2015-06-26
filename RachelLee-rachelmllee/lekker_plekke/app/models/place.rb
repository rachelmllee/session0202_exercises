class Place < ActiveRecord::Base
	has_many :comments
	validates :name, presence: true, 
		uniqueness: { case_sensitive: false }
end
