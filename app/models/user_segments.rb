class UserSegments < ApplicationRecord
  belongs_to :user, class_name: "User"
  belongs_to :segment, class_name: "Segment"
end