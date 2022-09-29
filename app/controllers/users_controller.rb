class UsersController < ApplicationController

    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    #GET /users/:id
    def show
        user=User.find(params[:id])
        render json: user,include: :items
    end

    private

    def render_not_found_response
      render json: { error: "Dog house not found" }, status: :not_found
    end
end
