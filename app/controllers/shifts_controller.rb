class ShiftsController < ApplicationController

    def index

    end

    def new
        @shift = Shift.new
    end

    def create
        binding.pry
    end
end
