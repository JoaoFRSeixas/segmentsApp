class AddRefToUsersAndTags < ActiveRecord::Migration[7.0]
  def change
    add_reference :tags, :users, null: true, foreign_key: true
    add_reference :users, :tags, null: true, foreign_key: true
  end
end
