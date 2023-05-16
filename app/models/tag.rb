class Tag < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_and_belongs_to_many :users, class_name: "User"
end