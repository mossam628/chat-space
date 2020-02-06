class CreateGroupsUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :groups_users do |t|
      t.references :users, foreign_key: true
      t.references :groups, foreign_key: true
      t.timestamps
    end
  end
end
