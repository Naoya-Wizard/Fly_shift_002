class ListsController < ApplicationController
    before_action :set_params, except: [:index, :create]
    before_action :move_to_index, except: [:index, :create]

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
    @list.destroy
    redirect_to lists_path
end

def update
    if @list.update(list_update_params)
        redirect_to lists_path
    else
        redirect_to list_path(params[:id]), notice: "DBへの保存に失敗しました(テンプレート名やシフト名が空の可能性があります)"
    end
end

def show
end

private

def list_update_params
    params.require(:list).permit(:listname, :shift).merge(user_id: current_user.id)
end

def list_params
    params.permit(:listname, :shift).merge(user_id: current_user.id)
end

def move_to_index
    if @list.user.id != current_user.id
        redirect_to lists_path
    end
end

def set_params
    @list = List.find(params[:id])
end

end
