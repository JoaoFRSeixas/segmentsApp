class SegmentUser < ApplicationRecord
  belongs_to :user
  belongs_to :Segment
end