class UserController < ApplicationController
    def index
        @entries = Entry.all
    end

    def new 
        @entry = Entry.new()
    end

    def create 
        @entry = Entry.new(entry_url)
        if @entry.save
            redurect_to root_url
        else
            render :new
        end
    end

    private

    def entry_params
        params.require(:entry).permit(:name)
    end

end
