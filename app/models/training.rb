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
		if self.training_images.length > 6
			errors.add(:training_images, "画像は最大5枚です")
		end

	end
end
