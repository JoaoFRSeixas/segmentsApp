class User < ApplicationRecord
  has_and_belongs_to_many :tags
  has_many :segment_users
  has_many :segments, through: :segment_users
end