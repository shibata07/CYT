class Weight < ApplicationRecord
  belongs_to :user

  validates :user_id, presence: true
  validates :when, presence: true, :uniqueness => {:scope => :user_id}
  validates :value, presence: true
end
