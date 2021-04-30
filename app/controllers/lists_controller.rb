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

def update
    @list = List.find(params[:id])
    if @list.update(list_update_params)
        redirect_to lists_path
    else
        binding.pry
        render :show
    end
end

def show
    @list = List.find(params[:id])
end

private

def list_update_params
    params.require(:list).permit(:listname, :shift).merge(user_id: current_user.id)
end

def list_params
    params.permit(:listname, :shift).merge(user_id: current_user.id)
end


end
