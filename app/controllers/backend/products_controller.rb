module Backend
  class ProductsController < BackendController
   def index
     @presenter = ProductsPresenter.new(params)
     
   end
 
   def show
    @product = Product.find(params[:id])
   end
 
   def new
     @product = Product.new
    
   end
 
   def edit
     @product = Product.find(params[:id])
     
   end
 
   def create
     @product = Post.new(product_params)
     @product.save(product_params)
     redirect_to backend_product_path(@product)
   end
 
   def update
     @product = Product.find(params[:id])
     @product.update(product_params)
     redirect_to backend_product_path(@product)
   end
 
   def destroy
     @product = Product.find(params[:id])
     @product.destroy
     redirect_to backend_products_path
   end
  
  private

  def product_params
    params.require(:product).permit(:title, :prod_id, :description, :price, :cost, :active, category_id: [])
  end

  end
end
 