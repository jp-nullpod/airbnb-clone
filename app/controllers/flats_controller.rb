require "open-uri"

class FlatsController < ApplicationController
    FLATS_URL = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"

    def index
        @flats =  JSON.parse(URI.open(FLATS_URL).read)
    end

    def show
        @flats = JSON.parse(URI.open(FLATS_URL).read)
        @flat = @flats.find { |flat| flat["id"] == params[:id].to_i }
    end
end
