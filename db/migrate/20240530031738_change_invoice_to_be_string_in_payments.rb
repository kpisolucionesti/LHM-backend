class ChangeInvoiceToBeStringInPayments < ActiveRecord::Migration[7.1]
  def change
    change_column :payments, :invoice, :string
  end
end
