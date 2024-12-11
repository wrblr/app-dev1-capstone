class CreateMessages < ActiveRecord::Migration[7.1]
  def change
    create_table :messages do |t|
      t.integer :query_id
      t.string :body_text
      t.string :role
      t.integer :user_id

      t.timestamps
    end
  end
end
