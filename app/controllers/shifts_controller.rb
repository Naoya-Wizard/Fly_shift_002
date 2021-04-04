class ShiftsController < ApplicationController

    def index

    end

    def new
        @shift = Shift.new
    end
end
