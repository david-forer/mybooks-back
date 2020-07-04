class Api::V1::BooksController < ApplicationController
    
    def index 
        books = Book.all
        render json: books
    end

    def create 
        book = Book.new(books_params)
        if book.save 
            render json: book, status: :accepted
        else
            render json: { errors: book.errors.full_messages }, status: :unprocessable_entity 
        end
    end

    private

    def books_params 
        params.require(:books).permit( :title, :author, :genre, :image_url, :description, :genre_id)
    end
end
