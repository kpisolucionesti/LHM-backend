class UsersController < ApplicationController

    def index
        user = User.all
        render json: ::UserRepresenter.for_collection.new(user),status: :ok
    end

    private
    def user_params
        params.permit(:ci, :code, :firstName, :lastName, :specialty, :category)
    end
end
