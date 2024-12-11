class CreateQueries < ActiveRecord::Migration[7.1]
  def change
    create_table :queries do |t|
      t.string :topic
      t.integer :user_id
      t.string :image

      t.timestamps
    end
  end
end
