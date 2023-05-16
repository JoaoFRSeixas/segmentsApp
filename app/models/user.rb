class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  has_and_belongs_to_many :tags
  has_many :user_segments, class_name: "UserSegments"
  has_many :segment, through: :user_segments, class_name: "Segment"
end