class Segment < ApplicationRecord
  has_many :segment_users
  has_many :users, through: :segment_users

  serialize :filters, Hash
end