class Segment < ApplicationRecord
  has_many :user_segments, class_name: "UserSegments"
  has_many :users, through: :user_segments, class_name: "User"
  serialize :filters, Hash
end