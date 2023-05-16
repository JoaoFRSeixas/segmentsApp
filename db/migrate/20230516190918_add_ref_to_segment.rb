class AddRefToSegment < ActiveRecord::Migration[7.0]
  def change
    add_reference :user_segments, :segment, null: false, foreign_key: true

  end
end
