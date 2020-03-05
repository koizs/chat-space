class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :scores do |t|
      t.string :name
      t.integer :score
      t.references :user, foreign_key: true
      t.timestamps null: false
    end
  end
end
