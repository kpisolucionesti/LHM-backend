class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.integer :ci
      t.integer :code
      t.string :firstName
      t.string :lastName
      t.string :specialty
      t.string :category
      t.timestamps
    end
  end
end
