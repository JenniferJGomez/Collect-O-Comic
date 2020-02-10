class ComicBooksController < ApplicationController
    def index 
        all_comics = ComicBook.all
        render json: all_comics
    end
    def show
        comic = ComicBook.find(params[:id])
        render json: comic

    end

end
