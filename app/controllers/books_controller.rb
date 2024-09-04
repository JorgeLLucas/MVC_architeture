class BooksController < ApplicationController
    def index 
        @books = Book.all
    end

    def show; end

    def new 
        @books = Book.new
    end 

    def create
        @books = Book.new(book_params)
        if @book.save
            redirect_to book_path(@books)
        else
            render :new, status: :unprocessable_entity
        end
    end



    def edit;end 



    private 

    def set_book
    
    end
    
    def book_params
        params.require(:product).permit(:title, :quantity, :price)
    end
end
