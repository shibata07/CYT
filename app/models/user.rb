class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #carrierwave設定
  mount_uploader :image_id, ImageUploader


  validates :image_id, presence: true
  validates :name, presence: true, length: {maximum:20}
  validates :body, presence: true, length: {maximum:255}

  has_many :trainings, dependent: :destroy, foreign_key: :user_id
  has_many :comments, dependent: :destroy

  has_many :active_relationships, class_name: "Relationship", foreign_key: :following_id, dependent: :destroy
  has_many :followings, through: :active_relationships, source: :follower

  has_many :passive_relationships, class_name: "Relationship", foreign_key: :follower_id, dependent: :destroy
  has_many :followers, through: :passive_relationships, source: :following

  def followed_by?(user)
  	passive_relationships.find_by(following_id: user.id).present?
  end

  def self.search(search)
    if search
      User.where(["name LIKE ?", "%#{search}%"])
    else
      User.all
    end
  end
end

