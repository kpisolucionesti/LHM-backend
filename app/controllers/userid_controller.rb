class UseridController < ApplicationController
    before_action :set_user_id, only: [:update, :show]

    def index
        user_id = UserId.all
        render json: ::UserIdRepresenter.for_collection.new(user_id),status: :ok
    end

    def show
        @user_id = UserId.find(params[:id])
        render json: ::UserIdRepresenter.new(@user_id),status: :ok
    end

    def update
        if @user_id.update(user_id_params)
            render json: ::UserIdRepresenter.new(@user_id),status: :ok
        else
            render json: {error: "No se pudo guardar"},status: :unprocessable_entity
        end
    end

    private
    def user_id_params
        params.permit(:username, :password, :email, :user_id, :authentication)
    end

    def set_user_id
        @user_id = UserId.find(params[:id])
    end
end
