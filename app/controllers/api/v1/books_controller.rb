class Api::V1::BooksController < ApplicationController
    
    def index 
        books = Book.all
        # options = {
        #     include: [:genre]
        # }
        # render json: BookSerializer.new(books, options)

        render json: BookSerializer.new(books)
    end

    def show 

    end

    def create 
        book = Book.new(books_params)
        if book.save 
            render json: book, status: :accepted
        else
            render json: { errors: book.errors.full_messages }, status: :unprocessable_entity 
        end
    end

    def destroy 
        book.destroy
        format.json {head :no_content}
    end

    private

    def books_params 
        params.require(:books).permit( :title, :author, :genre, :image_url, :description, :genre_id)
    end
end
