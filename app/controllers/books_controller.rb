class BooksController < ActionController::Base
 def index
  @books = Book.all
  @users = User.all
  @products = Product.all
  end

  def edit
    @book = Book.find(params[:id])

  end

  def show
      @book = Book.find(params[:id])

  end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to books_path

  end

  def new
    @book = Book.new
  
  end

  def update
    @book = Book.find(params[:id])
    @book = @book.update(book_params)
    redirect_to users_path
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to users_path
  end
  

   private

   def book_params
    params.require(:book).permit(:name,:description,:user_id)
    
   end

end
