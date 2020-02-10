class ComicBooksController < ApplicationController
    def index 
        all_comics = ComicBook.all
        render json: all_comics
    end

end
