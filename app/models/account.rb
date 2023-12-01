class Account < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  
  has_one_attached :photo
  
  belongs_to :role, class_name: "Role", optional: true
  has_many_attached :background_images


  validates :email, presence: true, uniqueness: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, length: { minimum: 6 }, if: -> { new_record? }
  validates :activated, inclusion: { in: [true, false] }
  
  enum gender: { male: 0, female: 1, other: 2 }
end
