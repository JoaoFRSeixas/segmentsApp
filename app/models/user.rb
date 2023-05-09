class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  has_and_belongs_to_many :tags
  has_many :segment_users
  has_many :segments, through: :segment_users
end