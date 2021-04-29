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

def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to lists_path
end



def show
    @list = List.find(params[:id])
end

private

def list_params
    params.permit(:listname, :shift).merge(user_id: current_user.id)
end

end
