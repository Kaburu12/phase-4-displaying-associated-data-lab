class ItemsController < ApplicationController
    #GET /items
    def index
        items= Item.all
        render json: items,include: :user
    end
end
