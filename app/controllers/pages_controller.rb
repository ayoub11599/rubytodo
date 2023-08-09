class PagesController < ApplicationController

    def salut
    end

    def home
    end

    def salutto
        @name = params[:name]
    end

end