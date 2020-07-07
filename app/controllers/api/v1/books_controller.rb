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
        book = Book.new(book_params)
        if book.save 
            render json: BookSerializer.new(book), status: :accepted
        else
            render json: { errors: book.errors.full_messages }, status: :unprocessable_entity 
        end
    end

    def destroy 
        book = book.find(params[:id])
        book.destroy
        respond_to do |format|
            format.html {
                redirect_to standups_url, notice: 'Book was successfully destroyed.'
        }
        format.json { head :no_content }
         end
        
    end

    private

    def book_params 
        params.require(:book).permit(:title, :author, :genre, :image_url, :description, :genre_id)
    end
end
