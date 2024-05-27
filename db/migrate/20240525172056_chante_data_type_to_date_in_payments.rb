class ChanteDataTypeToDateInPayments < ActiveRecord::Migration[7.1]
  def change
    change_column :payments, :date, :string
  end
end
