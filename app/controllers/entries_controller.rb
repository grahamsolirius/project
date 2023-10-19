class EntriesController < ApplicationController
    def index
        @entries = Focus.all
    end

    def new
        @focus = Focus.new()
    end

    def create
        @focus = Focus.new(focus_params)
        if @focus.save
            redirect_to root_url
        else 
            render :new
        end
    end

    private

    def focus_params
        params.require(:focus).permit(:name)
    end
end
