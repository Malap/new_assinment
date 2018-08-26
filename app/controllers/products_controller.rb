class ProductsController < ActionController::Base
  def index
  	 @products  =Product.all
  	 @users     =User.all
     
  end
  def edit
  	 @product = Product.find(params[:id])

  end

  def show
  	 @product = Product.find(params[:id])

  end

  def create
  	 @product = Product.new(product_params)
  	 @product.save
  	 redirect_to products_path
  end

  def new
  	 @product = Product.new
  end

  def update
  	  @product = Product.find(params[:id])
  	  @product = @product.update(product_params)
  	  redirect_to users_path
 
  end

  def destroy
    	@product = Product.find(params[:id])
  	  @product.destroy
  	  redirect_to users_path

  end
   private

   def product_params
     	params.require(:product).permit(:name,:description,:user_id)
   	
   end
end