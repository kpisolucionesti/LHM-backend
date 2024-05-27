class CreateUserIds < ActiveRecord::Migration[7.1]
  def change
    create_table :user_ids do |t|
      t.string :username
      t.string :password
      t.string :email
      t.belongs_to :user, index: { unique: true}, foreign_key: true
      t.timestamps
    end
  end
end
