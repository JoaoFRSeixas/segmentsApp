class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.date :birth_date
      t.date :admission_date
      t.boolean :is_active
      t.string :sex
      t.datetime :last_sign_in_at
      t.timestamps
    end
  end
end