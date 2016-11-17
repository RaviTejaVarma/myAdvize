class Project < ApplicationRecord

	validates :title, presence: true, length: {minimum: 3}
	validates :description, presence: true
	validates :work_force, presence: true

	has_many :posts

	belongs_to :user
end
