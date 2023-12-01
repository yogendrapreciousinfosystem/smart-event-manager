class Role < ApplicationRecord
  has_many :accounts, class_name: "Account"
  validates :name, presence: true, uniqueness: true
end

