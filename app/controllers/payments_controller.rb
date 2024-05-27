class PaymentsController < ApplicationController
    def index
        payment = Payment.all
        render json: ::PaymentRepresenter.for_collection.new(payment),status: :ok
    end

    def show
        @payment = Payment.find_by(code: params[:code])
        render json: ::PaymentRepresenter.for_collection.new(@payment),status: :ok
    end

    private
    def payment_params
        params.permit(:code, :doctorName, :patient, :concept, :client, :date, :status, :account, :classInvoice, :invoice, :tasa, :price, :fee, :balance)
    end

    def set_payment
        @payment = Payment.find_by(code: params[:code])
    end
end
