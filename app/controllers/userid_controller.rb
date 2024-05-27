class UseridController < ApplicationController
    def index
        user_id = UserId.all
        render json: ::UserIdRepresenter.for_collection.new(user_id),status: :ok
    end

    def show
        @user_id = UserId.find(params[:id])
        render json: ::UserIdRepresenter.new(@user_id),status: :ok
    end

    private
    def user_id_params
        params.permit(:username, :password, :email, :user_id)
    end

    def set_user_id
        @user_id = UserId.find(params[:id])
    end
end
