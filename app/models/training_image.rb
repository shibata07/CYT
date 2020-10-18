class TrainingImage < ApplicationRecord
	belongs_to :training
  	attachment :image
end
