class CreateSegmentUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :segment_users do |t|

      t.timestamps
    end
  end
end
