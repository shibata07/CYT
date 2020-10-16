class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #carrierwave設定
  mount_uploader :image, ImageUploader
  
  has_many :trainings, dependent: :destroy, foreign_key: :user_id
  has_many :comments, dependent: :destroy
end
