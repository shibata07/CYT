class Muscle < ApplicationRecord
	has_many :trainings, foreign_key: :muscle_id
end
