class AddColumnToUserIds < ActiveRecord::Migration[7.1]
  def change
    add_column :user_ids, :authentication, :boolean
  end
end
