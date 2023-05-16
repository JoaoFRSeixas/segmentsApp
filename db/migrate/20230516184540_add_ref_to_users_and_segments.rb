class AddRefToUsersAndSegments < ActiveRecord::Migration[7.0]
  def change
    add_reference :user_segments, :user, null: false, foreign_key: true
    add_reference :user_segments, :segments, null: false, foreign_key: true

  end
end
