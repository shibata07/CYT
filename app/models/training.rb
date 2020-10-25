class Training < ApplicationRecord
	belongs_to :muscle
	belongs_to :user
	has_many :comments, dependent: :destroy
	
	has_many :training_images, dependent: :destroy
	accepts_attachments_for :training_images, attachment: :image

	validates :name, presence: true
	validates :muscle_id, presence: true
	validates :body, length: {maximum: 255}

	validate :max_five_image

	def max_five_image
		if self.training_images.length > 5
			errors.add(:training_images, "You cannot choose 6 images or more")
		end

	end
end
