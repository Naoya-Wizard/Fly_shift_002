class ShiftsController < ApplicationController
    before_action :move_to_index, except: [:index, :new]

    def index
        @shift = Shift.includes(:user).order("created_at DESC")
    end

    def new
        @shift = Shift.new
        @lists = List.includes(:user)
    end

    def create
        @shift = Shift.new(shift_params)
        if @shift.save
            redirect_to root_path
        else
            render :new
        end
    end

    def destroy
        @shift = Shift.find(params[:id])
        @shift.destroy
        redirect_to root_path
    end

    def show
        @shift = Shift.find(params[:id])
    end

    def update
        @shift = Shift.find(params[:id])
        if @shift.update(shift_params)
            redirect_to root_path
        else
            render :show
        end
    end

    private
    def shift_params
        params.require(:shift).permit(:month_id, :year_id, :shift).merge(user_id: current_user.id)
    end

    def move_to_index
        @shift = Shift.find(params[:id])
        if @shift.user.id != current_user.id
            redirect_to root_path
        end
    end
end
