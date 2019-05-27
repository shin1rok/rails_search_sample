class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :gender, null: false, default: 0
      t.date :birthday
      t.references :prefecture, foreign_key: true

      t.timestamps
    end
  end
end
