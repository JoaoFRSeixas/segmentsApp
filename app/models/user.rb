class User < ApplicationRecord
  enum sex: {
    male:"Male",
    female:"Female"
  }
  has_many :tags, class_name: "Tag", foreign_key: "id"
end
