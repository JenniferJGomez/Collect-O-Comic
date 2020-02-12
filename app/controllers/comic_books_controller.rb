class ComicBooksController < ApplicationController
    def index 
        all_comics = ComicBook.all.sort_by{|comic| comic.id}
        render json: all_comics.to_json(
            :include => {:users =>
              {:except => [:created_at, :updated_at]}})
    end

    def show
        comic = ComicBook.find(params[:id])
        render json: comic.to_json(
            :include => {:users =>
              {:except => [:created_at, :updated_at]}})

    end

    def create
        comic_book = ComicBook.create(comic_book_params)
        render json: comic_book

    end

    def update
        comic_book = ComicBook.find(params[:id])
        comic_book.update(rating: params[:rating])
        render json: comic_book
    end

    def collections

        collection = Collection.create(user_id: params[:user_id], comic_book_id: params[:comic_book_id])
        render json: collection
    end



    def comic_book_params
        params.require(:comic_book).permit(:image,:name, :description, :count_of_episodes, :rating)
    end

   

end

