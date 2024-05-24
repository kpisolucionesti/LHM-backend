class CreatePayments < ActiveRecord::Migration[7.1]
  def change
    create_table :payments do |t|
      t.integer :code
      t.string :doctorName
      t.string :patient
      t.string :concept
      t.string :client
      t.integer :date
      t.string :status
      t.integer :account
      t.string :classInvoice
      t.integer :invoice
      t.numeric :tasa
      t.numeric :price
      t.numeric :fee
      t.numeric :balance
      t.timestamps
    end
  end
end
