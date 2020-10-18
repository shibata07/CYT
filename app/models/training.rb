class Training < ApplicationRecord
	belongs_to :muscle
	belongs_to :user
	has_many :comments, dependent: :destroy
	
	has_many :training_images, dependent: :destroy
	accepts_attachments_for :training_images, attachment: :image

	validates :name, presence: true
	validates :muscle_id, presence: true
	validates :body, length: {maximum: 255}
end
