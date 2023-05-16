class CreateUserSegments < ActiveRecord::Migration[7.0]
  def change
    create_table :user_segments do |t|

      t.timestamps
    end
  end
end
