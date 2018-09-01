class UsersController < ActionController::Base
  def index
  	@users  =User.all
    @books = Book.all
    @products = Product.all
  end
  def edit
  	@user = User.find(params[:id])

  end

  def show
  	@user = User.find(params[:id])
  	@user_books = @user.books
    @user_products = @user.products
  end

  def create
  	@user = User.new(user_params)
  	@user.save
  	redirect_to users_path
  end

  def new
  	@user = User.new
  end

  def update
  	@user = User.find(params[:id])
  	@user = @user.update(user_params)
  	redirect_to users_path

  end

  def destroy
  	@user = User.find(params[:id])
  	@user.destroy
  	redirect_to users_path
  end
  
   private

   def user_params
   	params.require(:user).permit(:name,:city,:country,:email)
   	
   end


end
