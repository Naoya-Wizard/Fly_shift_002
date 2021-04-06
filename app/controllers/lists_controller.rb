class ListsController < ApplicationController

def index 
    @lists = List.includes(:user)
end

def create
    @list = List.new(list_params)
    if @list.save
        redirect_to lists_path
    end
end

private

def list_params
    params.permit(:listname, :shift).merge(user_id: current_user.id)
end

end
