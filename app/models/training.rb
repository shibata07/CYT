class Training < ApplicationRecord
	belongs_to :muscle
	belongs_to :user

	validates :name, presence: true
	validates :muscle_id, presence: true
	validates :body, length: {maximum: 255}
end
