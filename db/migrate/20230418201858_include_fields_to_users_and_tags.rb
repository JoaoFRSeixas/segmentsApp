class IncludeFieldsToUsersAndTags < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :text
    add_column :users, :last_name, :text
    add_column :users, :email, :text
    add_column :users, :birth_date, :date
    add_column :users, :admission_date, :date
    add_column :users, :is_active, :boolean
    add_column :users, :sex, :text
    add_column :users, :last_sign_in_at, :datetime
  end
end
