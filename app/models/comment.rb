class Comment < ApplicationRecord
	belongs_to :user
	belongs_to :training

	validates :content, presence: true, length: {maximum:150}
end
