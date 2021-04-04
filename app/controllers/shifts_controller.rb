class ShiftsController < ApplicationController

    def index
        @shifts = Shift.includes(:user).order("created_at DESC")
    end

    def new
        @shift = Shift.new
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

    private
    def shift_params
        params.require(:shift).permit(:month_id, :year_id, :shift).merge(user_id: current_user.id)
    end
end
