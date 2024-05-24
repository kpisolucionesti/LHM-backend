class PaymentRepresenter < Representable::Decorator
    include Representable::JSON
    property :id
    property :code
    property :doctorName
    property :patient
    property :concept
    property :client
    property :date
    property :status
    property :account
    property :classInvoice
    property :invoice
    property :tasa
    property :price
    property :fee
    property :balance
end