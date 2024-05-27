class UsersController < ApplicationController
    def index
        user = User.all
        render json: ::UserRepresenter.for_collection.new(user),status: :ok
    end

    def show
        @user = User.find(params[:id])
        render json: ::UserRepresenter.new(@user),status: :ok
    end

    private
    def user_params
        params.permit(:ci, :code, :firstName, :lastName, :specialty, :category)
    end

    def set_user
        @user = User.find(params[:id])
    end
end
