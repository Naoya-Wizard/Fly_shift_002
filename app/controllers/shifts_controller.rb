class ShiftsController < ApplicationController
    before_action :set_params, only: [:destroy, :update, :show]
    before_action :move_to_index, except: [:index, :new]

    def index
        @shifts = Shift.includes(:user).order("created_at DESC")
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
        @shift.destroy
        redirect_to root_path
    end

    def show
    end

    def update
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
        if @shift.user.id != current_user.id
            redirect_to root_path
        end
    end

    def set_params
        @shift = Shift.find(params[:id])
    end
end
