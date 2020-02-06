class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.references :users, foreign_key: true
      t.references :groups, foreign_key: true
      t.timestamps
    end
  end
end
